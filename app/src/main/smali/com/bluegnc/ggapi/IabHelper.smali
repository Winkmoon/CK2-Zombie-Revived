.class public Lcom/bluegnc/ggapi/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bluegnc/ggapi/IabHelper$OnConsumeFinishedListener;,
        Lcom/bluegnc/ggapi/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/bluegnc/ggapi/IabHelper$OnIabSetupFinishedListener;,
        Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mDisposed:Z

.field mPurchaseListener:Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "base64PublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v1, p0, Lcom/bluegnc/ggapi/IabHelper;->mDebugLog:Z

    .line 75
    const-string v0, "IabHelper"

    iput-object v0, p0, Lcom/bluegnc/ggapi/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lcom/bluegnc/ggapi/IabHelper;->mSetupDone:Z

    .line 81
    iput-boolean v1, p0, Lcom/bluegnc/ggapi/IabHelper;->mDisposed:Z

    .line 84
    iput-boolean v1, p0, Lcom/bluegnc/ggapi/IabHelper;->mSubscriptionsSupported:Z

    .line 88
    iput-boolean v1, p0, Lcom/bluegnc/ggapi/IabHelper;->mAsyncInProgress:Z

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/bluegnc/ggapi/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bluegnc/ggapi/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bluegnc/ggapi/IabHelper;->mContext:Landroid/content/Context;

    .line 165
    iput-object p2, p0, Lcom/bluegnc/ggapi/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 166
    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private checkNotDisposed()V
    .registers 3

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/bluegnc/ggapi/IabHelper;->mDisposed:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_c
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .registers 6
    .param p0, "code"    # I

    .prologue
    .line 754
    const-string v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    .line 757
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 758
    .local v0, "iab_msgs":[Ljava/lang/String;
    const-string v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    .line 767
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 769
    .local v1, "iabhelper_msgs":[Ljava/lang/String;
    const/16 v3, -0x3e8

    if-gt p0, v3, :cond_36

    .line 770
    rsub-int v2, p0, -0x3e8

    .line 771
    .local v2, "index":I
    if-ltz v2, :cond_1e

    array-length v3, v1

    if-ge v2, v3, :cond_1e

    aget-object v3, v1, v2

    .line 777
    .end local v2    # "index":I
    :goto_1d
    return-object v3

    .line 772
    .restart local v2    # "index":I
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":Unknown IAB Helper Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1d

    .line 774
    .end local v2    # "index":I
    :cond_36
    if-ltz p0, :cond_3b

    array-length v3, v0

    if-lt p0, v3, :cond_53

    .line 775
    :cond_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1d

    .line 777
    :cond_53
    aget-object v3, v0, p0

    goto :goto_1d
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .registers 5
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/bluegnc/ggapi/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_31

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal state for operation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bluegnc/ggapi/IabHelper;->logError(Ljava/lang/String;)V

    .line 785
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_31
    return-void
.end method

.method consume(Lcom/bluegnc/ggapi/Purchase;)V
    .registers 10
    .param p1, "itemInfo"    # Lcom/bluegnc/ggapi/Purchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bluegnc/ggapi/IabException;
        }
    .end annotation

    .prologue
    .line 660
    invoke-direct {p0}, Lcom/bluegnc/ggapi/IabHelper;->checkNotDisposed()V

    .line 661
    const-string v4, "consume"

    invoke-virtual {p0, v4}, Lcom/bluegnc/ggapi/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 663
    iget-object v4, p1, Lcom/bluegnc/ggapi/Purchase;->mItemType:Ljava/lang/String;

    const-string v5, "inapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 664
    new-instance v4, Lcom/bluegnc/ggapi/IabException;

    const/16 v5, -0x3f2

    .line 665
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Items of type \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/bluegnc/ggapi/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' can\'t be consumed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 664
    invoke-direct {v4, v5, v6}, Lcom/bluegnc/ggapi/IabException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 669
    :cond_31
    :try_start_31
    invoke-virtual {p1}, Lcom/bluegnc/ggapi/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 670
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/bluegnc/ggapi/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 671
    .local v2, "sku":Ljava/lang/String;
    if-eqz v3, :cond_43

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_94

    .line 672
    :cond_43
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t consume "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". No token."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/bluegnc/ggapi/IabHelper;->logError(Ljava/lang/String;)V

    .line 673
    new-instance v4, Lcom/bluegnc/ggapi/IabException;

    const/16 v5, -0x3ef

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PurchaseInfo is missing token for sku: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 673
    invoke-direct {v4, v5, v6}, Lcom/bluegnc/ggapi/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_7c} :catch_7c

    .line 687
    .end local v2    # "sku":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :catch_7c
    move-exception v0

    .line 688
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/bluegnc/ggapi/IabException;

    const/16 v5, -0x3e9

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Remote exception while consuming. PurchaseInfo: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/bluegnc/ggapi/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 677
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "sku":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    :cond_94
    :try_start_94
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Consuming sku: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 678
    iget-object v4, p0, Lcom/bluegnc/ggapi/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/bluegnc/ggapi/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 679
    .local v1, "response":I
    if-nez v1, :cond_d2

    .line 680
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Successfully consumed sku: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 690
    return-void

    .line 683
    :cond_d2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error consuming consuming sku "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/bluegnc/ggapi/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 684
    new-instance v4, Lcom/bluegnc/ggapi/IabException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error consuming sku "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/bluegnc/ggapi/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_107
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_107} :catch_7c
.end method

