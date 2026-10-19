.class public Lcom/framework/Cocos2dxAccelerometer;
.super Ljava/lang/Object;
.source "Cocos2dxAccelerometer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field static NANOM:J = 0x0L

.field static NANOS:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "Cocos2dxAccelerometer"

.field static interval:J


# instance fields
.field last:J

.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mContext:Landroid/content/Context;

.field private mNaturalOrientation:I

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 48
    const-wide/32 v0, 0x3b9aca00

    sput-wide v0, Lcom/framework/Cocos2dxAccelerometer;->NANOS:J

    .line 49
    const-wide/32 v0, 0xf4240

    sput-wide v0, Lcom/framework/Cocos2dxAccelerometer;->NANOM:J

    .line 50
    const-wide v0, 0x3f91111111111111L    # 0.016666666666666666

    sget-wide v2, Lcom/framework/Cocos2dxAccelerometer;->NANOS:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    sput-wide v0, Lcom/framework/Cocos2dxAccelerometer;->interval:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/framework/Cocos2dxAccelerometer;->mContext:Landroid/content/Context;

    .line 57
    iget-object v1, p0, Lcom/framework/Cocos2dxAccelerometer;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/framework/Cocos2dxAccelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    .line 58
    iget-object v1, p0, Lcom/framework/Cocos2dxAccelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/framework/Cocos2dxAccelerometer;->mAccelerometer:Landroid/hardware/Sensor;

    .line 60
    iget-object v1, p0, Lcom/framework/Cocos2dxAccelerometer;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 61
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v1

    iput v1, p0, Lcom/framework/Cocos2dxAccelerometer;->mNaturalOrientation:I

    .line 62
    return-void
.end method

.method private static native onSensorChanged(FFFJ)V
.end method


# virtual methods
.method public disable()V
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/framework/Cocos2dxAccelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 71
    return-void
.end method

.method public enable()V
    .registers 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/framework/Cocos2dxAccelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/framework/Cocos2dxAccelerometer;->mAccelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 66
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/framework/Cocos2dxAccelerometer;->last:J

    .line 67
    return-void
.end method

.method public interval(D)V
    .registers 6
    .param p1, "inter"    # D

    .prologue
    .line 74
    sget-wide v0, Lcom/framework/Cocos2dxAccelerometer;->NANOS:J

    long-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-long v0, v0

    sput-wide v0, Lcom/framework/Cocos2dxAccelerometer;->interval:J

    .line 75
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 116
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 16
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 79
    iget-object v9, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v9}, Landroid/hardware/Sensor;->getType()I

    move-result v9

    if-eq v9, v12, :cond_b

    .line 113
    :cond_a
    :goto_a
    return-void

    .line 83
    :cond_b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 84
    .local v2, "now":J
    iget-wide v10, p0, Lcom/framework/Cocos2dxAccelerometer;->last:J

    sub-long v0, v2, v10

    .line 86
    .local v0, "inter":J
    sget-wide v10, Lcom/framework/Cocos2dxAccelerometer;->interval:J

    cmp-long v9, v0, v10

    if-ltz v9, :cond_a

    .line 88
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x0

    aget v6, v9, v10

    .line 89
    .local v6, "x":F
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v9, v12

    .line 90
    .local v7, "y":F
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v9, v13

    .line 98
    .local v8, "z":F
    iget-object v9, p0, Lcom/framework/Cocos2dxAccelerometer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v4, v9, Landroid/content/res/Configuration;->orientation:I

    .line 99
    .local v4, "orientation":I
    if-ne v4, v13, :cond_43

    iget v9, p0, Lcom/framework/Cocos2dxAccelerometer;->mNaturalOrientation:I

    if-eqz v9, :cond_43

    .line 100
    move v5, v6

    .line 101
    .local v5, "tmp":F
    neg-float v6, v7

    .line 102
    move v7, v5

    .line 109
    .end local v5    # "tmp":F
    :cond_3b
    :goto_3b
    iget-wide v10, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v6, v7, v8, v10, v11}, Lcom/framework/Cocos2dxAccelerometer;->onSensorChanged(FFFJ)V

    .line 112
    iput-wide v2, p0, Lcom/framework/Cocos2dxAccelerometer;->last:J

    goto :goto_a

    .line 103
    :cond_43
    if-ne v4, v12, :cond_3b

    iget v9, p0, Lcom/framework/Cocos2dxAccelerometer;->mNaturalOrientation:I

    if-eqz v9, :cond_3b

    .line 104
    move v5, v6

    .line 105
    .restart local v5    # "tmp":F
    move v6, v7

    .line 106
    neg-float v7, v5

    goto :goto_3b
.end method
