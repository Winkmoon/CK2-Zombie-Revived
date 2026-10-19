.class Lcom/bluegnc/chickenrevolution2/ExUtil$1;
.super Ljava/lang/Object;
.source "ExUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bluegnc/chickenrevolution2/ExUtil;->showMsgBox(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bluegnc/chickenrevolution2/ExUtil;


# direct methods
.method constructor <init>(Lcom/bluegnc/chickenrevolution2/ExUtil;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bluegnc/chickenrevolution2/ExUtil$1;->this$0:Lcom/bluegnc/chickenrevolution2/ExUtil;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 167
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 168
    return-void
.end method
