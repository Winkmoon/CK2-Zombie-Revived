.class Lcom/bluegnc/ggapi/INAPP$1;
.super Ljava/lang/Object;
.source "INAPP.java"

# interfaces
.implements Lcom/bluegnc/ggapi/IabHelper$OnConsumeFinishedListener;


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
    iput-object p1, p0, Lcom/bluegnc/ggapi/INAPP$1;->this$0:Lcom/bluegnc/ggapi/INAPP;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/bluegnc/ggapi/Purchase;Lcom/bluegnc/ggapi/IabResult;)V
    .registers 6
    .param p1, "purchase"    # Lcom/bluegnc/ggapi/Purchase;
    .param p2, "result"    # Lcom/bluegnc/ggapi/IabResult;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bluegnc/ggapi/INAPP$1;->this$0:Lcom/bluegnc/ggapi/INAPP;

    iget-object v0, v0, Lcom/bluegnc/ggapi/INAPP;->mHelper:Lcom/bluegnc/ggapi/IabHelper;

    if-nez v0, :cond_7

    .line 50
    :goto_6
    return-void

    .line 43
    :cond_7
    invoke-virtual {p2}, Lcom/bluegnc/ggapi/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 45
    iget-object v0, p0, Lcom/bluegnc/ggapi/INAPP$1;->this$0:Lcom/bluegnc/ggapi/INAPP;

    iget-object v1, p0, Lcom/bluegnc/ggapi/INAPP$1;->this$0:Lcom/bluegnc/ggapi/INAPP;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/bluegnc/ggapi/INAPP;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bluegnc/ggapi/INAPP;->resMsg(I)V

    goto :goto_6

    .line 48
    :cond_22
    iget-object v0, p0, Lcom/bluegnc/ggapi/INAPP$1;->this$0:Lcom/bluegnc/ggapi/INAPP;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while consuming: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bluegnc/ggapi/INAPP;->alert(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/bluegnc/ggapi/INAPP$1;->this$0:Lcom/bluegnc/ggapi/INAPP;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/bluegnc/ggapi/INAPP;->resMsg(I)V

    goto :goto_6
.end method
