.class public final Lcom/flurry/android/FlurryAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/android/FlurryAgent$Builder;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka",
            "<",
            "Lcom/flurry/sdk/le;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/flurry/android/FlurryAgentListener;

.field private static d:Z

.field private static e:I

.field private static f:J

.field private static g:Z

.field private static h:Z

.field private static i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 39
    const-class v0, Lcom/flurry/android/FlurryAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/flurry/android/FlurryAgent$1;

    invoke-direct {v0}, Lcom/flurry/android/FlurryAgent$1;-><init>()V

    sput-object v0, Lcom/flurry/android/FlurryAgent;->b:Lcom/flurry/sdk/ka;

    .line 66
    sput-object v3, Lcom/flurry/android/FlurryAgent;->c:Lcom/flurry/android/FlurryAgentListener;

    .line 69
    sput-boolean v2, Lcom/flurry/android/FlurryAgent;->d:Z

    .line 72
    const/4 v0, 0x5

    sput v0, Lcom/flurry/android/FlurryAgent;->e:I

    .line 75
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/flurry/android/FlurryAgent;->f:J

    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flurry/android/FlurryAgent;->g:Z

    .line 81
    sput-boolean v2, Lcom/flurry/android/FlurryAgent;->h:Z

    .line 84
    sput-object v3, Lcom/flurry/android/FlurryAgent;->i:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method static synthetic a()Lcom/flurry/android/FlurryAgentListener;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/flurry/android/FlurryAgent;->c:Lcom/flurry/android/FlurryAgentListener;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/android/FlurryAgentListener;ZIJZZLandroid/content/Context;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 36
    .line 4111
    sput-object p0, Lcom/flurry/android/FlurryAgent;->c:Lcom/flurry/android/FlurryAgentListener;

    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->setFlurryAgentListener(Lcom/flurry/android/FlurryAgentListener;)V

    .line 4114
    sput-boolean p1, Lcom/flurry/android/FlurryAgent;->d:Z

    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->setLogEnabled(Z)V

    .line 4117
    sput p2, Lcom/flurry/android/FlurryAgent;->e:I

    invoke-static {p2}, Lcom/flurry/android/FlurryAgent;->setLogLevel(I)V

    .line 4120
    sput-wide p3, Lcom/flurry/android/FlurryAgent;->f:J

    invoke-static {p3, p4}, Lcom/flurry/android/FlurryAgent;->setContinueSessionMillis(J)V

    .line 4123
    sput-boolean p5, Lcom/flurry/android/FlurryAgent;->g:Z

    invoke-static {p5}, Lcom/flurry/android/FlurryAgent;->setCaptureUncaughtExceptions(Z)V

    .line 4126
    sput-boolean p6, Lcom/flurry/android/FlurryAgent;->h:Z

    invoke-static {p6}, Lcom/flurry/android/FlurryAgent;->setPulseEnabled(Z)V

    .line 4129
    sput-object p8, Lcom/flurry/android/FlurryAgent;->i:Ljava/lang/String;

    .line 4130
    sget-object v0, Lcom/flurry/android/FlurryAgent;->i:Ljava/lang/String;

    invoke-static {p7, v0}, Lcom/flurry/android/FlurryAgent;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static addOrigin(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 416
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/flurry/android/FlurryAgent;->addOrigin(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 417
    return-void
.end method

.method public static addOrigin(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
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
    .line 437
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    .line 438
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :goto_d
    return-void

    .line 442
    :cond_e
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 443
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "originName not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_1c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 447
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "originVersion not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_2a
    :try_start_2a
    invoke-static {}, Lcom/flurry/sdk/jt;->a()Lcom/flurry/sdk/jt;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/jt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_31} :catch_32

    goto :goto_d

    .line 452
    :catch_32
    move-exception v0

    .line 453
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static addSessionProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1356
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    .line 1357
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    :cond_d
    :goto_d
    return-void

    .line 1361
    :cond_e
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1362
    :cond_1a
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String name or value passed to addSessionProperty was null or empty."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1366
    :cond_22
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    if-nez v0, :cond_30

    .line 1367
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1371
    :cond_30
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    .line 3173
    invoke-static {}, Lcom/flurry/sdk/jd;->i()Lcom/flurry/sdk/jq;

    move-result-object v0

    .line 3174
    if-eqz v0, :cond_d

    .line 3175
    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/jq;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public static clearLocation()V
    .registers 3

    .prologue
    .line 328
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    .line 329
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :goto_d
    return-void

    .line 333
    :cond_e
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string v1, "ExplicitLocation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public static endTimedEvent(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 960
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    .line 961
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    :cond_d
    :goto_d
    return-void

    .line 965
    :cond_e
    if-nez p0, :cond_18

    .line 966
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to endTimedEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 971
    :cond_18
    :try_start_18
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    .line 2161
    invoke-static {}, Lcom/flurry/sdk/hk;->c()Lcom/flurry/sdk/ja;

    move-result-object v0

    .line 2162
    if-eqz v0, :cond_d

    .line 2163
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/flurry/sdk/ja;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_25} :catch_26

    goto :goto_d

    .line 972
    :catch_26
    move-exception v0

    .line 973
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to signify the end of event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static endTimedEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 988
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    .line 989
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    :cond_d
    :goto_d
    return-void

    .line 993
    :cond_e
    if-nez p0, :cond_18

    .line 994
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to endTimedEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 998
    :cond_18
    if-nez p1, :cond_22

    .line 999
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to endTimedEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1004
    :cond_22
    :try_start_22
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    .line 2169
    invoke-static {}, Lcom/flurry/sdk/hk;->c()Lcom/flurry/sdk/ja;

    move-result-object v0

    .line 2170
    if-eqz v0, :cond_d

    .line 2171
    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/ja;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_2e} :catch_2f

    goto :goto_d

    .line 1005
    :catch_2f
    move-exception v0

    .line 1006
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to signify the end of event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static getAgentVersion()I
    .registers 1

    .prologue
    .line 182
    invoke-static {}, Lcom/flurry/sdk/js;->a()I

    move-result v0

    return v0
