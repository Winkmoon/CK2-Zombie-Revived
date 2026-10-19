.class Lcom/framework/OGLView$5;
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

.field private final synthetic val$ids:[I

.field private final synthetic val$pcnt:I

.field private final synthetic val$xs:[F

.field private final synthetic val$ys:[F


# direct methods
.method constructor <init>(Lcom/framework/OGLView;[I[F[FI)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/framework/OGLView$5;->this$0:Lcom/framework/OGLView;

    iput-object p2, p0, Lcom/framework/OGLView$5;->val$ids:[I

    iput-object p3, p0, Lcom/framework/OGLView$5;->val$xs:[F

    iput-object p4, p0, Lcom/framework/OGLView$5;->val$ys:[F

    iput p5, p0, Lcom/framework/OGLView$5;->val$pcnt:I

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 110
    iget-object v0, p0, Lcom/framework/OGLView$5;->this$0:Lcom/framework/OGLView;

    # getter for: Lcom/framework/OGLView;->renderer:Lcom/framework/OGLRenderer;
    invoke-static {v0}, Lcom/framework/OGLView;->access$0(Lcom/framework/OGLView;)Lcom/framework/OGLRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/framework/OGLView$5;->val$ids:[I

    iget-object v2, p0, Lcom/framework/OGLView$5;->val$xs:[F

    iget-object v3, p0, Lcom/framework/OGLView$5;->val$ys:[F

    iget v4, p0, Lcom/framework/OGLView$5;->val$pcnt:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/framework/OGLRenderer;->handleActionMove([I[F[FI)V

    .line 111
    return-void
.end method
