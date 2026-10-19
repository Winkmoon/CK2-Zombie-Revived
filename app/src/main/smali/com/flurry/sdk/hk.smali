.class public Lcom/flurry/sdk/hk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ki;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public a:Lcom/flurry/sdk/if;

.field public b:Lcom/flurry/sdk/ix;

.field public c:Lcom/flurry/sdk/ih;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/flurry/sdk/hk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/hk;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lcom/flurry/sdk/hk;->c()Lcom/flurry/sdk/ja;

    move-result-object v1

    .line 132
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 133
    if-eqz v1, :cond_10

    .line 134
    invoke-static {p1}, Lcom/flurry/sdk/jc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {v1, p0, v0, p2}, Lcom/flurry/sdk/ja;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0

    .line 137
    :cond_10
    return-object v0
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/hk;
    .registers 3

    .prologue
    .line 28
    const-class v1, Lcom/flurry/sdk/hk;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    const-class v2, Lcom/flurry/sdk/hk;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/jr;->a(Ljava/lang/Class;)Lcom/flurry/sdk/ki;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/hk;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v1

    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 194
    invoke-static {}, Lcom/flurry/sdk/hk;->c()Lcom/flurry/sdk/ja;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_11

    .line 196
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/flurry/sdk/ja;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    :cond_11
    return-void
.end method

.method public static c()Lcom/flurry/sdk/ja;
    .registers 2

    .prologue
    .line 246
    invoke-static {}, Lcom/flurry/sdk/lf;->a()Lcom/flurry/sdk/lf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/lf;->c()Lcom/flurry/sdk/ld;

    move-result-object v0

    .line 1250
    if-nez v0, :cond_c

    .line 1251
    const/4 v0, 0x0

    :goto_b
    return-object v0

    .line 1254
    :cond_c
    const-class v1, Lcom/flurry/sdk/ja;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ld;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ja;

    goto :goto_b
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 41
    const-class v0, Lcom/flurry/sdk/ja;

    invoke-static {v0}, Lcom/flurry/sdk/ld;->a(Ljava/lang/Class;)V

    .line 43
    new-instance v0, Lcom/flurry/sdk/ix;

    invoke-direct {v0}, Lcom/flurry/sdk/ix;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/hk;->b:Lcom/flurry/sdk/ix;

    .line 44
    new-instance v0, Lcom/flurry/sdk/if;

    invoke-direct {v0}, Lcom/flurry/sdk/if;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/hk;->a:Lcom/flurry/sdk/if;

    .line 45
    new-instance v0, Lcom/flurry/sdk/ih;

    invoke-direct {v0}, Lcom/flurry/sdk/ih;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/hk;->c:Lcom/flurry/sdk/ih;

    .line 1056
    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/flurry/sdk/lr;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 1057
    sget-object v0, Lcom/flurry/sdk/hk;->d:Ljava/lang/String;

    const-string v1, "Application must declare permission: android.permission.INTERNET"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    :cond_29
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/flurry/sdk/lr;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 1062
    sget-object v0, Lcom/flurry/sdk/hk;->d:Ljava/lang/String;

    const-string v1, "It is highly recommended that the application declare permission: android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_38
    return-void
.end method

.method public final b()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 68
    iget-object v0, p0, Lcom/flurry/sdk/hk;->c:Lcom/flurry/sdk/ih;

    if-eqz v0, :cond_c

    .line 69
    iget-object v0, p0, Lcom/flurry/sdk/hk;->c:Lcom/flurry/sdk/ih;

    invoke-virtual {v0}, Lcom/flurry/sdk/ih;->c()V

    .line 70
    iput-object v4, p0, Lcom/flurry/sdk/hk;->c:Lcom/flurry/sdk/ih;

    .line 73
    :cond_c
    iget-object v0, p0, Lcom/flurry/sdk/hk;->b:Lcom/flurry/sdk/ix;

    if-eqz v0, :cond_26

    .line 74
    iget-object v0, p0, Lcom/flurry/sdk/hk;->b:Lcom/flurry/sdk/ix;

    .line 1066
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v1

    const-string v2, "UseHttps"

    invoke-virtual {v1, v2, v0}, Lcom/flurry/sdk/li;->b(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)Z

    .line 1067
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v1

    const-string v2, "ReportUrl"

    invoke-virtual {v1, v2, v0}, Lcom/flurry/sdk/li;->b(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)Z

    .line 75
    iput-object v4, p0, Lcom/flurry/sdk/hk;->b:Lcom/flurry/sdk/ix;

    .line 78
    :cond_26
    iget-object v0, p0, Lcom/flurry/sdk/hk;->a:Lcom/flurry/sdk/if;

    if-eqz v0, :cond_64

    .line 79
    iget-object v0, p0, Lcom/flurry/sdk/hk;->a:Lcom/flurry/sdk/if;

    .line 1233
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    iget-object v2, v0, Lcom/flurry/sdk/if;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jr;->c(Ljava/lang/Runnable;)V

    .line 1235
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v1

    const-string v2, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v3, v0, Lcom/flurry/sdk/if;->d:Lcom/flurry/sdk/ka;

    invoke-virtual {v1, v2, v3}, Lcom/flurry/sdk/kb;->b(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 1236
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v1

    const-string v2, "com.flurry.android.sdk.IdProviderUpdatedAdvertisingId"

    iget-object v3, v0, Lcom/flurry/sdk/if;->c:Lcom/flurry/sdk/ka;

    invoke-virtual {v1, v2, v3}, Lcom/flurry/sdk/kb;->b(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 1237
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v1

    const-string v2, "com.flurry.android.sdk.IdProviderFinishedEvent"

    iget-object v3, v0, Lcom/flurry/sdk/if;->b:Lcom/flurry/sdk/ka;

    invoke-virtual {v1, v2, v3}, Lcom/flurry/sdk/kb;->b(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 1240
    invoke-static {}, Lcom/flurry/sdk/il;->b()V

    .line 1242
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v1

    const-string v2, "ProtonEnabled"

    invoke-virtual {v1, v2, v0}, Lcom/flurry/sdk/li;->b(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)Z

    .line 80
    iput-object v4, p0, Lcom/flurry/sdk/hk;->a:Lcom/flurry/sdk/if;

    .line 83
    :cond_64
    const-class v0, Lcom/flurry/sdk/ja;

    invoke-static {v0}, Lcom/flurry/sdk/ld;->b(Ljava/lang/Class;)V

    .line 84
    return-void
.end method