.end method

.method public static getReleaseVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 191
    invoke-static {}, Lcom/flurry/sdk/js;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSessionId()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 688
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_f

    .line 689
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v1, v2}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    :goto_e
    return-object v0

    .line 693
    :cond_f
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 694
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :cond_1d
    :try_start_1d
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->c()Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_23} :catch_25

    move-result-object v0

    goto :goto_e

    .line 700
    :catch_25
    move-exception v1

    .line 701
    sget-object v2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 149
    const-class v1, Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_12

    .line 150
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1c

    .line 174
    :goto_10
    monitor-exit v1

    return-void

    .line 154
    :cond_12
    if-nez p0, :cond_1f

    .line 155
    :try_start_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Null context"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1c

    .line 149
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0

    .line 158
    :cond_1f
    :try_start_1f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "API key not specified"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_2d
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 163
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "Flurry is already initialized"

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_1f .. :try_end_3a} :catchall_1c

    .line 167
    :cond_3a
    :try_start_3a
    invoke-static {}, Lcom/flurry/sdk/mb;->a()V

    .line 168
    invoke-static {p0, p1}, Lcom/flurry/sdk/jr;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_40} :catch_48
    .catchall {:try_start_3a .. :try_end_40} :catchall_1c

    .line 173
    :goto_40
    :try_start_40
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "\'init\' method is deprecated."

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 169
    :catch_48
    move-exception v0

    .line 170
    sget-object v2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_50
    .catchall {:try_start_40 .. :try_end_50} :catchall_1c

    goto :goto_40
.end method

