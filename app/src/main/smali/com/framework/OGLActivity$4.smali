.class Lcom/framework/OGLActivity$4;
.super Ljava/lang/Object;
.source "OGLActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/framework/OGLActivity;->showMsgBox(Ljava/lang/String;Ljava/lang/String;I)V
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
    iput-object p1, p0, Lcom/framework/OGLActivity$4;->this$0:Lcom/framework/OGLActivity;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 124
    const/16 v0, 0xbb8

    .line 125
    .local v0, "ALARMTIME":I
    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/framework/OGLActivity;->SetNotification(Ljava/lang/String;II)V

    .line 142
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 144
    return-void
.end method
