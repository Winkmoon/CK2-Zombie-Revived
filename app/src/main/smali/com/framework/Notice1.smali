.class public Lcom/framework/Notice1;
.super Landroid/app/Service;
.source "Notice1.java"


# static fields
.field public static m_msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static ChangeMsg(Ljava/lang/String;)V
    .registers 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 31
    sput-object p0, Lcom/framework/Notice1;->m_msg:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public makeNotice()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    .line 37
    const-string v7, "ChickenZombie2"

    .line 38
    .local v7, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/framework/Notice1;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 39
    .local v6, "str":Ljava/lang/String;
    sget-object v3, Lcom/framework/Notice1;->m_msg:Ljava/lang/String;

    .line 42
    .local v3, "msg":Ljava/lang/String;
    const-string v8, "ko"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7b

    .line 43
    const-string v3, "\ubb34\uae30\uac00 \ucda9\uc804\ub418\uc5c8\uc2b5\ub2c8\ub2e4! \uc880\ube44 \ub188\ub4e4\uc744 \ubc15\uc0b4\ub0b4\ub7ec \uc640\uc8fc\uc138\uc694! \ube68\ub9ac\uc694!"

    .line 71
    :goto_1d
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Lcom/framework/Notice1;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 72
    .local v4, "nMgr":Landroid/app/NotificationManager;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/framework/Notice1;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/bluegnc/chickenrevolution2/MainActivity;

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v2, "main":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/framework/Notice1;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v8, v9, v2, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 77
    .local v1, "mPendingIntent":Landroid/app/PendingIntent;
    new-instance v8, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/framework/Notice1;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-virtual {v8, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 79
    invoke-virtual {v8, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 80
    const/high16 v9, 0x7f010000

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 81
    invoke-virtual {v8, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 82
    invoke-virtual {v8, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 83
    invoke-virtual {v8, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 84
    invoke-virtual {v8, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 85
    invoke-virtual {v8}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 87
    .local v5, "noti":Landroid/app/Notification;
    iget v8, v5, Landroid/app/Notification;->defaults:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v5, Landroid/app/Notification;->defaults:I

    .line 88
    iget v8, v5, Landroid/app/Notification;->defaults:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v5, Landroid/app/Notification;->defaults:I

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v0, v8

    .line 90
    .local v0, "_id":I
    invoke-virtual {v4, v0, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 91
    return-void

    .line 45
    .end local v0    # "_id":I
    .end local v1    # "mPendingIntent":Landroid/app/PendingIntent;
    .end local v2    # "main":Landroid/content/Intent;
    .end local v4    # "nMgr":Landroid/app/NotificationManager;
    .end local v5    # "noti":Landroid/app/Notification;
    :cond_7b
    const-string v3, "Weapons were charged! Come here to destroy zombies, please! Hurry up!"

    goto :goto_1d
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/framework/Notice1;->makeNotice()V

    .line 27
    const/4 v0, 0x2

    return v0
.end method