.method public consumeAsync(Lcom/bluegnc/ggapi/Purchase;Lcom/bluegnc/ggapi/IabHelper$OnConsumeFinishedListener;)V
    .registers 5
    .param p1, "purchase"    # Lcom/bluegnc/ggapi/Purchase;
    .param p2, "listener"    # Lcom/bluegnc/ggapi/IabHelper$OnConsumeFinishedListener;

    .prologue
    .line 728
    invoke-direct {p0}, Lcom/bluegnc/ggapi/IabHelper;->checkNotDisposed()V

    .line 729
    const-string v1, "consume"

    invoke-virtual {p0, v1}, Lcom/bluegnc/ggapi/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 730
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 731
    .local v0, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/bluegnc/ggapi/Purchase;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/bluegnc/ggapi/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/bluegnc/ggapi/IabHelper$OnConsumeFinishedListener;Lcom/bluegnc/ggapi/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 733
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/bluegnc/ggapi/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 4
    .param p2, "listener"    # Lcom/bluegnc/ggapi/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bluegnc/ggapi/Purchase;",
            ">;",
            "Lcom/bluegnc/ggapi/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 741
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/bluegnc/ggapi/Purchase;>;"
    invoke-direct {p0}, Lcom/bluegnc/ggapi/IabHelper;->checkNotDisposed()V

    .line 742
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/bluegnc/ggapi/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 743
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/bluegnc/ggapi/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/bluegnc/ggapi/IabHelper$OnConsumeFinishedListener;Lcom/bluegnc/ggapi/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 744
    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/bluegnc/ggapi/IabHelper$OnConsumeFinishedListener;Lcom/bluegnc/ggapi/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 11
    .param p2, "singleListener"    # Lcom/bluegnc/ggapi/IabHelper$OnConsumeFinishedListener;
    .param p3, "multiListener"    # Lcom/bluegnc/ggapi/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bluegnc/ggapi/Purchase;",
            ">;",
            "Lcom/bluegnc/ggapi/IabHelper$OnConsumeFinishedListener;",
            "Lcom/bluegnc/ggapi/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 949
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/bluegnc/ggapi/Purchase;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 950
    .local v4, "handler":Landroid/os/Handler;
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/bluegnc/ggapi/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 951
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/bluegnc/ggapi/IabHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluegnc/ggapi/IabHelper$3;-><init>(Lcom/bluegnc/ggapi/IabHelper;Ljava/util/List;Lcom/bluegnc/ggapi/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/bluegnc/ggapi/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 980
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 981
    return-void
.end method

.method public dispose()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 288
    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bluegnc/ggapi/IabHelper;->mSetupDone:Z

    .line 290
    iget-object v0, p0, Lcom/bluegnc/ggapi/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_21

    .line 291
    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/bluegnc/ggapi/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/bluegnc/ggapi/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/bluegnc/ggapi/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/bluegnc/ggapi/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 294
    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluegnc/ggapi/IabHelper;->mDisposed:Z

    .line 295
    iput-object v2, p0, Lcom/bluegnc/ggapi/IabHelper;->mContext:Landroid/content/Context;

    .line 296
    iput-object v2, p0, Lcom/bluegnc/ggapi/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 297
    iput-object v2, p0, Lcom/bluegnc/ggapi/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 298
    iput-object v2, p0, Lcom/bluegnc/ggapi/IabHelper;->mPurchaseListener:Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;

    .line 299
    return-void
.end method

.method public enableDebugLogging(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/bluegnc/ggapi/IabHelper;->checkNotDisposed()V

    .line 180
    iput-boolean p1, p0, Lcom/bluegnc/ggapi/IabHelper;->mDebugLog:Z

    .line 181
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .registers 3
    .param p1, "enable"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/bluegnc/ggapi/IabHelper;->checkNotDisposed()V

    .line 174
    iput-boolean p1, p0, Lcom/bluegnc/ggapi/IabHelper;->mDebugLog:Z

    .line 175
    iput-object p2, p0, Lcom/bluegnc/ggapi/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 176
    return-void
.end method

.method flagEndAsync()V
    .registers 3

    .prologue
    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ending async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bluegnc/ggapi/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 831
    const-string v0, ""

    iput-object v0, p0, Lcom/bluegnc/ggapi/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 832
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bluegnc/ggapi/IabHelper;->mAsyncInProgress:Z

    .line 833
    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .registers 5
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 822
    iget-boolean v0, p0, Lcom/bluegnc/ggapi/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t start async operation ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bluegnc/ggapi/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 824
    :cond_2b
    iput-object p1, p0, Lcom/bluegnc/ggapi/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 825
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluegnc/ggapi/IabHelper;->mAsyncInProgress:Z

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 827
    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .registers 6
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 791
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 792
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_f

    .line 793
    const-string v1, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 794
    const/4 v1, 0x0

    .line 797
    .end local v0    # "o":Ljava/lang/Object;
    :goto_e
    return v1

    .line 796
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_f
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1a

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_e

    .line 797
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1a
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_26

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_e

    .line 799
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_26
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/bluegnc/ggapi/IabHelper;->logError(Ljava/lang/String;)V

    .line 800
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bluegnc/ggapi/IabHelper;->logError(Ljava/lang/String;)V

    .line 801
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for bundle response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .registers 6
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 807
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 808
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_13

    .line 809
    const-string v1, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/bluegnc/ggapi/IabHelper;->logError(Ljava/lang/String;)V

    .line 810
    const/4 v1, 0x0

    .line 813
    .end local v0    # "o":Ljava/lang/Object;
    :goto_12
    return v1

    .line 812
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_13
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_12

    .line 813
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1e
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2a

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_12

    .line 815
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2a
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/bluegnc/ggapi/IabHelper;->logError(Ljava/lang/String;)V

    .line 816
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bluegnc/ggapi/IabHelper;->logError(Ljava/lang/String;)V

    .line 817
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for intent response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .registers 16
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 439
    iget v8, p0, Lcom/bluegnc/ggapi/IabHelper;->mRequestCode:I

    if-eq p1, v8, :cond_6

    const/4 v8, 0x0

    .line 518
    :goto_5
    return v8

    .line 441
    :cond_6
    invoke-direct {p0}, Lcom/bluegnc/ggapi/IabHelper;->checkNotDisposed()V

    .line 442
    const-string v8, "handleActivityResult"

    invoke-virtual {p0, v8}, Lcom/bluegnc/ggapi/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0}, Lcom/bluegnc/ggapi/IabHelper;->flagEndAsync()V

    .line 447
    if-nez p3, :cond_2d

    .line 448
    const-string v8, "Null data in IAB activity result."

    invoke-virtual {p0, v8}, Lcom/bluegnc/ggapi/IabHelper;->logError(Ljava/lang/String;)V

    .line 449
    new-instance v6, Lcom/bluegnc/ggapi/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Null data in IAB result"

    invoke-direct {v6, v8, v9}, Lcom/bluegnc/ggapi/IabResult;-><init>(ILjava/lang/String;)V

    .line 450
    .local v6, "result":Lcom/bluegnc/ggapi/IabResult;
    iget-object v8, p0, Lcom/bluegnc/ggapi/IabHelper;->mPurchaseListener:Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_2b

    iget-object v8, p0, Lcom/bluegnc/ggapi/IabHelper;->mPurchaseListener:Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/bluegnc/ggapi/IabResult;Lcom/bluegnc/ggapi/Purchase;)V

    .line 451
    :cond_2b
    const/4 v8, 0x1

    goto :goto_5

    .line 454
    .end local v6    # "result":Lcom/bluegnc/ggapi/IabResult;
    :cond_2d
    invoke-virtual {p0, p3}, Lcom/bluegnc/ggapi/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v5

    .line 455
    .local v5, "responseCode":I
    const-string v8, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 456
    .local v4, "purchaseData":Ljava/lang/String;
    const-string v8, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "dataSignature":Ljava/lang/String;
    const/4 v8, -0x1

    if-ne p2, v8, :cond_14e

    if-nez v5, :cond_14e

    .line 459
    const-string v8, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v8}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 460
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchase data: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 461
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Data signature: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 462
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Extras: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 463
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Expected item type: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/bluegnc/ggapi/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 465
    if-eqz v4, :cond_99

    if-nez v0, :cond_ce

    .line 466
    :cond_99
    const-string v8, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v8}, Lcom/bluegnc/ggapi/IabHelper;->logError(Ljava/lang/String;)V

    .line 467
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Extras: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 468
    new-instance v6, Lcom/bluegnc/ggapi/IabResult;

    const/16 v8, -0x3f0

    const-string v9, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v6, v8, v9}, Lcom/bluegnc/ggapi/IabResult;-><init>(ILjava/lang/String;)V

    .line 469
    .restart local v6    # "result":Lcom/bluegnc/ggapi/IabResult;
    iget-object v8, p0, Lcom/bluegnc/ggapi/IabHelper;->mPurchaseListener:Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_cb

    iget-object v8, p0, Lcom/bluegnc/ggapi/IabHelper;->mPurchaseListener:Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/bluegnc/ggapi/IabResult;Lcom/bluegnc/ggapi/Purchase;)V

    .line 470
    :cond_cb
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 473
    .end local v6    # "result":Lcom/bluegnc/ggapi/IabResult;
    :cond_ce
    const/4 v2, 0x0

    .line 475
    .local v2, "purchase":Lcom/bluegnc/ggapi/Purchase;
    :try_start_cf
    new-instance v3, Lcom/bluegnc/ggapi/Purchase;

    iget-object v8, p0, Lcom/bluegnc/ggapi/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {v3, v8, v4, v0}, Lcom/bluegnc/ggapi/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d6
    .catch Lorg/json/JSONException; {:try_start_cf .. :try_end_d6} :catch_12f

    .line 476
    .end local v2    # "purchase":Lcom/bluegnc/ggapi/Purchase;
    .local v3, "purchase":Lcom/bluegnc/ggapi/Purchase;
    :try_start_d6
    invoke-virtual {v3}, Lcom/bluegnc/ggapi/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    .line 479
    .local v7, "sku":Ljava/lang/String;
    iget-object v8, p0, Lcom/bluegnc/ggapi/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v8, v4, v0}, Lcom/bluegnc/ggapi/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_116

    .line 480
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchase signature verification FAILED for sku "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/bluegnc/ggapi/IabHelper;->logError(Ljava/lang/String;)V

    .line 481
    new-instance v6, Lcom/bluegnc/ggapi/IabResult;

    const/16 v8, -0x3eb

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Signature verification failed for sku "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/bluegnc/ggapi/IabResult;-><init>(ILjava/lang/String;)V

    .line 482
    .restart local v6    # "result":Lcom/bluegnc/ggapi/IabResult;
    iget-object v8, p0, Lcom/bluegnc/ggapi/IabHelper;->mPurchaseListener:Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_113

    iget-object v8, p0, Lcom/bluegnc/ggapi/IabHelper;->mPurchaseListener:Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v8, v6, v3}, Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/bluegnc/ggapi/IabResult;Lcom/bluegnc/ggapi/Purchase;)V

    .line 483
    :cond_113
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 485
    .end local v6    # "result":Lcom/bluegnc/ggapi/IabResult;
    :cond_116
    const-string v8, "Purchase signature successfully verified."

    invoke-virtual {p0, v8}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_11b
    .catch Lorg/json/JSONException; {:try_start_d6 .. :try_end_11b} :catch_1de

    .line 495
    iget-object v8, p0, Lcom/bluegnc/ggapi/IabHelper;->mPurchaseListener:Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_12c

    .line 496
    iget-object v8, p0, Lcom/bluegnc/ggapi/IabHelper;->mPurchaseListener:Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v9, Lcom/bluegnc/ggapi/IabResult;

    const/4 v10, 0x0

    const-string v11, "Success"

    invoke-direct {v9, v10, v11}, Lcom/bluegnc/ggapi/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v8, v9, v3}, Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/bluegnc/ggapi/IabResult;Lcom/bluegnc/ggapi/Purchase;)V

    .line 518
    .end local v3    # "purchase":Lcom/bluegnc/ggapi/Purchase;
    .end local v7    # "sku":Ljava/lang/String;
    :cond_12c
    :goto_12c
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 487
    .restart local v2    # "purchase":Lcom/bluegnc/ggapi/Purchase;
    :catch_12f
    move-exception v1

    .line 488
    .local v1, "e":Lorg/json/JSONException;
    :goto_130
    const-string v8, "Failed to parse purchase data."

    invoke-virtual {p0, v8}, Lcom/bluegnc/ggapi/IabHelper;->logError(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 490
    new-instance v6, Lcom/bluegnc/ggapi/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Failed to parse purchase data."

    invoke-direct {v6, v8, v9}, Lcom/bluegnc/ggapi/IabResult;-><init>(ILjava/lang/String;)V

    .line 491
    .restart local v6    # "result":Lcom/bluegnc/ggapi/IabResult;
    iget-object v8, p0, Lcom/bluegnc/ggapi/IabHelper;->mPurchaseListener:Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_14b

    iget-object v8, p0, Lcom/bluegnc/ggapi/IabHelper;->mPurchaseListener:Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/bluegnc/ggapi/IabResult;Lcom/bluegnc/ggapi/Purchase;)V

    .line 492
    :cond_14b
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 499
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "purchase":Lcom/bluegnc/ggapi/Purchase;
    .end local v6    # "result":Lcom/bluegnc/ggapi/IabResult;
    :cond_14e
    const/4 v8, -0x1

    if-ne p2, v8, :cond_179

    .line 501
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Result code was OK but in-app billing response was not OK: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/bluegnc/ggapi/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 502
    iget-object v8, p0, Lcom/bluegnc/ggapi/IabHelper;->mPurchaseListener:Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_12c

    .line 503
    new-instance v6, Lcom/bluegnc/ggapi/IabResult;

    const-string v8, "Problem purchashing item."

    invoke-direct {v6, v5, v8}, Lcom/bluegnc/ggapi/IabResult;-><init>(ILjava/lang/String;)V

    .line 504
    .restart local v6    # "result":Lcom/bluegnc/ggapi/IabResult;
    iget-object v8, p0, Lcom/bluegnc/ggapi/IabHelper;->mPurchaseListener:Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/bluegnc/ggapi/IabResult;Lcom/bluegnc/ggapi/Purchase;)V

    goto :goto_12c

    .line 507
    .end local v6    # "result":Lcom/bluegnc/ggapi/IabResult;
    :cond_179
    if-nez p2, :cond_1a5

    .line 508
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchase canceled - Response: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/bluegnc/ggapi/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 509
    new-instance v6, Lcom/bluegnc/ggapi/IabResult;

    const/16 v8, -0x3ed

    const-string v9, "User canceled."

    invoke-direct {v6, v8, v9}, Lcom/bluegnc/ggapi/IabResult;-><init>(ILjava/lang/String;)V

    .line 510
    .restart local v6    # "result":Lcom/bluegnc/ggapi/IabResult;
    iget-object v8, p0, Lcom/bluegnc/ggapi/IabHelper;->mPurchaseListener:Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_12c

    iget-object v8, p0, Lcom/bluegnc/ggapi/IabHelper;->mPurchaseListener:Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/bluegnc/ggapi/IabResult;Lcom/bluegnc/ggapi/Purchase;)V

    goto :goto_12c

    .line 513
    .end local v6    # "result":Lcom/bluegnc/ggapi/IabResult;
    :cond_1a5
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchase failed. Result code: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 514
    const-string v9, ". Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/bluegnc/ggapi/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 513
    invoke-virtual {p0, v8}, Lcom/bluegnc/ggapi/IabHelper;->logError(Ljava/lang/String;)V

    .line 515
    new-instance v6, Lcom/bluegnc/ggapi/IabResult;

    const/16 v8, -0x3ee

    const-string v9, "Unknown purchase response."

    invoke-direct {v6, v8, v9}, Lcom/bluegnc/ggapi/IabResult;-><init>(ILjava/lang/String;)V

    .line 516
    .restart local v6    # "result":Lcom/bluegnc/ggapi/IabResult;
    iget-object v8, p0, Lcom/bluegnc/ggapi/IabHelper;->mPurchaseListener:Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_12c

    iget-object v8, p0, Lcom/bluegnc/ggapi/IabHelper;->mPurchaseListener:Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/bluegnc/ggapi/IabResult;Lcom/bluegnc/ggapi/Purchase;)V

    goto/16 :goto_12c

    .line 487
    .end local v6    # "result":Lcom/bluegnc/ggapi/IabResult;
    .restart local v3    # "purchase":Lcom/bluegnc/ggapi/Purchase;
    :catch_1de
    move-exception v1

    move-object v2, v3

    .end local v3    # "purchase":Lcom/bluegnc/ggapi/Purchase;
    .restart local v2    # "purchase":Lcom/bluegnc/ggapi/Purchase;
    goto/16 :goto_130
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;)V
    .registers 11
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 333
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bluegnc/ggapi/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 13
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 338
    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bluegnc/ggapi/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 21
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "listener"    # Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;
    .param p6, "extraData"    # Ljava/lang/String;

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/bluegnc/ggapi/IabHelper;->checkNotDisposed()V

    .line 372
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/bluegnc/ggapi/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 373
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/bluegnc/ggapi/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 376
    const-string v1, "subs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-boolean v1, p0, Lcom/bluegnc/ggapi/IabHelper;->mSubscriptionsSupported:Z

    if-nez v1, :cond_30

    .line 377
    new-instance v11, Lcom/bluegnc/ggapi/IabResult;

    const/16 v1, -0x3f1

    .line 378
    const-string v2, "Subscriptions are not available."

    .line 377
    invoke-direct {v11, v1, v2}, Lcom/bluegnc/ggapi/IabResult;-><init>(ILjava/lang/String;)V

    .line 379
    .local v11, "r":Lcom/bluegnc/ggapi/IabResult;
    invoke-virtual {p0}, Lcom/bluegnc/ggapi/IabHelper;->flagEndAsync()V

    .line 380
    if-eqz p5, :cond_2f

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v11, v1}, Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/bluegnc/ggapi/IabResult;Lcom/bluegnc/ggapi/Purchase;)V

    .line 422
    .end local v11    # "r":Lcom/bluegnc/ggapi/IabResult;
    :cond_2f
    :goto_2f
    return-void

    .line 385
    :cond_30
    :try_start_30
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Constructing buy intent for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/bluegnc/ggapi/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/bluegnc/ggapi/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 387
    .local v8, "buyIntentBundle":Landroid/os/Bundle;
    invoke-virtual {p0, v8}, Lcom/bluegnc/ggapi/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v12

    .line 388
    .local v12, "response":I
    if-eqz v12, :cond_c0

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to buy item, Error response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/bluegnc/ggapi/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bluegnc/ggapi/IabHelper;->logError(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/bluegnc/ggapi/IabHelper;->flagEndAsync()V

    .line 391
    new-instance v13, Lcom/bluegnc/ggapi/IabResult;

    const-string v1, "Unable to buy item"

    invoke-direct {v13, v12, v1}, Lcom/bluegnc/ggapi/IabResult;-><init>(ILjava/lang/String;)V

    .line 392
    .local v13, "result":Lcom/bluegnc/ggapi/IabResult;
    if-eqz p5, :cond_2f

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/bluegnc/ggapi/IabResult;Lcom/bluegnc/ggapi/Purchase;)V
    :try_end_91
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_30 .. :try_end_91} :catch_92
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_91} :catch_120

    goto :goto_2f

    .line 406
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v12    # "response":I
    .end local v13    # "result":Lcom/bluegnc/ggapi/IabResult;
    :catch_92
    move-exception v9

    .line 407
    .local v9, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bluegnc/ggapi/IabHelper;->logError(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v9}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 409
    invoke-virtual {p0}, Lcom/bluegnc/ggapi/IabHelper;->flagEndAsync()V

    .line 411
    new-instance v13, Lcom/bluegnc/ggapi/IabResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v13, v1, v2}, Lcom/bluegnc/ggapi/IabResult;-><init>(ILjava/lang/String;)V

    .line 412
    .restart local v13    # "result":Lcom/bluegnc/ggapi/IabResult;
    if-eqz p5, :cond_2f

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/bluegnc/ggapi/IabResult;Lcom/bluegnc/ggapi/Purchase;)V

    goto/16 :goto_2f

    .line 396
    .end local v9    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v13    # "result":Lcom/bluegnc/ggapi/IabResult;
    .restart local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .restart local v12    # "response":I
    :cond_c0
    :try_start_c0
    const-string v1, "BUY_INTENT"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 397
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launching buy intent for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 398
    move/from16 v0, p4

    iput v0, p0, Lcom/bluegnc/ggapi/IabHelper;->mRequestCode:I

    .line 399
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/bluegnc/ggapi/IabHelper;->mPurchaseListener:Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;

    .line 400
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/bluegnc/ggapi/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 401
    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    .line 402
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 403
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 404
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, p1

    move/from16 v3, p4

    .line 401
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_11e
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_c0 .. :try_end_11e} :catch_92
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_11e} :catch_120

    goto/16 :goto_2f

    .line 414
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v12    # "response":I
    :catch_120
    move-exception v9

    .line 415
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bluegnc/ggapi/IabHelper;->logError(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 417
    invoke-virtual {p0}, Lcom/bluegnc/ggapi/IabHelper;->flagEndAsync()V

    .line 419
    new-instance v13, Lcom/bluegnc/ggapi/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v13, v1, v2}, Lcom/bluegnc/ggapi/IabResult;-><init>(ILjava/lang/String;)V

    .line 420
    .restart local v13    # "result":Lcom/bluegnc/ggapi/IabResult;
    if-eqz p5, :cond_2f

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/bluegnc/ggapi/IabResult;Lcom/bluegnc/ggapi/Purchase;)V

    goto/16 :goto_2f
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;)V
    .registers 11
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 343
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bluegnc/ggapi/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 13
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 348
    const-string v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bluegnc/ggapi/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 984
    iget-boolean v0, p0, Lcom/bluegnc/ggapi/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bluegnc/ggapi/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_9
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 988
    iget-object v0, p0, Lcom/bluegnc/ggapi/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 992
    iget-object v0, p0, Lcom/bluegnc/ggapi/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing warning: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lcom/bluegnc/ggapi/Inventory;
    .registers 4
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bluegnc/ggapi/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bluegnc/ggapi/IabException;
        }
    .end annotation

    .prologue
    .line 522
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bluegnc/ggapi/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/bluegnc/ggapi/Inventory;

    move-result-object v0

    return-object v0
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/bluegnc/ggapi/Inventory;
    .registers 10
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bluegnc/ggapi/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bluegnc/ggapi/IabException;
        }
    .end annotation

    .prologue
    .line 540
    .local p2, "moreItemSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "moreSubsSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/bluegnc/ggapi/IabHelper;->checkNotDisposed()V

    .line 541
    const-string v3, "queryInventory"

    invoke-virtual {p0, v3}, Lcom/bluegnc/ggapi/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 543
    :try_start_8
    new-instance v1, Lcom/bluegnc/ggapi/Inventory;

    invoke-direct {v1}, Lcom/bluegnc/ggapi/Inventory;-><init>()V

    .line 544
    .local v1, "inv":Lcom/bluegnc/ggapi/Inventory;
    const-string v3, "inapp"

    invoke-virtual {p0, v1, v3}, Lcom/bluegnc/ggapi/IabHelper;->queryPurchases(Lcom/bluegnc/ggapi/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 545
    .local v2, "r":I
    if-eqz v2, :cond_28

    .line 546
    new-instance v3, Lcom/bluegnc/ggapi/IabException;

    const-string v4, "Error refreshing inventory (querying owned items)."

    invoke-direct {v3, v2, v4}, Lcom/bluegnc/ggapi/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1d} :catch_1d
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_1d} :catch_3a

    .line 573
    .end local v1    # "inv":Lcom/bluegnc/ggapi/Inventory;
    .end local v2    # "r":I
    :catch_1d
    move-exception v0

    .line 574
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/bluegnc/ggapi/IabException;

    const/16 v4, -0x3e9

    const-string v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/bluegnc/ggapi/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 549
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "inv":Lcom/bluegnc/ggapi/Inventory;
    .restart local v2    # "r":I
    :cond_28
    if-eqz p1, :cond_45

    .line 550
    :try_start_2a
    const-string v3, "inapp"

    invoke-virtual {p0, v3, v1, p2}, Lcom/bluegnc/ggapi/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/bluegnc/ggapi/Inventory;Ljava/util/List;)I

    move-result v2

    .line 551
    if-eqz v2, :cond_45

    .line 552
    new-instance v3, Lcom/bluegnc/ggapi/IabException;

    const-string v4, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v3, v2, v4}, Lcom/bluegnc/ggapi/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_3a} :catch_1d
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_3a} :catch_3a

    .line 576
    .end local v1    # "inv":Lcom/bluegnc/ggapi/Inventory;
    .end local v2    # "r":I
    :catch_3a
    move-exception v0

    .line 577
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/bluegnc/ggapi/IabException;

    const/16 v4, -0x3ea

    const-string v5, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/bluegnc/ggapi/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 557
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "inv":Lcom/bluegnc/ggapi/Inventory;
    .restart local v2    # "r":I
    :cond_45
    :try_start_45
    iget-boolean v3, p0, Lcom/bluegnc/ggapi/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v3, :cond_6b

    .line 558
    const-string v3, "subs"

    invoke-virtual {p0, v1, v3}, Lcom/bluegnc/ggapi/IabHelper;->queryPurchases(Lcom/bluegnc/ggapi/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 559
    if-eqz v2, :cond_59

    .line 560
    new-instance v3, Lcom/bluegnc/ggapi/IabException;

    const-string v4, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/bluegnc/ggapi/IabException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 563
    :cond_59
    if-eqz p1, :cond_6b

    .line 564
    const-string v3, "subs"

    invoke-virtual {p0, v3, v1, p2}, Lcom/bluegnc/ggapi/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/bluegnc/ggapi/Inventory;Ljava/util/List;)I

    move-result v2

    .line 565
    if-eqz v2, :cond_6b

    .line 566
    new-instance v3, Lcom/bluegnc/ggapi/IabException;

    const-string v4, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/bluegnc/ggapi/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_6b} :catch_1d
    .catch Lorg/json/JSONException; {:try_start_45 .. :try_end_6b} :catch_3a

    .line 571
    :cond_6b
    return-object v1
