.class Lcom/bluegnc/ggapi/LVL$MyLicenseCheckerCallback;
.super Ljava/lang/Object;
.source "LVL.java"

# interfaces
.implements Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluegnc/ggapi/LVL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLicenseCheckerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bluegnc/ggapi/LVL;


# direct methods
.method private constructor <init>(Lcom/bluegnc/ggapi/LVL;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/bluegnc/ggapi/LVL$MyLicenseCheckerCallback;->this$0:Lcom/bluegnc/ggapi/LVL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bluegnc/ggapi/LVL;Lcom/bluegnc/ggapi/LVL$MyLicenseCheckerCallback;)V
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/bluegnc/ggapi/LVL$MyLicenseCheckerCallback;-><init>(Lcom/bluegnc/ggapi/LVL;)V

    return-void
.end method


# virtual methods
.method public allow(I)V
    .registers 4
    .param p1, "policyReason"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bluegnc/ggapi/LVL$MyLicenseCheckerCallback;->this$0:Lcom/bluegnc/ggapi/LVL;

    invoke-virtual {v0}, Lcom/bluegnc/ggapi/LVL;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 49
    :goto_8
    return-void

    .line 43
    :cond_9
    iget-object v0, p0, Lcom/bluegnc/ggapi/LVL$MyLicenseCheckerCallback;->this$0:Lcom/bluegnc/ggapi/LVL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bluegnc/ggapi/LVL;->nativeStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_25

    .line 44
    iget-object v0, p0, Lcom/bluegnc/ggapi/LVL$MyLicenseCheckerCallback;->this$0:Lcom/bluegnc/ggapi/LVL;

    invoke-virtual {v0}, Lcom/bluegnc/ggapi/LVL;->startGameActivity()V

    .line 48
    :goto_1f
    iget-object v0, p0, Lcom/bluegnc/ggapi/LVL$MyLicenseCheckerCallback;->this$0:Lcom/bluegnc/ggapi/LVL;

    invoke-virtual {v0}, Lcom/bluegnc/ggapi/LVL;->finish()V

    goto :goto_8

    .line 46
    :cond_25
    iget-object v0, p0, Lcom/bluegnc/ggapi/LVL$MyLicenseCheckerCallback;->this$0:Lcom/bluegnc/ggapi/LVL;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/bluegnc/ggapi/LVL;->showActMsg(I)V

    goto :goto_1f
.end method

.method public applicationError(I)V
    .registers 4
    .param p1, "errorCode"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bluegnc/ggapi/LVL$MyLicenseCheckerCallback;->this$0:Lcom/bluegnc/ggapi/LVL;

    invoke-virtual {v0}, Lcom/bluegnc/ggapi/LVL;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 63
    :goto_8
    return-void

    .line 61
    :cond_9
    iget-object v0, p0, Lcom/bluegnc/ggapi/LVL$MyLicenseCheckerCallback;->this$0:Lcom/bluegnc/ggapi/LVL;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/bluegnc/ggapi/LVL;->showActMsg(I)V

    .line 62
    iget-object v0, p0, Lcom/bluegnc/ggapi/LVL$MyLicenseCheckerCallback;->this$0:Lcom/bluegnc/ggapi/LVL;

    invoke-virtual {v0}, Lcom/bluegnc/ggapi/LVL;->finish()V

    goto :goto_8
.end method

.method public dontAllow(I)V
    .registers 4
    .param p1, "policyReason"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/bluegnc/ggapi/LVL$MyLicenseCheckerCallback;->this$0:Lcom/bluegnc/ggapi/LVL;

    invoke-virtual {v0}, Lcom/bluegnc/ggapi/LVL;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 56
    :goto_8
    return-void

    .line 54
    :cond_9
    iget-object v0, p0, Lcom/bluegnc/ggapi/LVL$MyLicenseCheckerCallback;->this$0:Lcom/bluegnc/ggapi/LVL;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/bluegnc/ggapi/LVL;->showActMsg(I)V

    .line 55
    iget-object v0, p0, Lcom/bluegnc/ggapi/LVL$MyLicenseCheckerCallback;->this$0:Lcom/bluegnc/ggapi/LVL;

    invoke-virtual {v0}, Lcom/bluegnc/ggapi/LVL;->finish()V

    goto :goto_8
.end method
