.class public Lcom/flurry/sdk/jr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String;

.field private static f:Lcom/flurry/sdk/jr;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final c:Landroid/os/Handler;

.field public final d:Ljava/lang/String;

.field private final g:Landroid/os/HandlerThread;

.field private final h:Lcom/flurry/sdk/kh;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/flurry/sdk/jr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/jr;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/flurry/sdk/jr;->b:Landroid/os/Handler;

    .line 73
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FlurryAgent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/sdk/jr;->g:Landroid/os/HandlerThread;

    .line 74
    iget-object v0, p0, Lcom/flurry/sdk/jr;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 75
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/flurry/sdk/jr;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/flurry/sdk/jr;->c:Landroid/os/Handler;

    .line 77
    iput-object p2, p0, Lcom/flurry/sdk/jr;->d:Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/flurry/sdk/kh;

    invoke-direct {v0}, Lcom/flurry/sdk/kh;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jr;->h:Lcom/flurry/sdk/kh;

    .line 80
    return-void
.end method

.method public static a()Lcom/flurry/sdk/jr;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/flurry/sdk/jr;->f:Lcom/flurry/sdk/jr;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 28
    const-class v1, Lcom/flurry/sdk/jr;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/flurry/sdk/jr;->f:Lcom/flurry/sdk/jr;

    if-eqz v0, :cond_25

    .line 29
    sget-object v0, Lcom/flurry/sdk/jr;->f:Lcom/flurry/sdk/jr;

    .line 1101
    iget-object v0, v0, Lcom/flurry/sdk/jr;->d:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Only one API key per application is supported!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_19

    .line 28
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0

    .line 33
    :cond_1c
    :try_start_1c
    sget-object v0, Lcom/flurry/sdk/jr;->e:Ljava/lang/String;

    const-string v2, "Flurry is already initialized"

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    .line 47
    :goto_23
    monitor-exit v1

    return-void

    .line 37
    :cond_25
    if-nez p0, :cond_2f

    .line 38
    :try_start_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_2f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "API key must be specified"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_3d
    new-instance v0, Lcom/flurry/sdk/jr;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/jr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    sput-object v0, Lcom/flurry/sdk/jr;->f:Lcom/flurry/sdk/jr;

    .line 2089
    iget-object v0, v0, Lcom/flurry/sdk/jr;->h:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/kh;->a(Landroid/content/Context;)V
    :try_end_49
    .catchall {:try_start_27 .. :try_end_49} :catchall_19

    goto :goto_23
.end method

.method public static declared-synchronized b()V
    .registers 3

    .prologue
    .line 50
    const-class v1, Lcom/flurry/sdk/jr;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/flurry/sdk/jr;->f:Lcom/flurry/sdk/jr;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_19

    if-nez v0, :cond_9

    .line 56
    :goto_7
    monitor-exit v1

    return-void

    .line 54
    :cond_9
    :try_start_9
    sget-object v0, Lcom/flurry/sdk/jr;->f:Lcom/flurry/sdk/jr;

    .line 3093
    iget-object v2, v0, Lcom/flurry/sdk/jr;->h:Lcom/flurry/sdk/kh;

    invoke-virtual {v2}, Lcom/flurry/sdk/kh;->a()V

    .line 3085
    iget-object v0, v0, Lcom/flurry/sdk/jr;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/jr;->f:Lcom/flurry/sdk/jr;
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_19

    goto :goto_7

    .line 50
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/flurry/sdk/ki;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/sdk/ki;",
            ">;)",
            "Lcom/flurry/sdk/ki;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/flurry/sdk/jr;->h:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/kh;->b(Ljava/lang/Class;)Lcom/flurry/sdk/ki;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/flurry/sdk/jr;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    return-void
.end method

.method public final a(Ljava/lang/Runnable;J)V
    .registers 6

    .prologue
    .line 157
    if-nez p1, :cond_3

    .line 162
    :goto_2
    return-void

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/jr;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method public final b(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/flurry/sdk/jr;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    return-void
.end method

.method public final c(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 165
    if-nez p1, :cond_3

    .line 170
    :goto_2
    return-void

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/jr;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2
.end method
