.class Lcom/framework/OGLActivity$UnlockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OGLActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/framework/OGLActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/framework/OGLActivity;


# direct methods
.method private constructor <init>(Lcom/framework/OGLActivity;)V
    .registers 2

    .prologue
    .line 391
    iput-object p1, p0, Lcom/framework/OGLActivity$UnlockReceiver;->this$0:Lcom/framework/OGLActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/framework/OGLActivity;Lcom/framework/OGLActivity$UnlockReceiver;)V
    .registers 3

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lcom/framework/OGLActivity$UnlockReceiver;-><init>(Lcom/framework/OGLActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 393
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 395
    iget-object v1, p0, Lcom/framework/OGLActivity$UnlockReceiver;->this$0:Lcom/framework/OGLActivity;

    invoke-virtual {v1}, Lcom/framework/OGLActivity;->onOGLResume()V

    .line 396
    iget-object v1, p0, Lcom/framework/OGLActivity$UnlockReceiver;->this$0:Lcom/framework/OGLActivity;

    # getter for: Lcom/framework/OGLActivity;->unlockReceiver:Lcom/framework/OGLActivity$UnlockReceiver;
    invoke-static {v1}, Lcom/framework/OGLActivity;->access$0(Lcom/framework/OGLActivity;)Lcom/framework/OGLActivity$UnlockReceiver;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 397
    iget-object v1, p0, Lcom/framework/OGLActivity$UnlockReceiver;->this$0:Lcom/framework/OGLActivity;

    iget-object v2, p0, Lcom/framework/OGLActivity$UnlockReceiver;->this$0:Lcom/framework/OGLActivity;

    # getter for: Lcom/framework/OGLActivity;->unlockReceiver:Lcom/framework/OGLActivity$UnlockReceiver;
    invoke-static {v2}, Lcom/framework/OGLActivity;->access$0(Lcom/framework/OGLActivity;)Lcom/framework/OGLActivity$UnlockReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/framework/OGLActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 398
    iget-object v1, p0, Lcom/framework/OGLActivity$UnlockReceiver;->this$0:Lcom/framework/OGLActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/framework/OGLActivity;->access$1(Lcom/framework/OGLActivity;Lcom/framework/OGLActivity$UnlockReceiver;)V

    .line 401
    :cond_2a
    return-void
.end method
