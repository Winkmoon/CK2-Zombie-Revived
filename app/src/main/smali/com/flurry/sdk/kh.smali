.class public final Lcom/flurry/sdk/kh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/sdk/ki;",
            ">;",
            "Lcom/flurry/sdk/kg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/sdk/ki;",
            ">;",
            "Lcom/flurry/sdk/ki;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/flurry/sdk/kh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/kh;->a:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/flurry/sdk/kh;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/kh;->c:Ljava/util/Map;

    .line 60
    return-void
.end method

.method public static a(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/sdk/ki;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    if-nez p0, :cond_3

    .line 40
    :goto_2
    return-void

    .line 38
    :cond_3
    sget-object v1, Lcom/flurry/sdk/kh;->b:Ljava/util/Map;

    monitor-enter v1

    .line 39
    :try_start_6
    sget-object v0, Lcom/flurry/sdk/kh;->b:Ljava/util/Map;

    new-instance v2, Lcom/flurry/sdk/kg;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/kg;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    monitor-exit v1

    goto :goto_2

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private b()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ki;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    iget-object v1, p0, Lcom/flurry/sdk/kh;->c:Ljava/util/Map;

    monitor-enter v1

    .line 129
    :try_start_8
    iget-object v2, p0, Lcom/flurry/sdk/kh;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 130
    monitor-exit v1

    .line 132
    return-object v0

    .line 130
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 7

    .prologue
    .line 95
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/jv;->b()V

    .line 96
    invoke-static {}, Lcom/flurry/sdk/lf;->b()V

    .line 98
    invoke-direct {p0}, Lcom/flurry/sdk/kh;->b()Ljava/util/List;

    move-result-object v2

    .line 99
    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_37

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_12
    if-ltz v1, :cond_3a

    .line 101
    :try_start_14
    iget-object v3, p0, Lcom/flurry/sdk/kh;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ki;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ki;

    .line 102
    invoke-interface {v0}, Lcom/flurry/sdk/ki;->b()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_29} :catch_2d
    .catchall {:try_start_14 .. :try_end_29} :catchall_37

    .line 99
    :goto_29
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_12

    .line 103
    :catch_2d
    move-exception v0

    .line 104
    const/4 v3, 0x5

    :try_start_2f
    sget-object v4, Lcom/flurry/sdk/kh;->a:Ljava/lang/String;

    const-string v5, "Error destroying module:"

    invoke-static {v3, v4, v5, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_37

    goto :goto_29

    .line 95
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0

    .line 107
    :cond_3a
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Landroid/content/Context;)V
    .registers 10

    .prologue
    .line 63
    monitor-enter p0

    if-nez p1, :cond_d

    .line 64
    const/4 v1, 0x5

    :try_start_4
    sget-object v2, Lcom/flurry/sdk/kh;->a:Ljava/lang/String;

    const-string v3, "Null context."

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_6d

    .line 91
    :goto_b
    monitor-exit p0

    return-void

    .line 68
    :cond_d
    :try_start_d
    sget-object v2, Lcom/flurry/sdk/kh;->b:Ljava/util/Map;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_6d

    .line 69
    :try_start_10
    new-instance v1, Ljava/util/ArrayList;

    sget-object v3, Lcom/flurry/sdk/kh;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_70

    .line 72
    :try_start_1c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_20
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/flurry/sdk/kg;

    move-object v2, v0
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_6d

    .line 1039
    :try_start_2e
    iget-object v1, v2, Lcom/flurry/sdk/kg;->a:Ljava/lang/Class;

    if-eqz v1, :cond_73

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v4, v2, Lcom/flurry/sdk/kg;->b:I

    if-lt v1, v4, :cond_73

    const/4 v1, 0x1

    .line 74
    :goto_39
    if-eqz v1, :cond_20

    .line 2031
    iget-object v1, v2, Lcom/flurry/sdk/kg;->a:Ljava/lang/Class;

    .line 75
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ki;

    .line 76
    invoke-interface {v1, p1}, Lcom/flurry/sdk/ki;->a(Landroid/content/Context;)V

    .line 78
    iget-object v4, p0, Lcom/flurry/sdk/kh;->c:Ljava/util/Map;

    .line 3031
    iget-object v5, v2, Lcom/flurry/sdk/kg;->a:Ljava/lang/Class;

    .line 78
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4d} :catch_4e
    .catchall {:try_start_2e .. :try_end_4d} :catchall_6d

    goto :goto_20

    .line 80
    :catch_4e
    move-exception v1

    .line 81
    const/4 v4, 0x5

    :try_start_50
    sget-object v5, Lcom/flurry/sdk/kh;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Flurry Module for class "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4031
    iget-object v2, v2, Lcom/flurry/sdk/kg;->a:Ljava/lang/Class;

    .line 81
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " is not available:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6c
    .catchall {:try_start_50 .. :try_end_6c} :catchall_6d

    goto :goto_20

    .line 63
    :catchall_6d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 70
    :catchall_70
    move-exception v1

    :try_start_71
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    :try_start_72
    throw v1

    .line 1039
    :cond_73
    const/4 v1, 0x0

    goto :goto_39

    .line 87
    :cond_75
    invoke-static {}, Lcom/flurry/sdk/lf;->a()Lcom/flurry/sdk/lf;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/flurry/sdk/lf;->a(Landroid/content/Context;)V

    .line 90
    invoke-static {}, Lcom/flurry/sdk/jv;->a()Lcom/flurry/sdk/jv;
    :try_end_7f
    .catchall {:try_start_72 .. :try_end_7f} :catchall_6d

    goto :goto_b
.end method

.method public final b(Ljava/lang/Class;)Lcom/flurry/sdk/ki;
    .registers 5
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
    .line 110
    if-nez p1, :cond_4

    .line 111
    const/4 v0, 0x0

    .line 123
    :cond_3
    return-object v0

    .line 115
    :cond_4
    iget-object v1, p0, Lcom/flurry/sdk/kh;->c:Ljava/util/Map;

    monitor-enter v1

    .line 116
    :try_start_7
    iget-object v0, p0, Lcom/flurry/sdk/kh;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ki;

    .line 117
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_27

    .line 119
    if-nez v0, :cond_3

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Module was not registered/initialized. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method
