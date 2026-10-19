.class public Lcom/framework/OGLView;
.super Landroid/opengl/GLSurfaceView;
.source "OGLView.java"


# static fields
.field public static letterbox:Z

.field private static mainView:Lcom/framework/OGLView;


# instance fields
.field height:I

.field private renderer:Lcom/framework/OGLRenderer;

.field width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/framework/OGLView;->mainView:Lcom/framework/OGLView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0}, Lcom/framework/OGLView;->initView()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "att"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-virtual {p0}, Lcom/framework/OGLView;->initView()V

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/framework/OGLView;)Lcom/framework/OGLRenderer;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/framework/OGLView;->renderer:Lcom/framework/OGLRenderer;

    return-object v0
.end method

.method private native nativeSetPath(Ljava/lang/String;)V
.end method


# virtual methods
.method protected initView()V
    .registers 5

    .prologue
    .line 28
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 29
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/framework/OGLView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 30
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 31
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/framework/OGLView;->width:I

    .line 32
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/framework/OGLView;->height:I

    .line 34
    new-instance v2, Lcom/framework/OGLRenderer;

    invoke-direct {v2}, Lcom/framework/OGLRenderer;-><init>()V

    iput-object v2, p0, Lcom/framework/OGLView;->renderer:Lcom/framework/OGLRenderer;

    .line 35
    iget-object v2, p0, Lcom/framework/OGLView;->renderer:Lcom/framework/OGLRenderer;

    invoke-virtual {p0, v2}, Lcom/framework/OGLView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 36
    invoke-virtual {p0}, Lcom/framework/OGLView;->requestFocus()Z

    .line 38
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/framework/OGLView;->setFocusableInTouchMode(Z)V

    .line 41
    sput-object p0, Lcom/framework/OGLView;->mainView:Lcom/framework/OGLView;

    .line 42
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 128
    move v0, p1

    .line 129
    .local v0, "key":I
    const/4 v1, 0x4

    if-ne p1, v1, :cond_e

    .line 130
    new-instance v1, Lcom/framework/OGLView$7;

    invoke-direct {v1, p0, v0}, Lcom/framework/OGLView$7;-><init>(Lcom/framework/OGLView;I)V

    invoke-virtual {p0, v1}, Lcom/framework/OGLView;->queueEvent(Ljava/lang/Runnable;)V

    .line 135
    const/4 v1, 0x1

    .line 137
    :goto_d
    return v1

    :cond_e
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_d
.end method

