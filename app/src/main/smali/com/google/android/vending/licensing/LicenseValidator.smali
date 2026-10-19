.class Lcom/google/android/vending/licensing/LicenseValidator;
.super Ljava/lang/Object;
.source "LicenseValidator.java"


# static fields
.field private static final ERROR_CONTACTING_SERVER:I = 0x101

.field private static final ERROR_INVALID_PACKAGE_NAME:I = 0x102

.field private static final ERROR_NON_MATCHING_UID:I = 0x103

.field private static final ERROR_NOT_MARKET_MANAGED:I = 0x3

.field private static final ERROR_OVER_QUOTA:I = 0x5

.field private static final ERROR_SERVER_FAILURE:I = 0x4

.field private static final LICENSED:I = 0x0

.field private static final LICENSED_OLD_KEY:I = 0x2

.field private static final NOT_LICENSED:I = 0x1

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static final TAG:Ljava/lang/String; = "LicenseValidator"


# instance fields
.field private final mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

.field private final mDeviceLimiter:Lcom/google/android/vending/licensing/DeviceLimiter;

.field private final mNonce:I

.field private final mPackageName:Ljava/lang/String;

.field private final mPolicy:Lcom/google/android/vending/licensing/Policy;

.field private final mVersionCode:Ljava/lang/String;

.field resKey:I


