package com.bluegnc.ggapi;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class IabHelper {
    public static final int BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE = 3;
    public static final int BILLING_RESPONSE_RESULT_DEVELOPER_ERROR = 5;
    public static final int BILLING_RESPONSE_RESULT_ERROR = 6;
    public static final int BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED = 7;
    public static final int BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED = 8;
    public static final int BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE = 4;
    public static final int BILLING_RESPONSE_RESULT_OK = 0;
    public static final int BILLING_RESPONSE_RESULT_USER_CANCELED = 1;
    public static final java.lang.String GET_SKU_DETAILS_ITEM_LIST = "ITEM_ID_LIST";
    public static final java.lang.String GET_SKU_DETAILS_ITEM_TYPE_LIST = "ITEM_TYPE_LIST";
    public static final int IABHELPER_BAD_RESPONSE = -1002;
    public static final int IABHELPER_ERROR_BASE = -1000;
    public static final int IABHELPER_INVALID_CONSUMPTION = -1010;
    public static final int IABHELPER_MISSING_TOKEN = -1007;
    public static final int IABHELPER_REMOTE_EXCEPTION = -1001;
    public static final int IABHELPER_SEND_INTENT_FAILED = -1004;
    public static final int IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE = -1009;
    public static final int IABHELPER_UNKNOWN_ERROR = -1008;
    public static final int IABHELPER_UNKNOWN_PURCHASE_RESPONSE = -1006;
    public static final int IABHELPER_USER_CANCELLED = -1005;
    public static final int IABHELPER_VERIFICATION_FAILED = -1003;
    public static final java.lang.String INAPP_CONTINUATION_TOKEN = "INAPP_CONTINUATION_TOKEN";
    public static final java.lang.String ITEM_TYPE_INAPP = "inapp";
    public static final java.lang.String ITEM_TYPE_SUBS = "subs";
    public static final java.lang.String RESPONSE_BUY_INTENT = "BUY_INTENT";
    public static final java.lang.String RESPONSE_CODE = "RESPONSE_CODE";
    public static final java.lang.String RESPONSE_GET_SKU_DETAILS_LIST = "DETAILS_LIST";
    public static final java.lang.String RESPONSE_INAPP_ITEM_LIST = "INAPP_PURCHASE_ITEM_LIST";
    public static final java.lang.String RESPONSE_INAPP_PURCHASE_DATA = "INAPP_PURCHASE_DATA";
    public static final java.lang.String RESPONSE_INAPP_PURCHASE_DATA_LIST = "INAPP_PURCHASE_DATA_LIST";
    public static final java.lang.String RESPONSE_INAPP_SIGNATURE = "INAPP_DATA_SIGNATURE";
    public static final java.lang.String RESPONSE_INAPP_SIGNATURE_LIST = "INAPP_DATA_SIGNATURE_LIST";
    android.content.Context mContext;
    com.bluegnc.ggapi.IabHelper.OnIabPurchaseFinishedListener mPurchaseListener;
    java.lang.String mPurchasingItemType;
    int mRequestCode;
    com.android.vending.billing.IInAppBillingService mService;
    android.content.ServiceConnection mServiceConn;
    java.lang.String mSignatureBase64;
    boolean mDebugLog = false;
    java.lang.String mDebugTag = "IabHelper";
    boolean mSetupDone = false;
    boolean mDisposed = false;
    boolean mSubscriptionsSupported = false;
    boolean mAsyncInProgress = false;
    java.lang.String mAsyncOperation = "";

    public interface OnConsumeFinishedListener {
        void onConsumeFinished(com.bluegnc.ggapi.Purchase purchase, com.bluegnc.ggapi.IabResult iabResult);
    }

    public interface OnConsumeMultiFinishedListener {
        void onConsumeMultiFinished(java.util.List<com.bluegnc.ggapi.Purchase> list, java.util.List<com.bluegnc.ggapi.IabResult> list2);
    }

    public interface OnIabPurchaseFinishedListener {
        void onIabPurchaseFinished(com.bluegnc.ggapi.IabResult iabResult, com.bluegnc.ggapi.Purchase purchase);
    }

    public interface OnIabSetupFinishedListener {
        void onIabSetupFinished(com.bluegnc.ggapi.IabResult iabResult);
    }

    public interface QueryInventoryFinishedListener {
        void onQueryInventoryFinished(com.bluegnc.ggapi.IabResult iabResult, com.bluegnc.ggapi.Inventory inventory);
    }

    public IabHelper(android.content.Context ctx, java.lang.String base64PublicKey) {
        this.mSignatureBase64 = null;
        this.mContext = ctx.getApplicationContext();
        this.mSignatureBase64 = base64PublicKey;
        logDebug("IAB helper created.");
    }

    public void enableDebugLogging(boolean enable, java.lang.String tag) {
        checkNotDisposed();
        this.mDebugLog = enable;
        this.mDebugTag = tag;
    }

    public void enableDebugLogging(boolean enable) {
        checkNotDisposed();
        this.mDebugLog = enable;
    }

    public void startSetup(final com.bluegnc.ggapi.IabHelper.OnIabSetupFinishedListener listener) {
        checkNotDisposed();
        if (this.mSetupDone) {
            throw new java.lang.IllegalStateException("IAB helper is already set up.");
        }
        logDebug("Starting in-app billing setup.");
        this.mServiceConn = new android.content.ServiceConnection() { // from class: com.bluegnc.ggapi.IabHelper.1
            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(android.content.ComponentName name) {
                com.bluegnc.ggapi.IabHelper.this.logDebug("Billing service disconnected.");
                com.bluegnc.ggapi.IabHelper.this.mService = null;
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(android.content.ComponentName name, android.os.IBinder service) {
                if (!com.bluegnc.ggapi.IabHelper.this.mDisposed) {
                    com.bluegnc.ggapi.IabHelper.this.logDebug("Billing service connected.");
                    com.bluegnc.ggapi.IabHelper.this.mService = com.android.vending.billing.IInAppBillingService.Stub.asInterface(service);
                    java.lang.String packageName = com.bluegnc.ggapi.IabHelper.this.mContext.getPackageName();
                    try {
                        com.bluegnc.ggapi.IabHelper.this.logDebug("Checking for in-app billing 3 support.");
                        int response = com.bluegnc.ggapi.IabHelper.this.mService.isBillingSupported(3, packageName, com.bluegnc.ggapi.IabHelper.ITEM_TYPE_INAPP);
                        if (response != 0) {
                            if (listener != null) {
                                listener.onIabSetupFinished(new com.bluegnc.ggapi.IabResult(response, "Error checking for billing v3 support."));
                            }
                            com.bluegnc.ggapi.IabHelper.this.mSubscriptionsSupported = false;
                            return;
                        }
                        com.bluegnc.ggapi.IabHelper.this.logDebug("In-app billing version 3 supported for " + packageName);
                        int response2 = com.bluegnc.ggapi.IabHelper.this.mService.isBillingSupported(3, packageName, com.bluegnc.ggapi.IabHelper.ITEM_TYPE_SUBS);
                        if (response2 == 0) {
                            com.bluegnc.ggapi.IabHelper.this.logDebug("Subscriptions AVAILABLE.");
                            com.bluegnc.ggapi.IabHelper.this.mSubscriptionsSupported = true;
                        } else {
                            com.bluegnc.ggapi.IabHelper.this.logDebug("Subscriptions NOT AVAILABLE. Response: " + response2);
                        }
                        com.bluegnc.ggapi.IabHelper.this.mSetupDone = true;
                        if (listener != null) {
                            listener.onIabSetupFinished(new com.bluegnc.ggapi.IabResult(0, "Setup successful."));
                        }
                    } catch (android.os.RemoteException e) {
                        if (listener != null) {
                            listener.onIabSetupFinished(new com.bluegnc.ggapi.IabResult(com.bluegnc.ggapi.IabHelper.IABHELPER_REMOTE_EXCEPTION, "RemoteException while setting up in-app billing."));
                        }
                        e.printStackTrace();
                    }
                }
            }
        };
        android.content.Intent serviceIntent = new android.content.Intent("com.android.vending.billing.InAppBillingService.BIND");
        serviceIntent.setPackage("com.android.vending");
        if (!this.mContext.getPackageManager().queryIntentServices(serviceIntent, 0).isEmpty()) {
            this.mContext.bindService(serviceIntent, this.mServiceConn, 1);
        } else if (listener != null) {
            listener.onIabSetupFinished(new com.bluegnc.ggapi.IabResult(3, "Billing service unavailable on device."));
        }
    }

    public void dispose() {
        logDebug("Disposing.");
        this.mSetupDone = false;
        if (this.mServiceConn != null) {
            logDebug("Unbinding from service.");
            if (this.mContext != null && this.mService != null) {
                this.mContext.unbindService(this.mServiceConn);
            }
        }
        this.mDisposed = true;
        this.mContext = null;
        this.mServiceConn = null;
        this.mService = null;
        this.mPurchaseListener = null;
    }

    private void checkNotDisposed() {
        if (this.mDisposed) {
            throw new java.lang.IllegalStateException("IabHelper was disposed of, so it cannot be used.");
        }
    }

    public boolean subscriptionsSupported() {
        checkNotDisposed();
        return this.mSubscriptionsSupported;
    }

    public void launchPurchaseFlow(android.app.Activity act, java.lang.String sku, int requestCode, com.bluegnc.ggapi.IabHelper.OnIabPurchaseFinishedListener listener) {
        launchPurchaseFlow(act, sku, requestCode, listener, "");
    }

    public void launchPurchaseFlow(android.app.Activity act, java.lang.String sku, int requestCode, com.bluegnc.ggapi.IabHelper.OnIabPurchaseFinishedListener listener, java.lang.String extraData) {
        launchPurchaseFlow(act, sku, ITEM_TYPE_INAPP, requestCode, listener, extraData);
    }

    public void launchSubscriptionPurchaseFlow(android.app.Activity act, java.lang.String sku, int requestCode, com.bluegnc.ggapi.IabHelper.OnIabPurchaseFinishedListener listener) {
        launchSubscriptionPurchaseFlow(act, sku, requestCode, listener, "");
    }

    public void launchSubscriptionPurchaseFlow(android.app.Activity act, java.lang.String sku, int requestCode, com.bluegnc.ggapi.IabHelper.OnIabPurchaseFinishedListener listener, java.lang.String extraData) {
        launchPurchaseFlow(act, sku, ITEM_TYPE_SUBS, requestCode, listener, extraData);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x00b6 -> B:16:0x002f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x00b8 -> B:16:0x002f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0144 -> B:16:0x002f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0146 -> B:16:0x002f). Please report as a decompilation issue!!! */
    public void launchPurchaseFlow(android.app.Activity act, java.lang.String sku, java.lang.String itemType, int requestCode, com.bluegnc.ggapi.IabHelper.OnIabPurchaseFinishedListener listener, java.lang.String extraData) {
        checkNotDisposed();
        checkSetupDone("launchPurchaseFlow");
        flagStartAsync("launchPurchaseFlow");
        if (itemType.equals(ITEM_TYPE_SUBS) && !this.mSubscriptionsSupported) {
            com.bluegnc.ggapi.IabResult r = new com.bluegnc.ggapi.IabResult(IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE, "Subscriptions are not available.");
            flagEndAsync();
            if (listener != null) {
                listener.onIabPurchaseFinished(r, null);
                return;
            }
            return;
        }
        try {
            logDebug("Constructing buy intent for " + sku + ", item type: " + itemType);
            android.os.Bundle buyIntentBundle = this.mService.getBuyIntent(3, this.mContext.getPackageName(), sku, itemType, extraData);
            int response = getResponseCodeFromBundle(buyIntentBundle);
            if (response != 0) {
                logError("Unable to buy item, Error response: " + getResponseDesc(response));
                flagEndAsync();
                com.bluegnc.ggapi.IabResult result = new com.bluegnc.ggapi.IabResult(response, "Unable to buy item");
                if (listener != null) {
                    listener.onIabPurchaseFinished(result, null);
                }
            } else {
                android.app.PendingIntent pendingIntent = (android.app.PendingIntent) buyIntentBundle.getParcelable(RESPONSE_BUY_INTENT);
                logDebug("Launching buy intent for " + sku + ". Request code: " + requestCode);
                this.mRequestCode = requestCode;
                this.mPurchaseListener = listener;
                this.mPurchasingItemType = itemType;
                android.content.IntentSender intentSender = pendingIntent.getIntentSender();
                android.content.Intent intent = new android.content.Intent();
                java.lang.Integer num = 0;
                int intValue = num.intValue();
                java.lang.Integer num2 = 0;
                int intValue2 = num2.intValue();
                java.lang.Integer num3 = 0;
                act.startIntentSenderForResult(intentSender, requestCode, intent, intValue, intValue2, num3.intValue());
            }
        } catch (android.content.IntentSender.SendIntentException e) {
            logError("SendIntentException while launching purchase flow for sku " + sku);
            e.printStackTrace();
            flagEndAsync();
            com.bluegnc.ggapi.IabResult result2 = new com.bluegnc.ggapi.IabResult(IABHELPER_SEND_INTENT_FAILED, "Failed to send intent.");
            if (listener != null) {
                listener.onIabPurchaseFinished(result2, null);
            }
        } catch (android.os.RemoteException e2) {
            logError("RemoteException while launching purchase flow for sku " + sku);
            e2.printStackTrace();
            flagEndAsync();
            com.bluegnc.ggapi.IabResult result3 = new com.bluegnc.ggapi.IabResult(IABHELPER_REMOTE_EXCEPTION, "Remote exception while starting purchase flow");
            if (listener != null) {
                listener.onIabPurchaseFinished(result3, null);
            }
        }
    }

    public boolean handleActivityResult(int requestCode, int resultCode, android.content.Intent data) {
        if (requestCode != this.mRequestCode) {
            return false;
        }
        checkNotDisposed();
        checkSetupDone("handleActivityResult");
        flagEndAsync();
        if (data == null) {
            logError("Null data in IAB activity result.");
            com.bluegnc.ggapi.IabResult result = new com.bluegnc.ggapi.IabResult(IABHELPER_BAD_RESPONSE, "Null data in IAB result");
            if (this.mPurchaseListener != null) {
                this.mPurchaseListener.onIabPurchaseFinished(result, null);
            }
            return true;
        }
        int responseCode = getResponseCodeFromIntent(data);
        java.lang.String purchaseData = data.getStringExtra(RESPONSE_INAPP_PURCHASE_DATA);
        java.lang.String dataSignature = data.getStringExtra(RESPONSE_INAPP_SIGNATURE);
        if (resultCode == -1 && responseCode == 0) {
            logDebug("Successful resultcode from purchase activity.");
            logDebug("Purchase data: " + purchaseData);
            logDebug("Data signature: " + dataSignature);
            logDebug("Extras: " + data.getExtras());
            logDebug("Expected item type: " + this.mPurchasingItemType);
            if (purchaseData == null || dataSignature == null) {
                logError("BUG: either purchaseData or dataSignature is null.");
                logDebug("Extras: " + data.getExtras().toString());
                com.bluegnc.ggapi.IabResult result2 = new com.bluegnc.ggapi.IabResult(IABHELPER_UNKNOWN_ERROR, "IAB returned null purchaseData or dataSignature");
                if (this.mPurchaseListener != null) {
                    this.mPurchaseListener.onIabPurchaseFinished(result2, null);
                }
                return true;
            }
            try {
                com.bluegnc.ggapi.Purchase purchase = new com.bluegnc.ggapi.Purchase(this.mPurchasingItemType, purchaseData, dataSignature);
                try {
                    java.lang.String sku = purchase.getSku();
                    if (!com.bluegnc.ggapi.Security.verifyPurchase(this.mSignatureBase64, purchaseData, dataSignature)) {
                        logError("Purchase signature verification FAILED for sku " + sku);
                        com.bluegnc.ggapi.IabResult result3 = new com.bluegnc.ggapi.IabResult(IABHELPER_VERIFICATION_FAILED, "Signature verification failed for sku " + sku);
                        if (this.mPurchaseListener != null) {
                            this.mPurchaseListener.onIabPurchaseFinished(result3, purchase);
                        }
                        return true;
                    }
                    logDebug("Purchase signature successfully verified.");
                    if (this.mPurchaseListener != null) {
                        this.mPurchaseListener.onIabPurchaseFinished(new com.bluegnc.ggapi.IabResult(0, "Success"), purchase);
                    }
                } catch (org.json.JSONException e) {
                    e = e;
                    logError("Failed to parse purchase data.");
                    e.printStackTrace();
                    com.bluegnc.ggapi.IabResult result4 = new com.bluegnc.ggapi.IabResult(IABHELPER_BAD_RESPONSE, "Failed to parse purchase data.");
                    if (this.mPurchaseListener != null) {
                        this.mPurchaseListener.onIabPurchaseFinished(result4, null);
                    }
                    return true;
                }
            } catch (org.json.JSONException e2) {
                e = e2;
            }
        } else if (resultCode == -1) {
            logDebug("Result code was OK but in-app billing response was not OK: " + getResponseDesc(responseCode));
            if (this.mPurchaseListener != null) {
                com.bluegnc.ggapi.IabResult result5 = new com.bluegnc.ggapi.IabResult(responseCode, "Problem purchashing item.");
                this.mPurchaseListener.onIabPurchaseFinished(result5, null);
            }
        } else if (resultCode == 0) {
            logDebug("Purchase canceled - Response: " + getResponseDesc(responseCode));
            com.bluegnc.ggapi.IabResult result6 = new com.bluegnc.ggapi.IabResult(IABHELPER_USER_CANCELLED, "User canceled.");
            if (this.mPurchaseListener != null) {
                this.mPurchaseListener.onIabPurchaseFinished(result6, null);
            }
        } else {
            logError("Purchase failed. Result code: " + java.lang.Integer.toString(resultCode) + ". Response: " + getResponseDesc(responseCode));
            com.bluegnc.ggapi.IabResult result7 = new com.bluegnc.ggapi.IabResult(IABHELPER_UNKNOWN_PURCHASE_RESPONSE, "Unknown purchase response.");
            if (this.mPurchaseListener != null) {
                this.mPurchaseListener.onIabPurchaseFinished(result7, null);
            }
        }
        return true;
    }

    public com.bluegnc.ggapi.Inventory queryInventory(boolean querySkuDetails, java.util.List<java.lang.String> moreSkus) throws com.bluegnc.ggapi.IabException {
        return queryInventory(querySkuDetails, moreSkus, null);
    }

    public com.bluegnc.ggapi.Inventory queryInventory(boolean querySkuDetails, java.util.List<java.lang.String> moreItemSkus, java.util.List<java.lang.String> moreSubsSkus) throws com.bluegnc.ggapi.IabException {
        int r;
        int r2;
        checkNotDisposed();
        checkSetupDone("queryInventory");
        try {
            com.bluegnc.ggapi.Inventory inv = new com.bluegnc.ggapi.Inventory();
            int r3 = queryPurchases(inv, ITEM_TYPE_INAPP);
            if (r3 != 0) {
                throw new com.bluegnc.ggapi.IabException(r3, "Error refreshing inventory (querying owned items).");
            }
            if (querySkuDetails && (r2 = querySkuDetails(ITEM_TYPE_INAPP, inv, moreItemSkus)) != 0) {
                throw new com.bluegnc.ggapi.IabException(r2, "Error refreshing inventory (querying prices of items).");
            }
            if (this.mSubscriptionsSupported) {
                int r4 = queryPurchases(inv, ITEM_TYPE_SUBS);
                if (r4 != 0) {
                    throw new com.bluegnc.ggapi.IabException(r4, "Error refreshing inventory (querying owned subscriptions).");
                }
                if (querySkuDetails && (r = querySkuDetails(ITEM_TYPE_SUBS, inv, moreItemSkus)) != 0) {
                    throw new com.bluegnc.ggapi.IabException(r, "Error refreshing inventory (querying prices of subscriptions).");
                }
            }
            return inv;
        } catch (android.os.RemoteException e) {
            throw new com.bluegnc.ggapi.IabException(IABHELPER_REMOTE_EXCEPTION, "Remote exception while refreshing inventory.", e);
        } catch (org.json.JSONException e2) {
            throw new com.bluegnc.ggapi.IabException(IABHELPER_BAD_RESPONSE, "Error parsing JSON response while refreshing inventory.", e2);
        }
    }

    public void queryInventoryAsync(final boolean querySkuDetails, final java.util.List<java.lang.String> moreSkus, final com.bluegnc.ggapi.IabHelper.QueryInventoryFinishedListener listener) {
        final android.os.Handler handler = new android.os.Handler();
        checkNotDisposed();
        checkSetupDone("queryInventory");
        flagStartAsync("refresh inventory");
        new java.lang.Thread(new java.lang.Runnable() { // from class: com.bluegnc.ggapi.IabHelper.2
            @Override // java.lang.Runnable
            public void run() {
                com.bluegnc.ggapi.IabResult result = new com.bluegnc.ggapi.IabResult(0, "Inventory refresh successful.");
                com.bluegnc.ggapi.Inventory inv = null;
                try {
                    inv = com.bluegnc.ggapi.IabHelper.this.queryInventory(querySkuDetails, moreSkus);
                } catch (com.bluegnc.ggapi.IabException ex) {
                    result = ex.getResult();
                } catch (java.lang.IllegalStateException e) {
                    result = new com.bluegnc.ggapi.IabResult(6, "Helper is not setup");
                }
                com.bluegnc.ggapi.IabHelper.this.flagEndAsync();
                final com.bluegnc.ggapi.IabResult result_f = result;
                final com.bluegnc.ggapi.Inventory inv_f = inv;
                if (!com.bluegnc.ggapi.IabHelper.this.mDisposed && listener != null) {
                    android.os.Handler handler2 = handler;
                    final com.bluegnc.ggapi.IabHelper.QueryInventoryFinishedListener queryInventoryFinishedListener = listener;
                    handler2.post(new java.lang.Runnable() { // from class: com.bluegnc.ggapi.IabHelper.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            queryInventoryFinishedListener.onQueryInventoryFinished(result_f, inv_f);
                        }
                    });
                }
            }
        }).start();
    }

    public void queryInventoryAsync(com.bluegnc.ggapi.IabHelper.QueryInventoryFinishedListener listener) {
        queryInventoryAsync(true, null, listener);
    }

    public void queryInventoryAsync(boolean querySkuDetails, com.bluegnc.ggapi.IabHelper.QueryInventoryFinishedListener listener) {
        queryInventoryAsync(querySkuDetails, null, listener);
    }

    void consume(com.bluegnc.ggapi.Purchase itemInfo) throws com.bluegnc.ggapi.IabException {
        checkNotDisposed();
        checkSetupDone("consume");
        if (!itemInfo.mItemType.equals(ITEM_TYPE_INAPP)) {
            throw new com.bluegnc.ggapi.IabException(IABHELPER_INVALID_CONSUMPTION, "Items of type '" + itemInfo.mItemType + "' can't be consumed.");
        }
        try {
            java.lang.String token = itemInfo.getToken();
            java.lang.String sku = itemInfo.getSku();
            if (token == null || token.equals("")) {
                logError("Can't consume " + sku + ". No token.");
                throw new com.bluegnc.ggapi.IabException(IABHELPER_MISSING_TOKEN, "PurchaseInfo is missing token for sku: " + sku + " " + itemInfo);
            }
            logDebug("Consuming sku: " + sku + ", token: " + token);
            int response = this.mService.consumePurchase(3, this.mContext.getPackageName(), token);
            if (response == 0) {
                logDebug("Successfully consumed sku: " + sku);
            } else {
                logDebug("Error consuming consuming sku " + sku + ". " + getResponseDesc(response));
                throw new com.bluegnc.ggapi.IabException(response, "Error consuming sku " + sku);
            }
        } catch (android.os.RemoteException e) {
            throw new com.bluegnc.ggapi.IabException(IABHELPER_REMOTE_EXCEPTION, "Remote exception while consuming. PurchaseInfo: " + itemInfo, e);
        }
    }

    public void consumeAsync(com.bluegnc.ggapi.Purchase purchase, com.bluegnc.ggapi.IabHelper.OnConsumeFinishedListener listener) {
        checkNotDisposed();
        checkSetupDone("consume");
        java.util.List<com.bluegnc.ggapi.Purchase> purchases = new java.util.ArrayList<>();
        purchases.add(purchase);
        consumeAsyncInternal(purchases, listener, null);
    }

    public void consumeAsync(java.util.List<com.bluegnc.ggapi.Purchase> purchases, com.bluegnc.ggapi.IabHelper.OnConsumeMultiFinishedListener listener) {
        checkNotDisposed();
        checkSetupDone("consume");
        consumeAsyncInternal(purchases, null, listener);
    }

    public static java.lang.String getResponseDesc(int code) {
        java.lang.String[] iab_msgs = "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned".split("/");
        java.lang.String[] iabhelper_msgs = "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt".split("/");
        if (code <= -1000) {
            int index = (-1000) - code;
            return (index < 0 || index >= iabhelper_msgs.length) ? java.lang.String.valueOf(java.lang.String.valueOf(code)) + ":Unknown IAB Helper Error" : iabhelper_msgs[index];
        }
        if (code < 0 || code >= iab_msgs.length) {
            return java.lang.String.valueOf(java.lang.String.valueOf(code)) + ":Unknown";
        }
        return iab_msgs[code];
    }

    void checkSetupDone(java.lang.String operation) {
        if (!this.mSetupDone) {
            logError("Illegal state for operation (" + operation + "): IAB helper is not set up.");
            throw new java.lang.IllegalStateException("IAB helper is not set up. Can't perform operation: " + operation);
        }
    }

    int getResponseCodeFromBundle(android.os.Bundle b) {
        java.lang.Object o = b.get(RESPONSE_CODE);
        if (o == null) {
            logDebug("Bundle with null response code, assuming OK (known issue)");
            return 0;
        }
        if (o instanceof java.lang.Integer) {
            return ((java.lang.Integer) o).intValue();
        }
        if (o instanceof java.lang.Long) {
            return (int) ((java.lang.Long) o).longValue();
        }
        logError("Unexpected type for bundle response code.");
        logError(o.getClass().getName());
        throw new java.lang.RuntimeException("Unexpected type for bundle response code: " + o.getClass().getName());
    }

    int getResponseCodeFromIntent(android.content.Intent i) {
        java.lang.Object o = i.getExtras().get(RESPONSE_CODE);
        if (o == null) {
            logError("Intent with no response code, assuming OK (known issue)");
            return 0;
        }
        if (o instanceof java.lang.Integer) {
            return ((java.lang.Integer) o).intValue();
        }
        if (o instanceof java.lang.Long) {
            return (int) ((java.lang.Long) o).longValue();
        }
        logError("Unexpected type for intent response code.");
        logError(o.getClass().getName());
        throw new java.lang.RuntimeException("Unexpected type for intent response code: " + o.getClass().getName());
    }

    void flagStartAsync(java.lang.String operation) {
        if (this.mAsyncInProgress) {
            throw new java.lang.IllegalStateException("Can't start async operation (" + operation + ") because another async operation(" + this.mAsyncOperation + ") is in progress.");
        }
        this.mAsyncOperation = operation;
        this.mAsyncInProgress = true;
        logDebug("Starting async operation: " + operation);
    }

    void flagEndAsync() {
        logDebug("Ending async operation: " + this.mAsyncOperation);
        this.mAsyncOperation = "";
        this.mAsyncInProgress = false;
    }

    int queryPurchases(com.bluegnc.ggapi.Inventory inv, java.lang.String itemType) throws org.json.JSONException, android.os.RemoteException {
        logDebug("Querying owned items, item type: " + itemType);
        logDebug("Package name: " + this.mContext.getPackageName());
        boolean verificationFailed = false;
        java.lang.String continueToken = null;
        do {
            logDebug("Calling getPurchases with continuation token: " + continueToken);
            android.os.Bundle ownedItems = this.mService.getPurchases(3, this.mContext.getPackageName(), itemType, continueToken);
            int response = getResponseCodeFromBundle(ownedItems);
            logDebug("Owned items response: " + java.lang.String.valueOf(response));
            if (response != 0) {
                logDebug("getPurchases() failed: " + getResponseDesc(response));
                return response;
            }
            if (!ownedItems.containsKey(RESPONSE_INAPP_ITEM_LIST) || !ownedItems.containsKey(RESPONSE_INAPP_PURCHASE_DATA_LIST) || !ownedItems.containsKey(RESPONSE_INAPP_SIGNATURE_LIST)) {
                logError("Bundle returned from getPurchases() doesn't contain required fields.");
                return IABHELPER_BAD_RESPONSE;
            }
            java.util.ArrayList<java.lang.String> ownedSkus = ownedItems.getStringArrayList(RESPONSE_INAPP_ITEM_LIST);
            java.util.ArrayList<java.lang.String> purchaseDataList = ownedItems.getStringArrayList(RESPONSE_INAPP_PURCHASE_DATA_LIST);
            java.util.ArrayList<java.lang.String> signatureList = ownedItems.getStringArrayList(RESPONSE_INAPP_SIGNATURE_LIST);
            for (int i = 0; i < purchaseDataList.size(); i++) {
                java.lang.String purchaseData = purchaseDataList.get(i);
                java.lang.String signature = signatureList.get(i);
                java.lang.String sku = ownedSkus.get(i);
                if (com.bluegnc.ggapi.Security.verifyPurchase(this.mSignatureBase64, purchaseData, signature)) {
                    logDebug("Sku is owned: " + sku);
                    com.bluegnc.ggapi.Purchase purchase = new com.bluegnc.ggapi.Purchase(itemType, purchaseData, signature);
                    if (android.text.TextUtils.isEmpty(purchase.getToken())) {
                        logWarn("BUG: empty/null token!");
                        logDebug("Purchase data: " + purchaseData);
                    }
                    inv.addPurchase(purchase);
                } else {
                    logWarn("Purchase signature verification **FAILED**. Not adding item.");
                    logDebug("   Purchase data: " + purchaseData);
                    logDebug("   Signature: " + signature);
                    verificationFailed = true;
                }
            }
            continueToken = ownedItems.getString(INAPP_CONTINUATION_TOKEN);
            logDebug("Continuation token: " + continueToken);
        } while (!android.text.TextUtils.isEmpty(continueToken));
        return verificationFailed ? IABHELPER_VERIFICATION_FAILED : 0;
    }

    int querySkuDetails(java.lang.String itemType, com.bluegnc.ggapi.Inventory inv, java.util.List<java.lang.String> moreSkus) throws android.os.RemoteException, org.json.JSONException {
        logDebug("Querying SKU details.");
        java.util.ArrayList<java.lang.String> skuList = new java.util.ArrayList<>();
        skuList.addAll(inv.getAllOwnedSkus(itemType));
        if (moreSkus != null) {
            for (java.lang.String sku : moreSkus) {
                if (!skuList.contains(sku)) {
                    skuList.add(sku);
                }
            }
        }
        if (skuList.size() == 0) {
            logDebug("queryPrices: nothing to do because there are no SKUs.");
            return 0;
        }
        android.os.Bundle querySkus = new android.os.Bundle();
        querySkus.putStringArrayList(GET_SKU_DETAILS_ITEM_LIST, skuList);
        android.os.Bundle skuDetails = this.mService.getSkuDetails(3, this.mContext.getPackageName(), itemType, querySkus);
        if (!skuDetails.containsKey(RESPONSE_GET_SKU_DETAILS_LIST)) {
            int response = getResponseCodeFromBundle(skuDetails);
            if (response != 0) {
                logDebug("getSkuDetails() failed: " + getResponseDesc(response));
                return response;
            }
            logError("getSkuDetails() returned a bundle with neither an error nor a detail list.");
            return IABHELPER_BAD_RESPONSE;
        }
        java.util.ArrayList<java.lang.String> responseList = skuDetails.getStringArrayList(RESPONSE_GET_SKU_DETAILS_LIST);
        java.util.Iterator<java.lang.String> it = responseList.iterator();
        while (it.hasNext()) {
            java.lang.String thisResponse = it.next();
            com.bluegnc.ggapi.SkuDetails d = new com.bluegnc.ggapi.SkuDetails(itemType, thisResponse);
            logDebug("Got sku details: " + d);
            inv.addSkuDetails(d);
        }
        return 0;
    }

    void consumeAsyncInternal(final java.util.List<com.bluegnc.ggapi.Purchase> purchases, final com.bluegnc.ggapi.IabHelper.OnConsumeFinishedListener singleListener, final com.bluegnc.ggapi.IabHelper.OnConsumeMultiFinishedListener multiListener) {
        final android.os.Handler handler = new android.os.Handler();
        flagStartAsync("consume");
        new java.lang.Thread(new java.lang.Runnable() { // from class: com.bluegnc.ggapi.IabHelper.3
            @Override // java.lang.Runnable
            public void run() {
                final java.util.List<com.bluegnc.ggapi.IabResult> results = new java.util.ArrayList<>();
                for (com.bluegnc.ggapi.Purchase purchase : purchases) {
                    try {
                        com.bluegnc.ggapi.IabHelper.this.consume(purchase);
                        results.add(new com.bluegnc.ggapi.IabResult(0, "Successful consume of sku " + purchase.getSku()));
                    } catch (com.bluegnc.ggapi.IabException ex) {
                        results.add(ex.getResult());
                    }
                }
                com.bluegnc.ggapi.IabHelper.this.flagEndAsync();
                if (!com.bluegnc.ggapi.IabHelper.this.mDisposed && singleListener != null) {
                    android.os.Handler handler2 = handler;
                    final com.bluegnc.ggapi.IabHelper.OnConsumeFinishedListener onConsumeFinishedListener = singleListener;
                    final java.util.List list = purchases;
                    handler2.post(new java.lang.Runnable() { // from class: com.bluegnc.ggapi.IabHelper.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            onConsumeFinishedListener.onConsumeFinished((com.bluegnc.ggapi.Purchase) list.get(0), (com.bluegnc.ggapi.IabResult) results.get(0));
                        }
                    });
                }
                if (!com.bluegnc.ggapi.IabHelper.this.mDisposed && multiListener != null) {
                    android.os.Handler handler3 = handler;
                    final com.bluegnc.ggapi.IabHelper.OnConsumeMultiFinishedListener onConsumeMultiFinishedListener = multiListener;
                    final java.util.List list2 = purchases;
                    handler3.post(new java.lang.Runnable() { // from class: com.bluegnc.ggapi.IabHelper.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            onConsumeMultiFinishedListener.onConsumeMultiFinished(list2, results);
                        }
                    });
                }
            }
        }).start();
    }

    void logDebug(java.lang.String msg) {
        if (this.mDebugLog) {
            android.util.Log.d(this.mDebugTag, msg);
        }
    }

    void logError(java.lang.String msg) {
        android.util.Log.e(this.mDebugTag, "In-app billing error: " + msg);
    }

    void logWarn(java.lang.String msg) {
        android.util.Log.w(this.mDebugTag, "In-app billing warning: " + msg);
    }
}
