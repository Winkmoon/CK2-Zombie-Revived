.class public abstract Lcom/bluegnc/ggapi/LVL;
.super Landroid/app/Activity;
.source "LVL.java"

# interfaces
.implements Lcom/bluegnc/ggapi/GConst;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bluegnc/ggapi/LVL$MyLicenseCheckerCallback;
    }
.end annotation


# static fields
.field private static final SALT:[B


# instance fields
.field private mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

.field private mCheckerback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    sput-object v0, Lcom/bluegnc/ggapi/LVL;->SALT:[B

    .line 74
    const-string v0, "bgcdrm-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 75
    return-void

    .line 21
    nop

    :array_10
    .array-data 1
        -0x2et
        0x41t
        0x1et
        -0x80t
        -0x67t
        -0x39t
        0x4at
        -0x40t
        0x33t
        0x58t
        -0x5ft
        -0x2dt
        0x4dt
        -0x75t
        -0x24t
        -0x71t
        -0xbt
        0x20t
        -0x40t
        0x59t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public native nativeStr(I)Ljava/lang/String;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/bluegnc/ggapi/LVL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "deviceId":Ljava/lang/String;
    new-instance v1, Lcom/bluegnc/ggapi/LVL$MyLicenseCheckerCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/bluegnc/ggapi/LVL$MyLicenseCheckerCallback;-><init>(Lcom/bluegnc/ggapi/LVL;Lcom/bluegnc/ggapi/LVL$MyLicenseCheckerCallback;)V

    iput-object v1, p0, Lcom/bluegnc/ggapi/LVL;->mCheckerback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    .line 35
    new-instance v1, Lcom/google/android/vending/licensing/LicenseChecker;

    new-instance v2, Lcom/google/android/vending/licensing/ServerManagedPolicy;

    new-instance v3, Lcom/google/android/vending/licensing/AESObfuscator;

    sget-object v4, Lcom/bluegnc/ggapi/LVL;->SALT:[B

    invoke-virtual {p0}, Lcom/bluegnc/ggapi/LVL;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/google/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, p0, v3}, Lcom/google/android/vending/licensing/ServerManagedPolicy;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Obfuscator;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/bluegnc/ggapi/LVL;->nativeStr(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/bluegnc/ggapi/LVL;->nativeStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/bluegnc/ggapi/LVL;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    .line 36
    iget-object v1, p0, Lcom/bluegnc/ggapi/LVL;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    iget-object v2, p0, Lcom/bluegnc/ggapi/LVL;->mCheckerback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-virtual {v1, v2}, Lcom/google/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/google/android/vending/licensing/LicenseCheckerCallback;)V

    .line 37
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 69
    iget-object v0, p0, Lcom/bluegnc/ggapi/LVL;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    invoke-virtual {v0}, Lcom/google/android/vending/licensing/LicenseChecker;->onDestroy()V

    .line 70
    return-void
.end method

.method protected abstract showActMsg(I)V
.end method

.method protected abstract startGameActivity()V
.end method
