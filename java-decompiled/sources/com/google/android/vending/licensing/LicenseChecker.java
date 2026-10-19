package com.google.android.vending.licensing;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class LicenseChecker implements android.content.ServiceConnection {
    private static final boolean DEBUG_LICENSE_ERROR = false;
    private static final java.lang.String KEY_FACTORY_ALGORITHM = "RSA";
    private static final java.security.SecureRandom RANDOM = new java.security.SecureRandom();
    private static final java.lang.String TAG = "LicenseChecker";
    private static final int TIMEOUT_MS = 10000;
    private final android.content.Context mContext;
    private android.os.Handler mHandler;
    private final java.lang.String mPackageName;
    private final com.google.android.vending.licensing.Policy mPolicy;
    private java.security.PublicKey mPublicKey;
    private com.google.android.vending.licensing.ILicensingService mService;
    private final java.lang.String mVersionCode;
    int resKey;
    private final java.util.Set<com.google.android.vending.licensing.LicenseValidator> mChecksInProgress = new java.util.HashSet();
    private final java.util.Queue<com.google.android.vending.licensing.LicenseValidator> mPendingChecks = new java.util.LinkedList();

    public LicenseChecker(android.content.Context context, com.google.android.vending.licensing.Policy policy, java.lang.String encodedPublicKey, int ckey) {
        this.mContext = context;
        this.mPolicy = policy;
        this.mPublicKey = generatePublicKey(encodedPublicKey);
        this.mPackageName = this.mContext.getPackageName();
        this.mVersionCode = getVersionCode(context, this.mPackageName);
        android.os.HandlerThread handlerThread = new android.os.HandlerThread("background thread");
        handlerThread.start();
        this.mHandler = new android.os.Handler(handlerThread.getLooper());
        this.resKey = ckey;
    }

    private static java.security.PublicKey generatePublicKey(java.lang.String encodedPublicKey) {
        try {
            byte[] decodedKey = com.google.android.vending.licensing.util.Base64.decode(encodedPublicKey);
            java.security.KeyFactory keyFactory = java.security.KeyFactory.getInstance(KEY_FACTORY_ALGORITHM);
            return keyFactory.generatePublic(new java.security.spec.X509EncodedKeySpec(decodedKey));
        } catch (com.google.android.vending.licensing.util.Base64DecoderException e) {
            android.util.Log.e(TAG, "Could not decode from Base64.");
            throw new java.lang.IllegalArgumentException(e);
        } catch (java.security.NoSuchAlgorithmException e2) {
            throw new java.lang.RuntimeException(e2);
        } catch (java.security.spec.InvalidKeySpecException e3) {
            android.util.Log.e(TAG, "Invalid key specification.");
            throw new java.lang.IllegalArgumentException(e3);
        }
    }

    public synchronized void checkAccess(com.google.android.vending.licensing.LicenseCheckerCallback callback) {
        if (this.mPolicy.allowAccess()) {
            android.util.Log.i(TAG, "Using cached license response");
            callback.allow(this.resKey);
        } else {
            com.google.android.vending.licensing.LicenseValidator validator = new com.google.android.vending.licensing.LicenseValidator(this.mPolicy, new com.google.android.vending.licensing.NullDeviceLimiter(), callback, generateNonce(), this.mPackageName, this.mVersionCode, this.resKey);
            if (this.mService == null) {
                android.util.Log.i(TAG, "Binding to licensing service.");
                try {
                    boolean bindResult = this.mContext.bindService(new android.content.Intent(new java.lang.String(com.google.android.vending.licensing.util.Base64.decode("Y29tLmFuZHJvaWQudmVuZGluZy5saWNlbnNpbmcuSUxpY2Vuc2luZ1NlcnZpY2U="))), this, 1);
                    if (bindResult) {
                        this.mPendingChecks.offer(validator);
                    } else {
                        android.util.Log.e(TAG, "Could not bind to service.");
                        handleServiceConnectionError(validator);
                    }
                } catch (com.google.android.vending.licensing.util.Base64DecoderException e) {
                    e.printStackTrace();
                } catch (java.lang.SecurityException e2) {
                    callback.applicationError(6);
                }
            } else {
                this.mPendingChecks.offer(validator);
                runChecks();
            }
        }
    }

    private void runChecks() {
        while (true) {
            com.google.android.vending.licensing.LicenseValidator validator = this.mPendingChecks.poll();
            if (validator != null) {
                try {
                    android.util.Log.i(TAG, "Calling checkLicense on service for " + validator.getPackageName());
                    this.mService.checkLicense(validator.getNonce(), validator.getPackageName(), new com.google.android.vending.licensing.LicenseChecker.ResultListener(validator));
                    this.mChecksInProgress.add(validator);
                } catch (android.os.RemoteException e) {
                    android.util.Log.w(TAG, "RemoteException in checkLicense call.", e);
                    handleServiceConnectionError(validator);
                }
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void finishCheck(com.google.android.vending.licensing.LicenseValidator validator) {
        this.mChecksInProgress.remove(validator);
        if (this.mChecksInProgress.isEmpty()) {
            cleanupService();
        }
    }

    private class ResultListener extends com.google.android.vending.licensing.ILicenseResultListener.Stub {
        private static final int ERROR_CONTACTING_SERVER = 257;
        private static final int ERROR_INVALID_PACKAGE_NAME = 258;
        private static final int ERROR_NON_MATCHING_UID = 259;
        private java.lang.Runnable mOnTimeout = new java.lang.Runnable() { // from class: com.google.android.vending.licensing.LicenseChecker.ResultListener.1
            @Override // java.lang.Runnable
            public void run() {
                android.util.Log.i(com.google.android.vending.licensing.LicenseChecker.TAG, "Check timed out.");
                com.google.android.vending.licensing.LicenseChecker.this.handleServiceConnectionError(com.google.android.vending.licensing.LicenseChecker.ResultListener.this.mValidator);
                com.google.android.vending.licensing.LicenseChecker.this.finishCheck(com.google.android.vending.licensing.LicenseChecker.ResultListener.this.mValidator);
            }
        };
        private final com.google.android.vending.licensing.LicenseValidator mValidator;

        public ResultListener(com.google.android.vending.licensing.LicenseValidator validator) {
            this.mValidator = validator;
            startTimeout();
        }

        @Override // com.google.android.vending.licensing.ILicenseResultListener
        public void verifyLicense(final int responseCode, final java.lang.String signedData, final java.lang.String signature) {
            com.google.android.vending.licensing.LicenseChecker.this.mHandler.post(new java.lang.Runnable() { // from class: com.google.android.vending.licensing.LicenseChecker.ResultListener.2
                @Override // java.lang.Runnable
                public void run() {
                    android.util.Log.i(com.google.android.vending.licensing.LicenseChecker.TAG, "Received response.");
                    if (!com.google.android.vending.licensing.LicenseChecker.this.mChecksInProgress.contains(com.google.android.vending.licensing.LicenseChecker.ResultListener.this.mValidator)) {
                        return;
                    }
                    com.google.android.vending.licensing.LicenseChecker.ResultListener.this.clearTimeout();
                    com.google.android.vending.licensing.LicenseChecker.ResultListener.this.mValidator.verify(com.google.android.vending.licensing.LicenseChecker.this.mPublicKey, responseCode, signedData, signature);
                    com.google.android.vending.licensing.LicenseChecker.this.finishCheck(com.google.android.vending.licensing.LicenseChecker.ResultListener.this.mValidator);
                }
            });
        }

        private void startTimeout() {
            android.util.Log.i(com.google.android.vending.licensing.LicenseChecker.TAG, "Start monitoring timeout.");
            com.google.android.vending.licensing.LicenseChecker.this.mHandler.postDelayed(this.mOnTimeout, 10000L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTimeout() {
            android.util.Log.i(com.google.android.vending.licensing.LicenseChecker.TAG, "Clearing timeout.");
            com.google.android.vending.licensing.LicenseChecker.this.mHandler.removeCallbacks(this.mOnTimeout);
        }
    }

    @Override // android.content.ServiceConnection
    public synchronized void onServiceConnected(android.content.ComponentName name, android.os.IBinder service) {
        this.mService = com.google.android.vending.licensing.ILicensingService.Stub.asInterface(service);
        runChecks();
    }

    @Override // android.content.ServiceConnection
    public synchronized void onServiceDisconnected(android.content.ComponentName name) {
        android.util.Log.w(TAG, "Service unexpectedly disconnected.");
        this.mService = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void handleServiceConnectionError(com.google.android.vending.licensing.LicenseValidator validator) {
        this.mPolicy.processServerResponse(com.google.android.vending.licensing.Policy.RETRY, null);
        if (this.mPolicy.allowAccess()) {
            validator.getCallback().allow(com.google.android.vending.licensing.Policy.RETRY);
        } else {
            validator.getCallback().dontAllow(com.google.android.vending.licensing.Policy.RETRY);
        }
    }

    private void cleanupService() {
        if (this.mService != null) {
            try {
                this.mContext.unbindService(this);
            } catch (java.lang.IllegalArgumentException e) {
                android.util.Log.e(TAG, "Unable to unbind from licensing service (already unbound)");
            }
            this.mService = null;
        }
    }

    public synchronized void onDestroy() {
        cleanupService();
        this.mHandler.getLooper().quit();
    }

    private int generateNonce() {
        return RANDOM.nextInt();
    }

    private static java.lang.String getVersionCode(android.content.Context context, java.lang.String packageName) {
        try {
            return java.lang.String.valueOf(context.getPackageManager().getPackageInfo(packageName, 0).versionCode);
        } catch (android.content.pm.PackageManager.NameNotFoundException e) {
            android.util.Log.e(TAG, "Package not found. could not get version code.");
            return "";
        }
    }
}
