.class Lcom/framework/OGLActivity$6;
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
    iput-object p1, p0, Lcom/framework/OGLActivity$6;->this$0:Lcom/framework/OGLActivity;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/framework/OGLActivity$6;->this$0:Lcom/framework/OGLActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/framework/OGLActivity;->resMsg(I)V

    .line 160
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 161
    return-void
.end method