# direct methods
.method constructor <init>(Lcom/google/android/vending/licensing/Policy;Lcom/google/android/vending/licensing/DeviceLimiter;Lcom/google/android/vending/licensing/LicenseCheckerCallback;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "policy"    # Lcom/google/android/vending/licensing/Policy;
    .param p2, "deviceLimiter"    # Lcom/google/android/vending/licensing/DeviceLimiter;
    .param p3, "callback"    # Lcom/google/android/vending/licensing/LicenseCheckerCallback;
    .param p4, "nonce"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "versionCode"    # Ljava/lang/String;
    .param p7, "ckey"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    .line 62
    iput-object p2, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mDeviceLimiter:Lcom/google/android/vending/licensing/DeviceLimiter;

    .line 63
    iput-object p3, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    .line 64
    iput p4, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mNonce:I

    .line 65
    iput-object p5, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mVersionCode:Ljava/lang/String;

    .line 67
    iput p7, p0, Lcom/google/android/vending/licensing/LicenseValidator;->resKey:I

    .line 68
    return-void
.end method

.method private handleApplicationError(I)V
    .registers 3
    .param p1, "code"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-interface {v0, p1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->applicationError(I)V

    .line 222
    return-void
.end method

.method private handleInvalidResponse()V
    .registers 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    const/16 v1, 0x231

    invoke-interface {v0, v1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->dontAllow(I)V

    .line 226
    return-void
.end method

.method private handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V
    .registers 5
    .param p1, "response"    # I
    .param p2, "rawData"    # Lcom/google/android/vending/licensing/ResponseData;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    invoke-interface {v0, p1, p2}, Lcom/google/android/vending/licensing/Policy;->processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    .line 213
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    invoke-interface {v0}, Lcom/google/android/vending/licensing/Policy;->allowAccess()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 214
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    iget v1, p0, Lcom/google/android/vending/licensing/LicenseValidator;->resKey:I

    invoke-interface {v0, v1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->allow(I)V

    .line 218
    :goto_14
    return-void

    .line 216
    :cond_15
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-interface {v0, p1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->dontAllow(I)V

    goto :goto_14
.end method


# virtual methods
.method public getCallback()Lcom/google/android/vending/licensing/LicenseCheckerCallback;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    return-object v0
.end method

.method public getNonce()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mNonce:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "responseCode"    # I
    .param p3, "signedData"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x123

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 93
    const/4 v4, 0x0

    .line 95
    .local v4, "userId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 96
    .local v0, "data":Lcom/google/android/vending/licensing/ResponseData;
    if-eqz p2, :cond_c

    if-eq p2, v7, :cond_c

    .line 97
    if-ne p2, v8, :cond_bf

    .line 100
    :cond_c
    :try_start_c
    const-string v5, "SHA1withRSA"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 101
    .local v3, "sig":Ljava/security/Signature;
    invoke-virtual {v3, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 102
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/Signature;->update([B)V

    .line 104
    invoke-static {p4}, Lcom/google/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/Signature;->verify([B)Z

    move-result v5

    if-nez v5, :cond_51

    .line 105
    const-string v5, "LicenseValidator"

    const-string v6, "Signature verification failed."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V
    :try_end_30
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_30} :catch_31
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_30} :catch_38
    .catch Ljava/security/SignatureException; {:try_start_c .. :try_end_30} :catch_3e
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_c .. :try_end_30} :catch_45

    .line 199
    .end local v3    # "sig":Ljava/security/Signature;
    :goto_30
    return-void

    .line 109
    :catch_31
    move-exception v1

    .line 111
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 112
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_38
    move-exception v1

    .line 113
    .local v1, "e":Ljava/security/InvalidKeyException;
    const/4 v5, 0x5

    invoke-direct {p0, v5}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    goto :goto_30

    .line 115
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_3e
    move-exception v1

    .line 116
    .local v1, "e":Ljava/security/SignatureException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 117
    .end local v1    # "e":Ljava/security/SignatureException;
    :catch_45
    move-exception v1

    .line 118
    .local v1, "e":Lcom/google/android/vending/licensing/util/Base64DecoderException;
    const-string v5, "LicenseValidator"

    const-string v6, "Could not Base64-decode signature."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto :goto_30

    .line 125
    .end local v1    # "e":Lcom/google/android/vending/licensing/util/Base64DecoderException;
    .restart local v3    # "sig":Ljava/security/Signature;
    :cond_51
    :try_start_51
    invoke-static {p3}, Lcom/google/android/vending/licensing/ResponseData;->parse(Ljava/lang/String;)Lcom/google/android/vending/licensing/ResponseData;
    :try_end_54
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_54} :catch_64

    move-result-object v0

    .line 132
    iget v5, v0, Lcom/google/android/vending/licensing/ResponseData;->responseCode:I

    if-eq v5, p2, :cond_70

    .line 133
    const-string v5, "LicenseValidator"

    const-string v6, "Response codes don\'t match."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto :goto_30

    .line 126
    :catch_64
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "LicenseValidator"

    const-string v6, "Could not parse response."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto :goto_30

    .line 138
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_70
    iget v5, v0, Lcom/google/android/vending/licensing/ResponseData;->nonce:I

    iget v6, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mNonce:I

    if-eq v5, v6, :cond_81

    .line 139
    const-string v5, "LicenseValidator"

    const-string v6, "Nonce doesn\'t match."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto :goto_30

    .line 144
    :cond_81
    iget-object v5, v0, Lcom/google/android/vending/licensing/ResponseData;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_96

    .line 145
    const-string v5, "LicenseValidator"

    const-string v6, "Package name doesn\'t match."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto :goto_30

    .line 150
    :cond_96
    iget-object v5, v0, Lcom/google/android/vending/licensing/ResponseData;->versionCode:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mVersionCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ab

    .line 151
    const-string v5, "LicenseValidator"

    const-string v6, "Version codes don\'t match."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto :goto_30

    .line 157
    :cond_ab
    iget-object v4, v0, Lcom/google/android/vending/licensing/ResponseData;->userId:Ljava/lang/String;

    .line 158
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 159
    const-string v5, "LicenseValidator"

    const-string v6, "User identifier is empty."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto/16 :goto_30

    .line 165
    .end local v3    # "sig":Ljava/security/Signature;
    :cond_bf
    if-eqz p2, :cond_c3

    if-ne p2, v8, :cond_ce

    .line 166
    :cond_c3
    iget-object v5, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mDeviceLimiter:Lcom/google/android/vending/licensing/DeviceLimiter;

    invoke-interface {v5, v4}, Lcom/google/android/vending/licensing/DeviceLimiter;->isDeviceAllowed(Ljava/lang/String;)I

    move-result v2

    .line 167
    .local v2, "limiterResponse":I
    invoke-direct {p0, v2, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    goto/16 :goto_30

    .line 168
    .end local v2    # "limiterResponse":I
    :cond_ce
    if-ne p2, v7, :cond_d7

    .line 169
    const/16 v5, 0x231

    invoke-direct {p0, v5, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    goto/16 :goto_30

    .line 171
    :cond_d7
    sparse-switch p2, :sswitch_data_11a

    .line 194
    const-string v5, "LicenseValidator"

    const-string v6, "Unknown response code for license check."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto/16 :goto_30

    .line 173
    :sswitch_e6
    const-string v5, "LicenseValidator"

    const-string v6, "Error contacting licensing server."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0, v9, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    goto/16 :goto_30

    .line 177
    :sswitch_f2
    const-string v5, "LicenseValidator"

    const-string v6, "An error has occurred on the licensing server."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-direct {p0, v9, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    goto/16 :goto_30

    .line 181
    :sswitch_fe
    const-string v5, "LicenseValidator"

    const-string v6, "Licensing server is refusing to talk to this device, over quota."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0, v9, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    goto/16 :goto_30

    .line 185
    :sswitch_10a
    invoke-direct {p0, v7}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    goto/16 :goto_30

    .line 188
    :sswitch_10f
    invoke-direct {p0, v8}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    goto/16 :goto_30

    .line 191
    :sswitch_114
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    goto/16 :goto_30

    .line 171
    :sswitch_data_11a
    .sparse-switch
        0x3 -> :sswitch_114
        0x4 -> :sswitch_f2
        0x5 -> :sswitch_fe
        0x101 -> :sswitch_e6
        0x102 -> :sswitch_10a
        0x103 -> :sswitch_10f
    .end sparse-switch
.end method
