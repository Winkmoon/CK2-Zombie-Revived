.class public Lcom/flurry/sdk/mb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/flurry/sdk/mb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/mb;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()V
    .registers 4

    .prologue
    .line 21
    const-class v1, Lcom/flurry/sdk/mb;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/flurry/sdk/mb;->b:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_25

    if-eqz v0, :cond_9

    .line 54
    :goto_7
    monitor-exit v1

    return-void

    .line 28
    :cond_9
    :try_start_9
    const-class v0, Lcom/flurry/sdk/jd;

    invoke-static {v0}, Lcom/flurry/sdk/kh;->a(Ljava/lang/Class;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_25

    .line 32
    :try_start_e
    const-class v0, Lcom/flurry/sdk/hk;

    invoke-static {v0}, Lcom/flurry/sdk/kh;->a(Ljava/lang/Class;)V
    :try_end_13
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_e .. :try_end_13} :catch_28
    .catchall {:try_start_e .. :try_end_13} :catchall_25

    .line 39
    :goto_13
    :try_start_13
    const-class v0, Lcom/flurry/sdk/lz;

    invoke-static {v0}, Lcom/flurry/sdk/kh;->a(Ljava/lang/Class;)V
    :try_end_18
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_13 .. :try_end_18} :catch_32
    .catchall {:try_start_13 .. :try_end_18} :catchall_25

    .line 47
    :goto_18
    :try_start_18
    const-string v0, "com.flurry.sdk.i"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/flurry/sdk/kh;->a(Ljava/lang/Class;)V
    :try_end_21
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_18 .. :try_end_21} :catch_46
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_21} :catch_3c
    .catchall {:try_start_18 .. :try_end_21} :catchall_25

    .line 53
    :goto_21
    const/4 v0, 0x1

    :try_start_22
    sput-boolean v0, Lcom/flurry/sdk/mb;->b:Z
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_25

    goto :goto_7

    .line 21
    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0

    .line 34
    :catch_28
    move-exception v0

    const/4 v0, 0x3

    :try_start_2a
    sget-object v2, Lcom/flurry/sdk/mb;->a:Ljava/lang/String;

    const-string v3, "Analytics module not available"

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 41
    :catch_32
    move-exception v0

    const/4 v0, 0x3

    sget-object v2, Lcom/flurry/sdk/mb;->a:Ljava/lang/String;

    const-string v3, "Crash module not available"

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 50
    :catch_3c
    move-exception v0

    :goto_3d
    const/4 v0, 0x3

    sget-object v2, Lcom/flurry/sdk/mb;->a:Ljava/lang/String;

    const-string v3, "Ads module not available"

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_2a .. :try_end_45} :catchall_25

    goto :goto_21

    :catch_46
    move-exception v0

    goto :goto_3d
.end method
