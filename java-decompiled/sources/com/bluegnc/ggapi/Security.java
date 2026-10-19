package com.bluegnc.ggapi;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class Security {
    private static final java.lang.String KEY_FACTORY_ALGORITHM = "RSA";
    private static final java.lang.String SIGNATURE_ALGORITHM = "SHA1withRSA";
    private static final java.lang.String TAG = "IABUtil/Security";

    public static boolean verifyPurchase(java.lang.String base64PublicKey, java.lang.String signedData, java.lang.String signature) {
        if (signedData == null) {
            android.util.Log.e(TAG, "data is null");
            return false;
        }
        if (!android.text.TextUtils.isEmpty(signature)) {
            java.security.PublicKey key = generatePublicKey(base64PublicKey);
            boolean verified = verify(key, signedData, signature);
            if (!verified) {
                android.util.Log.w(TAG, "signature does not match data.");
                return false;
            }
        }
        return true;
    }

    public static java.security.PublicKey generatePublicKey(java.lang.String encodedPublicKey) {
        try {
            byte[] decodedKey = com.bluegnc.ggapi.Base64.decode(encodedPublicKey);
            java.security.KeyFactory keyFactory = java.security.KeyFactory.getInstance(KEY_FACTORY_ALGORITHM);
            return keyFactory.generatePublic(new java.security.spec.X509EncodedKeySpec(decodedKey));
        } catch (com.bluegnc.ggapi.Base64DecoderException e) {
            android.util.Log.e(TAG, "Base64 decoding failed.");
            throw new java.lang.IllegalArgumentException(e);
        } catch (java.security.NoSuchAlgorithmException e2) {
            throw new java.lang.RuntimeException(e2);
        } catch (java.security.spec.InvalidKeySpecException e3) {
            android.util.Log.e(TAG, "Invalid key specification.");
            throw new java.lang.IllegalArgumentException(e3);
        }
    }

    public static boolean verify(java.security.PublicKey publicKey, java.lang.String signedData, java.lang.String signature) {
        try {
            java.security.Signature sig = java.security.Signature.getInstance(SIGNATURE_ALGORITHM);
            sig.initVerify(publicKey);
            sig.update(signedData.getBytes());
            if (!sig.verify(com.bluegnc.ggapi.Base64.decode(signature))) {
                android.util.Log.e(TAG, "Signature verification failed.");
                return false;
            }
            return true;
        } catch (com.bluegnc.ggapi.Base64DecoderException e) {
            android.util.Log.e(TAG, "Base64 decoding failed.");
            return false;
        } catch (java.security.InvalidKeyException e2) {
            android.util.Log.e(TAG, "Invalid key specification.");
            return false;
        } catch (java.security.NoSuchAlgorithmException e3) {
            android.util.Log.e(TAG, "NoSuchAlgorithmException.");
            return false;
        } catch (java.security.SignatureException e4) {
            android.util.Log.e(TAG, "Signature exception.");
            return false;
        }
    }
}
