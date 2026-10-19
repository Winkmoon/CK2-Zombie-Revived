package com.bluegnc.ggapi;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class Inventory {
    java.util.Map<java.lang.String, com.bluegnc.ggapi.SkuDetails> mSkuMap = new java.util.HashMap();
    java.util.Map<java.lang.String, com.bluegnc.ggapi.Purchase> mPurchaseMap = new java.util.HashMap();

    Inventory() {
    }

    public com.bluegnc.ggapi.SkuDetails getSkuDetails(java.lang.String sku) {
        return this.mSkuMap.get(sku);
    }

    public com.bluegnc.ggapi.Purchase getPurchase(java.lang.String sku) {
        return this.mPurchaseMap.get(sku);
    }

    public boolean hasPurchase(java.lang.String sku) {
        return this.mPurchaseMap.containsKey(sku);
    }

    public boolean hasDetails(java.lang.String sku) {
        return this.mSkuMap.containsKey(sku);
    }

    public void erasePurchase(java.lang.String sku) {
        if (this.mPurchaseMap.containsKey(sku)) {
            this.mPurchaseMap.remove(sku);
        }
    }

    java.util.List<java.lang.String> getAllOwnedSkus() {
        return new java.util.ArrayList(this.mPurchaseMap.keySet());
    }

    java.util.List<java.lang.String> getAllOwnedSkus(java.lang.String itemType) {
        java.util.List<java.lang.String> result = new java.util.ArrayList<>();
        for (com.bluegnc.ggapi.Purchase p : this.mPurchaseMap.values()) {
            if (p.getItemType().equals(itemType)) {
                result.add(p.getSku());
            }
        }
        return result;
    }

    java.util.List<com.bluegnc.ggapi.Purchase> getAllPurchases() {
        return new java.util.ArrayList(this.mPurchaseMap.values());
    }

    void addSkuDetails(com.bluegnc.ggapi.SkuDetails d) {
        this.mSkuMap.put(d.getSku(), d);
    }

    void addPurchase(com.bluegnc.ggapi.Purchase p) {
        this.mPurchaseMap.put(p.getSku(), p);
    }
}
