.class Lcom/bluegnc/ggapi/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bluegnc/ggapi/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bluegnc/ggapi/IabHelper;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$listener:Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;

.field private final synthetic val$moreSkus:Ljava/util/List;

.field private final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/bluegnc/ggapi/IabHelper;ZLjava/util/List;Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bluegnc/ggapi/IabHelper$2;->this$0:Lcom/bluegnc/ggapi/IabHelper;

    iput-boolean p2, p0, Lcom/bluegnc/ggapi/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/bluegnc/ggapi/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/bluegnc/ggapi/IabHelper$2;->val$listener:Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;

    iput-object p5, p0, Lcom/bluegnc/ggapi/IabHelper$2;->val$handler:Landroid/os/Handler;

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 614
    new-instance v3, Lcom/bluegnc/ggapi/IabResult;

    const/4 v5, 0x0

    const-string v6, "Inventory refresh successful."

    invoke-direct {v3, v5, v6}, Lcom/bluegnc/ggapi/IabResult;-><init>(ILjava/lang/String;)V

    .line 615
    .local v3, "result":Lcom/bluegnc/ggapi/IabResult;
    const/4 v1, 0x0

    .line 617
    .local v1, "inv":Lcom/bluegnc/ggapi/Inventory;
    :try_start_9
    iget-object v5, p0, Lcom/bluegnc/ggapi/IabHelper$2;->this$0:Lcom/bluegnc/ggapi/IabHelper;

    iget-boolean v6, p0, Lcom/bluegnc/ggapi/IabHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lcom/bluegnc/ggapi/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7}, Lcom/bluegnc/ggapi/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/bluegnc/ggapi/Inventory;
    :try_end_12
    .catch Lcom/bluegnc/ggapi/IabException; {:try_start_9 .. :try_end_12} :catch_31
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_12} :catch_37

    move-result-object v1

    .line 626
    :goto_13
    iget-object v5, p0, Lcom/bluegnc/ggapi/IabHelper$2;->this$0:Lcom/bluegnc/ggapi/IabHelper;

    invoke-virtual {v5}, Lcom/bluegnc/ggapi/IabHelper;->flagEndAsync()V

    .line 628
    move-object v4, v3

    .line 629
    .local v4, "result_f":Lcom/bluegnc/ggapi/IabResult;
    move-object v2, v1

    .line 630
    .local v2, "inv_f":Lcom/bluegnc/ggapi/Inventory;
    iget-object v5, p0, Lcom/bluegnc/ggapi/IabHelper$2;->this$0:Lcom/bluegnc/ggapi/IabHelper;

    iget-boolean v5, v5, Lcom/bluegnc/ggapi/IabHelper;->mDisposed:Z

    if-nez v5, :cond_30

    iget-object v5, p0, Lcom/bluegnc/ggapi/IabHelper$2;->val$listener:Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;

    if-eqz v5, :cond_30

    .line 631
    iget-object v5, p0, Lcom/bluegnc/ggapi/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/bluegnc/ggapi/IabHelper$2$1;

    iget-object v7, p0, Lcom/bluegnc/ggapi/IabHelper$2;->val$listener:Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;

    invoke-direct {v6, p0, v7, v4, v2}, Lcom/bluegnc/ggapi/IabHelper$2$1;-><init>(Lcom/bluegnc/ggapi/IabHelper$2;Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;Lcom/bluegnc/ggapi/IabResult;Lcom/bluegnc/ggapi/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 637
    :cond_30
    return-void

    .line 619
    .end local v2    # "inv_f":Lcom/bluegnc/ggapi/Inventory;
    .end local v4    # "result_f":Lcom/bluegnc/ggapi/IabResult;
    :catch_31
    move-exception v0

    .line 620
    .local v0, "ex":Lcom/bluegnc/ggapi/IabException;
    invoke-virtual {v0}, Lcom/bluegnc/ggapi/IabException;->getResult()Lcom/bluegnc/ggapi/IabResult;

    move-result-object v3

    goto :goto_13

    .line 622
    .end local v0    # "ex":Lcom/bluegnc/ggapi/IabException;
    :catch_37
    move-exception v0

    .line 623
    .local v0, "ex":Ljava/lang/IllegalStateException;
    new-instance v3, Lcom/bluegnc/ggapi/IabResult;

    .end local v3    # "result":Lcom/bluegnc/ggapi/IabResult;
    const/4 v5, 0x6

    const-string v6, "Helper is not setup"

    invoke-direct {v3, v5, v6}, Lcom/bluegnc/ggapi/IabResult;-><init>(ILjava/lang/String;)V

    .restart local v3    # "result":Lcom/bluegnc/ggapi/IabResult;
    goto :goto_13
.end method
