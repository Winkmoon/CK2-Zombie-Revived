.class public Lcom/flurry/sdk/if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lj$a;


# static fields
.field private static final e:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka",
            "<",
            "Lcom/flurry/sdk/jf;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka",
            "<",
            "Lcom/flurry/sdk/jg;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka",
            "<",
            "Lcom/flurry/sdk/jj;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/flurry/sdk/kj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kj",
            "<",
            "Lcom/flurry/sdk/hr;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/flurry/sdk/kj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kj",
            "<",
            "Lcom/flurry/sdk/hs;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/flurry/sdk/jy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jy",
            "<",
            "Lcom/flurry/sdk/id;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/flurry/sdk/jy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jy",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/im;",
            ">;>;"
        }
    .end annotation
.end field

.field private final k:Lcom/flurry/sdk/ie;

.field private final l:Lcom/flurry/sdk/jw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jw",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/hv;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/im;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Z

.field private r:J

.field private s:J

.field private t:Z

.field private u:Lcom/flurry/sdk/hs;

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    const-class v0, Lcom/flurry/sdk/if;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    .line 71
    const-string v0, "https://proton.flurry.com/sdk/v1/config"

    sput-object v0, Lcom/flurry/sdk/if;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    .prologue
    const/16 v7, 0x10

    const/4 v4, 0x4

    const/4 v6, 0x1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lcom/flurry/sdk/if$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/if$1;-><init>(Lcom/flurry/sdk/if;)V

    iput-object v0, p0, Lcom/flurry/sdk/if;->a:Ljava/lang/Runnable;

    .line 106
    new-instance v0, Lcom/flurry/sdk/if$4;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/if$4;-><init>(Lcom/flurry/sdk/if;)V

    iput-object v0, p0, Lcom/flurry/sdk/if;->b:Lcom/flurry/sdk/ka;

    .line 139
    new-instance v0, Lcom/flurry/sdk/if$5;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/if$5;-><init>(Lcom/flurry/sdk/if;)V

    iput-object v0, p0, Lcom/flurry/sdk/if;->c:Lcom/flurry/sdk/ka;

    .line 146
    new-instance v0, Lcom/flurry/sdk/if$6;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/if$6;-><init>(Lcom/flurry/sdk/if;)V

    iput-object v0, p0, Lcom/flurry/sdk/if;->d:Lcom/flurry/sdk/ka;

    .line 155
    new-instance v0, Lcom/flurry/sdk/kj;

    const-string v1, "proton config request"

    new-instance v2, Lcom/flurry/sdk/ir;

    invoke-direct {v2}, Lcom/flurry/sdk/ir;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/kj;-><init>(Ljava/lang/String;Lcom/flurry/sdk/kz;)V

    iput-object v0, p0, Lcom/flurry/sdk/if;->g:Lcom/flurry/sdk/kj;

    .line 156
    new-instance v0, Lcom/flurry/sdk/kj;

    const-string v1, "proton config response"

    new-instance v2, Lcom/flurry/sdk/is;

    invoke-direct {v2}, Lcom/flurry/sdk/is;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/kj;-><init>(Ljava/lang/String;Lcom/flurry/sdk/kz;)V

    iput-object v0, p0, Lcom/flurry/sdk/if;->h:Lcom/flurry/sdk/kj;

    .line 161
    new-instance v0, Lcom/flurry/sdk/ie;

    invoke-direct {v0}, Lcom/flurry/sdk/ie;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/if;->k:Lcom/flurry/sdk/ie;

    .line 162
    new-instance v0, Lcom/flurry/sdk/jw;

    invoke-direct {v0}, Lcom/flurry/sdk/jw;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/if;->l:Lcom/flurry/sdk/jw;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/if;->m:Ljava/util/List;

    .line 169
    iput-boolean v6, p0, Lcom/flurry/sdk/if;->p:Z

    .line 172
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/flurry/sdk/if;->r:J

    .line 181
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v1

    .line 183
    const-string v0, "ProtonEnabled"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/if;->n:Z

    .line 184
    const-string v0, "ProtonEnabled"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)V

    .line 185
    sget-object v0, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, protonEnabled = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/flurry/sdk/if;->n:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v0, "ProtonConfigUrl"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/sdk/if;->o:Ljava/lang/String;

    .line 188
    const-string v0, "ProtonConfigUrl"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)V

    .line 189
    sget-object v0, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, protonConfigUrl = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/if;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "analyticsEnabled"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/if;->p:Z

    .line 192
    const-string v0, "analyticsEnabled"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)V

    .line 193
    sget-object v0, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSettings, AnalyticsEnabled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/flurry/sdk/if;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.IdProviderFinishedEvent"

    iget-object v2, p0, Lcom/flurry/sdk/if;->b:Lcom/flurry/sdk/ka;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 196
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.IdProviderUpdatedAdvertisingId"

    iget-object v2, p0, Lcom/flurry/sdk/if;->c:Lcom/flurry/sdk/ka;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 197
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/if;->d:Lcom/flurry/sdk/ka;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 200
    new-instance v0, Lcom/flurry/sdk/jy;

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    .line 1097
    iget-object v1, v1, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 1989
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ".yflurryprotonconfig."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v3

    .line 2101
    iget-object v3, v3, Lcom/flurry/sdk/jr;->d:Ljava/lang/String;

    .line 1989
    invoke-static {v3}, Lcom/flurry/sdk/lr;->i(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5, v7}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".yflurryprotonconfig."

    new-instance v3, Lcom/flurry/sdk/if$7;

    invoke-direct {v3, p0}, Lcom/flurry/sdk/if$7;-><init>(Lcom/flurry/sdk/if;)V

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/flurry/sdk/jy;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lc;)V

    iput-object v0, p0, Lcom/flurry/sdk/if;->i:Lcom/flurry/sdk/jy;

    .line 207
    new-instance v0, Lcom/flurry/sdk/jy;

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    .line 3097
    iget-object v1, v1, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 3993
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ".yflurryprotonreport."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v3

    .line 4101
    iget-object v3, v3, Lcom/flurry/sdk/jr;->d:Ljava/lang/String;

    .line 3993
    invoke-static {v3}, Lcom/flurry/sdk/lr;->i(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5, v7}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".yflurryprotonreport."

    new-instance v3, Lcom/flurry/sdk/if$8;

    invoke-direct {v3, p0}, Lcom/flurry/sdk/if$8;-><init>(Lcom/flurry/sdk/if;)V

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/flurry/sdk/jy;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lc;)V

    iput-object v0, p0, Lcom/flurry/sdk/if;->j:Lcom/flurry/sdk/jy;

    .line 216
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/if$9;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/if$9;-><init>(Lcom/flurry/sdk/if;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 224
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/if$10;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/if$10;-><init>(Lcom/flurry/sdk/if;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 230
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/if;J)J
    .registers 4

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/flurry/sdk/if;->r:J

    return-wide p1
.end method

.method static synthetic a(Lcom/flurry/sdk/if;Lcom/flurry/sdk/hs;)Lcom/flurry/sdk/hs;
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    return-object p1
.end method

.method private declared-synchronized a(JZ[B)V
    .registers 8

    .prologue
    .line 937
    monitor-enter p0

    if-nez p4, :cond_5

    .line 949
    :goto_3
    monitor-exit p0

    return-void

    .line 941
    :cond_5
    const/4 v0, 0x4

    :try_start_6
    sget-object v1, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v2, "Saving proton config response"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 943
    new-instance v0, Lcom/flurry/sdk/id;

    invoke-direct {v0}, Lcom/flurry/sdk/id;-><init>()V

    .line 13086
    iput-wide p1, v0, Lcom/flurry/sdk/id;->a:J

    .line 13090
    iput-boolean p3, v0, Lcom/flurry/sdk/id;->b:Z

    .line 13094
    iput-object p4, v0, Lcom/flurry/sdk/id;->c:[B

    .line 948
    iget-object v1, p0, Lcom/flurry/sdk/if;->i:Lcom/flurry/sdk/jy;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1e

    goto :goto_3

    .line 937
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/if;)V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/flurry/sdk/if;->f()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/if;JZ[B)V
    .registers 6

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/if;->a(JZ[B)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/if;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/if;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/hs;)Z
    .registers 2

    .prologue
    .line 68
    invoke-static {p0}, Lcom/flurry/sdk/if;->b(Lcom/flurry/sdk/hs;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/flurry/sdk/if;Z)Z
    .registers 2

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/flurry/sdk/if;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/if;J)J
    .registers 4

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/flurry/sdk/if;->s:J

    return-wide p1
.end method

.method private declared-synchronized b(J)V
    .registers 8

    .prologue
    .line 886
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/if;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 888
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 889
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/im;

    .line 12079
    iget-wide v2, v0, Lcom/flurry/sdk/im;->a:J

    .line 890
    cmp-long v0, p1, v2

    if-nez v0, :cond_7

    .line 891
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_7

    .line 886
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 894
    :cond_20
    monitor-exit p0

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/if;)V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/flurry/sdk/if;->i()V

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/util/Map;)V
    .registers 26
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
    .line 733
    monitor-enter p0

    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Event triggered: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 735
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/flurry/sdk/if;->p:Z

    if-nez v2, :cond_27

    .line 736
    sget-object v2, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v3, "Analytics and pulse have been disabled."

    invoke-static {v2, v3}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_36

    .line 883
    :cond_25
    :goto_25
    monitor-exit p0

    return-void

    .line 740
    :cond_27
    :try_start_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    if-nez v2, :cond_39

    .line 741
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v4, "Config response is empty. No events to fire."

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_36

    goto :goto_25

    .line 733
    :catchall_36
    move-exception v2

    monitor-exit p0

    throw v2

    .line 745
    :cond_39
    :try_start_39
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 747
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/sdk/if;->l:Lcom/flurry/sdk/jw;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 754
    if-nez v3, :cond_57

    .line 755
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v4, "No events to fire. Returning."

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 759
    :cond_57
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_66

    .line 760
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v4, "No events to fire. Returning."

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 764
    :cond_66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 766
    if-eqz p2, :cond_ca

    const/4 v2, 0x1

    move/from16 v17, v2

    .line 770
    :goto_6f
    const/4 v2, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_24c

    :cond_77
    :goto_77
    packed-switch v2, :pswitch_data_25a

    .line 781
    sget-object v2, Lcom/flurry/sdk/iq;->d:Lcom/flurry/sdk/iq;

    move-object/from16 v16, v2

    .line 784
    :goto_7e
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 788
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_87
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1dd

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/sdk/hv;

    .line 789
    const/4 v4, 0x0

    .line 791
    instance-of v2, v3, Lcom/flurry/sdk/hw;

    if-eqz v2, :cond_13f

    .line 792
    const/4 v2, 0x4

    sget-object v5, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v6, "Event contains triggers."

    invoke-static {v2, v5, v6}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 793
    move-object v0, v3

    check-cast v0, Lcom/flurry/sdk/hw;

    move-object v2, v0

    iget-object v6, v2, Lcom/flurry/sdk/hw;->d:[Ljava/lang/String;

    .line 796
    if-nez v6, :cond_102

    .line 797
    const/4 v2, 0x4

    sget-object v4, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v5, "Template does not contain trigger values. Firing."

    invoke-static {v2, v4, v5}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 798
    const/4 v4, 0x1

    .line 813
    :cond_b1
    :goto_b1
    move-object v0, v3

    check-cast v0, Lcom/flurry/sdk/hw;

    move-object v2, v0

    iget-object v2, v2, Lcom/flurry/sdk/hw;->c:Ljava/lang/String;

    .line 814
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 817
    if-nez v2, :cond_11b

    .line 818
    const/4 v2, 0x4

    sget-object v3, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v4, "Publisher params has no value associated with proton key. Not firing."

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_87

    .line 766
    :cond_ca
    const/4 v2, 0x0

    move/from16 v17, v2

    goto :goto_6f

    .line 770
    :sswitch_ce
    const-string v4, "flurry.session_start"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    const/4 v2, 0x0

    goto :goto_77

    :sswitch_da
    const-string v4, "flurry.session_end"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    const/4 v2, 0x1

    goto :goto_77

    :sswitch_e6
    const-string v4, "flurry.app_install"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    const/4 v2, 0x2

    goto :goto_77

    .line 772
    :pswitch_f2
    sget-object v2, Lcom/flurry/sdk/iq;->b:Lcom/flurry/sdk/iq;

    move-object/from16 v16, v2

    .line 773
    goto :goto_7e

    .line 775
    :pswitch_f7
    sget-object v2, Lcom/flurry/sdk/iq;->c:Lcom/flurry/sdk/iq;

    move-object/from16 v16, v2

    .line 776
    goto :goto_7e

    .line 778
    :pswitch_fc
    sget-object v2, Lcom/flurry/sdk/iq;->a:Lcom/flurry/sdk/iq;

    move-object/from16 v16, v2

    .line 779
    goto/16 :goto_7e

    .line 801
    :cond_102
    array-length v2, v6

    if-nez v2, :cond_10f

    .line 802
    const/4 v2, 0x4

    sget-object v4, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v5, "Template does not contain trigger values. Firing."

    invoke-static {v2, v4, v5}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 803
    const/4 v4, 0x1

    goto :goto_b1

    .line 807
    :cond_10f
    if-nez p2, :cond_b1

    .line 808
    const/4 v2, 0x4

    sget-object v3, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v4, "Publisher has not passed in params list. Not firing."

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_87

    .line 823
    :cond_11b
    const/4 v5, 0x0

    :goto_11c
    array-length v7, v6

    if-ge v5, v7, :cond_248

    .line 824
    aget-object v7, v6, v5

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_134

    .line 825
    const/4 v2, 0x1

    .line 830
    :goto_128
    if-nez v2, :cond_137

    .line 831
    const/4 v2, 0x4

    sget-object v3, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v4, "Publisher params list does not match proton param values. Not firing."

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_87

    .line 823
    :cond_134
    add-int/lit8 v5, v5, 0x1

    goto :goto_11c

    .line 835
    :cond_137
    const/4 v2, 0x4

    sget-object v4, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v5, "Publisher params match proton values. Firing."

    invoke-static {v2, v4, v5}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 839
    :cond_13f
    iget-object v0, v3, Lcom/flurry/sdk/hv;->b:Lcom/flurry/sdk/hp;

    move-object/from16 v22, v0

    .line 841
    if-nez v22, :cond_14f

    .line 842
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v4, "Template is empty. Not firing current event."

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_87

    .line 846
    :cond_14f
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Creating callback report for partner: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/flurry/sdk/hp;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 849
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 850
    const-string v3, "event_name"

    move-object/from16 v0, p1

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    const-string v3, "event_time_millis"

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flurry/sdk/if;->k:Lcom/flurry/sdk/ie;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/flurry/sdk/hp;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/flurry/sdk/ie;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 855
    const/4 v15, 0x0

    .line 856
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/flurry/sdk/hp;->f:Ljava/lang/String;

    if-eqz v3, :cond_19c

    .line 857
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flurry/sdk/if;->k:Lcom/flurry/sdk/ie;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/flurry/sdk/hp;->f:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/flurry/sdk/ie;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    .line 860
    :cond_19c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xf731400

    add-long v7, v2, v4

    .line 863
    new-instance v2, Lcom/flurry/sdk/ii;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/flurry/sdk/hp;->b:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/flurry/sdk/hp;->a:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    iget-object v9, v9, Lcom/flurry/sdk/hs;->e:Lcom/flurry/sdk/hq;

    iget v9, v9, Lcom/flurry/sdk/hq;->b:I

    move-object/from16 v0, v22

    iget v10, v0, Lcom/flurry/sdk/hp;->g:I

    move-object/from16 v0, v22

    iget-object v11, v0, Lcom/flurry/sdk/hp;->d:Lcom/flurry/sdk/ip;

    move-object/from16 v0, v22

    iget-object v12, v0, Lcom/flurry/sdk/hp;->j:Ljava/util/Map;

    move-object/from16 v0, v22

    iget v13, v0, Lcom/flurry/sdk/hp;->i:I

    move-object/from16 v0, v22

    iget v14, v0, Lcom/flurry/sdk/hp;->h:I

    invoke-direct/range {v2 .. v15}, Lcom/flurry/sdk/ii;-><init>(Ljava/lang/String;JLjava/lang/String;JIILcom/flurry/sdk/ip;Ljava/util/Map;IILjava/lang/String;)V

    .line 867
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/flurry/sdk/hp;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_87

    .line 871
    :cond_1dd
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->size()I

    move-result v2

    if-eqz v2, :cond_25

    .line 872
    new-instance v3, Lcom/flurry/sdk/im;

    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->d()J

    move-result-wide v6

    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->g()J

    move-result-wide v8

    move-object/from16 v4, p1

    move/from16 v5, v17

    move-object/from16 v10, v16

    move-object/from16 v11, v20

    invoke-direct/range {v3 .. v11}, Lcom/flurry/sdk/im;-><init>(Ljava/lang/String;ZJJLcom/flurry/sdk/iq;Ljava/util/Map;)V

    .line 875
    const-string v2, "flurry.session_end"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_228

    .line 876
    const/4 v2, 0x3

    sget-object v4, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Storing Pulse callbacks for event: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 877
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/sdk/if;->m:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_25

    .line 879
    :cond_228
    const/4 v2, 0x3

    sget-object v4, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Firing Pulse callbacks for event: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 880
    invoke-static {}, Lcom/flurry/sdk/il;->a()Lcom/flurry/sdk/il;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/il;->a(Lcom/flurry/sdk/im;)V
    :try_end_246
    .catchall {:try_start_39 .. :try_end_246} :catchall_36

    goto/16 :goto_25

    :cond_248
    move v2, v4

    goto/16 :goto_128

    .line 770
    nop

    :sswitch_data_24c
    .sparse-switch
        0x26750b2e -> :sswitch_da
        0x51bea0f9 -> :sswitch_e6
        0x5e26fdf5 -> :sswitch_ce
    .end sparse-switch

    :pswitch_data_25a
    .packed-switch 0x0
        :pswitch_f2
        :pswitch_f7
        :pswitch_fc
    .end packed-switch
.end method

.method private static b(Lcom/flurry/sdk/hs;)Z
    .registers 12

    .prologue
    const/4 v3, 0x1

    const/4 v10, 0x3

    const/4 v2, 0x0

    .line 604
    if-nez p0, :cond_6

    .line 617
    :goto_5
    return v2

    .line 610
    :cond_6
    iget-object v4, p0, Lcom/flurry/sdk/hs;->e:Lcom/flurry/sdk/hq;

    .line 10622
    if-eqz v4, :cond_ae

    .line 10627
    iget-object v0, v4, Lcom/flurry/sdk/hq;->a:Ljava/util/List;

    if-eqz v0, :cond_ae

    move v1, v2

    .line 10631
    :goto_f
    iget-object v0, v4, Lcom/flurry/sdk/hq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_ae

    .line 10632
    iget-object v0, v4, Lcom/flurry/sdk/hq;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/hp;

    .line 10633
    if-eqz v0, :cond_a9

    .line 10634
    iget-object v5, v0, Lcom/flurry/sdk/hp;->b:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_65

    iget-wide v6, v0, Lcom/flurry/sdk/hp;->a:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_65

    iget-object v5, v0, Lcom/flurry/sdk/hp;->e:Ljava/lang/String;

    const-string v6, ""

    .line 10635
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_65

    iget-object v0, v0, Lcom/flurry/sdk/hp;->c:Ljava/util/List;

    .line 10647
    if-eqz v0, :cond_a7

    .line 10652
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_45
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/hv;

    .line 10653
    iget-object v6, v0, Lcom/flurry/sdk/hv;->a:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 10654
    sget-object v0, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v5, "An event is missing a name"

    invoke-static {v10, v0, v5}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 10635
    :goto_63
    if-nez v0, :cond_a9

    .line 10636
    :cond_65
    sget-object v0, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v1, "A callback template is missing required values"

    invoke-static {v10, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 610
    :goto_6d
    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/flurry/sdk/hs;->e:Lcom/flurry/sdk/hq;

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lcom/flurry/sdk/hs;->e:Lcom/flurry/sdk/hq;

    iget-object v0, v0, Lcom/flurry/sdk/hq;->e:Ljava/lang/String;

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lcom/flurry/sdk/hs;->e:Lcom/flurry/sdk/hq;

    iget-object v0, v0, Lcom/flurry/sdk/hq;->e:Ljava/lang/String;

    const-string v1, ""

    .line 612
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 613
    :cond_85
    sget-object v0, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v1, "Config response is missing required values."

    invoke-static {v10, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 10658
    :cond_8e
    instance-of v6, v0, Lcom/flurry/sdk/hw;

    if-eqz v6, :cond_45

    .line 10659
    check-cast v0, Lcom/flurry/sdk/hw;

    iget-object v0, v0, Lcom/flurry/sdk/hw;->c:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 10660
    sget-object v0, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v5, "An event trigger is missing a param name"

    invoke-static {v10, v0, v5}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 10661
    goto :goto_63

    :cond_a7
    move v0, v3

    .line 10666
    goto :goto_63

    .line 10631
    :cond_a9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_f

    :cond_ae
    move v0, v3

    .line 10642
    goto :goto_6d

    :cond_b0
    move v2, v3

    .line 617
    goto/16 :goto_5
.end method

.method static synthetic c(Lcom/flurry/sdk/if;)V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/flurry/sdk/if;->k()V

    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/if;)V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/flurry/sdk/if;->l()V

    return-void
.end method

.method static synthetic e(Lcom/flurry/sdk/if;)Lcom/flurry/sdk/kj;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/flurry/sdk/if;->h:Lcom/flurry/sdk/kj;

    return-object v0
.end method

.method private declared-synchronized e()V
    .registers 4

    .prologue
    .line 368
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/flurry/sdk/if;->n:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_34

    if-nez v0, :cond_7

    .line 382
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 372
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 374
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 5097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 374
    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 375
    const-string v1, "com.flurry.android.flurryAppInstall"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 376
    if-eqz v1, :cond_5

    .line 377
    const-string v1, "flurry.app_install"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/flurry/sdk/if;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 378
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 379
    const-string v1, "com.flurry.android.flurryAppInstall"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 380
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_34

    goto :goto_5

    .line 368
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v0, 0x1

    .line 385
    monitor-enter p0

    :try_start_4
    iget-boolean v1, p0, Lcom/flurry/sdk/if;->n:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_a6

    if-nez v1, :cond_a

    .line 541
    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    .line 389
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 392
    iget-boolean v1, p0, Lcom/flurry/sdk/if;->q:Z

    if-eqz v1, :cond_8

    .line 397
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/je;->c()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 403
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/je;->d()Z

    move-result v1

    if-nez v1, :cond_a9

    move v1, v0

    .line 406
    :goto_2a
    iget-object v0, p0, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    if-eqz v0, :cond_3d

    .line 408
    iget-boolean v0, p0, Lcom/flurry/sdk/if;->t:Z

    if-eq v0, v1, :cond_ad

    .line 409
    const/4 v0, 0x3

    sget-object v4, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v5, "Limit ad tracking value has changed, purging"

    invoke-static {v0, v4, v5}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    .line 436
    :cond_3d
    :goto_3d
    invoke-static {}, Lcom/flurry/sdk/jp;->a()Lcom/flurry/sdk/jp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/jp;->a(Ljava/lang/Object;)V

    .line 438
    const/4 v0, 0x3

    sget-object v4, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v5, "Requesting proton config"

    invoke-static {v0, v4, v5}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-direct {p0}, Lcom/flurry/sdk/if;->g()[B

    move-result-object v4

    .line 443
    if-eqz v4, :cond_8

    .line 448
    new-instance v5, Lcom/flurry/sdk/kl;

    invoke-direct {v5}, Lcom/flurry/sdk/kl;-><init>()V

    .line 449
    iget-object v0, p0, Lcom/flurry/sdk/if;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f6

    sget-object v0, Lcom/flurry/sdk/if;->f:Ljava/lang/String;

    .line 5134
    :goto_61
    iput-object v0, v5, Lcom/flurry/sdk/kn;->f:Ljava/lang/String;

    .line 6029
    const/16 v0, 0x1388

    iput v0, v5, Lcom/flurry/sdk/lx;->w:I

    .line 451
    sget-object v0, Lcom/flurry/sdk/kn$a;->c:Lcom/flurry/sdk/kn$a;

    .line 6142
    iput-object v0, v5, Lcom/flurry/sdk/kn;->g:Lcom/flurry/sdk/kn$a;

    .line 452
    const-string v0, "Content-Type"

    const-string v6, "application/x-flurry;version=2"

    invoke-virtual {v5, v0, v6}, Lcom/flurry/sdk/kl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v0, "Accept"

    const-string v6, "application/x-flurry;version=2"

    invoke-virtual {v5, v0, v6}, Lcom/flurry/sdk/kl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v0, "FM-Checksum"

    invoke-static {v4}, Lcom/flurry/sdk/kj;->a([B)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/flurry/sdk/kl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    new-instance v0, Lcom/flurry/sdk/kv;

    invoke-direct {v0}, Lcom/flurry/sdk/kv;-><init>()V

    .line 7040
    iput-object v0, v5, Lcom/flurry/sdk/kl;->c:Lcom/flurry/sdk/kz;

    .line 456
    new-instance v0, Lcom/flurry/sdk/kv;

    invoke-direct {v0}, Lcom/flurry/sdk/kv;-><init>()V

    .line 7044
    iput-object v0, v5, Lcom/flurry/sdk/kl;->d:Lcom/flurry/sdk/kz;

    .line 8036
    iput-object v4, v5, Lcom/flurry/sdk/kl;->b:Ljava/lang/Object;

    .line 459
    new-instance v0, Lcom/flurry/sdk/if$2;

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/flurry/sdk/if$2;-><init>(Lcom/flurry/sdk/if;JZ)V

    .line 8048
    iput-object v0, v5, Lcom/flurry/sdk/kl;->a:Lcom/flurry/sdk/kl$a;

    .line 540
    invoke-static {}, Lcom/flurry/sdk/jp;->a()Lcom/flurry/sdk/jp;

    move-result-object v0

    invoke-virtual {v0, p0, v5}, Lcom/flurry/sdk/jp;->a(Ljava/lang/Object;Lcom/flurry/sdk/lx;)V
    :try_end_a4
    .catchall {:try_start_a .. :try_end_a4} :catchall_a6

    goto/16 :goto_8

    .line 385
    :catchall_a6
    move-exception v0

    monitor-exit p0

    throw v0

    .line 403
    :cond_a9
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_2a

    .line 415
    :cond_ad
    :try_start_ad
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/flurry/sdk/if;->s:J

    iget-object v0, p0, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    iget-wide v8, v0, Lcom/flurry/sdk/hs;->b:J

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-gez v0, :cond_d4

    .line 416
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v2, "Cached Proton config valid, no need to refresh"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-boolean v0, p0, Lcom/flurry/sdk/if;->v:Z

    if-nez v0, :cond_8

    .line 418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/if;->v:Z

    .line 419
    const-string v0, "flurry.session_start"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/if;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_8

    .line 427
    :cond_d4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/flurry/sdk/if;->s:J

    iget-object v0, p0, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    iget-wide v8, v0, Lcom/flurry/sdk/hs;->c:J

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_3d

    .line 428
    const/4 v0, 0x3

    sget-object v4, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v5, "Cached Proton config expired, purging"

    invoke-static {v0, v4, v5}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    .line 430
    iget-object v0, p0, Lcom/flurry/sdk/if;->l:Lcom/flurry/sdk/jw;

    invoke-virtual {v0}, Lcom/flurry/sdk/jw;->a()V

    goto/16 :goto_3d

    .line 449
    :cond_f6
    iget-object v0, p0, Lcom/flurry/sdk/if;->o:Ljava/lang/String;
    :try_end_f8
    .catchall {:try_start_ad .. :try_end_f8} :catchall_a6

    goto/16 :goto_61
.end method

.method static synthetic f(Lcom/flurry/sdk/if;)V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/flurry/sdk/if;->h()V

    return-void
.end method

.method static synthetic g(Lcom/flurry/sdk/if;)Z
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/flurry/sdk/if;->v:Z

    return v0
.end method

.method private g()[B
    .registers 7

    .prologue
    .line 547
    :try_start_0
    new-instance v2, Lcom/flurry/sdk/hr;

    invoke-direct {v2}, Lcom/flurry/sdk/hr;-><init>()V

    .line 548
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 8101
    iget-object v0, v0, Lcom/flurry/sdk/jr;->d:Ljava/lang/String;

    .line 548
    iput-object v0, v2, Lcom/flurry/sdk/hr;->a:Ljava/lang/String;

    .line 549
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 9097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 549
    invoke-static {v0}, Lcom/flurry/sdk/lo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/flurry/sdk/hr;->b:Ljava/lang/String;

    .line 550
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 10097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 550
    invoke-static {v0}, Lcom/flurry/sdk/lo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/flurry/sdk/hr;->c:Ljava/lang/String;

    .line 551
    invoke-static {}, Lcom/flurry/sdk/js;->a()I

    move-result v0

    iput v0, v2, Lcom/flurry/sdk/hr;->d:I

    .line 552
    const/4 v0, 0x3

    iput v0, v2, Lcom/flurry/sdk/hr;->e:I

    .line 553
    invoke-static {}, Lcom/flurry/sdk/jn;->a()Lcom/flurry/sdk/jn;

    invoke-static {}, Lcom/flurry/sdk/jn;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/flurry/sdk/hr;->f:Ljava/lang/String;

    .line 554
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/je;->d()Z

    move-result v0

    if-nez v0, :cond_ed

    const/4 v0, 0x1

    :goto_42
    iput-boolean v0, v2, Lcom/flurry/sdk/hr;->g:Z

    .line 556
    new-instance v0, Lcom/flurry/sdk/hu;

    invoke-direct {v0}, Lcom/flurry/sdk/hu;-><init>()V

    iput-object v0, v2, Lcom/flurry/sdk/hr;->h:Lcom/flurry/sdk/hu;

    .line 557
    iget-object v0, v2, Lcom/flurry/sdk/hr;->h:Lcom/flurry/sdk/hu;

    new-instance v1, Lcom/flurry/sdk/ho;

    invoke-direct {v1}, Lcom/flurry/sdk/ho;-><init>()V

    iput-object v1, v0, Lcom/flurry/sdk/hu;->a:Lcom/flurry/sdk/ho;

    .line 558
    iget-object v0, v2, Lcom/flurry/sdk/hr;->h:Lcom/flurry/sdk/hu;

    iget-object v0, v0, Lcom/flurry/sdk/hu;->a:Lcom/flurry/sdk/ho;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/flurry/sdk/ho;->a:Ljava/lang/String;

    .line 559
    iget-object v0, v2, Lcom/flurry/sdk/hr;->h:Lcom/flurry/sdk/hu;

    iget-object v0, v0, Lcom/flurry/sdk/hu;->a:Lcom/flurry/sdk/ho;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v1, v0, Lcom/flurry/sdk/ho;->b:Ljava/lang/String;

    .line 560
    iget-object v0, v2, Lcom/flurry/sdk/hr;->h:Lcom/flurry/sdk/hu;

    iget-object v0, v0, Lcom/flurry/sdk/hu;->a:Lcom/flurry/sdk/ho;

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v1, v0, Lcom/flurry/sdk/ho;->c:Ljava/lang/String;

    .line 561
    iget-object v0, v2, Lcom/flurry/sdk/hr;->h:Lcom/flurry/sdk/hu;

    iget-object v0, v0, Lcom/flurry/sdk/hu;->a:Lcom/flurry/sdk/ho;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v1, v0, Lcom/flurry/sdk/ho;->d:Ljava/lang/String;

    .line 562
    iget-object v0, v2, Lcom/flurry/sdk/hr;->h:Lcom/flurry/sdk/hu;

    iget-object v0, v0, Lcom/flurry/sdk/hu;->a:Lcom/flurry/sdk/ho;

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v1, v0, Lcom/flurry/sdk/ho;->e:Ljava/lang/String;

    .line 563
    iget-object v0, v2, Lcom/flurry/sdk/hr;->h:Lcom/flurry/sdk/hu;

    iget-object v0, v0, Lcom/flurry/sdk/hu;->a:Lcom/flurry/sdk/ho;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/flurry/sdk/ho;->f:Ljava/lang/String;

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/flurry/sdk/hr;->i:Ljava/util/List;

    .line 567
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    .line 10127
    iget-object v0, v0, Lcom/flurry/sdk/je;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 568
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 569
    new-instance v4, Lcom/flurry/sdk/ht;

    invoke-direct {v4}, Lcom/flurry/sdk/ht;-><init>()V

    .line 570
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/jm;

    iget v1, v1, Lcom/flurry/sdk/jm;->c:I

    iput v1, v4, Lcom/flurry/sdk/ht;->a:I

    .line 571
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/jm;

    iget-boolean v1, v1, Lcom/flurry/sdk/jm;->d:Z

    if-eqz v1, :cond_f0

    .line 572
    new-instance v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v4, Lcom/flurry/sdk/ht;->b:Ljava/lang/String;

    .line 577
    :goto_cf
    iget-object v0, v2, Lcom/flurry/sdk/hr;->i:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d4} :catch_d5

    goto :goto_9d

    .line 597
    :catch_d5
    move-exception v0

    .line 598
    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Proton config request failed with exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 599
    const/4 v0, 0x0

    :goto_ec
    return-object v0

    .line 554
    :cond_ed
    const/4 v0, 0x0

    goto/16 :goto_42

    .line 575
    :cond_f0
    :try_start_f0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/flurry/sdk/lr;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/flurry/sdk/ht;->b:Ljava/lang/String;

    goto :goto_cf

    .line 580
    :cond_fd
    invoke-static {}, Lcom/flurry/sdk/ji;->a()Lcom/flurry/sdk/ji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ji;->e()Landroid/location/Location;

    move-result-object v0

    .line 581
    if-eqz v0, :cond_143

    .line 582
    new-instance v1, Lcom/flurry/sdk/hy;

    invoke-direct {v1}, Lcom/flurry/sdk/hy;-><init>()V

    iput-object v1, v2, Lcom/flurry/sdk/hr;->j:Lcom/flurry/sdk/hy;

    .line 583
    iget-object v1, v2, Lcom/flurry/sdk/hr;->j:Lcom/flurry/sdk/hy;

    new-instance v3, Lcom/flurry/sdk/hx;

    invoke-direct {v3}, Lcom/flurry/sdk/hx;-><init>()V

    iput-object v3, v1, Lcom/flurry/sdk/hy;->a:Lcom/flurry/sdk/hx;

    .line 584
    iget-object v1, v2, Lcom/flurry/sdk/hr;->j:Lcom/flurry/sdk/hy;

    iget-object v1, v1, Lcom/flurry/sdk/hy;->a:Lcom/flurry/sdk/hx;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/flurry/sdk/lr;->a(D)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/flurry/sdk/hx;->a:D

    .line 585
    iget-object v1, v2, Lcom/flurry/sdk/hr;->j:Lcom/flurry/sdk/hy;

    iget-object v1, v1, Lcom/flurry/sdk/hy;->a:Lcom/flurry/sdk/hx;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/flurry/sdk/lr;->a(D)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/flurry/sdk/hx;->b:D

    .line 586
    iget-object v1, v2, Lcom/flurry/sdk/hr;->j:Lcom/flurry/sdk/hy;

    iget-object v1, v1, Lcom/flurry/sdk/hy;->a:Lcom/flurry/sdk/hx;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Lcom/flurry/sdk/lr;->a(D)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, v1, Lcom/flurry/sdk/hx;->c:F

    .line 589
    :cond_143
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string v1, "UserId"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 590
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_162

    .line 591
    new-instance v1, Lcom/flurry/sdk/ib;

    invoke-direct {v1}, Lcom/flurry/sdk/ib;-><init>()V

    iput-object v1, v2, Lcom/flurry/sdk/hr;->k:Lcom/flurry/sdk/ib;

    .line 592
    iget-object v1, v2, Lcom/flurry/sdk/hr;->k:Lcom/flurry/sdk/ib;

    iput-object v0, v1, Lcom/flurry/sdk/ib;->a:Ljava/lang/String;

    .line 595
    :cond_162
    iget-object v0, p0, Lcom/flurry/sdk/if;->g:Lcom/flurry/sdk/kj;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/kj;->a(Ljava/lang/Object;)[B
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_167} :catch_d5

    move-result-object v0

    goto :goto_ec
.end method

.method private h()V
    .registers 7

    .prologue
    const/4 v4, 0x5

    .line 672
    iget-object v0, p0, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    if-nez v0, :cond_6

    .line 730
    :cond_5
    return-void

    .line 676
    :cond_6
    sget-object v0, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v1, "Processing config response"

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    iget-object v0, v0, Lcom/flurry/sdk/hs;->e:Lcom/flurry/sdk/hq;

    iget v0, v0, Lcom/flurry/sdk/hq;->c:I

    invoke-static {v0}, Lcom/flurry/sdk/il;->a(I)V

    .line 680
    iget-object v0, p0, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    iget-object v0, v0, Lcom/flurry/sdk/hs;->e:Lcom/flurry/sdk/hq;

    iget v0, v0, Lcom/flurry/sdk/hq;->d:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Lcom/flurry/sdk/il;->b(I)V

    .line 681
    invoke-static {}, Lcom/flurry/sdk/in;->a()Lcom/flurry/sdk/in;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    iget-object v1, v1, Lcom/flurry/sdk/hs;->e:Lcom/flurry/sdk/hq;

    iget-object v1, v1, Lcom/flurry/sdk/hq;->e:Ljava/lang/String;

    .line 11297
    if-eqz v1, :cond_3c

    const-string v2, ".do"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 11298
    sget-object v2, Lcom/flurry/sdk/in;->b:Ljava/lang/String;

    const-string v3, "overriding analytics agent report URL without an endpoint, are you sure?"

    invoke-static {v4, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 11301
    :cond_3c
    iput-object v1, v0, Lcom/flurry/sdk/in;->a:Ljava/lang/String;

    .line 684
    iget-boolean v0, p0, Lcom/flurry/sdk/if;->n:Z

    if-eqz v0, :cond_55

    .line 685
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string v1, "analyticsEnabled"

    iget-object v2, p0, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    iget-object v2, v2, Lcom/flurry/sdk/hs;->f:Lcom/flurry/sdk/ic;

    iget-boolean v2, v2, Lcom/flurry/sdk/ic;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 689
    :cond_55
    iget-object v0, p0, Lcom/flurry/sdk/if;->l:Lcom/flurry/sdk/jw;

    invoke-virtual {v0}, Lcom/flurry/sdk/jw;->a()V

    .line 691
    iget-object v0, p0, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    iget-object v0, v0, Lcom/flurry/sdk/hs;->e:Lcom/flurry/sdk/hq;

    .line 692
    if-eqz v0, :cond_5

    .line 696
    iget-object v0, v0, Lcom/flurry/sdk/hq;->a:Ljava/util/List;

    .line 697
    if-eqz v0, :cond_5

    .line 701
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_68
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/hp;

    .line 702
    if-eqz v0, :cond_68

    .line 706
    iget-object v1, v0, Lcom/flurry/sdk/hp;->c:Ljava/util/List;

    .line 708
    if-eqz v1, :cond_68

    .line 712
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7e
    :goto_7e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/hv;

    .line 713
    if-eqz v1, :cond_7e

    .line 718
    iget-object v4, v1, Lcom/flurry/sdk/hv;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7e

    .line 723
    iput-object v0, v1, Lcom/flurry/sdk/hv;->b:Lcom/flurry/sdk/hp;

    .line 726
    iget-object v4, p0, Lcom/flurry/sdk/if;->l:Lcom/flurry/sdk/jw;

    iget-object v5, v1, Lcom/flurry/sdk/hv;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7e
.end method

.method static synthetic h(Lcom/flurry/sdk/if;)Z
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/if;->v:Z

    return v0
.end method

.method private declared-synchronized i()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 897
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/if;->i:Lcom/flurry/sdk/jy;

    invoke-virtual {v0}, Lcom/flurry/sdk/jy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/id;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_66

    .line 898
    if-eqz v0, :cond_38

    .line 901
    :try_start_c
    iget-object v1, p0, Lcom/flurry/sdk/if;->h:Lcom/flurry/sdk/kj;

    .line 12082
    iget-object v3, v0, Lcom/flurry/sdk/id;->c:[B

    .line 901
    invoke-virtual {v1, v3}, Lcom/flurry/sdk/kj;->b([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/hs;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_49
    .catchall {:try_start_c .. :try_end_16} :catchall_66

    .line 907
    :goto_16
    :try_start_16
    invoke-static {v1}, Lcom/flurry/sdk/if;->b(Lcom/flurry/sdk/hs;)Z

    move-result v3

    if-nez v3, :cond_1d

    move-object v1, v2

    .line 911
    :cond_1d
    if-eqz v1, :cond_38

    .line 912
    const/4 v2, 0x4

    sget-object v3, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v4, "Loaded saved proton config response"

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 914
    const-wide/16 v2, 0x2710

    iput-wide v2, p0, Lcom/flurry/sdk/if;->r:J

    .line 13074
    iget-wide v2, v0, Lcom/flurry/sdk/id;->a:J

    .line 916
    iput-wide v2, p0, Lcom/flurry/sdk/if;->s:J

    .line 13078
    iget-boolean v0, v0, Lcom/flurry/sdk/id;->b:Z

    .line 917
    iput-boolean v0, p0, Lcom/flurry/sdk/if;->t:Z

    .line 918
    iput-object v1, p0, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    .line 921
    invoke-direct {p0}, Lcom/flurry/sdk/if;->h()V

    .line 925
    :cond_38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/if;->q:Z

    .line 928
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/if$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/if$3;-><init>(Lcom/flurry/sdk/if;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V
    :try_end_47
    .catchall {:try_start_16 .. :try_end_47} :catchall_66

    .line 934
    monitor-exit p0

    return-void

    .line 902
    :catch_49
    move-exception v1

    .line 903
    const/4 v3, 0x5

    :try_start_4b
    sget-object v4, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to decode saved proton config response: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 904
    iget-object v1, p0, Lcom/flurry/sdk/if;->i:Lcom/flurry/sdk/jy;

    invoke-virtual {v1}, Lcom/flurry/sdk/jy;->b()Z
    :try_end_64
    .catchall {:try_start_4b .. :try_end_64} :catchall_66

    move-object v1, v2

    goto :goto_16

    .line 897
    :catchall_66
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic i(Lcom/flurry/sdk/if;)V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/flurry/sdk/if;->e()V

    return-void
.end method

.method static synthetic j(Lcom/flurry/sdk/if;)J
    .registers 3

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/flurry/sdk/if;->r:J

    return-wide v0
.end method

.method private declared-synchronized j()V
    .registers 7

    .prologue
    .line 952
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/flurry/sdk/if;->p:Z

    if-nez v0, :cond_e

    .line 953
    sget-object v0, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v1, "Analytics disabled, not sending pulse reports."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_60

    .line 965
    :goto_c
    monitor-exit p0

    return-void

    .line 957
    :cond_e
    const/4 v0, 0x4

    :try_start_f
    sget-object v1, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/if;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " queued reports."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lcom/flurry/sdk/if;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/im;

    .line 960
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Firing Pulse callbacks for event: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14084
    iget-object v5, v0, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 960
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 961
    invoke-static {}, Lcom/flurry/sdk/il;->a()Lcom/flurry/sdk/il;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/il;->a(Lcom/flurry/sdk/im;)V
    :try_end_5f
    .catchall {:try_start_f .. :try_end_5f} :catchall_60

    goto :goto_35

    .line 952
    :catchall_60
    move-exception v0

    monitor-exit p0

    throw v0

    .line 964
    :cond_63
    :try_start_63
    invoke-direct {p0}, Lcom/flurry/sdk/if;->m()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_60

    goto :goto_c
.end method

.method static synthetic k(Lcom/flurry/sdk/if;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/flurry/sdk/if;->a:Ljava/lang/Runnable;

    return-object v0
.end method

.method private declared-synchronized k()V
    .registers 4

    .prologue
    .line 968
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_2
    sget-object v1, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v2, "Loading queued report data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 970
    iget-object v0, p0, Lcom/flurry/sdk/if;->j:Lcom/flurry/sdk/jy;

    invoke-virtual {v0}, Lcom/flurry/sdk/jy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 972
    if-eqz v0, :cond_18

    .line 973
    iget-object v1, p0, Lcom/flurry/sdk/if;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_1a

    .line 975
    :cond_18
    monitor-exit p0

    return-void

    .line 968
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized l()V
    .registers 4

    .prologue
    .line 978
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_2
    sget-object v1, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v2, "Saving queued report data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/flurry/sdk/if;->j:Lcom/flurry/sdk/jy;

    iget-object v1, p0, Lcom/flurry/sdk/if;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_12

    .line 981
    monitor-exit p0

    return-void

    .line 978
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized m()V
    .registers 2

    .prologue
    .line 984
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/if;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 985
    iget-object v0, p0, Lcom/flurry/sdk/if;->j:Lcom/flurry/sdk/jy;

    invoke-virtual {v0}, Lcom/flurry/sdk/jy;->b()Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 986
    monitor-exit p0

    return-void

    .line 984
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 3

    .prologue
    .line 269
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/flurry/sdk/if;->n:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-nez v0, :cond_7

    .line 282
    :goto_5
    monitor-exit p0

    return-void

    .line 273
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 276
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->d()J

    move-result-wide v0

    sput-wide v0, Lcom/flurry/sdk/ih;->a:J

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/if;->v:Z

    .line 281
    invoke-direct {p0}, Lcom/flurry/sdk/if;->f()V
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1a

    goto :goto_5

    .line 269
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .registers 6

    .prologue
    .line 299
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/flurry/sdk/if;->n:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_20

    if-nez v0, :cond_7

    .line 343
    :goto_5
    monitor-exit p0

    return-void

    .line 303
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 306
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/if;->b(J)V

    .line 334
    const-string v0, "flurry.session_end"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/if;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 337
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/if$11;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/if$11;-><init>(Lcom/flurry/sdk/if;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_20

    goto :goto_5

    .line 299
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .prologue
    const/4 v3, 0x4

    .line 248
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_8c

    :cond_9
    :goto_9
    packed-switch v0, :pswitch_data_9a

    .line 262
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v2, "onSettingUpdate internal error!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_14
    return-void

    .line 248
    :sswitch_15
    const-string v1, "ProtonEnabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9

    :sswitch_1f
    const-string v1, "ProtonConfigUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :sswitch_29
    const-string v1, "analyticsEnabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x2

    goto :goto_9

    .line 250
    :pswitch_33
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/if;->n:Z

    .line 251
    sget-object v0, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSettingUpdate, protonEnabled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/flurry/sdk/if;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 254
    :pswitch_52
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/sdk/if;->o:Ljava/lang/String;

    .line 255
    sget-object v0, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSettingUpdate, protonConfigUrl = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/if;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 258
    :pswitch_6d
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/if;->p:Z

    .line 259
    sget-object v0, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSettingUpdate, AnalyticsEnabled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/flurry/sdk/if;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 248
    :sswitch_data_8c
    .sparse-switch
        -0x66855b25 -> :sswitch_29
        0x2633fcbb -> :sswitch_15
        0x5edae5c7 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_33
        :pswitch_52
        :pswitch_6d
    .end packed-switch
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
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
    .line 358
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/flurry/sdk/if;->n:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-nez v0, :cond_7

    .line 365
    :goto_5
    monitor-exit p0

    return-void

    .line 362
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 364
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/if;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_e

    goto :goto_5

    .line 358
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .registers 3

    .prologue
    .line 286
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/flurry/sdk/if;->n:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    if-nez v0, :cond_7

    .line 295
    :goto_5
    monitor-exit p0

    return-void

    .line 290
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 293
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/if;->b(J)V

    .line 294
    invoke-direct {p0}, Lcom/flurry/sdk/if;->j()V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_18

    goto :goto_5

    .line 286
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .registers 2

    .prologue
    .line 347
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/flurry/sdk/if;->n:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-nez v0, :cond_7

    .line 355
    :goto_5
    monitor-exit p0

    return-void

    .line 351
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 354
    invoke-direct {p0}, Lcom/flurry/sdk/if;->j()V
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_e

    goto :goto_5

    .line 347
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