.method public static isSessionActive()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 664
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_f

    .line 665
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v1, v2}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    :goto_e
    return v0

    .line 670
    :cond_f
    :try_start_f
    invoke-static {}, Lcom/flurry/sdk/lf;->a()Lcom/flurry/sdk/lf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/lf;->d()Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_16} :catch_18

    move-result v0

    goto :goto_e

    .line 671
    :catch_18
    move-exception v1

    .line 672
    sget-object v2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method public static logEvent(Lcom/flurry/android/FlurrySyndicationEventName;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/FlurrySyndicationEventName;",
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
    .line 829
    sget-object v1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 831
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_10

    .line 832
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    :goto_f
    return-object v1

    .line 836
    :cond_10
    if-nez p0, :cond_1a

    .line 837
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "String eventName passed to logEvent was null."

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 841
    :cond_1a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 842
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "String syndicationId passed to logEvent was null or empty."

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 846
    :cond_28
    if-nez p2, :cond_32

    .line 847
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "String parameters passed to logEvent was null."

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 852
    :cond_32
    :try_start_32
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    .line 853
    invoke-virtual {p0}, Lcom/flurry/android/FlurrySyndicationEventName;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2122
    invoke-static {}, Lcom/flurry/sdk/hk;->c()Lcom/flurry/sdk/ja;

    move-result-object v3

    .line 2123
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 2124
    if-eqz v3, :cond_45

    .line 2125
    invoke-virtual {v3, v2, p1, p2}, Lcom/flurry/sdk/ja;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_44} :catch_47

    move-result-object v0

    :cond_45
    :goto_45
    move-object v1, v0

    .line 858
    goto :goto_f

    .line 854
    :catch_47
    move-exception v0

    .line 855
    sget-object v2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to log event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/android/FlurrySyndicationEventName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_45
.end method

.method public static logEvent(Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .registers 6

    .prologue
    .line 728
    sget-object v1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 730
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_10

    .line 731
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :goto_f
    return-object v1

    .line 735
    :cond_10
    if-nez p0, :cond_1a

    .line 736
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "String eventId passed to logEvent was null."

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 741
    :cond_1a
    :try_start_1a
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    .line 2104
    invoke-static {}, Lcom/flurry/sdk/hk;->c()Lcom/flurry/sdk/ja;

    move-result-object v2

    .line 2105
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 2106
    if-eqz v2, :cond_2b

    .line 2107
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v0, v3}, Lcom/flurry/sdk/ja;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_2a} :catch_2d

    move-result-object v0

    :cond_2b
    :goto_2b
    move-object v1, v0

    .line 746
    goto :goto_f

    .line 742
    :catch_2d
    move-exception v0

    .line 743
    sget-object v2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to log event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2b
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 781
    sget-object v1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 783
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_10

    .line 784
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    :goto_f
    return-object v1

    .line 788
    :cond_10
    if-nez p0, :cond_1a

    .line 789
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "String eventId passed to logEvent was null."

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 793
    :cond_1a
    if-nez p1, :cond_24

    .line 794
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "String parameters passed to logEvent was null."

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 799
    :cond_24
    :try_start_24
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    .line 2113
    invoke-static {}, Lcom/flurry/sdk/hk;->c()Lcom/flurry/sdk/ja;

    move-result-object v2

    .line 2114
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 2115
    if-eqz v2, :cond_34

    .line 2116
    const/4 v0, 0x0

    invoke-virtual {v2, p0, p1, v0}, Lcom/flurry/sdk/ja;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_33} :catch_36

    move-result-object v0

    :cond_34
    :goto_34
    move-object v1, v0

    .line 804
    goto :goto_f

    .line 800
    :catch_36
    move-exception v0

    .line 801
    sget-object v2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to log event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_34
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .prologue
    .line 926
    sget-object v1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 928
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_10

    .line 929
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    :goto_f
    return-object v1

    .line 933
    :cond_10
    if-nez p0, :cond_1a

    .line 934
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "String eventId passed to logEvent was null."

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 938
    :cond_1a
    if-nez p1, :cond_24

    .line 939
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "String parameters passed to logEvent was null."

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 944
    :cond_24
    :try_start_24
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    .line 2151
    invoke-static {}, Lcom/flurry/sdk/hk;->c()Lcom/flurry/sdk/ja;

    move-result-object v2

    .line 2152
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 2154
    if-eqz v2, :cond_33

    .line 2155
    invoke-virtual {v2, p0, p1, p2}, Lcom/flurry/sdk/ja;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_32} :catch_35

    move-result-object v0

    :cond_33
    :goto_33
    move-object v1, v0

    .line 949
    goto :goto_f

    .line 945
    :catch_35
    move-exception v0

    .line 946
    sget-object v2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to log event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_33
.end method