.method public onOGLResume()V
    .registers 2

    .prologue
    .line 158
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 159
    new-instance v0, Lcom/framework/OGLView$9;

    invoke-direct {v0, p0}, Lcom/framework/OGLView$9;-><init>(Lcom/framework/OGLView;)V

    invoke-virtual {p0, v0}, Lcom/framework/OGLView;->queueEvent(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 149
    new-instance v0, Lcom/framework/OGLView$8;

    invoke-direct {v0, p0}, Lcom/framework/OGLView$8;-><init>(Lcom/framework/OGLView;)V

    invoke-virtual {p0, v0}, Lcom/framework/OGLView;->queueEvent(Ljava/lang/Runnable;)V

    .line 154
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 155
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->onSizeChanged(IIII)V


    iput p1, p0, Lcom/framework/OGLView;->width:I

    iput p2, p0, Lcom/framework/OGLView;->height:I

    iget-object v0, p0, Lcom/framework/OGLView;->renderer:Lcom/framework/OGLRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/framework/OGLRenderer;->setSize(II)V

    .line 142
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 34
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 46
    .local v7, "pcnt":I
    new-array v0, v7, [I

    move-object/from16 v25, v0

    .line 47
    .local v25, "ids":[I
    new-array v0, v7, [F

    move-object/from16 v26, v0

    .line 48
    .local v26, "xs":[F
    new-array v0, v7, [F

    move-object/from16 v27, v0

    .line 50
    .local v27, "ys":[F
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_12
    move/from16 v0, v29

    if-lt v0, v7, :cond_21

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_fa

    .line 124
    :goto_1f
    :pswitch_1f
    const/4 v2, 0x1

    return v2

    .line 51
    :cond_21
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    aput v2, v25, v29

    .line 52
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    aput v2, v26, v29

    .line 53
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    aput v2, v27, v29

    .line 50
    add-int/lit8 v29, v29, 0x1

    goto :goto_12

    .line 58
    :pswitch_42
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    shr-int/lit8 v30, v2, 0x8

    .line 59
    .local v30, "pdn_idx":I
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 60
    .local v4, "pdn":I
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 61
    .local v5, "xdn":F
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 63
    .local v6, "ydn":F
    new-instance v2, Lcom/framework/OGLView$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/framework/OGLView$1;-><init>(Lcom/framework/OGLView;IFFI)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/framework/OGLView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1f

    .line 71
    .end local v4    # "pdn":I
    .end local v5    # "xdn":F
    .end local v6    # "ydn":F
    .end local v30    # "pdn_idx":I
    :pswitch_6d
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    .line 72
    .local v10, "dn":I
    const/4 v2, 0x0

    aget v11, v26, v2

    .line 73
    .local v11, "xd":F
    const/4 v2, 0x0

    aget v12, v27, v2

    .line 75
    .local v12, "yd":F
    new-instance v8, Lcom/framework/OGLView$2;

    move-object/from16 v9, p0

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/framework/OGLView$2;-><init>(Lcom/framework/OGLView;IFFI)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/framework/OGLView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1f

    .line 83
    .end local v10    # "dn":I
    .end local v11    # "xd":F
    .end local v12    # "yd":F
    :pswitch_88
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    shr-int/lit8 v31, v2, 0x8

    .line 84
    .local v31, "pup_idx":I
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 85
    .local v15, "pup":I
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 86
    .local v16, "xup":F
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    .line 88
    .local v17, "yup":F
    new-instance v13, Lcom/framework/OGLView$3;

    move-object/from16 v14, p0

    move/from16 v18, v7

    invoke-direct/range {v13 .. v18}, Lcom/framework/OGLView$3;-><init>(Lcom/framework/OGLView;IFFI)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/framework/OGLView;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_1f

    .line 96
    .end local v15    # "pup":I
    .end local v16    # "xup":F
    .end local v17    # "yup":F
    .end local v31    # "pup_idx":I
    :pswitch_b6
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v20

    .line 97
    .local v20, "up":I
    const/4 v2, 0x0

    aget v21, v26, v2

    .line 98
    .local v21, "xu":F
    const/4 v2, 0x0

    aget v22, v27, v2

    .line 100
    .local v22, "yu":F
    new-instance v18, Lcom/framework/OGLView$4;

    move-object/from16 v19, p0

    move/from16 v23, v7

    invoke-direct/range {v18 .. v23}, Lcom/framework/OGLView$4;-><init>(Lcom/framework/OGLView;IFFI)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/framework/OGLView;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_1f

    .line 108
    .end local v20    # "up":I
    .end local v21    # "xu":F
    .end local v22    # "yu":F
    :pswitch_d5
    new-instance v23, Lcom/framework/OGLView$5;

    move-object/from16 v24, p0

    move/from16 v28, v7

    invoke-direct/range {v23 .. v28}, Lcom/framework/OGLView$5;-><init>(Lcom/framework/OGLView;[I[F[FI)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/framework/OGLView;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_1f

    .line 116
    :pswitch_e7
    new-instance v23, Lcom/framework/OGLView$6;

    move-object/from16 v24, p0

    move/from16 v28, v7

    invoke-direct/range {v23 .. v28}, Lcom/framework/OGLView$6;-><init>(Lcom/framework/OGLView;[I[F[FI)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/framework/OGLView;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_1f

    .line 56
    nop

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_b6
        :pswitch_d5
        :pswitch_e7
        :pswitch_1f
        :pswitch_42
        :pswitch_88
    .end packed-switch
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "pname"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/framework/OGLView;->nativeSetPath(Ljava/lang/String;)V

    .line 146
    return-void
.end method
