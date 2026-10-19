.class public Lcom/framework/OGLActivity;
.super Lcom/bluegnc/ggapi/INAPP;
.source "OGLActivity.java"

# interfaces
.implements Lcom/framework/JConst;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/framework/OGLActivity$UnlockReceiver;
    }
.end annotation


# static fields
.field private static accel:Lcom/framework/Cocos2dxAccelerometer;

.field public static bEnableAccel:Z

.field private static context:Landroid/content/Context;

.field private static handler:Landroid/os/Handler;

.field private static noti_state_:I

.field private static sound:Lcom/framework/Sound;


# instance fields
.field btnClr:Landroid/content/DialogInterface$OnClickListener;

.field btnOk:Landroid/content/DialogInterface$OnClickListener;

.field private unlockReceiver:Lcom/framework/OGLActivity$UnlockReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/framework/OGLActivity;->bEnableAccel:Z

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/bluegnc/ggapi/INAPP;-><init>()V

    .line 96
    new-instance v0, Lcom/framework/OGLActivity$1;

    invoke-direct {v0, p0}, Lcom/framework/OGLActivity$1;-><init>(Lcom/framework/OGLActivity;)V

    iput-object v0, p0, Lcom/framework/OGLActivity;->btnOk:Landroid/content/DialogInterface$OnClickListener;

    .line 102
    new-instance v0, Lcom/framework/OGLActivity$2;

    invoke-direct {v0, p0}, Lcom/framework/OGLActivity$2;-><init>(Lcom/framework/OGLActivity;)V

    iput-object v0, p0, Lcom/framework/OGLActivity;->btnClr:Landroid/content/DialogInterface$OnClickListener;

    .line 33
    return-void
.end method

.method public static ClearNotification(II)V
    .registers 8
    .param p0, "type"    # I
    .param p1, "interval"    # I

    .prologue
    .line 246
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/framework/OGLActivity;->context:Landroid/content/Context;

    const-class v5, Lcom/framework/Notice1;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .local v3, "temp_alarm":Landroid/content/Intent;
    const/4 v4, 0x2

    if-ne p0, v4, :cond_15

    .line 248
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "temp_alarm":Landroid/content/Intent;
    sget-object v4, Lcom/framework/OGLActivity;->context:Landroid/content/Context;

    const-class v5, Lcom/framework/Notice2;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    .restart local v3    # "temp_alarm":Landroid/content/Intent;
    :cond_15
    move v0, p1

    .line 251
    .local v0, "_id":I
    sget-object v4, Lcom/framework/OGLActivity;->context:Landroid/content/Context;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v0, v3, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 252
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    sget-object v4, Lcom/framework/OGLActivity;->context:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 253
    .local v1, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 254
    return-void
.end method