.end method

.method public queryInventoryAsync(Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 642
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/bluegnc/ggapi/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;)V

    .line 643
    return-void
.end method

.method public queryInventoryAsync(ZLcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;)V
    .registers 4
    .param p1, "querySkuDetails"    # Z
    .param p2, "listener"    # Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 646
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/bluegnc/ggapi/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;)V

    .line 647
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;)V
    .registers 11
    .param p1, "querySkuDetails"    # Z
    .param p3, "listener"    # Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 608
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 609
    .local v5, "handler":Landroid/os/Handler;
    invoke-direct {p0}, Lcom/bluegnc/ggapi/IabHelper;->checkNotDisposed()V

    .line 610
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/bluegnc/ggapi/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 611
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/bluegnc/ggapi/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 612
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/bluegnc/ggapi/IabHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluegnc/ggapi/IabHelper$2;-><init>(Lcom/bluegnc/ggapi/IabHelper;ZLjava/util/List;Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 638
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 639
    return-void
.end method

.method queryPurchases(Lcom/bluegnc/ggapi/Inventory;Ljava/lang/String;)I
    .registers 19
    .param p1, "inv"    # Lcom/bluegnc/ggapi/Inventory;
    .param p2, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 838
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Querying owned items, item type: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 839
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Package name: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bluegnc/ggapi/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 840
    const/4 v12, 0x0

    .line 841
    .local v12, "verificationFailed":Z
    const/4 v1, 0x0

    .line 844
    .local v1, "continueToken":Ljava/lang/String;
    :cond_34
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Calling getPurchases with continuation token: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 845
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bluegnc/ggapi/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bluegnc/ggapi/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v13, v14, v15, v0, v1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 848
    .local v3, "ownedItems":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/bluegnc/ggapi/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v8

    .line 849
    .local v8, "response":I
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Owned items response: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 850
    if-eqz v8, :cond_94

    .line 851
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "getPurchases() failed: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/bluegnc/ggapi/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 896
    .end local v8    # "response":I
    :goto_93
    return v8

    .line 854
    .restart local v8    # "response":I
    :cond_94
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_ac

    .line 855
    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_ac

    .line 856
    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_b6

    .line 857
    :cond_ac
    const-string v13, "Bundle returned from getPurchases() doesn\'t contain required fields."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/bluegnc/ggapi/IabHelper;->logError(Ljava/lang/String;)V

    .line 858
    const/16 v8, -0x3ea

    goto :goto_93

    .line 862
    :cond_b6
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    .line 861
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 864
    .local v4, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    .line 863
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 866
    .local v7, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    .line 865
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 868
    .local v10, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v2, v13, :cond_f5

    .line 892
    const-string v13, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 893
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Continuation token: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 894
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_34

    .line 896
    if-eqz v12, :cond_18b

    const/16 v13, -0x3eb

    :goto_f3
    move v8, v13

    goto :goto_93

    .line 869
    :cond_f5
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 870
    .local v6, "purchaseData":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 871
    .local v9, "signature":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 872
    .local v11, "sku":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bluegnc/ggapi/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v13, v6, v9}, Lcom/bluegnc/ggapi/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_15a

    .line 873
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Sku is owned: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 874
    new-instance v5, Lcom/bluegnc/ggapi/Purchase;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v6, v9}, Lcom/bluegnc/ggapi/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    .local v5, "purchase":Lcom/bluegnc/ggapi/Purchase;
    invoke-virtual {v5}, Lcom/bluegnc/ggapi/Purchase;->getToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_151

    .line 877
    const-string v13, "BUG: empty/null token!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/bluegnc/ggapi/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 878
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Purchase data: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 882
    :cond_151
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/bluegnc/ggapi/Inventory;->addPurchase(Lcom/bluegnc/ggapi/Purchase;)V

    .line 868
    .end local v5    # "purchase":Lcom/bluegnc/ggapi/Purchase;
    :goto_156
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c9

    .line 885
    :cond_15a
    const-string v13, "Purchase signature verification **FAILED**. Not adding item."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/bluegnc/ggapi/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 886
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "   Purchase data: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 887
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "   Signature: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 888
    const/4 v12, 0x1

    goto :goto_156

    .line 896
    .end local v6    # "purchaseData":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    .end local v11    # "sku":Ljava/lang/String;
    :cond_18b
    const/4 v13, 0x0

    goto/16 :goto_f3
