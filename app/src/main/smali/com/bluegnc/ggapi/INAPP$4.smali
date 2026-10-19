.class Lcom/bluegnc/ggapi/INAPP$4;
.super Ljava/lang/Object;
.source "INAPP.java"

# interfaces
.implements Lcom/bluegnc/ggapi/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bluegnc/ggapi/INAPP;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bluegnc/ggapi/INAPP;


# direct methods
.method constructor <init>(Lcom/bluegnc/ggapi/INAPP;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bluegnc/ggapi/INAPP$4;->this$0:Lcom/bluegnc/ggapi/INAPP;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/bluegnc/ggapi/IabResult;)V
    .registers 4
    .param p1, "result"    # Lcom/bluegnc/ggapi/IabResult;

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/bluegnc/ggapi/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_7

    .line 28
    :goto_6
    return-void

    .line 26
    :cond_7
    iget-object v0, p0, Lcom/bluegnc/ggapi/INAPP$4;->this$0:Lcom/bluegnc/ggapi/INAPP;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bluegnc/ggapi/INAPP;->getStr(I)Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/bluegnc/ggapi/INAPP$4;->this$0:Lcom/bluegnc/ggapi/INAPP;

    iget-object v0, v0, Lcom/bluegnc/ggapi/INAPP;->mHelper:Lcom/bluegnc/ggapi/IabHelper;

    iget-object v1, p0, Lcom/bluegnc/ggapi/INAPP$4;->this$0:Lcom/bluegnc/ggapi/INAPP;

    iget-object v1, v1, Lcom/bluegnc/ggapi/INAPP;->mGotInventoryListener:Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v0, v1}, Lcom/bluegnc/ggapi/IabHelper;->queryInventoryAsync(Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;)V

    goto :goto_6
.end method
