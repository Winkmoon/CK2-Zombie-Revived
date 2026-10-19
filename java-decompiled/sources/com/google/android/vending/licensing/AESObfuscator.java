package com.google.android.vending.licensing;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class AESObfuscator implements com.google.android.vending.licensing.Obfuscator {
    private static final java.lang.String CIPHER_ALGORITHM = "AES/CBC/PKCS5Padding";
    private static final byte[] IV = {16, 74, 71, -80, 32, 101, -47, 72, 117, -14, 0, -29, 70, 65, -12, 74};
    private static final java.lang.String KEYGEN_ALGORITHM = "PBEWITHSHAAND256BITAES-CBC-BC";
    private static final java.lang.String UTF8 = "UTF-8";
    private static final java.lang.String header = "com.android.vending.licensing.AESObfuscator-1|";
    private javax.crypto.Cipher mDecryptor;
    private javax.crypto.Cipher mEncryptor;

    public AESObfuscator(byte[] salt, java.lang.String applicationId, java.lang.String deviceId) {
        try {
            javax.crypto.SecretKeyFactory factory = javax.crypto.SecretKeyFactory.getInstance(KEYGEN_ALGORITHM);
            java.security.spec.KeySpec keySpec = new javax.crypto.spec.PBEKeySpec((java.lang.String.valueOf(applicationId) + deviceId).toCharArray(), salt, 1024, 256);
            javax.crypto.SecretKey tmp = factory.generateSecret(keySpec);
            javax.crypto.SecretKey secret = new javax.crypto.spec.SecretKeySpec(tmp.getEncoded(), "AES");
            this.mEncryptor = javax.crypto.Cipher.getInstance(CIPHER_ALGORITHM);
            this.mEncryptor.init(1, secret, new javax.crypto.spec.IvParameterSpec(IV));
            this.mDecryptor = javax.crypto.Cipher.getInstance(CIPHER_ALGORITHM);
            this.mDecryptor.init(2, secret, new javax.crypto.spec.IvParameterSpec(IV));
        } catch (java.security.GeneralSecurityException e) {
            throw new java.lang.RuntimeException("Invalid environment", e);
        }
    }

    @Override // com.google.android.vending.licensing.Obfuscator
    public java.lang.String obfuscate(java.lang.String original, java.lang.String key) {
        if (original == null) {
            return null;
        }
        try {
            return com.google.android.vending.licensing.util.Base64.encode(this.mEncryptor.doFinal((header + key + original).getBytes(UTF8)));
        } catch (java.io.UnsupportedEncodingException e) {
            throw new java.lang.RuntimeException("Invalid environment", e);
        } catch (java.security.GeneralSecurityException e2) {
            throw new java.lang.RuntimeException("Invalid environment", e2);
        }
    }

    @Override // com.google.android.vending.licensing.Obfuscator
    public java.lang.String unobfuscate(java.lang.String obfuscated, java.lang.String key) throws com.google.android.vending.licensing.ValidationException {
        if (obfuscated == null) {
            return null;
        }
        try {
            java.lang.String result = new java.lang.String(this.mDecryptor.doFinal(com.google.android.vending.licensing.util.Base64.decode(obfuscated)), UTF8);
            int headerIndex = result.indexOf(header + key);
            if (headerIndex != 0) {
                throw new com.google.android.vending.licensing.ValidationException("Header not found (invalid data or key):" + obfuscated);
            }
            return result.substring(header.length() + key.length(), result.length());
        } catch (com.google.android.vending.licensing.util.Base64DecoderException e) {
            throw new com.google.android.vending.licensing.ValidationException(java.lang.String.valueOf(e.getMessage()) + ":" + obfuscated);
        } catch (java.io.UnsupportedEncodingException e2) {
            throw new java.lang.RuntimeException("Invalid environment", e2);
        } catch (javax.crypto.BadPaddingException e3) {
            throw new com.google.android.vending.licensing.ValidationException(java.lang.String.valueOf(e3.getMessage()) + ":" + obfuscated);
        } catch (javax.crypto.IllegalBlockSizeException e4) {
            throw new com.google.android.vending.licensing.ValidationException(java.lang.String.valueOf(e4.getMessage()) + ":" + obfuscated);
        }
    }
}
