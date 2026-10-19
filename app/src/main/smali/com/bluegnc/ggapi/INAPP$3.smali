.class Lcom/bluegnc/ggapi/INAPP$3;
.super Ljava/lang/Object;
.source "INAPP.java"

# interfaces
.implements Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluegnc/ggapi/INAPP;
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
    iput-object p1, p0, Lcom/bluegnc/ggapi/INAPP$3;->this$0:Lcom/bluegnc/ggapi/INAPP;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/bluegnc/ggapi/IabResult;Lcom/bluegnc/ggapi/Inventory;)V
    .registers 7
    .param p1, "result"    # Lcom/bluegnc/ggapi/IabResult;
    .param p2, "inventory"    # Lcom/bluegnc/ggapi/Inventory;

    .prologue
    .line 75
    iget-object v1, p0, Lcom/bluegnc/ggapi/INAPP$3;->this$0:Lcom/bluegnc/ggapi/INAPP;

    iget-object v1, v1, Lcom/bluegnc/ggapi/INAPP;->mHelper:Lcom/bluegnc/ggapi/IabHelper;

    if-nez v1, :cond_7

    .line 86
    :cond_6
    :goto_6
    return-void

    .line 76
    :cond_7
    invoke-virtual {p1}, Lcom/bluegnc/ggapi/IabResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 77
    iget-object v1, p0, Lcom/bluegnc/ggapi/INAPP$3;->this$0:Lcom/bluegnc/ggapi/INAPP;

    iget-object v1, v1, Lcom/bluegnc/ggapi/INAPP;->PID:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/bluegnc/ggapi/Inventory;->getPurchase(Ljava/lang/String;)Lcom/bluegnc/ggapi/Purchase;

    move-result-object v0

    .line 78
    .local v0, "buyitem":Lcom/bluegnc/ggapi/Purchase;
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/bluegnc/ggapi/INAPP$3;->this$0:Lcom/bluegnc/ggapi/INAPP;

    invoke-virtual {v1, v0}, Lcom/bluegnc/ggapi/INAPP;->verifyDeveloperPayload(Lcom/bluegnc/ggapi/Purchase;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 79
    iget-object v1, p0, Lcom/bluegnc/ggapi/INAPP$3;->this$0:Lcom/bluegnc/ggapi/INAPP;

    iget-object v1, v1, Lcom/bluegnc/ggapi/INAPP;->mHelper:Lcom/bluegnc/ggapi/IabHelper;

    iget-object v2, p0, Lcom/bluegnc/ggapi/INAPP$3;->this$0:Lcom/bluegnc/ggapi/INAPP;

    iget-object v2, v2, Lcom/bluegnc/ggapi/INAPP;->PID:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/bluegnc/ggapi/Inventory;->getPurchase(Ljava/lang/String;)Lcom/bluegnc/ggapi/Purchase;

    move-result-object v2

    iget-object v3, p0, Lcom/bluegnc/ggapi/INAPP$3;->this$0:Lcom/bluegnc/ggapi/INAPP;

    iget-object v3, v3, Lcom/bluegnc/ggapi/INAPP;->mConsumeFinishedListener:Lcom/bluegnc/ggapi/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v1, v2, v3}, Lcom/bluegnc/ggapi/IabHelper;->consumeAsync(Lcom/bluegnc/ggapi/Purchase;Lcom/bluegnc/ggapi/IabHelper$OnConsumeFinishedListener;)V

    goto :goto_6

    .line 85
    .end local v0    # "buyitem":Lcom/bluegnc/ggapi/Purchase;
    :cond_33
    iget-object v1, p0, Lcom/bluegnc/ggapi/INAPP$3;->this$0:Lcom/bluegnc/ggapi/INAPP;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to query inventory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bluegnc/ggapi/INAPP;->alert(Ljava/lang/String;)V

    goto :goto_6
.end method
