.class public Lcom/google/android/vending/licensing/LicenseChecker;
.super Ljava/lang/Object;
.source "LicenseChecker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;
    }
.end annotation


# static fields
.field private static final DEBUG_LICENSE_ERROR:Z = false

.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final TAG:Ljava/lang/String; = "LicenseChecker"

.field private static final TIMEOUT_MS:I = 0x2710


# instance fields
.field private final mChecksInProgress:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/vending/licensing/LicenseValidator;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mPackageName:Ljava/lang/String;

.field private final mPendingChecks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/vending/licensing/LicenseValidator;",
            ">;"
        }
    .end annotation
.end field

.field private final mPolicy:Lcom/google/android/vending/licensing/Policy;

.field private mPublicKey:Ljava/security/PublicKey;

.field private mService:Lcom/google/android/vending/licensing/ILicensingService;

.field private final mVersionCode:Ljava/lang/String;

.field resKey:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/vending/licensing/LicenseChecker;->RANDOM:Ljava/security/SecureRandom;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/google/android/vending/licensing/Policy;
    .param p3, "encodedPublicKey"    # Ljava/lang/String;
    .param p4, "ckey"    # I

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    .line 81
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPendingChecks:Ljava/util/Queue;

    .line 92
    iput-object p1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    .line 94
    invoke-static {p3}, Lcom/google/android/vending/licensing/LicenseChecker;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPublicKey:Ljava/security/PublicKey;

    .line 95
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPackageName:Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/android/vending/licensing/LicenseChecker;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mVersionCode:Ljava/lang/String;

    .line 97
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "background thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 99
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mHandler:Landroid/os/Handler;

    .line 100
    iput p4, p0, Lcom/google/android/vending/licensing/LicenseChecker;->resKey:I

    .line 101
    return-void
.end method

.method static synthetic access$0(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/LicenseValidator;)V
    .registers 2

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/google/android/vending/licensing/LicenseChecker;->handleServiceConnectionError(Lcom/google/android/vending/licensing/LicenseValidator;)V

    return-void
.end method

.method static synthetic access$1(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/LicenseValidator;)V
    .registers 2

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/google/android/vending/licensing/LicenseChecker;->finishCheck(Lcom/google/android/vending/licensing/LicenseValidator;)V

    return-void
.end method

.method static synthetic access$2(Lcom/google/android/vending/licensing/LicenseChecker;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/google/android/vending/licensing/LicenseChecker;)Ljava/util/Set;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$4(Lcom/google/android/vending/licensing/LicenseChecker;)Ljava/security/PublicKey;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method private cleanupService()V
    .registers 4

    .prologue
    .line 308
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/google/android/vending/licensing/ILicensingService;

    if-eqz v1, :cond_c

    .line 310
    :try_start_4
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_9} :catch_d

    .line 316
    :goto_9
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/google/android/vending/licensing/ILicensingService;

    .line 318
    :cond_c
    return-void

    .line 311
    :catch_d
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "LicenseChecker"

    const-string v2, "Unable to unbind from licensing service (already unbound)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method private declared-synchronized finishCheck(Lcom/google/android/vending/licensing/LicenseValidator;)V
    .registers 3
    .param p1, "validator"    # Lcom/google/android/vending/licensing/LicenseValidator;

    .prologue
    .line 195
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 197
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->cleanupService()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 199
    :cond_11
    monitor-exit p0

    return-void

    .line 195
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private generateNonce()I
    .registers 2

    .prologue
    .line 335
    sget-object v0, Lcom/google/android/vending/licensing/LicenseChecker;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    return v0
.end method