.method public static NotificationSetting(I)V
    .registers 4
    .param p0, "state"    # I

    .prologue
    .line 240
    sput p0, Lcom/framework/OGLActivity;->noti_state_:I

    .line 241
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save noti state"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public static SetNotification(Ljava/lang/String;II)V
    .registers 13
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p2, "interval"    # I

    .prologue
    .line 221
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/framework/OGLActivity;->context:Landroid/content/Context;

    const-class v5, Lcom/framework/Notice1;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .local v3, "temp_alarm":Landroid/content/Intent;
    const/4 v4, 0x2

    if-ne p1, v4, :cond_38

    .line 223
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "temp_alarm":Landroid/content/Intent;
    sget-object v4, Lcom/framework/OGLActivity;->context:Landroid/content/Context;

    const-class v5, Lcom/framework/Notice2;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .restart local v3    # "temp_alarm":Landroid/content/Intent;
    invoke-static {p0}, Lcom/framework/Notice2;->ChangeMsg(Ljava/lang/String;)V

    .line 229
    :goto_18
    move v0, p2

    .line 230
    .local v0, "_id":I
    sget-object v4, Lcom/framework/OGLActivity;->context:Landroid/content/Context;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v0, v3, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 233
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    sget-object v4, Lcom/framework/OGLActivity;->context:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 235
    .local v1, "alarm":Landroid/app/AlarmManager;
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    mul-int/lit16 v5, p2, 0x3e8

    int-to-long v8, v5

    add-long/2addr v6, v8

    invoke-virtual {v1, v4, v6, v7, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 236
    return-void

    .line 227
    .end local v0    # "_id":I
    .end local v1    # "alarm":Landroid/app/AlarmManager;
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_38
    invoke-static {p0}, Lcom/framework/Notice1;->ChangeMsg(Ljava/lang/String;)V

    goto :goto_18
.end method

.method static synthetic access$0(Lcom/framework/OGLActivity;)Lcom/framework/OGLActivity$UnlockReceiver;
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/framework/OGLActivity;->unlockReceiver:Lcom/framework/OGLActivity$UnlockReceiver;

    return-object v0
.end method

.method static synthetic access$1(Lcom/framework/OGLActivity;Lcom/framework/OGLActivity$UnlockReceiver;)V
    .registers 2

    .prologue
    .line 390
    iput-object p1, p0, Lcom/framework/OGLActivity;->unlockReceiver:Lcom/framework/OGLActivity$UnlockReceiver;

    return-void
.end method

.method public static clearBgm(Ljava/lang/String;)V
    .registers 2
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 341
    sget-object v0, Lcom/framework/OGLActivity;->sound:Lcom/framework/Sound;

    invoke-virtual {v0, p0}, Lcom/framework/Sound;->clearBgm(Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public static clearBgmAll()V
    .registers 1

    .prologue
    .line 345
    sget-object v0, Lcom/framework/OGLActivity;->sound:Lcom/framework/Sound;

    invoke-virtual {v0}, Lcom/framework/Sound;->clearBgmAll()V

    .line 346
    return-void
.end method

.method public static clearSnd(Ljava/lang/String;)V
    .registers 2
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 317
    sget-object v0, Lcom/framework/OGLActivity;->sound:Lcom/framework/Sound;

    invoke-virtual {v0, p0}, Lcom/framework/Sound;->clearSnd(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public static clearSndAll()V
    .registers 1

    .prologue
    .line 321
    sget-object v0, Lcom/framework/OGLActivity;->sound:Lcom/framework/Sound;

    invoke-virtual {v0}, Lcom/framework/Sound;->clearSndAll()V

    .line 322
    return-void
.end method

.method public static flurryEvt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "evt"    # Ljava/lang/String;
    .param p1, "pname"    # Ljava/lang/String;
    .param p2, "pval"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public static flurryEvt(Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 7
    .param p0, "evt"    # Ljava/lang/String;
    .param p1, "info"    # [Ljava/lang/String;
    .param p2, "length"    # I

    .prologue
    return-void
.end method

.method public static getDateInfo(I)J
    .registers 9
    .param p0, "type"    # I

    .prologue
    .line 209
    const-wide/16 v2, 0x0

    .line 210
    .local v2, "result":J
    packed-switch p0, :pswitch_data_14

    .line 216
    :goto_5
    return-wide v2

    .line 212
    :pswitch_6
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 213
    .local v0, "cur":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    goto :goto_5

    .line 210
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public static getDvInfo(I)Ljava/lang/String;
    .registers 4
    .param p0, "type"    # I

    .prologue
    .line 182
    const-string v0, ""

    .line 183
    .local v0, "str":Ljava/lang/String;
    packed-switch p0, :pswitch_data_3c

    .line 205
    :goto_5
    :pswitch_5
    return-object v0

    .line 185
    :pswitch_6
    sget-object v1, Lcom/framework/OGLActivity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 186
    goto :goto_5

    .line 188
    :pswitch_17
    sget-object v1, Lcom/framework/OGLActivity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    goto :goto_5

    .line 195
    :pswitch_24
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 196
    goto :goto_5

    .line 198
    :pswitch_27
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 199
    goto :goto_5

    .line 202
    :pswitch_2a
    sget-object v1, Lcom/framework/OGLActivity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 183
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_17
        :pswitch_5
        :pswitch_24
        :pswitch_27
        :pswitch_2a
    .end packed-switch
.end method

.method public static getInstalledApp(Ljava/lang/String;)I
    .registers 8
    .param p0, "packagename"    # Ljava/lang/String;

    .prologue
    .line 434
    const/4 v3, 0x0

    .line 435
    .local v3, "result":I
    sget-object v5, Lcom/framework/OGLActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 436
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 438
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_19

    move v4, v3

    .line 445
    .end local v3    # "result":I
    .local v4, "result":I
    :goto_18
    return v4

    .line 438
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :cond_19
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 440
    .local v0, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 441
    const/4 v3, 0x1

    move v4, v3

    .line 442
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto :goto_18
.end method

.method public static getNetworkStatus()I
    .registers 7

    .prologue
    .line 258
    sget-object v5, Lcom/framework/OGLActivity;->context:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 259
    .local v1, "netMgr":Landroid/net/ConnectivityManager;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 260
    .local v2, "netMobile":Landroid/net/NetworkInfo;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 261
    .local v3, "netWifi":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 262
    const/4 v4, 0x1

    .line 263
    .local v4, "status":I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "NET => MOBILE"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 277
    :goto_24
    return v4

    .line 264
    .end local v4    # "status":I
    :cond_25
    if-eqz v3, :cond_36

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 265
    const/4 v4, 0x2

    .line 266
    .restart local v4    # "status":I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "NET => WIFI"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_24

    .line 268
    .end local v4    # "status":I
    :cond_36
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 269
    .local v0, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 270
    const/4 v4, 0x3

    .line 271
    .restart local v4    # "status":I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "NET => CONNECT"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_24

    .line 273
    .end local v4    # "status":I
    :cond_4b
    const/4 v4, 0x0

    .line 274
    .restart local v4    # "status":I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "NET => NONE"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_24
.end method

.method public static getResFile(Ljava/lang/String;)[B
    .registers 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "dat":[B
    const/4 v3, 0x0

    .line 285
    .local v3, "size":I
    :try_start_2
    sget-object v4, Lcom/framework/OGLActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 286
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 287
    new-array v0, v3, [B

    .line 288
    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v2, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    .line 289
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1b

    .line 293
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_1a
    return-object v0

    .line 290
    :catch_1b
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "e getRes("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public static handleMsg(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "cont"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 71
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 72
    .local v0, "msg":Landroid/os/Message;
    packed-switch p2, :pswitch_data_26

    .line 91
    :goto_8
    new-instance v1, Lcom/framework/MsgBox;

    invoke-direct {v1, p0, p1, p2}, Lcom/framework/MsgBox;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 93
    sget-object v1, Lcom/framework/OGLActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 94
    return-void

    .line 79
    :pswitch_15
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_8

    .line 82
    :pswitch_19
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_8

    .line 85
    :pswitch_1d
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_8

    .line 88
    :pswitch_21
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_8

    .line 72
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_19
        :pswitch_1d
        :pswitch_21
    .end packed-switch
.end method

.method public static loadBgm(Ljava/lang/String;)V
    .registers 4
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 325
    sget-object v0, Lcom/framework/OGLActivity;->sound:Lcom/framework/Sound;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/framework/Sound;->loadBgm(Ljava/lang/String;ZZ)Landroid/media/MediaPlayer;

    .line 326
    return-void
.end method

.method public static loadSnd(Ljava/lang/String;)V
    .registers 3
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 301
    sget-object v0, Lcom/framework/OGLActivity;->sound:Lcom/framework/Sound;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/framework/Sound;->loadSnd(Ljava/lang/String;Z)I

    .line 302
    return-void
.end method

.method public static playBgm(Ljava/lang/String;ZZ)V
    .registers 4
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "loop"    # Z
    .param p2, "resume"    # Z

    .prologue
    .line 329
    sget-object v0, Lcom/framework/OGLActivity;->sound:Lcom/framework/Sound;

    invoke-virtual {v0, p0, p1, p2}, Lcom/framework/Sound;->playBgm(Ljava/lang/String;ZZ)V

    .line 330
    return-void
.end method

.method public static playSnd(Ljava/lang/String;I)V
    .registers 3
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "cnt"    # I

    .prologue
    .line 305
    sget-object v0, Lcom/framework/OGLActivity;->sound:Lcom/framework/Sound;

    invoke-virtual {v0, p0, p1}, Lcom/framework/Sound;->playSnd(Ljava/lang/String;I)V

    .line 306
    return-void
.end method

.method public static setAccel(Z)V
    .registers 2
    .param p0, "flag"    # Z

    .prologue
    .line 349
    if-eqz p0, :cond_b

    .line 350
    const/4 v0, 0x1

    sput-boolean v0, Lcom/framework/OGLActivity;->bEnableAccel:Z

    .line 351
    sget-object v0, Lcom/framework/OGLActivity;->accel:Lcom/framework/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lcom/framework/Cocos2dxAccelerometer;->enable()V

    .line 356
    :goto_a
    return-void

    .line 353
    :cond_b
    const/4 v0, 0x0

    sput-boolean v0, Lcom/framework/OGLActivity;->bEnableAccel:Z

    .line 354
    sget-object v0, Lcom/framework/OGLActivity;->accel:Lcom/framework/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lcom/framework/Cocos2dxAccelerometer;->disable()V

    goto :goto_a
.end method

.method public static setAccelInterval(D)V
    .registers 4
    .param p0, "inter"    # D

    .prologue
    .line 359
    sget-object v0, Lcom/framework/OGLActivity;->accel:Lcom/framework/Cocos2dxAccelerometer;

    invoke-virtual {v0, p0, p1}, Lcom/framework/Cocos2dxAccelerometer;->interval(D)V

    .line 360
    return-void
.end method

.method public static startVib(I)V
    .registers 2
    .param p0, "val"    # I

    .prologue
    .line 297
    sget-object v0, Lcom/framework/OGLActivity;->sound:Lcom/framework/Sound;

    invoke-virtual {v0, p0}, Lcom/framework/Sound;->startVib(I)V

    .line 298
    return-void
.end method

.method public static startselectApp(Ljava/lang/String;)V
    .registers 4
    .param p0, "packagename"    # Ljava/lang/String;

    .prologue
    .line 449
    sget-object v2, Lcom/framework/OGLActivity;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 450
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 451
    .local v0, "launchIntent":Landroid/content/Intent;
    sget-object v2, Lcom/framework/OGLActivity;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 452
    return-void
.end method

.method public static stopAll()V
    .registers 1

    .prologue
    .line 337
    sget-object v0, Lcom/framework/OGLActivity;->sound:Lcom/framework/Sound;

    invoke-virtual {v0}, Lcom/framework/Sound;->stopBgmAll()V

    .line 338
    return-void
.end method

.method public static stopBgm(Ljava/lang/String;)V
    .registers 2
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 333
    sget-object v0, Lcom/framework/OGLActivity;->sound:Lcom/framework/Sound;

    invoke-virtual {v0, p0}, Lcom/framework/Sound;->stopBgm(Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public static stopSnd(Ljava/lang/String;)V
    .registers 2
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 309
    sget-object v0, Lcom/framework/OGLActivity;->sound:Lcom/framework/Sound;

    invoke-virtual {v0, p0}, Lcom/framework/Sound;->stopSnd(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public static stopSndAll()V
    .registers 1

    .prologue
    .line 313
    sget-object v0, Lcom/framework/OGLActivity;->sound:Lcom/framework/Sound;

    invoke-virtual {v0}, Lcom/framework/Sound;->stopSndAll()V

    .line 314
    return-void
.end method


# virtual methods
.method public getStr(I)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 458
    invoke-virtual {p0, p1}, Lcom/framework/OGLActivity;->nativeStr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native nativeMsg(I)V
.end method

.method public native nativeStr(I)Ljava/lang/String;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/bluegnc/ggapi/INAPP;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sput-object p0, Lcom/framework/OGLActivity;->context:Landroid/content/Context;

    .line 46
    invoke-static {p0}, Lcom/framework/Cocos2dxBitmap;->setContext(Landroid/content/Context;)V

    .line 47
    new-instance v0, Lcom/framework/Sound;

    invoke-direct {v0, p0}, Lcom/framework/Sound;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/framework/OGLActivity;->sound:Lcom/framework/Sound;

    .line 48
    new-instance v0, Lcom/framework/Cocos2dxAccelerometer;

    invoke-direct {v0, p0}, Lcom/framework/Cocos2dxAccelerometer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/framework/OGLActivity;->accel:Lcom/framework/Cocos2dxAccelerometer;

    .line 50
    new-instance v0, Lcom/framework/OGLActivity$3;

    invoke-direct {v0, p0}, Lcom/framework/OGLActivity$3;-><init>(Lcom/framework/OGLActivity;)V

    sput-object v0, Lcom/framework/OGLActivity;->handler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 406
    invoke-super {p0}, Lcom/bluegnc/ggapi/INAPP;->onDestroy()V

    .line 407
    return-void
.end method

.method protected onOGLResume()V
    .registers 2

    .prologue
    .line 371
    sget-boolean v0, Lcom/framework/OGLActivity;->bEnableAccel:Z

    if-eqz v0, :cond_9

    .line 372
    sget-object v0, Lcom/framework/OGLActivity;->accel:Lcom/framework/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lcom/framework/Cocos2dxAccelerometer;->enable()V

    .line 374
    :cond_9
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 364
    invoke-super {p0}, Lcom/bluegnc/ggapi/INAPP;->onPause()V

    .line 365
    sget-boolean v0, Lcom/framework/OGLActivity;->bEnableAccel:Z

    if-eqz v0, :cond_c

    .line 366
    sget-object v0, Lcom/framework/OGLActivity;->accel:Lcom/framework/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lcom/framework/Cocos2dxAccelerometer;->disable()V

    .line 368
    :cond_c
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 378
    invoke-super {p0}, Lcom/bluegnc/ggapi/INAPP;->onResume()V

    .line 380
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/framework/OGLActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 381
    .local v1, "kgm":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 382
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 383
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v2, Lcom/framework/OGLActivity$UnlockReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/framework/OGLActivity$UnlockReceiver;-><init>(Lcom/framework/OGLActivity;Lcom/framework/OGLActivity$UnlockReceiver;)V

    iput-object v2, p0, Lcom/framework/OGLActivity;->unlockReceiver:Lcom/framework/OGLActivity$UnlockReceiver;

    .line 384
    iget-object v2, p0, Lcom/framework/OGLActivity;->unlockReceiver:Lcom/framework/OGLActivity$UnlockReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/framework/OGLActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 388
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_25
    return-void

    .line 386
    :cond_26
    invoke-virtual {p0}, Lcom/framework/OGLActivity;->onOGLResume()V

    goto :goto_25
.end method

.method public openUrl(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 177
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/framework/OGLActivity;->startActivity(Landroid/content/Intent;)V

    .line 178
    return-void
.end method

.method public resMsg(I)V
    .registers 2
    .param p1, "res"    # I

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Lcom/framework/OGLActivity;->nativeMsg(I)V

    .line 456
    return-void
.end method

.method public showMsgBox(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    const v6, 0x104000a

    const v5, 0x1040013

    const v4, 0x1040009

    const/4 v3, 0x0

    .line 110
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    .local v1, "dlg":Landroid/app/AlertDialog$Builder;
    packed-switch p3, :pswitch_data_92

    .line 170
    :goto_12
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 171
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 173
    return-void

    .line 113
    .end local v0    # "alert":Landroid/app/AlertDialog;
    :pswitch_1d
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/framework/OGLActivity;->btnOk:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_12

    .line 116
    :pswitch_2b
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/framework/OGLActivity;->btnOk:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/framework/OGLActivity;->btnClr:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_12

    .line 119
    :pswitch_3f
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/framework/OGLActivity;->btnOk:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/framework/OGLActivity;->btnClr:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_12

    .line 122
    :pswitch_4f
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/framework/OGLActivity$4;

    invoke-direct {v3, p0}, Lcom/framework/OGLActivity$4;-><init>(Lcom/framework/OGLActivity;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 146
    iget-object v3, p0, Lcom/framework/OGLActivity;->btnClr:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_12

    .line 149
    :pswitch_66
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/framework/OGLActivity$5;

    invoke-direct {v3, p0}, Lcom/framework/OGLActivity$5;-><init>(Lcom/framework/OGLActivity;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_12

    .line 157
    :pswitch_77
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/framework/OGLActivity$6;

    invoke-direct {v3, p0}, Lcom/framework/OGLActivity$6;-><init>(Lcom/framework/OGLActivity;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 162
    new-instance v3, Lcom/framework/OGLActivity$7;

    invoke-direct {v3, p0}, Lcom/framework/OGLActivity$7;-><init>(Lcom/framework/OGLActivity;)V

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_12

    .line 111
    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_2b
        :pswitch_3f
        :pswitch_4f
        :pswitch_66
        :pswitch_77
    .end packed-switch
.end method
