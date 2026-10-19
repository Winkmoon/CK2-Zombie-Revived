package com.bluegnc.ggapi;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public abstract class INAPP extends android.app.Activity implements com.bluegnc.ggapi.GConst {
    java.lang.String PID;
    com.bluegnc.ggapi.IabHelper mHelper;
    com.bluegnc.ggapi.IabHelper.OnConsumeFinishedListener mConsumeFinishedListener = new com.bluegnc.ggapi.IabHelper.OnConsumeFinishedListener() { // from class: com.bluegnc.ggapi.INAPP.1
        @Override // com.bluegnc.ggapi.IabHelper.OnConsumeFinishedListener
        public void onConsumeFinished(com.bluegnc.ggapi.Purchase purchase, com.bluegnc.ggapi.IabResult result) {
            if (com.bluegnc.ggapi.INAPP.this.mHelper != null) {
                if (result.isSuccess()) {
                    com.bluegnc.ggapi.INAPP.this.resMsg(java.lang.Integer.valueOf(com.bluegnc.ggapi.INAPP.this.getStr(2)).intValue());
                } else {
                    com.bluegnc.ggapi.INAPP.this.alert("Error while consuming: " + result);
                    com.bluegnc.ggapi.INAPP.this.resMsg(com.bluegnc.ggapi.GConst.DIALOGSEL_BUYNO);
                }
            }
        }
    };
    com.bluegnc.ggapi.IabHelper.OnIabPurchaseFinishedListener mPurchaseFinishedListener = new com.bluegnc.ggapi.IabHelper.OnIabPurchaseFinishedListener() { // from class: com.bluegnc.ggapi.INAPP.2
        @Override // com.bluegnc.ggapi.IabHelper.OnIabPurchaseFinishedListener
        public void onIabPurchaseFinished(com.bluegnc.ggapi.IabResult result, com.bluegnc.ggapi.Purchase purchase) {
            if (com.bluegnc.ggapi.INAPP.this.mHelper != null) {
                if (result.isSuccess()) {
                    if (com.bluegnc.ggapi.INAPP.this.verifyDeveloperPayload(purchase) && purchase.getSku().equals(com.bluegnc.ggapi.INAPP.this.PID)) {
                        com.bluegnc.ggapi.INAPP.this.mHelper.consumeAsync(purchase, com.bluegnc.ggapi.INAPP.this.mConsumeFinishedListener);
                        return;
                    }
                    result = new com.bluegnc.ggapi.IabResult(6, "Authenticity verification failed");
                }
                com.bluegnc.ggapi.INAPP.this.alert("Error purchasing: " + result);
                com.bluegnc.ggapi.INAPP.this.resMsg(com.bluegnc.ggapi.GConst.DIALOGSEL_BUYNO);
            }
        }
    };
    com.bluegnc.ggapi.IabHelper.QueryInventoryFinishedListener mGotInventoryListener = new com.bluegnc.ggapi.IabHelper.QueryInventoryFinishedListener() { // from class: com.bluegnc.ggapi.INAPP.3
        @Override // com.bluegnc.ggapi.IabHelper.QueryInventoryFinishedListener
        public void onQueryInventoryFinished(com.bluegnc.ggapi.IabResult result, com.bluegnc.ggapi.Inventory inventory) {
            if (com.bluegnc.ggapi.INAPP.this.mHelper != null) {
                if (result.isSuccess()) {
                    com.bluegnc.ggapi.Purchase buyitem = inventory.getPurchase(com.bluegnc.ggapi.INAPP.this.PID);
                    if (buyitem != null && com.bluegnc.ggapi.INAPP.this.verifyDeveloperPayload(buyitem)) {
                        com.bluegnc.ggapi.INAPP.this.mHelper.consumeAsync(inventory.getPurchase(com.bluegnc.ggapi.INAPP.this.PID), com.bluegnc.ggapi.INAPP.this.mConsumeFinishedListener);
                        return;
                    }
                    return;
                }
                com.bluegnc.ggapi.INAPP.this.alert("Failed to query inventory: " + result);
            }
        }
    };

    public abstract java.lang.String getStr(int i);

    public abstract void resMsg(int i);

    @Override // android.app.Activity
    protected void onCreate(android.os.Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    /* renamed from: com.bluegnc.ggapi.INAPP$4, reason: invalid class name */
    class AnonymousClass4 implements com.bluegnc.ggapi.IabHelper.OnIabSetupFinishedListener {
        AnonymousClass4() {
        }

        @Override // com.bluegnc.ggapi.IabHelper.OnIabSetupFinishedListener
        public void onIabSetupFinished(com.bluegnc.ggapi.IabResult result) {
            if (result.isSuccess()) {
                com.bluegnc.ggapi.INAPP.this.getStr(1);
                com.bluegnc.ggapi.INAPP.this.mHelper.queryInventoryAsync(com.bluegnc.ggapi.INAPP.this.mGotInventoryListener);
            }
        }
    }

    public void chkItem(java.lang.String id) {
        if (this.mHelper != null) {
            this.PID = id;
            getStr(1);
            this.mHelper.launchPurchaseFlow(this, this.PID, com.bluegnc.ggapi.GConst.RC_REQUEST, this.mPurchaseFinishedListener);
        }
    }

    boolean verifyDeveloperPayload(com.bluegnc.ggapi.Purchase p) {
        p.getDeveloperPayload();
        return true;
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, android.content.Intent data) {
        if (this.mHelper != null && !this.mHelper.handleActivityResult(requestCode, resultCode, data)) {
            super.onActivityResult(requestCode, resultCode, data);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.mHelper != null) {
            this.mHelper.dispose();
        }
        this.mHelper = null;
    }

    void alert(java.lang.String message) {
    }
}
