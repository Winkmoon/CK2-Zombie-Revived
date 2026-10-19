.class Lcom/framework/OGLActivity$3;
.super Landroid/os/Handler;
.source "OGLActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/framework/OGLActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/framework/OGLActivity;


# direct methods
.method constructor <init>(Lcom/framework/OGLActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/framework/OGLActivity$3;->this$0:Lcom/framework/OGLActivity;

    .line 50
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3e

    .line 66
    :goto_5
    return-void

    .line 54
    :pswitch_6
    iget-object v1, p0, Lcom/framework/OGLActivity$3;->this$0:Lcom/framework/OGLActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/framework/MsgBox;

    iget-object v2, v0, Lcom/framework/MsgBox;->title:Ljava/lang/String;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/framework/MsgBox;

    iget-object v3, v0, Lcom/framework/MsgBox;->cont:Ljava/lang/String;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/framework/MsgBox;

    iget v0, v0, Lcom/framework/MsgBox;->type:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/framework/OGLActivity;->showMsgBox(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    .line 57
    :pswitch_1e
    iget-object v1, p0, Lcom/framework/OGLActivity$3;->this$0:Lcom/framework/OGLActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/framework/MsgBox;

    iget-object v0, v0, Lcom/framework/MsgBox;->cont:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/framework/OGLActivity;->openUrl(Ljava/lang/String;)V

    goto :goto_5

    .line 60
    :pswitch_2a
    iget-object v1, p0, Lcom/framework/OGLActivity$3;->this$0:Lcom/framework/OGLActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/framework/MsgBox;

    iget-object v0, v0, Lcom/framework/MsgBox;->cont:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/framework/OGLActivity;->chkItem(Ljava/lang/String;)V

    goto :goto_5

    .line 63
    :pswitch_36
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_5

    .line 52
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1e
        :pswitch_2a
        :pswitch_36
    .end packed-switch
.end method