.method public static logEvent(Ljava/lang/String;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    .registers 7

    .prologue
    .line 881
    sget-object v1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 883
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_10

    .line 884
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    :goto_f
    return-object v1

    .line 888
    :cond_10
    if-nez p0, :cond_1a

    .line 889
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, "String eventId passed to logEvent was null."

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 894
    :cond_1a
    :try_start_1a
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    .line 2141
    invoke-static {}, Lcom/flurry/sdk/hk;->c()Lcom/flurry/sdk/ja;

    move-result-object v2

    .line 2142
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 2144
    if-eqz v2, :cond_2a

    .line 2145
    const/4 v0, 0x0

    invoke-virtual {v2, p0, v0, p1}, Lcom/flurry/sdk/ja;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_29} :catch_2c

    move-result-object v0

    :cond_2a
    :goto_2a
    move-object v1, v0

    .line 899
    goto :goto_f

    .line 895
    :catch_2c
    move-exception v0

    .line 896
    sget-object v2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to log event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2a
.end method

.method public static onEndSession(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 632
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    .line 633
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :goto_d
    return-void

    .line 637
    :cond_e
    if-nez p0, :cond_18

    .line 638
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_18
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    if-nez v0, :cond_26

    .line 642
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before ending a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_26
    :try_start_26
    invoke-static {}, Lcom/flurry/sdk/lf;->a()Lcom/flurry/sdk/lf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/lf;->c(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_2d} :catch_2e

    goto :goto_d

    .line 648
    :catch_2e
    move-exception v0

    .line 649
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 1024
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    .line 1025
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    :goto_e
    return-void

    .line 1029
    :cond_f
    if-nez p0, :cond_19

    .line 1030
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String errorId passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 1034
    :cond_19
    if-nez p1, :cond_23

    .line 1035
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String message passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 1039
    :cond_23
    if-nez p2, :cond_2d

    .line 1040
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String errorClass passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 1045
    :cond_2d
    :try_start_2d
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    .line 2178
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 2179
    if-eqz v1, :cond_6a

    array-length v0, v1

    if-le v0, v2, :cond_6a

    .line 2181
    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    .line 2182
    const/4 v2, 0x2

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2185
    :goto_48
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 2186
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 2187
    invoke-static {}, Lcom/flurry/sdk/hk;->c()Lcom/flurry/sdk/ja;

    move-result-object v0

    .line 2188
    if-eqz v0, :cond_59

    .line 2189
    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/flurry/sdk/ja;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_59} :catch_61

    .line 1050
    :cond_59
    :goto_59
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "\'onError\' method is deprecated."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 1046
    :catch_61
    move-exception v0

    .line 1047
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_59

    :cond_6a
    move-object v0, v1

    goto :goto_48
.end method

.method public static onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 1063
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    .line 1064
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    :goto_d
    return-void

    .line 1068
    :cond_e
    if-nez p0, :cond_18

    .line 1069
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String errorId passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1073
    :cond_18
    if-nez p1, :cond_22

    .line 1074
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String message passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1078
    :cond_22
    if-nez p2, :cond_2c

    .line 1079
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Throwable passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1084
    :cond_2c
    :try_start_2c
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    invoke-static {p0, p1, p2}, Lcom/flurry/sdk/hk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_32} :catch_33

    goto :goto_d

    .line 1085
    :catch_33
    move-exception v0

    .line 1086
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static onEvent(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1099
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    .line 1100
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    :goto_d
    return-void

    .line 1104
    :cond_e
    if-nez p0, :cond_18

    .line 1105
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to onEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1110
    :cond_18
    :try_start_18
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    .line 2201
    invoke-static {}, Lcom/flurry/sdk/hk;->c()Lcom/flurry/sdk/ja;

    move-result-object v0

    .line 2202
    if-eqz v0, :cond_26

    .line 2203
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/ja;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_26} :catch_2e

    .line 1115
    :cond_26
    :goto_26
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "\'onEvent\' method is deprecated."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1111
    :catch_2e
    move-exception v0

    .line 1112
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26
.end method

