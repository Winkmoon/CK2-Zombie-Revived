.class public Lcom/bluegnc/chickenrevolution2/MainActivity;
.super Lcom/framework/OGLActivity;
.source "MainActivity.java"


# static fields
.field public static final flurryKey:Ljava/lang/String; = "SSRSHQG9Z2PNPB6VYKYH"


# instance fields
.field ex:Lcom/bluegnc/chickenrevolution2/ExUtil;

.field private mView:Lcom/framework/OGLView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const-string v0, "testgl-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/framework/OGLActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/framework/OGLActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bluegnc/chickenrevolution2/MainActivity;->requestWindowFeature(I)Z

    invoke-static {p0}, Lcom/bluegnc/chickenrevolution2/SettingsHelper;->isLetterbox(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/framework/OGLView;->letterbox:Z

    invoke-static {p0}, Lcom/bluegnc/chickenrevolution2/SettingsHelper;->applyFullscreen(Landroid/app/Activity;)V

    .line 24
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/bluegnc/chickenrevolution2/MainActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/bluegnc/chickenrevolution2/SettingsHelper;->applyFullscreen(Landroid/app/Activity;)V

    .line 25
    const/high16 v0, 0x7f020000

    invoke-virtual {p0, v0}, Lcom/bluegnc/chickenrevolution2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/framework/OGLView;

    iput-object v0, p0, Lcom/bluegnc/chickenrevolution2/MainActivity;->mView:Lcom/framework/OGLView;

    iget-object v0, p0, Lcom/bluegnc/chickenrevolution2/MainActivity;->mView:Lcom/framework/OGLView;

    sget-boolean v1, Lcom/framework/OGLView;->letterbox:Z

    invoke-static {p0, v0, v1}, Lcom/bluegnc/chickenrevolution2/SettingsHelper;->applyLetterbox(Landroid/app/Activity;Landroid/view/View;Z)V

    invoke-static {p0}, Lcom/bluegnc/chickenrevolution2/SettingsHelper;->addSettingsButton(Landroid/app/Activity;)V

    .line 26
    iget-object v0, p0, Lcom/bluegnc/chickenrevolution2/MainActivity;->mView:Lcom/framework/OGLView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/bluegnc/chickenrevolution2/MainActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/framework/OGLView;->setPath(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/framework/OGLActivity;->onDestroy()V

    .line 63
    return-void
.end method

.method protected onOGLResume()V
    .registers 2

    .prologue
    .line 43
    invoke-super {p0}, Lcom/framework/OGLActivity;->onOGLResume()V

    .line 44
    iget-object v0, p0, Lcom/bluegnc/chickenrevolution2/MainActivity;->mView:Lcom/framework/OGLView;

    invoke-virtual {v0}, Lcom/framework/OGLView;->onOGLResume()V

    .line 45
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 31
    invoke-super {p0}, Lcom/framework/OGLActivity;->onPause()V

    .line 32
    iget-object v0, p0, Lcom/bluegnc/chickenrevolution2/MainActivity;->mView:Lcom/framework/OGLView;

    invoke-virtual {v0}, Lcom/framework/OGLView;->onPause()V

    .line 33
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/framework/OGLActivity;->onWindowFocusChanged(Z)V

    invoke-static {p0}, Lcom/bluegnc/chickenrevolution2/SettingsHelper;->applyFullscreen(Landroid/app/Activity;)V

    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 37
    invoke-super {p0}, Lcom/framework/OGLActivity;->onResume()V

    invoke-static {p0}, Lcom/bluegnc/chickenrevolution2/SettingsHelper;->applyFullscreen(Landroid/app/Activity;)V

    .line 38
    iget-object v0, p0, Lcom/bluegnc/chickenrevolution2/MainActivity;->mView:Lcom/framework/OGLView;

    invoke-virtual {v0}, Lcom/framework/OGLView;->onResume()V

    .line 39
    return-void
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/framework/OGLActivity;->onStart()V

    .line 52
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/framework/OGLActivity;->onStop()V

    .line 58
    return-void
.end method
