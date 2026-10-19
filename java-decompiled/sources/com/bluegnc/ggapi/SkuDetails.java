package com.bluegnc.ggapi;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class SkuDetails {
    java.lang.String mDescription;
    java.lang.String mItemType;
    java.lang.String mJson;
    java.lang.String mPrice;
    java.lang.String mSku;
    java.lang.String mTitle;
    java.lang.String mType;

    public SkuDetails(java.lang.String jsonSkuDetails) throws org.json.JSONException {
        this(com.bluegnc.ggapi.IabHelper.ITEM_TYPE_INAPP, jsonSkuDetails);
    }

    public SkuDetails(java.lang.String itemType, java.lang.String jsonSkuDetails) throws org.json.JSONException {
        this.mItemType = itemType;
        this.mJson = jsonSkuDetails;
        org.json.JSONObject o = new org.json.JSONObject(this.mJson);
        this.mSku = o.optString("productId");
        this.mType = o.optString("type");
        this.mPrice = o.optString("price");
        this.mTitle = o.optString("title");
        this.mDescription = o.optString("description");
    }

    public java.lang.String getSku() {
        return this.mSku;
    }

    public java.lang.String getType() {
        return this.mType;
    }

    public java.lang.String getPrice() {
        return this.mPrice;
    }

    public java.lang.String getTitle() {
        return this.mTitle;
    }

    public java.lang.String getDescription() {
        return this.mDescription;
    }

    public java.lang.String toString() {
        return "SkuDetails:" + this.mJson;
    }
}
