package com.bluegnc.ggapi;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public abstract class LVL extends android.app.Activity implements com.bluegnc.ggapi.GConst {
    private static final byte[] SALT = {-46, 65, 30, Byte.MIN_VALUE, -103, -57, 74, -64, 51, 88, -95, -45, 77, -117, -36, -113, -11, 32, -64, 89};
    private com.google.android.vending.licensing.LicenseChecker mChecker;
    private com.google.android.vending.licensing.LicenseCheckerCallback mCheckerback;

    public native java.lang.String nativeStr(int i);

    protected abstract void showActMsg(int i);

    protected abstract void startGameActivity();

    static {
        java.lang.System.loadLibrary("bgcdrm-jni");
    }

    @Override // android.app.Activity
    protected void onCreate(android.os.Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        java.lang.String deviceId = android.provider.Settings.Secure.getString(getContentResolver(), "android_id");
        this.mCheckerback = new com.bluegnc.ggapi.LVL.MyLicenseCheckerCallback(this, null);
        this.mChecker = new com.google.android.vending.licensing.LicenseChecker(this, new com.google.android.vending.licensing.ServerManagedPolicy(this, new com.google.android.vending.licensing.AESObfuscator(SALT, getPackageName(), deviceId)), nativeStr(0), java.lang.Integer.valueOf(nativeStr(1)).intValue());
        this.mChecker.checkAccess(this.mCheckerback);
    }

    private class MyLicenseCheckerCallback implements com.google.android.vending.licensing.LicenseCheckerCallback {
        private MyLicenseCheckerCallback() {
        }

        /* synthetic */ MyLicenseCheckerCallback(com.bluegnc.ggapi.LVL lvl, com.bluegnc.ggapi.LVL.MyLicenseCheckerCallback myLicenseCheckerCallback) {
            this();
        }

        @Override // com.google.android.vending.licensing.LicenseCheckerCallback
        public void allow(int policyReason) {
            if (!com.bluegnc.ggapi.LVL.this.isFinishing()) {
                if (policyReason == java.lang.Integer.valueOf(com.bluegnc.ggapi.LVL.this.nativeStr(1)).intValue()) {
                    com.bluegnc.ggapi.LVL.this.startGameActivity();
                } else {
                    com.bluegnc.ggapi.LVL.this.showActMsg(-3);
                }
                com.bluegnc.ggapi.LVL.this.finish();
            }
        }

        @Override // com.google.android.vending.licensing.LicenseCheckerCallback
        public void dontAllow(int policyReason) {
            if (!com.bluegnc.ggapi.LVL.this.isFinishing()) {
                com.bluegnc.ggapi.LVL.this.showActMsg(-1);
                com.bluegnc.ggapi.LVL.this.finish();
            }
        }

        @Override // com.google.android.vending.licensing.LicenseCheckerCallback
        public void applicationError(int errorCode) {
            if (!com.bluegnc.ggapi.LVL.this.isFinishing()) {
                com.bluegnc.ggapi.LVL.this.showActMsg(-2);
                com.bluegnc.ggapi.LVL.this.finish();
            }
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.mChecker.onDestroy();
    }
}
