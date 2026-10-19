.class public abstract Lcom/bluegnc/ggapi/INAPP;
.super Landroid/app/Activity;
.source "INAPP.java"

# interfaces
.implements Lcom/bluegnc/ggapi/GConst;


# instance fields
.field PID:Ljava/lang/String;

.field mConsumeFinishedListener:Lcom/bluegnc/ggapi/IabHelper$OnConsumeFinishedListener;

.field mGotInventoryListener:Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;

.field mHelper:Lcom/bluegnc/ggapi/IabHelper;

.field mPurchaseFinishedListener:Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    new-instance v0, Lcom/bluegnc/ggapi/INAPP$1;

    invoke-direct {v0, p0}, Lcom/bluegnc/ggapi/INAPP$1;-><init>(Lcom/bluegnc/ggapi/INAPP;)V

    iput-object v0, p0, Lcom/bluegnc/ggapi/INAPP;->mConsumeFinishedListener:Lcom/bluegnc/ggapi/IabHelper$OnConsumeFinishedListener;

    .line 53
    new-instance v0, Lcom/bluegnc/ggapi/INAPP$2;

    invoke-direct {v0, p0}, Lcom/bluegnc/ggapi/INAPP$2;-><init>(Lcom/bluegnc/ggapi/INAPP;)V

    iput-object v0, p0, Lcom/bluegnc/ggapi/INAPP;->mPurchaseFinishedListener:Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;

    .line 73
    new-instance v0, Lcom/bluegnc/ggapi/INAPP$3;

    invoke-direct {v0, p0}, Lcom/bluegnc/ggapi/INAPP$3;-><init>(Lcom/bluegnc/ggapi/INAPP;)V

    iput-object v0, p0, Lcom/bluegnc/ggapi/INAPP;->mGotInventoryListener:Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;

    .line 8
    return-void
.end method


# virtual methods
.method alert(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 118
    return-void
.end method

.method public chkItem(Ljava/lang/String;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bluegnc/ggapi/INAPP;->mHelper:Lcom/bluegnc/ggapi/IabHelper;

    if-nez v0, :cond_5

    .line 38
    :goto_4
    return-void

    .line 34
    :cond_5
    iput-object p1, p0, Lcom/bluegnc/ggapi/INAPP;->PID:Ljava/lang/String;

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bluegnc/ggapi/INAPP;->getStr(I)Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/bluegnc/ggapi/INAPP;->mHelper:Lcom/bluegnc/ggapi/IabHelper;

    iget-object v1, p0, Lcom/bluegnc/ggapi/INAPP;->PID:Ljava/lang/String;

    const/16 v2, 0x2711

    iget-object v3, p0, Lcom/bluegnc/ggapi/INAPP;->mPurchaseFinishedListener:Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/bluegnc/ggapi/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;)V

    goto :goto_4
.end method

.method public abstract getStr(I)Ljava/lang/String;
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/bluegnc/ggapi/INAPP;->mHelper:Lcom/bluegnc/ggapi/IabHelper;

    if-nez v0, :cond_5

    .line 103
    :cond_4
    :goto_4
    return-void

    .line 98
    :cond_5
    iget-object v0, p0, Lcom/bluegnc/ggapi/INAPP;->mHelper:Lcom/bluegnc/ggapi/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bluegnc/ggapi/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 99
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 109
    iget-object v0, p0, Lcom/bluegnc/ggapi/INAPP;->mHelper:Lcom/bluegnc/ggapi/IabHelper;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bluegnc/ggapi/INAPP;->mHelper:Lcom/bluegnc/ggapi/IabHelper;

    invoke-virtual {v0}, Lcom/bluegnc/ggapi/IabHelper;->dispose()V

    .line 110
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bluegnc/ggapi/INAPP;->mHelper:Lcom/bluegnc/ggapi/IabHelper;

    .line 111
    return-void
.end method

.method public abstract resMsg(I)V
.end method

.method verifyDeveloperPayload(Lcom/bluegnc/ggapi/Purchase;)Z
    .registers 4
    .param p1, "p"    # Lcom/bluegnc/ggapi/Purchase;

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/bluegnc/ggapi/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "payload":Ljava/lang/String;
    const/4 v1, 0x1

    return v1
.end method
