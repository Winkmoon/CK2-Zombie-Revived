package com.google.android.vending.licensing;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
class LicenseValidator {
    private static final int ERROR_CONTACTING_SERVER = 257;
    private static final int ERROR_INVALID_PACKAGE_NAME = 258;
    private static final int ERROR_NON_MATCHING_UID = 259;
    private static final int ERROR_NOT_MARKET_MANAGED = 3;
    private static final int ERROR_OVER_QUOTA = 5;
    private static final int ERROR_SERVER_FAILURE = 4;
    private static final int LICENSED = 0;
    private static final int LICENSED_OLD_KEY = 2;
    private static final int NOT_LICENSED = 1;
    private static final java.lang.String SIGNATURE_ALGORITHM = "SHA1withRSA";
    private static final java.lang.String TAG = "LicenseValidator";
    private final com.google.android.vending.licensing.LicenseCheckerCallback mCallback;
    private final com.google.android.vending.licensing.DeviceLimiter mDeviceLimiter;
    private final int mNonce;
    private final java.lang.String mPackageName;
    private final com.google.android.vending.licensing.Policy mPolicy;
    private final java.lang.String mVersionCode;
    int resKey;

    LicenseValidator(com.google.android.vending.licensing.Policy policy, com.google.android.vending.licensing.DeviceLimiter deviceLimiter, com.google.android.vending.licensing.LicenseCheckerCallback callback, int nonce, java.lang.String packageName, java.lang.String versionCode, int ckey) {
        this.mPolicy = policy;
        this.mDeviceLimiter = deviceLimiter;
        this.mCallback = callback;
        this.mNonce = nonce;
        this.mPackageName = packageName;
        this.mVersionCode = versionCode;
        this.resKey = ckey;
    }

    public com.google.android.vending.licensing.LicenseCheckerCallback getCallback() {
        return this.mCallback;
    }

    public int getNonce() {
        return this.mNonce;
    }

    public java.lang.String getPackageName() {
        return this.mPackageName;
    }

    public void verify(java.security.PublicKey publicKey, int responseCode, java.lang.String signedData, java.lang.String signature) {
        java.lang.String userId = null;
        com.google.android.vending.licensing.ResponseData data = null;
        if (responseCode == 0 || responseCode == 1 || responseCode == 2) {
            try {
                java.security.Signature sig = java.security.Signature.getInstance(SIGNATURE_ALGORITHM);
                sig.initVerify(publicKey);
                sig.update(signedData.getBytes());
                if (!sig.verify(com.google.android.vending.licensing.util.Base64.decode(signature))) {
                    android.util.Log.e(TAG, "Signature verification failed.");
                    handleInvalidResponse();
                    return;
                }
                try {
                    data = com.google.android.vending.licensing.ResponseData.parse(signedData);
                    if (data.responseCode != responseCode) {
                        android.util.Log.e(TAG, "Response codes don't match.");
                        handleInvalidResponse();
                        return;
                    }
                    if (data.nonce != this.mNonce) {
                        android.util.Log.e(TAG, "Nonce doesn't match.");
                        handleInvalidResponse();
                        return;
                    }
                    if (!data.packageName.equals(this.mPackageName)) {
                        android.util.Log.e(TAG, "Package name doesn't match.");
                        handleInvalidResponse();
                        return;
                    } else if (!data.versionCode.equals(this.mVersionCode)) {
                        android.util.Log.e(TAG, "Version codes don't match.");
                        handleInvalidResponse();
                        return;
                    } else {
                        userId = data.userId;
                        if (android.text.TextUtils.isEmpty(userId)) {
                            android.util.Log.e(TAG, "User identifier is empty.");
                            handleInvalidResponse();
                            return;
                        }
                    }
                } catch (java.lang.IllegalArgumentException e) {
                    android.util.Log.e(TAG, "Could not parse response.");
                    handleInvalidResponse();
                    return;
                }
            } catch (com.google.android.vending.licensing.util.Base64DecoderException e2) {
                android.util.Log.e(TAG, "Could not Base64-decode signature.");
                handleInvalidResponse();
                return;
            } catch (java.security.InvalidKeyException e3) {
                handleApplicationError(5);
                return;
            } catch (java.security.NoSuchAlgorithmException e4) {
                throw new java.lang.RuntimeException(e4);
            } catch (java.security.SignatureException e5) {
                throw new java.lang.RuntimeException(e5);
            }
        }
        if (responseCode == 0 || responseCode == 2) {
            int limiterResponse = this.mDeviceLimiter.isDeviceAllowed(userId);
            handleResponse(limiterResponse, data);
            return;
        }
        if (responseCode == 1) {
            handleResponse(com.google.android.vending.licensing.Policy.NOT_LICENSED, data);
            return;
        }
        switch (responseCode) {
            case 3:
                handleApplicationError(3);
                return;
            case 4:
                android.util.Log.w(TAG, "An error has occurred on the licensing server.");
                handleResponse(com.google.android.vending.licensing.Policy.RETRY, data);
                return;
            case 5:
                android.util.Log.w(TAG, "Licensing server is refusing to talk to this device, over quota.");
                handleResponse(com.google.android.vending.licensing.Policy.RETRY, data);
                return;
            case ERROR_CONTACTING_SERVER /* 257 */:
                android.util.Log.w(TAG, "Error contacting licensing server.");
                handleResponse(com.google.android.vending.licensing.Policy.RETRY, data);
                return;
            case ERROR_INVALID_PACKAGE_NAME /* 258 */:
                handleApplicationError(1);
                return;
            case ERROR_NON_MATCHING_UID /* 259 */:
                handleApplicationError(2);
                return;
            default:
                android.util.Log.e(TAG, "Unknown response code for license check.");
                handleInvalidResponse();
                return;
        }
    }

    private void handleResponse(int response, com.google.android.vending.licensing.ResponseData rawData) {
        this.mPolicy.processServerResponse(response, rawData);
        if (this.mPolicy.allowAccess()) {
            this.mCallback.allow(this.resKey);
        } else {
            this.mCallback.dontAllow(response);
        }
    }

    private void handleApplicationError(int code) {
        this.mCallback.applicationError(code);
    }

    private void handleInvalidResponse() {
        this.mCallback.dontAllow(com.google.android.vending.licensing.Policy.NOT_LICENSED);
    }
}
