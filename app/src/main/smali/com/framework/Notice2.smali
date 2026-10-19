.class public Lcom/framework/Notice2;
.super Landroid/app/Service;
.source "Notice2.java"


# static fields
.field public static m_msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static ChangeMsg(Ljava/lang/String;)V
    .registers 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    sput-object p0, Lcom/framework/Notice2;->m_msg:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public makeNotice()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 42
    const-string v6, "ChickenWarrior"

    .line 43
    .local v6, "title":Ljava/lang/String;
    sget-object v3, Lcom/framework/Notice2;->m_msg:Ljava/lang/String;

    .line 45
    .local v3, "msg":Ljava/lang/String;
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Lcom/framework/Notice2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 46
    .local v4, "nMgr":Landroid/app/NotificationManager;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/framework/Notice2;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/bluegnc/chickenrevolution2/MainActivity;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v2, "main":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/framework/Notice2;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v8, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 51
    .local v1, "mPendingIntent":Landroid/app/PendingIntent;
    new-instance v7, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/framework/Notice2;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v7, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 53
    invoke-virtual {v7, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 54
    const/high16 v8, 0x7f010000

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 55
    invoke-virtual {v7, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 56
    invoke-virtual {v7, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 57
    invoke-virtual {v7, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 58
    invoke-virtual {v7, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 59
    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 61
    .local v5, "noti":Landroid/app/Notification;
    iget v7, v5, Landroid/app/Notification;->defaults:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v5, Landroid/app/Notification;->defaults:I

    .line 62
    iget v7, v5, Landroid/app/Notification;->defaults:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v5, Landroid/app/Notification;->defaults:I

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v0, v8

    .line 64
    .local v0, "_id":I
    invoke-virtual {v4, v0, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 66
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/framework/Notice2;->makeNotice()V

    .line 32
    const/4 v0, 0x2

    return v0
.end method
