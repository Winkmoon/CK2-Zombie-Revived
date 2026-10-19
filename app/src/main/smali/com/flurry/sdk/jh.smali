.class public final Lcom/flurry/sdk/jh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/flurry/sdk/jh;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/jh;
    .registers 2

    .prologue
    .line 13
    const-class v1, Lcom/flurry/sdk/jh;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/flurry/sdk/jh;->a:Lcom/flurry/sdk/jh;

    if-nez v0, :cond_e

    .line 14
    new-instance v0, Lcom/flurry/sdk/jh;

    invoke-direct {v0}, Lcom/flurry/sdk/jh;-><init>()V

    sput-object v0, Lcom/flurry/sdk/jh;->a:Lcom/flurry/sdk/jh;

    .line 16
    :cond_e
    sget-object v0, Lcom/flurry/sdk/jh;->a:Lcom/flurry/sdk/jh;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 13
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
