.class public Lcom/flurry/sdk/jt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/flurry/sdk/jt;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/flurry/sdk/jt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/jt;->b:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/flurry/sdk/jt;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/jt;
    .registers 2

    .prologue
    .line 15
    const-class v1, Lcom/flurry/sdk/jt;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/flurry/sdk/jt;->a:Lcom/flurry/sdk/jt;

    if-nez v0, :cond_e

    .line 16
    new-instance v0, Lcom/flurry/sdk/jt;

    invoke-direct {v0}, Lcom/flurry/sdk/jt;-><init>()V

    sput-object v0, Lcom/flurry/sdk/jt;->a:Lcom/flurry/sdk/jt;

    .line 18
    :cond_e
    sget-object v0, Lcom/flurry/sdk/jt;->a:Lcom/flurry/sdk/jt;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 15
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()V
    .registers 2

    .prologue
    .line 22
    const-class v0, Lcom/flurry/sdk/jt;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Lcom/flurry/sdk/jt;->a:Lcom/flurry/sdk/jt;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    .line 23
    monitor-exit v0

    return-void

    .line 22
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v2, 0xa

    .line 34
    monitor-enter p0

    if-nez p3, :cond_a

    .line 35
    :try_start_5
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 38
    :cond_a
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-lt v0, v2, :cond_2a

    .line 39
    sget-object v0, Lcom/flurry/sdk/jt;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MaxOriginParams exceeded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_61

    .line 53
    :goto_28
    monitor-exit p0

    return-void

    .line 44
    :cond_2a
    :try_start_2a
    const-string v0, "flurryOriginVersion"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Lcom/flurry/sdk/jt;->c:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_61

    .line 47
    :try_start_32
    sget-object v0, Lcom/flurry/sdk/jt;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lt v0, v2, :cond_64

    sget-object v0, Lcom/flurry/sdk/jt;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 48
    sget-object v0, Lcom/flurry/sdk/jt;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MaxOrigins exceeded: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/flurry/sdk/jt;->c:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    monitor-exit v1

    goto :goto_28

    .line 53
    :catchall_5e
    move-exception v0

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_32 .. :try_end_60} :catchall_5e

    :try_start_60
    throw v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_61

    .line 34
    :catchall_61
    move-exception v0

    monitor-exit p0

    throw v0

    .line 52
    :cond_64
    :try_start_64
    sget-object v0, Lcom/flurry/sdk/jt;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_5e

    goto :goto_28
.end method

.method public final declared-synchronized c()Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 57
    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/jt;->c:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_11

    .line 58
    :try_start_4
    new-instance v0, Ljava/util/HashMap;

    sget-object v2, Lcom/flurry/sdk/jt;->c:Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    .line 59
    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    :try_start_10
    throw v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_11

    .line 57
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method
