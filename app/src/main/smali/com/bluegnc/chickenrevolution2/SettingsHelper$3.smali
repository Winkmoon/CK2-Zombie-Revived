.class Lcom/bluegnc/chickenrevolution2/SettingsHelper$3;
.super Ljava/lang/Object;
.source "SettingsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bluegnc/chickenrevolution2/SettingsHelper;->showSettingsDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/CheckBox;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/bluegnc/chickenrevolution2/SettingsHelper$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bluegnc/chickenrevolution2/SettingsHelper$3;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 165
    iget-object p1, p0, Lcom/bluegnc/chickenrevolution2/SettingsHelper$3;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/bluegnc/chickenrevolution2/SettingsHelper$3;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/bluegnc/chickenrevolution2/SettingsHelper;->setLetterbox(Landroid/content/Context;Z)V

    .line 166
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 169
    iget-object p2, p0, Lcom/bluegnc/chickenrevolution2/SettingsHelper$3;->val$activity:Landroid/app/Activity;

    .line 166
    const/16 v0, 0xb

    if-lt p1, v0, :cond_17

    .line 167
    invoke-virtual {p2}, Landroid/app/Activity;->recreate()V

    goto :goto_25

    .line 169
    :cond_17
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 170
    iget-object p1, p0, Lcom/bluegnc/chickenrevolution2/SettingsHelper$3;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/bluegnc/chickenrevolution2/SettingsHelper$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 172
    :goto_25
    return-void
.end method
