.class Lcom/framework/OGLView$8;
.super Ljava/lang/Object;
.source "OGLView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/framework/OGLView;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/framework/OGLView;


# direct methods
.method constructor <init>(Lcom/framework/OGLView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/framework/OGLView$8;->this$0:Lcom/framework/OGLView;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/framework/OGLView$8;->this$0:Lcom/framework/OGLView;

    # getter for: Lcom/framework/OGLView;->renderer:Lcom/framework/OGLRenderer;
    invoke-static {v0}, Lcom/framework/OGLView;->access$0(Lcom/framework/OGLView;)Lcom/framework/OGLRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/framework/OGLRenderer;->handleOnPause()V

    .line 152
    return-void
.end method