.end method

.method querySkuDetails(Ljava/lang/String;Lcom/bluegnc/ggapi/Inventory;Ljava/util/List;)I
    .registers 15
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "inv"    # Lcom/bluegnc/ggapi/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bluegnc/ggapi/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p3, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 901
    const-string v8, "Querying SKU details."

    invoke-virtual {p0, v8}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 902
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 903
    .local v6, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2, p1}, Lcom/bluegnc/ggapi/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 904
    if-eqz p3, :cond_1e

    .line 905
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_18
    :goto_18
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2a

    .line 912
    :cond_1e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_3a

    .line 913
    const-string v8, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v8}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 942
    :cond_29
    :goto_29
    return v2

    .line 905
    :cond_2a
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 906
    .local v4, "sku":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    .line 907
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 917
    .end local v4    # "sku":Ljava/lang/String;
    :cond_3a
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 918
    .local v1, "querySkus":Landroid/os/Bundle;
    const-string v8, "ITEM_ID_LIST"

    invoke-virtual {v1, v8, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 919
    iget-object v8, p0, Lcom/bluegnc/ggapi/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/bluegnc/ggapi/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10, p1, v1}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 922
    .local v5, "skuDetails":Landroid/os/Bundle;
    const-string v8, "DETAILS_LIST"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7e

    .line 923
    invoke-virtual {p0, v5}, Lcom/bluegnc/ggapi/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v2

    .line 924
    .local v2, "response":I
    if-eqz v2, :cond_76

    .line 925
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getSkuDetails() failed: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/bluegnc/ggapi/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    goto :goto_29

    .line 929
    :cond_76
    const-string v8, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v8}, Lcom/bluegnc/ggapi/IabHelper;->logError(Ljava/lang/String;)V

    .line 930
    const/16 v2, -0x3ea

    goto :goto_29

    .line 935
    .end local v2    # "response":I
    :cond_7e
    const-string v8, "DETAILS_LIST"

    .line 934
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 937
    .local v3, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_88
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_29

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 938
    .local v7, "thisResponse":Ljava/lang/String;
    new-instance v0, Lcom/bluegnc/ggapi/SkuDetails;

    invoke-direct {v0, p1, v7}, Lcom/bluegnc/ggapi/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    .local v0, "d":Lcom/bluegnc/ggapi/SkuDetails;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Got sku details: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p2, v0}, Lcom/bluegnc/ggapi/Inventory;->addSkuDetails(Lcom/bluegnc/ggapi/SkuDetails;)V

    goto :goto_88
