.class public Lcom/framework/OGLRenderer;
.super Ljava/lang/Object;
.source "OGLRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field static NANOM:J

.field static NANOS:J

.field static ainterval:J


# instance fields
.field height:I

.field last:J

.field stime:J

.field width:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 11
    const-wide/32 v0, 0x3b9aca00

    sput-wide v0, Lcom/framework/OGLRenderer;->NANOS:J

    .line 12
    const-wide/32 v0, 0xf4240

    sput-wide v0, Lcom/framework/OGLRenderer;->NANOM:J

    .line 13
    const-wide v0, 0x3fa1111111111111L    # 0.03333333333333333

    sget-wide v2, Lcom/framework/OGLRenderer;->NANOS:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    sput-wide v0, Lcom/framework/OGLRenderer;->ainterval:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeDraw()V
.end method

.method private native nativeInit(II)V
.end method

.method private native nativeKeyDown(I)V
.end method

.method private native nativePause()V
.end method

.method private native nativeResume()V
.end method

.method private native nativeTouchBegin(IFFI)V
.end method

.method private native nativeTouchCancel([I[F[FI)V
.end method

.method private native nativeTouchEnd(IFFI)V
.end method

.method private native nativeTouchMove([I[F[FI)V
.end method

.method public static setInterval(D)V
    .registers 4
    .param p0, "inter"    # D

    .prologue
    .line 50
    sget-wide v0, Lcom/framework/OGLRenderer;->NANOS:J

    long-to-double v0, v0

    mul-double/2addr v0, p0

    double-to-long v0, v0

    sput-wide v0, Lcom/framework/OGLRenderer;->ainterval:J

    .line 51
    return-void
.end method


# virtual methods
.method public handleActionCancel([I[F[FI)V
    .registers 5
    .param p1, "id"    # [I
    .param p2, "x"    # [F
    .param p3, "y"    # [F
    .param p4, "cnt"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/framework/OGLRenderer;->nativeTouchCancel([I[F[FI)V

    .line 67
    return-void
.end method

.method public handleActionDown(IFFI)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "cnt"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/framework/OGLRenderer;->nativeTouchBegin(IFFI)V

    .line 55
    return-void
.end method

.method public handleActionMove([I[F[FI)V
    .registers 5
    .param p1, "id"    # [I
    .param p2, "x"    # [F
    .param p3, "y"    # [F
    .param p4, "cnt"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/framework/OGLRenderer;->nativeTouchMove([I[F[FI)V

    .line 63
    return-void
.end method

.method public handleActionUp(IFFI)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "cnt"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/framework/OGLRenderer;->nativeTouchEnd(IFFI)V

    .line 59
    return-void
.end method

.method public handleKeyDown(I)V
    .registers 2
    .param p1, "keyCode"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/framework/OGLRenderer;->nativeKeyDown(I)V

    .line 71
    return-void
.end method

.method public handleOnPause()V
    .registers 3

    .prologue
    .line 74
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "----- handleOnPause() -----"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/framework/OGLRenderer;->nativePause()V

    .line 76
    return-void
.end method

.method public handleOnResume()V
    .registers 3

    .prologue
    .line 79
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "----- handleOnResume() -----"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/framework/OGLRenderer;->nativeResume()V

    .line 81
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 10
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 35
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 36
    .local v2, "now":J
    iget-wide v4, p0, Lcom/framework/OGLRenderer;->last:J

    sub-long v0, v2, v4

    .line 38
    .local v0, "inter":J
    invoke-direct {p0}, Lcom/framework/OGLRenderer;->nativeDraw()V

    .line 40
    sget-wide v4, Lcom/framework/OGLRenderer;->ainterval:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_1d

    .line 42
    :try_start_11
    sget-wide v4, Lcom/framework/OGLRenderer;->ainterval:J

    sub-long/2addr v4, v0

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    sget-wide v6, Lcom/framework/OGLRenderer;->NANOM:J

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1d} :catch_20

    .line 46
    :cond_1d
    :goto_1d
    iput-wide v2, p0, Lcom/framework/OGLRenderer;->last:J

    .line 47
    return-void

    .line 44
    :catch_20
    move-exception v4

    goto :goto_1d
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 32
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 27
    iget v0, p0, Lcom/framework/OGLRenderer;->width:I

    iget v1, p0, Lcom/framework/OGLRenderer;->height:I

    invoke-direct {p0, v0, v1}, Lcom/framework/OGLRenderer;->nativeInit(II)V

    .line 28
    return-void
.end method

.method public setSize(II)V
    .registers 5
    .param p1, "wid"    # I
    .param p2, "hei"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/framework/OGLRenderer;->width:I

    .line 21
    iput p2, p0, Lcom/framework/OGLRenderer;->height:I

    .line 22
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/framework/OGLRenderer;->last:J

    .line 23
    return-void
.end method
