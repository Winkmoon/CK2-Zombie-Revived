.class public Lcom/framework/Sound;
.super Ljava/lang/Object;
.source "Sound.java"


# static fields
.field public static final MP_ONE:Z = true


# instance fields
.field context:Landroid/content/Context;

.field mBgmList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mSndList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field m_bgm:Landroid/media/MediaPlayer;

.field m_spool:Landroid/media/SoundPool;

.field m_vib:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/framework/Sound;->context:Landroid/content/Context;

    .line 29
    invoke-virtual {p0}, Lcom/framework/Sound;->init()V

    .line 30
    return-void
.end method


# virtual methods
.method public clearBgm(Ljava/lang/String;)V
    .registers 2
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/framework/Sound;->clearBgmAll()V

    .line 191
    return-void
.end method

.method public clearBgmAll()V
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/framework/Sound;->m_bgm:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_11

    .line 197
    iget-object v0, p0, Lcom/framework/Sound;->m_bgm:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 198
    iget-object v0, p0, Lcom/framework/Sound;->m_bgm:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/framework/Sound;->m_bgm:Landroid/media/MediaPlayer;

    .line 211
    :cond_11
    return-void
.end method

.method public clearSnd(Ljava/lang/String;)V
    .registers 5
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v2, p0, Lcom/framework/Sound;->mSndList:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 90
    .local v1, "val":Ljava/lang/Integer;
    if-eqz v1, :cond_18

    .line 91
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 92
    .local v0, "id":I
    iget-object v2, p0, Lcom/framework/Sound;->m_spool:Landroid/media/SoundPool;

    invoke-virtual {v2, v0}, Landroid/media/SoundPool;->unload(I)Z

    .line 93
    iget-object v2, p0, Lcom/framework/Sound;->mSndList:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .end local v0    # "id":I
    :cond_18
    return-void
.end method

.method public clearSndAll()V
    .registers 5

    .prologue
    .line 99
    iget-object v3, p0, Lcom/framework/Sound;->mSndList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 100
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_16

    .line 105
    iget-object v3, p0, Lcom/framework/Sound;->mSndList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 106
    return-void

    .line 101
    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 102
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 103
    .local v1, "id":I
    iget-object v3, p0, Lcom/framework/Sound;->m_spool:Landroid/media/SoundPool;

    invoke-virtual {v3, v1}, Landroid/media/SoundPool;->unload(I)Z

    goto :goto_a
.end method

.method public init()V
    .registers 5

    .prologue
    .line 33
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/framework/Sound;->m_spool:Landroid/media/SoundPool;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/framework/Sound;->m_bgm:Landroid/media/MediaPlayer;

    .line 35
    iget-object v0, p0, Lcom/framework/Sound;->context:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/framework/Sound;->m_vib:Landroid/os/Vibrator;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/framework/Sound;->mSndList:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/framework/Sound;->mBgmList:Ljava/util/HashMap;

    .line 39
    return-void
.end method

.method public loadBgm(Ljava/lang/String;ZZ)Landroid/media/MediaPlayer;
    .registers 12
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "amode"    # Z
    .param p3, "resume"    # Z

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, "val":Landroid/media/MediaPlayer;
    invoke-virtual {p0}, Lcom/framework/Sound;->clearBgmAll()V

    .line 113
    new-instance v0, Landroid/media/MediaPlayer;

    .end local v0    # "val":Landroid/media/MediaPlayer;
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/framework/Sound;->m_bgm:Landroid/media/MediaPlayer;

    .line 115
    .restart local v0    # "val":Landroid/media/MediaPlayer;
    :try_start_b
    iget-object v1, p0, Lcom/framework/Sound;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 116
    .local v6, "asset":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 117
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_27} :catch_28

    .line 142
    .end local v6    # "asset":Landroid/content/res/AssetFileDescriptor;
    :goto_27
    return-object v0

    .line 118
    :catch_28
    move-exception v7

    .line 119
    .local v7, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "e loadBgm("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_27
.end method

.method public loadSnd(Ljava/lang/String;Z)I
    .registers 9
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "amode"    # Z

    .prologue
    .line 47
    const/4 v1, -0x1

    .line 48
    .local v1, "id":I
    iget-object v3, p0, Lcom/framework/Sound;->mSndList:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 49
    .local v2, "val":Ljava/lang/Integer;
    if-nez v2, :cond_48

    .line 50
    if-eqz p2, :cond_27

    .line 52
    :try_start_d
    iget-object v3, p0, Lcom/framework/Sound;->m_spool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/framework/Sound;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    .line 53
    iget-object v3, p0, Lcom/framework/Sound;->mSndList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_27} :catch_28

    .line 61
    :cond_27
    :goto_27
    return v1

    .line 54
    :catch_28
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "e loadSnd("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_27

    .line 59
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_48
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_27
.end method

.method public playBgm(Ljava/lang/String;ZZ)V
    .registers 6
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "loop"    # Z
    .param p3, "resume"    # Z

    .prologue
    .line 146
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, p3}, Lcom/framework/Sound;->loadBgm(Ljava/lang/String;ZZ)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 147
    .local v0, "mp":Landroid/media/MediaPlayer;
    if-eqz v0, :cond_d

    .line 148
    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 149
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 151
    :cond_d
    return-void
.end method

.method public playSnd(Ljava/lang/String;I)V
    .registers 10
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "cnt"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/framework/Sound;->loadSnd(Ljava/lang/String;Z)I

    move-result v1

    .line 66
    .local v1, "id":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_13

    .line 67
    iget-object v0, p0, Lcom/framework/Sound;->m_spool:Landroid/media/SoundPool;

    const/4 v4, 0x0

    move v3, v2

    move v5, p2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 69
    :cond_13
    return-void
.end method

.method public startVib(I)V
    .registers 6
    .param p1, "val"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/framework/Sound;->m_vib:Landroid/os/Vibrator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 43
    return-void
.end method

.method public stopBgm(Ljava/lang/String;)V
    .registers 2
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/framework/Sound;->stopBgmAll()V

    .line 162
    return-void
.end method

.method public stopBgmAll()V
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/framework/Sound;->m_bgm:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 168
    iget-object v0, p0, Lcom/framework/Sound;->m_bgm:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 178
    :cond_9
    return-void
.end method

.method public stopSnd(Ljava/lang/String;)V
    .registers 4
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/framework/Sound;->loadSnd(Ljava/lang/String;Z)I

    move-result v0

    .line 73
    .local v0, "id":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 74
    iget-object v1, p0, Lcom/framework/Sound;->m_spool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 76
    :cond_d
    return-void
.end method

.method public stopSndAll()V
    .registers 5

    .prologue
    .line 80
    iget-object v3, p0, Lcom/framework/Sound;->mSndList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 81
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_11

    .line 86
    return-void

    .line 82
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 83
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 84
    .local v1, "id":I
    iget-object v3, p0, Lcom/framework/Sound;->m_spool:Landroid/media/SoundPool;

    invoke-virtual {v3, v1}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_a
.end method