.end method

.method public startSetup(Lcom/bluegnc/ggapi/IabHelper$OnIabSetupFinishedListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/bluegnc/ggapi/IabHelper$OnIabSetupFinishedListener;

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/bluegnc/ggapi/IabHelper;->checkNotDisposed()V

    .line 206
    iget-boolean v1, p0, Lcom/bluegnc/ggapi/IabHelper;->mSetupDone:Z

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "IAB helper is already set up."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_f
    const-string v1, "Starting in-app billing setup."

    invoke-virtual {p0, v1}, Lcom/bluegnc/ggapi/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 210
    new-instance v1, Lcom/bluegnc/ggapi/IabHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/bluegnc/ggapi/IabHelper$1;-><init>(Lcom/bluegnc/ggapi/IabHelper;Lcom/bluegnc/ggapi/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v1, p0, Lcom/bluegnc/ggapi/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 265
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    iget-object v1, p0, Lcom/bluegnc/ggapi/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_41

    .line 269
    iget-object v1, p0, Lcom/bluegnc/ggapi/IabHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/bluegnc/ggapi/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 279
    :cond_40
    :goto_40
    return-void

    .line 273
    :cond_41
    if-eqz p1, :cond_40

    .line 275
    new-instance v1, Lcom/bluegnc/ggapi/IabResult;

    const/4 v2, 0x3

    .line 276
    const-string v3, "Billing service unavailable on device."

    .line 275
    invoke-direct {v1, v2, v3}, Lcom/bluegnc/ggapi/IabResult;-><init>(ILjava/lang/String;)V

    .line 274
    invoke-interface {p1, v1}, Lcom/bluegnc/ggapi/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/bluegnc/ggapi/IabResult;)V

    goto :goto_40
.end method

.method public subscriptionsSupported()Z
    .registers 2

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/bluegnc/ggapi/IabHelper;->checkNotDisposed()V

    .line 308
    iget-boolean v0, p0, Lcom/bluegnc/ggapi/IabHelper;->mSubscriptionsSupported:Z

    return v0
.end method
