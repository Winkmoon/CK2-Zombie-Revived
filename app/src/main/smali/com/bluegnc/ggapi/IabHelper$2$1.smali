.class Lcom/bluegnc/ggapi/IabHelper$2$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bluegnc/ggapi/IabHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bluegnc/ggapi/IabHelper$2;

.field private final synthetic val$inv_f:Lcom/bluegnc/ggapi/Inventory;

.field private final synthetic val$listener:Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;

.field private final synthetic val$result_f:Lcom/bluegnc/ggapi/IabResult;


# direct methods
.method constructor <init>(Lcom/bluegnc/ggapi/IabHelper$2;Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;Lcom/bluegnc/ggapi/IabResult;Lcom/bluegnc/ggapi/Inventory;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bluegnc/ggapi/IabHelper$2$1;->this$1:Lcom/bluegnc/ggapi/IabHelper$2;

    iput-object p2, p0, Lcom/bluegnc/ggapi/IabHelper$2$1;->val$listener:Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;

    iput-object p3, p0, Lcom/bluegnc/ggapi/IabHelper$2$1;->val$result_f:Lcom/bluegnc/ggapi/IabResult;

    iput-object p4, p0, Lcom/bluegnc/ggapi/IabHelper$2$1;->val$inv_f:Lcom/bluegnc/ggapi/Inventory;

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 633
    iget-object v0, p0, Lcom/bluegnc/ggapi/IabHelper$2$1;->val$listener:Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/bluegnc/ggapi/IabHelper$2$1;->val$result_f:Lcom/bluegnc/ggapi/IabResult;

    iget-object v2, p0, Lcom/bluegnc/ggapi/IabHelper$2$1;->val$inv_f:Lcom/bluegnc/ggapi/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/bluegnc/ggapi/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/bluegnc/ggapi/IabResult;Lcom/bluegnc/ggapi/Inventory;)V

    .line 634
    return-void
.end method
