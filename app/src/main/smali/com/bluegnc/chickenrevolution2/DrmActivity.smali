.class public Lcom/bluegnc/chickenrevolution2/DrmActivity;
.super Lcom/bluegnc/ggapi/LVL;
.source "DrmActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/bluegnc/ggapi/LVL;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/bluegnc/ggapi/LVL;->onCreate(Landroid/os/Bundle;)V

    .line 12
    return-void
.end method

.method protected showActMsg(I)V
    .registers 2
    .param p1, "no"    # I

    .prologue
    .line 21
    return-void
.end method

.method protected startGameActivity()V
    .registers 3

    .prologue
    .line 15
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bluegnc/chickenrevolution2/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/bluegnc/chickenrevolution2/DrmActivity;->startActivity(Landroid/content/Intent;)V

    .line 17
    return-void
.end method
