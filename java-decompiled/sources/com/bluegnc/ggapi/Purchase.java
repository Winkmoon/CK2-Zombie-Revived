package com.bluegnc.ggapi;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class Purchase {
    java.lang.String mDeveloperPayload;
    java.lang.String mItemType;
    java.lang.String mOrderId;
    java.lang.String mOriginalJson;
    java.lang.String mPackageName;
    int mPurchaseState;
    long mPurchaseTime;
    java.lang.String mSignature;
    java.lang.String mSku;
    java.lang.String mToken;

    public Purchase(java.lang.String itemType, java.lang.String jsonPurchaseInfo, java.lang.String signature) throws org.json.JSONException {
        this.mItemType = itemType;
        this.mOriginalJson = jsonPurchaseInfo;
        org.json.JSONObject o = new org.json.JSONObject(this.mOriginalJson);
        this.mOrderId = o.optString("orderId");
        this.mPackageName = o.optString("packageName");
        this.mSku = o.optString("productId");
        this.mPurchaseTime = o.optLong("purchaseTime");
        this.mPurchaseState = o.optInt("purchaseState");
        this.mDeveloperPayload = o.optString("developerPayload");
        this.mToken = o.optString("token", o.optString("purchaseToken"));
        this.mSignature = signature;
    }

    public java.lang.String getItemType() {
        return this.mItemType;
    }

    public java.lang.String getOrderId() {
        return this.mOrderId;
    }

    public java.lang.String getPackageName() {
        return this.mPackageName;
    }

    public java.lang.String getSku() {
        return this.mSku;
    }

    public long getPurchaseTime() {
        return this.mPurchaseTime;
    }

    public int getPurchaseState() {
        return this.mPurchaseState;
    }

    public java.lang.String getDeveloperPayload() {
        return this.mDeveloperPayload;
    }

    public java.lang.String getToken() {
        return this.mToken;
    }

    public java.lang.String getOriginalJson() {
        return this.mOriginalJson;
    }

    public java.lang.String getSignature() {
        return this.mSignature;
    }

    public java.lang.String toString() {
        return "PurchaseInfo(type:" + this.mItemType + "):" + this.mOriginalJson;
    }
}
