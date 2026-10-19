.class Lcom/bluegnc/ggapi/INAPP$2;
.super Ljava/lang/Object;
.source "INAPP.java"

# interfaces
.implements Lcom/bluegnc/ggapi/IabHelper$OnIabPurchaseFinishedListener;


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
    iput-object p1, p0, Lcom/bluegnc/ggapi/INAPP$2;->this$0:Lcom/bluegnc/ggapi/INAPP;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/bluegnc/ggapi/IabResult;Lcom/bluegnc/ggapi/Purchase;)V
    .registers 6
    .param p1, "result"    # Lcom/bluegnc/ggapi/IabResult;
    .param p2, "purchase"    # Lcom/bluegnc/ggapi/Purchase;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bluegnc/ggapi/INAPP$2;->this$0:Lcom/bluegnc/ggapi/INAPP;

    iget-object v0, v0, Lcom/bluegnc/ggapi/INAPP;->mHelper:Lcom/bluegnc/ggapi/IabHelper;

    if-nez v0, :cond_7

    .line 70
    :goto_6
    return-void

    .line 60
    :cond_7
    invoke-virtual {p1}, Lcom/bluegnc/ggapi/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 61
    iget-object v0, p0, Lcom/bluegnc/ggapi/INAPP$2;->this$0:Lcom/bluegnc/ggapi/INAPP;

    invoke-virtual {v0, p2}, Lcom/bluegnc/ggapi/INAPP;->verifyDeveloperPayload(Lcom/bluegnc/ggapi/Purchase;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p2}, Lcom/bluegnc/ggapi/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bluegnc/ggapi/INAPP$2;->this$0:Lcom/bluegnc/ggapi/INAPP;

    iget-object v1, v1, Lcom/bluegnc/ggapi/INAPP;->PID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 63
    iget-object v0, p0, Lcom/bluegnc/ggapi/INAPP$2;->this$0:Lcom/bluegnc/ggapi/INAPP;

    iget-object v0, v0, Lcom/bluegnc/ggapi/INAPP;->mHelper:Lcom/bluegnc/ggapi/IabHelper;

    iget-object v1, p0, Lcom/bluegnc/ggapi/INAPP$2;->this$0:Lcom/bluegnc/ggapi/INAPP;

    iget-object v1, v1, Lcom/bluegnc/ggapi/INAPP;->mConsumeFinishedListener:Lcom/bluegnc/ggapi/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v0, p2, v1}, Lcom/bluegnc/ggapi/IabHelper;->consumeAsync(Lcom/bluegnc/ggapi/Purchase;Lcom/bluegnc/ggapi/IabHelper$OnConsumeFinishedListener;)V

    goto :goto_6

    .line 66
    :cond_2f
    new-instance p1, Lcom/bluegnc/ggapi/IabResult;

    .end local p1    # "result":Lcom/bluegnc/ggapi/IabResult;
    const/4 v0, 0x6

    const-string v1, "Authenticity verification failed"

    invoke-direct {p1, v0, v1}, Lcom/bluegnc/ggapi/IabResult;-><init>(ILjava/lang/String;)V

    .line 68
    .restart local p1    # "result":Lcom/bluegnc/ggapi/IabResult;
    :cond_37
    iget-object v0, p0, Lcom/bluegnc/ggapi/INAPP$2;->this$0:Lcom/bluegnc/ggapi/INAPP;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error purchasing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bluegnc/ggapi/INAPP;->alert(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/bluegnc/ggapi/INAPP$2;->this$0:Lcom/bluegnc/ggapi/INAPP;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/bluegnc/ggapi/INAPP;->resMsg(I)V

    goto :goto_6
.end method
