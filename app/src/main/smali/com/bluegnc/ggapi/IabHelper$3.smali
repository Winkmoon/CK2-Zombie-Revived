.class Lcom/bluegnc/ggapi/IabHelper$3;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bluegnc/ggapi/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/bluegnc/ggapi/IabHelper$OnConsumeFinishedListener;Lcom/bluegnc/ggapi/IabHelper$OnConsumeMultiFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bluegnc/ggapi/IabHelper;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$multiListener:Lcom/bluegnc/ggapi/IabHelper$OnConsumeMultiFinishedListener;

.field private final synthetic val$purchases:Ljava/util/List;

.field private final synthetic val$singleListener:Lcom/bluegnc/ggapi/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lcom/bluegnc/ggapi/IabHelper;Ljava/util/List;Lcom/bluegnc/ggapi/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/bluegnc/ggapi/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bluegnc/ggapi/IabHelper$3;->this$0:Lcom/bluegnc/ggapi/IabHelper;

    iput-object p2, p0, Lcom/bluegnc/ggapi/IabHelper$3;->val$purchases:Ljava/util/List;

    iput-object p3, p0, Lcom/bluegnc/ggapi/IabHelper$3;->val$singleListener:Lcom/bluegnc/ggapi/IabHelper$OnConsumeFinishedListener;

    iput-object p4, p0, Lcom/bluegnc/ggapi/IabHelper$3;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/bluegnc/ggapi/IabHelper$3;->val$multiListener:Lcom/bluegnc/ggapi/IabHelper$OnConsumeMultiFinishedListener;

    .line 951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 953
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 954
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/bluegnc/ggapi/IabResult;>;"
    iget-object v3, p0, Lcom/bluegnc/ggapi/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_47

    .line 964
    iget-object v3, p0, Lcom/bluegnc/ggapi/IabHelper$3;->this$0:Lcom/bluegnc/ggapi/IabHelper;

    invoke-virtual {v3}, Lcom/bluegnc/ggapi/IabHelper;->flagEndAsync()V

    .line 965
    iget-object v3, p0, Lcom/bluegnc/ggapi/IabHelper$3;->this$0:Lcom/bluegnc/ggapi/IabHelper;

    iget-boolean v3, v3, Lcom/bluegnc/ggapi/IabHelper;->mDisposed:Z

    if-nez v3, :cond_2e

    iget-object v3, p0, Lcom/bluegnc/ggapi/IabHelper$3;->val$singleListener:Lcom/bluegnc/ggapi/IabHelper$OnConsumeFinishedListener;

    if-eqz v3, :cond_2e

    .line 966
    iget-object v3, p0, Lcom/bluegnc/ggapi/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v4, Lcom/bluegnc/ggapi/IabHelper$3$1;

    iget-object v5, p0, Lcom/bluegnc/ggapi/IabHelper$3;->val$singleListener:Lcom/bluegnc/ggapi/IabHelper$OnConsumeFinishedListener;

    iget-object v6, p0, Lcom/bluegnc/ggapi/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-direct {v4, p0, v5, v6, v2}, Lcom/bluegnc/ggapi/IabHelper$3$1;-><init>(Lcom/bluegnc/ggapi/IabHelper$3;Lcom/bluegnc/ggapi/IabHelper$OnConsumeFinishedListener;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 972
    :cond_2e
    iget-object v3, p0, Lcom/bluegnc/ggapi/IabHelper$3;->this$0:Lcom/bluegnc/ggapi/IabHelper;

    iget-boolean v3, v3, Lcom/bluegnc/ggapi/IabHelper;->mDisposed:Z

    if-nez v3, :cond_46

    iget-object v3, p0, Lcom/bluegnc/ggapi/IabHelper$3;->val$multiListener:Lcom/bluegnc/ggapi/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v3, :cond_46

    .line 973
    iget-object v3, p0, Lcom/bluegnc/ggapi/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v4, Lcom/bluegnc/ggapi/IabHelper$3$2;

    iget-object v5, p0, Lcom/bluegnc/ggapi/IabHelper$3;->val$multiListener:Lcom/bluegnc/ggapi/IabHelper$OnConsumeMultiFinishedListener;

    iget-object v6, p0, Lcom/bluegnc/ggapi/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-direct {v4, p0, v5, v6, v2}, Lcom/bluegnc/ggapi/IabHelper$3$2;-><init>(Lcom/bluegnc/ggapi/IabHelper$3;Lcom/bluegnc/ggapi/IabHelper$OnConsumeMultiFinishedListener;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 979
    :cond_46
    return-void

    .line 954
    :cond_47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bluegnc/ggapi/Purchase;

    .line 956
    .local v1, "purchase":Lcom/bluegnc/ggapi/Purchase;
    :try_start_4d
    iget-object v4, p0, Lcom/bluegnc/ggapi/IabHelper$3;->this$0:Lcom/bluegnc/ggapi/IabHelper;

    invoke-virtual {v4, v1}, Lcom/bluegnc/ggapi/IabHelper;->consume(Lcom/bluegnc/ggapi/Purchase;)V

    .line 957
    new-instance v4, Lcom/bluegnc/ggapi/IabResult;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Successful consume of sku "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bluegnc/ggapi/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/bluegnc/ggapi/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catch Lcom/bluegnc/ggapi/IabException; {:try_start_4d .. :try_end_6e} :catch_6f

    goto :goto_b

    .line 959
    :catch_6f
    move-exception v0

    .line 960
    .local v0, "ex":Lcom/bluegnc/ggapi/IabException;
    invoke-virtual {v0}, Lcom/bluegnc/ggapi/IabException;->getResult()Lcom/bluegnc/ggapi/IabResult;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method