.method private static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 6
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .prologue
    .line 112
    :try_start_0
    invoke-static {p0}, Lcom/google/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 113
    .local v0, "decodedKey":[B
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 115
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_12} :catch_14
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_0 .. :try_end_12} :catch_1b
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_12} :catch_29

    move-result-object v3

    return-object v3

    .line 116
    .end local v0    # "decodedKey":[B
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_14
    move-exception v1

    .line 118
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 119
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1b
    move-exception v1

    .line 120
    .local v1, "e":Lcom/google/android/vending/licensing/util/Base64DecoderException;
    const-string v3, "LicenseChecker"

    const-string v4, "Could not decode from Base64."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 122
    .end local v1    # "e":Lcom/google/android/vending/licensing/util/Base64DecoderException;
    :catch_29
    move-exception v1

    .line 123
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v3, "LicenseChecker"

    const-string v4, "Invalid key specification."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static getVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 347
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 348
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 347
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v1

    .line 351
    :goto_f
    return-object v1

    .line 349
    :catch_10
    move-exception v0

    .line 350
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "LicenseChecker"

    const-string v2, "Package not found. could not get version code."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v1, ""

    goto :goto_f
.end method

.method private declared-synchronized handleServiceConnectionError(Lcom/google/android/vending/licensing/LicenseValidator;)V
    .registers 5
    .param p1, "validator"    # Lcom/google/android/vending/licensing/LicenseValidator;

    .prologue
    .line 297
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    const/16 v1, 0x123

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/vending/licensing/Policy;->processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    .line 299
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    invoke-interface {v0}, Lcom/google/android/vending/licensing/Policy;->allowAccess()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 300
    invoke-virtual {p1}, Lcom/google/android/vending/licensing/LicenseValidator;->getCallback()Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    move-result-object v0

    const/16 v1, 0x123

    invoke-interface {v0, v1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->allow(I)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_26

    .line 304
    :goto_1a
    monitor-exit p0

    return-void

    .line 302
    :cond_1c
    :try_start_1c
    invoke-virtual {p1}, Lcom/google/android/vending/licensing/LicenseValidator;->getCallback()Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    move-result-object v0

    const/16 v1, 0x123

    invoke-interface {v0, v1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->dontAllow(I)V
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    goto :goto_1a

    .line 297
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private runChecks()V
    .registers 8

    .prologue
    .line 180
    :goto_0
    iget-object v2, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPendingChecks:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/vending/licensing/LicenseValidator;

    .local v1, "validator":Lcom/google/android/vending/licensing/LicenseValidator;
    if-nez v1, :cond_b

    .line 192
    return-void

    .line 182
    :cond_b
    :try_start_b
    const-string v2, "LicenseChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Calling checkLicense on service for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/vending/licensing/LicenseValidator;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v2, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/google/android/vending/licensing/ILicensingService;

    .line 184
    invoke-virtual {v1}, Lcom/google/android/vending/licensing/LicenseValidator;->getNonce()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1}, Lcom/google/android/vending/licensing/LicenseValidator;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 185
    new-instance v6, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;

    invoke-direct {v6, p0, v1}, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;-><init>(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/LicenseValidator;)V

    .line 183
    invoke-interface {v2, v4, v5, v3, v6}, Lcom/google/android/vending/licensing/ILicensingService;->checkLicense(JLjava/lang/String;Lcom/google/android/vending/licensing/ILicenseResultListener;)V

    .line 186
    iget-object v2, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_3b} :catch_3c

    goto :goto_0

    .line 187
    :catch_3c
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LicenseChecker"

    const-string v3, "RemoteException in checkLicense call."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/LicenseChecker;->handleServiceConnectionError(Lcom/google/android/vending/licensing/LicenseValidator;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized checkAccess(Lcom/google/android/vending/licensing/LicenseCheckerCallback;)V
    .registers 12
    .param p1, "callback"    # Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    .prologue
    .line 142
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    invoke-interface {v1}, Lcom/google/android/vending/licensing/Policy;->allowAccess()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 143
    const-string v1, "LicenseChecker"

    const-string v2, "Using cached license response"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->resKey:I

    invoke-interface {p1, v1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->allow(I)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_5e

    .line 176
    :goto_15
    monitor-exit p0

    return-void

    .line 146
    :cond_17
    :try_start_17
    new-instance v0, Lcom/google/android/vending/licensing/LicenseValidator;

    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    new-instance v2, Lcom/google/android/vending/licensing/NullDeviceLimiter;

    invoke-direct {v2}, Lcom/google/android/vending/licensing/NullDeviceLimiter;-><init>()V

    .line 147
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->generateNonce()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mVersionCode:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/vending/licensing/LicenseChecker;->resKey:I

    move-object v3, p1

    .line 146
    invoke-direct/range {v0 .. v7}, Lcom/google/android/vending/licensing/LicenseValidator;-><init>(Lcom/google/android/vending/licensing/Policy;Lcom/google/android/vending/licensing/DeviceLimiter;Lcom/google/android/vending/licensing/LicenseCheckerCallback;ILjava/lang/String;Ljava/lang/String;I)V

    .line 149
    .local v0, "validator":Lcom/google/android/vending/licensing/LicenseValidator;
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/google/android/vending/licensing/ILicensingService;

    if-nez v1, :cond_71

    .line 150
    const-string v1, "LicenseChecker"

    const-string v2, "Binding to licensing service."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_17 .. :try_end_39} :catchall_5e

    .line 152
    :try_start_39
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    .line 154
    new-instance v2, Landroid/content/Intent;

    .line 155
    new-instance v3, Ljava/lang/String;

    .line 156
    const-string v4, "Y29tLmFuZHJvaWQudmVuZGluZy5saWNlbnNpbmcuSUxpY2Vuc2luZ1NlcnZpY2U="

    invoke-static {v4}, Lcom/google/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    .line 155
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 154
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    const/4 v3, 0x1

    .line 153
    invoke-virtual {v1, v2, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v8

    .line 160
    .local v8, "bindResult":Z
    if-eqz v8, :cond_61

    .line 161
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPendingChecks:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_57
    .catch Ljava/lang/SecurityException; {:try_start_39 .. :try_end_57} :catch_58
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_39 .. :try_end_57} :catch_6c
    .catchall {:try_start_39 .. :try_end_57} :catchall_5e

    goto :goto_15

    .line 166
    .end local v8    # "bindResult":Z
    :catch_58
    move-exception v9

    .line 167
    .local v9, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x6

    :try_start_5a
    invoke-interface {p1, v1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->applicationError(I)V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_15

    .line 142
    .end local v0    # "validator":Lcom/google/android/vending/licensing/LicenseValidator;
    .end local v9    # "e":Ljava/lang/SecurityException;
    :catchall_5e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 163
    .restart local v0    # "validator":Lcom/google/android/vending/licensing/LicenseValidator;
    .restart local v8    # "bindResult":Z
    :cond_61
    :try_start_61
    const-string v1, "LicenseChecker"

    const-string v2, "Could not bind to service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/LicenseChecker;->handleServiceConnectionError(Lcom/google/android/vending/licensing/LicenseValidator;)V
    :try_end_6b
    .catch Ljava/lang/SecurityException; {:try_start_61 .. :try_end_6b} :catch_58
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_61 .. :try_end_6b} :catch_6c
    .catchall {:try_start_61 .. :try_end_6b} :catchall_5e

    goto :goto_15

    .line 168
    .end local v8    # "bindResult":Z
    :catch_6c
    move-exception v9

    .line 169
    .local v9, "e":Lcom/google/android/vending/licensing/util/Base64DecoderException;
    :try_start_6d
    invoke-virtual {v9}, Lcom/google/android/vending/licensing/util/Base64DecoderException;->printStackTrace()V

    goto :goto_15

    .line 172
    .end local v9    # "e":Lcom/google/android/vending/licensing/util/Base64DecoderException;
    :cond_71
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPendingChecks:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 173
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->runChecks()V
    :try_end_79
    .catchall {:try_start_6d .. :try_end_79} :catchall_5e

    goto :goto_15
.end method

.method public declared-synchronized onDestroy()V
    .registers 2

    .prologue
    .line 329
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->cleanupService()V

    .line 330
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 331
    monitor-exit p0

    return-void

    .line 329
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 280
    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Lcom/google/android/vending/licensing/ILicensingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/vending/licensing/ILicensingService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/google/android/vending/licensing/ILicensingService;

    .line 281
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->runChecks()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 282
    monitor-exit p0

    return-void

    .line 280
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 288
    monitor-enter p0

    :try_start_1
    const-string v0, "LicenseChecker"

    const-string v1, "Service unexpectedly disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/google/android/vending/licensing/ILicensingService;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 290
    monitor-exit p0

    return-void

    .line 288
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
