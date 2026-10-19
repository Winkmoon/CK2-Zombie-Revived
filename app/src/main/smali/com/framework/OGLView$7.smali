.class Lcom/framework/OGLView$7;
.super Ljava/lang/Object;
.source "OGLView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/framework/OGLView;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/framework/OGLView;

.field private final synthetic val$key:I


# direct methods
.method constructor <init>(Lcom/framework/OGLView;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/framework/OGLView$7;->this$0:Lcom/framework/OGLView;

    iput p2, p0, Lcom/framework/OGLView$7;->val$key:I

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/framework/OGLView$7;->this$0:Lcom/framework/OGLView;

    # getter for: Lcom/framework/OGLView;->renderer:Lcom/framework/OGLRenderer;
    invoke-static {v0}, Lcom/framework/OGLView;->access$0(Lcom/framework/OGLView;)Lcom/framework/OGLRenderer;

    move-result-object v0

    iget v1, p0, Lcom/framework/OGLView$7;->val$key:I

    invoke-virtual {v0, v1}, Lcom/framework/OGLRenderer;->handleKeyDown(I)V

    .line 133
    return-void
.end method
