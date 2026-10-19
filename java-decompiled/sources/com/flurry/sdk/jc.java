package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class jc {
    private static java.lang.String a = com.flurry.sdk.jc.class.getName();

    public static java.lang.String a(java.lang.String str) {
        java.lang.String str2 = "a=" + com.flurry.sdk.jr.a().d;
        if (!android.text.TextUtils.isEmpty(str)) {
            return java.lang.String.format("%s&%s", str2, "cid=" + b(str));
        }
        return str2;
    }

    private static java.lang.String b(java.lang.String str) {
        byte[] bArr;
        if (str == null || str.trim().length() <= 0) {
            bArr = null;
        } else {
            try {
                bArr = com.flurry.sdk.lr.f(str);
                if (bArr != null && bArr.length == 20) {
                    try {
                        com.flurry.sdk.kf.a(5, a, "syndication hashedId is:" + new java.lang.String(bArr));
                    } catch (java.lang.Exception e) {
                        com.flurry.sdk.kf.a(6, a, "Exception in getHashedSyndicationIdString()");
                        return com.flurry.sdk.lr.a(bArr);
                    }
                } else {
                    com.flurry.sdk.kf.a(6, a, "sha1 is not 20 bytes long: " + java.util.Arrays.toString(bArr));
                    bArr = null;
                }
            } catch (java.lang.Exception e2) {
                bArr = null;
            }
        }
        return com.flurry.sdk.lr.a(bArr);
    }
}