.method public static onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    .line 1130
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    :goto_d
    return-void

    .line 1134
    :cond_e
    if-nez p0, :cond_18

    .line 1135
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to onEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1139
    :cond_18
    if-nez p1, :cond_22

    .line 1140
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Parameters Map passed to onEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1145
    :cond_22
    :try_start_22
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    .line 2208
    invoke-static {}, Lcom/flurry/sdk/hk;->c()Lcom/flurry/sdk/ja;

    move-result-object v0

    .line 2209
    if-eqz v0, :cond_2f

    .line 2210
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/flurry/sdk/ja;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_2f} :catch_37

    .line 1150
    :cond_2f
    :goto_2f
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "\'onEvent\' method is deprecated."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1146
    :catch_37
    move-exception v0

    .line 1147
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f
.end method

.method public static onPageView()V
    .registers 3

    .prologue
    .line 1157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    .line 1158
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    :cond_d
    :goto_d
    return-void

    .line 1163
    :cond_e
    :try_start_e
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    .line 2215
    invoke-static {}, Lcom/flurry/sdk/hk;->c()Lcom/flurry/sdk/ja;

    move-result-object v0

    .line 2216
    if-eqz v0, :cond_d

    .line 2217
    invoke-virtual {v0}, Lcom/flurry/sdk/ja;->c()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1a} :catch_1b

    goto :goto_d

    .line 1164
    :catch_1b
    move-exception v0

    .line 1165
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static onStartSession(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 577
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    .line 578
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :goto_d
    return-void

    .line 582
    :cond_e
    if-nez p0, :cond_18

    .line 583
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_18
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    if-nez v0, :cond_26

    .line 587
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_26
    :try_start_26
    invoke-static {}, Lcom/flurry/sdk/lf;->a()Lcom/flurry/sdk/lf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/lf;->b(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_2d} :catch_2e

    goto :goto_d

    .line 593
    :catch_2e
    move-exception v0

    .line 594
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static onStartSession(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 512
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    .line 513
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :goto_d
    return-void

    .line 517
    :cond_e
    if-nez p0, :cond_18

    .line 518
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 522
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Api key not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_26
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    if-nez v0, :cond_34

    .line 526
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_34
    :try_start_34
    invoke-static {}, Lcom/flurry/sdk/lf;->a()Lcom/flurry/sdk/lf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/lf;->b(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_3b} :catch_43

    .line 536
    :goto_3b
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "\'onStartSession\' method is deprecated."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 532
    :catch_43
    move-exception v0

    .line 533
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3b
.end method

.method public static setAge(I)V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 1258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    .line 1259
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    :cond_e
    :goto_e
    return-void

    .line 1264
    :cond_f
    if-lez p0, :cond_e

    const/16 v0, 0x6e

    if-ge p0, v0, :cond_e

    .line 1265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p0

    const-wide v4, 0x7528ad000L

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 1267
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v0

    .line 1268
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v0, v6, v6}, Ljava/util/Date;-><init>(III)V

    .line 1269
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1271
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v2

    const-string v3, "Age"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e
.end method

.method public static setCaptureUncaughtExceptions(Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 393
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    .line 394
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :goto_d
    return-void

    .line 398
    :cond_e
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string v1, "CaptureUncaughtExceptions"

    .line 399
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 401
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "\'setCaptureUncaughtExceptions\' method is deprecated."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public static setContinueSessionMillis(J)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 354
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    .line 355
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :goto_d
    return-void

    .line 359
    :cond_e
    const-wide/16 v0, 0x1388

    cmp-long v0, p0, v0

    if-gez v0, :cond_29

    .line 360
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid time set for session resumption: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 364
    :cond_29
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string v1, "ContinueSessionMillis"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 366
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "\'setContinueSessionMillis\' method is deprecated."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public static setFlurryAgentListener(Lcom/flurry/android/FlurryAgentListener;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    .line 205
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_d
    return-void

    .line 209
    :cond_e
    if-nez p0, :cond_23

    .line 210
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Listener cannot be null"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    sget-object v2, Lcom/flurry/android/FlurryAgent;->b:Lcom/flurry/sdk/ka;

    .line 212
    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->b(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    goto :goto_d

    .line 216
    :cond_23
    sput-object p0, Lcom/flurry/android/FlurryAgent;->c:Lcom/flurry/android/FlurryAgentListener;

    .line 217
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    sget-object v2, Lcom/flurry/android/FlurryAgent;->b:Lcom/flurry/sdk/ka;

    .line 218
    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 220
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "\'setFlurryAgentListener\' method is deprecated."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public static setGender(B)V
    .registers 4

    .prologue
    .line 1282
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    .line 1283
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    :goto_d
    return-void

    .line 1287
    :cond_e
    packed-switch p0, :pswitch_data_2e

    .line 1294
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string v1, "Gender"

    const/4 v2, -0x1

    .line 1295
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    .line 1290
    :pswitch_20
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string v1, "Gender"

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    .line 1287
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method public static setLocation(FF)V
    .registers 6

    .prologue
    .line 311
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    .line 312
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :goto_d
    return-void

    .line 316
    :cond_e
    new-instance v0, Landroid/location/Location;

    const-string v1, "Explicit"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 317
    float-to-double v2, p0

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 318
    float-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 320
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v1

    const-string v2, "ExplicitLocation"

    .line 321
    invoke-virtual {v1, v2, v0}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public static setLocationCriteria(Landroid/location/Criteria;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1243
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_d

    .line 1244
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    :cond_d
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "\'setLocationCriteria\' method is deprecated."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    return-void
.end method

.method public static setLogEnabled(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    .line 234
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_d
    return-void

    .line 238
    :cond_e
    if-eqz p0, :cond_1b

    .line 239
    invoke-static {}, Lcom/flurry/sdk/kf;->b()V

    .line 244
    :goto_13
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "\'setLogEnabled\' method is deprecated."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 241
    :cond_1b
    invoke-static {}, Lcom/flurry/sdk/kf;->a()V

    goto :goto_13
.end method

.method public static setLogEvents(Z)V
    .registers 4

    .prologue
    .line 375
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    .line 376
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :goto_d
    return-void

    .line 380
    :cond_e
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string v1, "LogEvents"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public static setLogLevel(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 257
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    .line 258
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_d
    return-void

    .line 262
    :cond_e
    invoke-static {p0}, Lcom/flurry/sdk/kf;->a(I)V

    .line 264
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "\'setLogLevel\' method is deprecated."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public static setPulseEnabled(Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 466
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    .line 467
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :goto_d
    return-void

    .line 471
    :cond_e
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string v1, "ProtonEnabled"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 474
    if-nez p0, :cond_2b

    .line 475
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string v1, "analyticsEnabled"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 478
    :cond_2b
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "\'setPulseEnabled\' method is deprecated."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public static setReportLocation(Z)V
    .registers 4

    .prologue
    .line 294
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    .line 295
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :goto_d
    return-void

    .line 299
    :cond_e
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string v1, "ReportLocation"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public static setSessionOrigin(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1329
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    .line 1330
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    :cond_d
    :goto_d
    return-void

    .line 1334
    :cond_e
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1335
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String originName passed to setSessionOrigin was null or empty."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1339
    :cond_1c
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 1340
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1344
    :cond_2a
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    .line 3143
    invoke-static {}, Lcom/flurry/sdk/jd;->i()Lcom/flurry/sdk/jq;

    move-result-object v0

    .line 3144
    if-eqz v0, :cond_36

    .line 3145
    invoke-virtual {v0, p0}, Lcom/flurry/sdk/jq;->a(Ljava/lang/String;)V

    .line 1345
    :cond_36
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    .line 3158
    invoke-static {}, Lcom/flurry/sdk/jd;->i()Lcom/flurry/sdk/jq;

    move-result-object v0

    .line 3159
    if-eqz v0, :cond_d

    .line 3160
    invoke-virtual {v0, p1}, Lcom/flurry/sdk/jq;->b(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public static setUserId(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1307
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    .line 1308
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    :goto_d
    return-void

    .line 1312
    :cond_e
    if-nez p0, :cond_18

    .line 1313
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String userId passed to setUserId was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1317
    :cond_18
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string v1, "UserId"

    .line 1318
    invoke-static {p0}, Lcom/flurry/sdk/lr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public static setVersionName(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 275
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    .line 276
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :goto_d
    return-void

    .line 280
    :cond_e
    if-nez p0, :cond_18

    .line 281
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String versionName passed to setVersionName was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 285
    :cond_18
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string v1, "VersionName"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d
.end method
