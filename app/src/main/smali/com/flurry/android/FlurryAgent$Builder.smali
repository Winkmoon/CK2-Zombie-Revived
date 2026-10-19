.class public Lcom/flurry/android/FlurryAgent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/android/FlurryAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static a:Lcom/flurry/android/FlurryAgentListener;


# instance fields
.field private b:Z

.field private c:I

.field private d:J

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1380
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/android/FlurryAgent$Builder;->a:Lcom/flurry/android/FlurryAgentListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1383
    iput-boolean v2, p0, Lcom/flurry/android/FlurryAgent$Builder;->b:Z

    .line 1386
    const/4 v0, 0x5

    iput v0, p0, Lcom/flurry/android/FlurryAgent$Builder;->c:I

    .line 1389
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/flurry/android/FlurryAgent$Builder;->d:J

    .line 1392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent$Builder;->e:Z

    .line 1395
    iput-boolean v2, p0, Lcom/flurry/android/FlurryAgent$Builder;->f:Z

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 1483
    sget-object v1, Lcom/flurry/android/FlurryAgent$Builder;->a:Lcom/flurry/android/FlurryAgentListener;

    iget-boolean v2, p0, Lcom/flurry/android/FlurryAgent$Builder;->b:Z

    iget v3, p0, Lcom/flurry/android/FlurryAgent$Builder;->c:I

    iget-wide v4, p0, Lcom/flurry/android/FlurryAgent$Builder;->d:J

    iget-boolean v6, p0, Lcom/flurry/android/FlurryAgent$Builder;->e:Z

    iget-boolean v7, p0, Lcom/flurry/android/FlurryAgent$Builder;->f:Z

    move-object v8, p1

    move-object v9, p2

    invoke-static/range {v1 .. v9}, Lcom/flurry/android/FlurryAgent;->a(Lcom/flurry/android/FlurryAgentListener;ZIJZZLandroid/content/Context;Ljava/lang/String;)V

    .line 1491
    return-void
.end method

.method public withCaptureUncaughtExceptions(Z)Lcom/flurry/android/FlurryAgent$Builder;
    .registers 2

    .prologue
    .line 1465
    iput-boolean p1, p0, Lcom/flurry/android/FlurryAgent$Builder;->e:Z

    .line 1466
    return-object p0
.end method

.method public withContinueSessionMillis(J)Lcom/flurry/android/FlurryAgent$Builder;
    .registers 4

    .prologue
    .line 1452
    iput-wide p1, p0, Lcom/flurry/android/FlurryAgent$Builder;->d:J

    .line 1453
    return-object p0
.end method

.method public withListener(Lcom/flurry/android/FlurryAgentListener;)Lcom/flurry/android/FlurryAgent$Builder;
    .registers 2

    .prologue
    .line 1406
    sput-object p1, Lcom/flurry/android/FlurryAgent$Builder;->a:Lcom/flurry/android/FlurryAgentListener;

    .line 1407
    return-object p0
.end method

.method public withLogEnabled(Z)Lcom/flurry/android/FlurryAgent$Builder;
    .registers 2

    .prologue
    .line 1418
    iput-boolean p1, p0, Lcom/flurry/android/FlurryAgent$Builder;->b:Z

    .line 1419
    return-object p0
.end method

.method public withLogLevel(I)Lcom/flurry/android/FlurryAgent$Builder;
    .registers 2

    .prologue
    .line 1430
    iput p1, p0, Lcom/flurry/android/FlurryAgent$Builder;->c:I

    .line 1431
    return-object p0
.end method

.method public withPulseEnabled(Z)Lcom/flurry/android/FlurryAgent$Builder;
    .registers 2

    .prologue
    .line 1477
    iput-boolean p1, p0, Lcom/flurry/android/FlurryAgent$Builder;->f:Z

    .line 1478
    return-object p0
.end method
