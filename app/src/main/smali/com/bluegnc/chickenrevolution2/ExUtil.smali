.class public Lcom/bluegnc/chickenrevolution2/ExUtil;
.super Ljava/lang/Object;
.source "ExUtil.java"


# instance fields
.field context:Landroid/content/Context;

.field isFin:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "cont"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/bluegnc/chickenrevolution2/ExUtil;->context:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public chkInstallApp([Ljava/lang/String;)Z
    .registers 12
    .param p1, "list"    # [Ljava/lang/String;

    .prologue
    .line 90
    iget-object v7, p0, Lcom/bluegnc/chickenrevolution2/ExUtil;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 91
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 93
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v2, 0x0

    .line 94
    .local v2, "find":Z
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 95
    .local v6, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v6, :cond_15

    if-eqz v2, :cond_16

    .line 106
    :cond_15
    return v2

    .line 96
    :cond_16
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 97
    .local v0, "app":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ins_app["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3d
    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    if-lt v4, v7, :cond_45

    .line 95
    :goto_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 99
    :cond_45
    aget-object v7, p1, v4

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_57

    .line 100
    const/4 v2, 0x1

    .line 101
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "find!"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_42

    .line 98
    :cond_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d
.end method

.method public chkList()V
    .registers 3

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/bluegnc/chickenrevolution2/ExUtil;->isDebugMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bluegnc/chickenrevolution2/ExUtil;->isFin:Z

    .line 38
    invoke-virtual {p0}, Lcom/bluegnc/chickenrevolution2/ExUtil;->isNetwork()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    :goto_d
    iput-boolean v0, p0, Lcom/bluegnc/chickenrevolution2/ExUtil;->isFin:Z

    .line 39
    iget-boolean v0, p0, Lcom/bluegnc/chickenrevolution2/ExUtil;->isFin:Z

    if-eqz v0, :cond_22

    .line 40
    iget-object v0, p0, Lcom/bluegnc/chickenrevolution2/ExUtil;->context:Landroid/content/Context;

    const v1, 0x7f040002

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bluegnc/chickenrevolution2/ExUtil;->showMsgBox(Ljava/lang/String;)V

    .line 49
    :cond_1f
    :goto_1f
    return-void

    .line 38
    :cond_20
    const/4 v0, 0x1

    goto :goto_d

    .line 44
    :cond_22
    invoke-virtual {p0}, Lcom/bluegnc/chickenrevolution2/ExUtil;->isCheatApp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bluegnc/chickenrevolution2/ExUtil;->isFin:Z

    .line 45
    iget-boolean v0, p0, Lcom/bluegnc/chickenrevolution2/ExUtil;->isFin:Z

    if-eqz v0, :cond_1f

    .line 46
    iget-object v0, p0, Lcom/bluegnc/chickenrevolution2/ExUtil;->context:Landroid/content/Context;

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bluegnc/chickenrevolution2/ExUtil;->showMsgBox(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public chkRunningApp([Ljava/lang/String;)Z
    .registers 12
    .param p1, "list"    # [Ljava/lang/String;

    .prologue
    .line 110
    iget-object v7, p0, Lcom/bluegnc/chickenrevolution2/ExUtil;->context:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 111
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 113
    .local v2, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v3, 0x0

    .line 114
    .local v3, "find":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 115
    .local v6, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, v6, :cond_18

    if-eqz v3, :cond_19

    .line 126
    :cond_18
    return v3

    .line 116
    :cond_19
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v1, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 117
    .local v1, "app":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "run_app["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_40
    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    if-lt v5, v7, :cond_48

    .line 115
    :goto_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 119
    :cond_48
    aget-object v7, p1, v5

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5a

    .line 120
    const/4 v3, 0x1

    .line 121
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "find!"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_45

    .line 118
    :cond_5a
    add-int/lit8 v5, v5, 0x1

    goto :goto_40
.end method

.method public httpPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "strUrl"    # Ljava/lang/String;
    .param p2, "strField"    # Ljava/lang/String;

    .prologue
    .line 130
    const-string v6, ""

    .line 131
    .local v6, "res":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 132
    .local v8, "stime":J
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "http="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    :try_start_1a
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 135
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 137
    .local v2, "http":Ljava/net/HttpURLConnection;
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 138
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 139
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 140
    const-string v10, "POST"

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 141
    const-string v10, "content-type"

    const-string v11, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 144
    new-instance v5, Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 145
    .local v5, "out":Ljava/io/PrintWriter;
    invoke-virtual {v5, p2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 147
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 149
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-direct {v10, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 151
    .local v3, "in":Ljava/io/BufferedReader;
    :goto_63
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_97

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    long-to-int v0, v10

    .line 155
    .local v0, "delay":I
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "res="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 160
    .end local v0    # "delay":I
    .end local v2    # "http":Ljava/net/HttpURLConnection;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/PrintWriter;
    .end local v7    # "url":Ljava/net/URL;
    :goto_96
    return-object v6

    .line 152
    .restart local v2    # "http":Ljava/net/HttpURLConnection;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "out":Ljava/io/PrintWriter;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_97
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_a7} :catch_a9

    move-result-object v6

    goto :goto_63

    .line 157
    .end local v2    # "http":Ljava/net/HttpURLConnection;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/PrintWriter;
    .end local v7    # "url":Ljava/net/URL;
    :catch_a9
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "e="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_96
.end method

.method public isCheatApp()Z
    .registers 9

    .prologue
    .line 76
    const-string v3, "http://bluegnc2.cafe24.com/an_common/gncGame.php"

    .line 77
    .local v3, "strUrl":Ljava/lang/String;
    const-string v2, "type=0&game_id=hungryMole&phone_id=061deedcffc05bcea4b9ed2b6ecc386d00000000&info1=16&info2=5&info3=0&info4=0&info5=0&ver=v111&osver=6.0&diver=x86_64&pre_uid=no"

    .line 80
    .local v2, "strCont":Ljava/lang/String;
    invoke-virtual {p0, v3, v2}, Lcom/bluegnc/chickenrevolution2/ExUtil;->httpPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "res":Ljava/lang/String;
    const-string v5, "\\^"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "token":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v5, v4

    if-lt v0, v5, :cond_17

    .line 85
    invoke-virtual {p0, v4}, Lcom/bluegnc/chickenrevolution2/ExUtil;->chkInstallApp([Ljava/lang/String;)Z

    move-result v5

    return v5

    .line 83
    :cond_17
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "token["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method public isDebugMode()Z
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bluegnc/chickenrevolution2/ExUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isFinish()Z
    .registers 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/bluegnc/chickenrevolution2/ExUtil;->isFin:Z

    return v0
.end method

.method public isNetwork()Z
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 60
    iget-object v7, p0, Lcom/bluegnc/chickenrevolution2/ExUtil;->context:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 61
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 62
    .local v4, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 63
    .local v3, "mobile":Landroid/net/NetworkInfo;
    const/4 v2, 0x0

    .line 64
    .local v2, "isWifi":Z
    const/4 v1, 0x0

    .line 65
    .local v1, "isMobile":Z
    if-eqz v4, :cond_1c

    .line 66
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 68
    :cond_1c
    if-eqz v3, :cond_22

    .line 69
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    .line 71
    :cond_22
    if-nez v2, :cond_27

    if-nez v1, :cond_27

    :goto_26
    return v5

    :cond_27
    move v5, v6

    goto :goto_26
.end method

.method public showMsgBox(Ljava/lang/String;)V
    .registers 7
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/bluegnc/chickenrevolution2/ExUtil;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 165
    .local v1, "dlg":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/bluegnc/chickenrevolution2/ExUtil$1;

    invoke-direct {v4, p0}, Lcom/bluegnc/chickenrevolution2/ExUtil$1;-><init>(Lcom/bluegnc/chickenrevolution2/ExUtil;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 172
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 173
    return-void
.end method
