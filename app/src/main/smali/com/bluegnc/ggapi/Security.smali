.class public Lcom/bluegnc/ggapi/Security;
.super Ljava/lang/Object;
.source "Security.java"


# static fields
.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static final TAG:Ljava/lang/String; = "IABUtil/Security"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 6
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .prologue
    .line 81
    :try_start_0
    invoke-static {p0}, Lcom/bluegnc/ggapi/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 82
    .local v0, "decodedKey":[B
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 83
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_12} :catch_14
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_12} :catch_1b
    .catch Lcom/bluegnc/ggapi/Base64DecoderException; {:try_start_0 .. :try_end_12} :catch_29

    move-result-object v3

    return-object v3

    .line 84
    .end local v0    # "decodedKey":[B
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_14
    move-exception v1

    .line 85
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 86
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1b
    move-exception v1

    .line 87
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v3, "IABUtil/Security"

    const-string v4, "Invalid key specification."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 89
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_29
    move-exception v1

    .line 90
    .local v1, "e":Lcom/bluegnc/ggapi/Base64DecoderException;
    const-string v3, "IABUtil/Security"

    const-string v4, "Base64 decoding failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "publicKey"    # Ljava/security/PublicKey;
    .param p1, "signedData"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 107
    :try_start_1
    const-string v3, "SHA1withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 108
    .local v1, "sig":Ljava/security/Signature;
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->update([B)V

    .line 110
    invoke-static {p2}, Lcom/bluegnc/ggapi/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    if-nez v3, :cond_23

    .line 111
    const-string v3, "IABUtil/Security"

    const-string v4, "Signature verification failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_22} :catch_25
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_22} :catch_2e
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_22} :catch_37
    .catch Lcom/bluegnc/ggapi/Base64DecoderException; {:try_start_1 .. :try_end_22} :catch_40

    .line 124
    .end local v1    # "sig":Ljava/security/Signature;
    :goto_22
    return v2

    .line 114
    .restart local v1    # "sig":Ljava/security/Signature;
    :cond_23
    const/4 v2, 0x1

    goto :goto_22

    .line 115
    .end local v1    # "sig":Ljava/security/Signature;
    :catch_25
    move-exception v0

    .line 116
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "IABUtil/Security"

    const-string v4, "NoSuchAlgorithmException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 117
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2e
    move-exception v0

    .line 118
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v3, "IABUtil/Security"

    const-string v4, "Invalid key specification."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 119
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_37
    move-exception v0

    .line 120
    .local v0, "e":Ljava/security/SignatureException;
    const-string v3, "IABUtil/Security"

    const-string v4, "Signature exception."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 121
    .end local v0    # "e":Ljava/security/SignatureException;
    :catch_40
    move-exception v0

    .line 122
    .local v0, "e":Lcom/bluegnc/ggapi/Base64DecoderException;
    const-string v3, "IABUtil/Security"

    const-string v4, "Base64 decoding failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public static verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "base64PublicKey"    # Ljava/lang/String;
    .param p1, "signedData"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 55
    if-nez p1, :cond_b

    .line 56
    const-string v3, "IABUtil/Security"

    const-string v4, "data is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_a
    return v2

    .line 60
    :cond_b
    const/4 v1, 0x0

    .line 61
    .local v1, "verified":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 62
    invoke-static {p0}, Lcom/bluegnc/ggapi/Security;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    .line 63
    .local v0, "key":Ljava/security/PublicKey;
    invoke-static {v0, p1, p2}, Lcom/bluegnc/ggapi/Security;->verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 64
    if-nez v1, :cond_24

    .line 65
    const-string v3, "IABUtil/Security"

    const-string v4, "signature does not match data."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 69
    .end local v0    # "key":Ljava/security/PublicKey;
    :cond_24
    const/4 v2, 0x1

    goto :goto_a
.end method
