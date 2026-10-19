.class Lcom/framework/OGLView$4;
.super Ljava/lang/Object;
.source "OGLView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/framework/OGLView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/framework/OGLView;

.field private final synthetic val$pcnt:I

.field private final synthetic val$up:I

.field private final synthetic val$xu:F

.field private final synthetic val$yu:F


# direct methods
.method constructor <init>(Lcom/framework/OGLView;IFFI)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/framework/OGLView$4;->this$0:Lcom/framework/OGLView;

    iput p2, p0, Lcom/framework/OGLView$4;->val$up:I

    iput p3, p0, Lcom/framework/OGLView$4;->val$xu:F

    iput p4, p0, Lcom/framework/OGLView$4;->val$yu:F

    iput p5, p0, Lcom/framework/OGLView$4;->val$pcnt:I

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 102
    iget-object v0, p0, Lcom/framework/OGLView$4;->this$0:Lcom/framework/OGLView;

    # getter for: Lcom/framework/OGLView;->renderer:Lcom/framework/OGLRenderer;
    invoke-static {v0}, Lcom/framework/OGLView;->access$0(Lcom/framework/OGLView;)Lcom/framework/OGLRenderer;

    move-result-object v0

    iget v1, p0, Lcom/framework/OGLView$4;->val$up:I

    iget v2, p0, Lcom/framework/OGLView$4;->val$xu:F

    iget v3, p0, Lcom/framework/OGLView$4;->val$yu:F

    iget v4, p0, Lcom/framework/OGLView$4;->val$pcnt:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/framework/OGLRenderer;->handleActionUp(IFFI)V

    .line 103
    return-void
.end method
