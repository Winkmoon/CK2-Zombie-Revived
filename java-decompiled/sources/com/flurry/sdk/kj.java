package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class kj<ObjectType> {
    private static final java.lang.String a = com.flurry.sdk.kj.class.getSimpleName();
    private static final byte[] b = {113, -92, -8, 125, 121, 107, -65, -61, -74, -114, -32, 0, -57, -87, -35, -56, -6, -52, 51, 126, -104, 49, 79, -52, 118, -84, 99, -52, -14, -126, -27, -64};
    private java.lang.String c;
    private com.flurry.sdk.kz<ObjectType> d;

    private static void c(byte[] bArr) {
        if (bArr != null) {
            int length = bArr.length;
            int length2 = b.length;
            for (int i = 0; i < length; i++) {
                bArr[i] = (byte) ((bArr[i] ^ b[i % length2]) ^ ((i * 31) % 251));
            }
        }
    }

    private static void d(byte[] bArr) {
        c(bArr);
    }

    public static int a(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        com.flurry.sdk.jx jxVar = new com.flurry.sdk.jx();
        jxVar.update(bArr);
        return jxVar.b();
    }

    public kj(java.lang.String str, com.flurry.sdk.kz<ObjectType> kzVar) {
        this.c = str;
        this.d = kzVar;
    }

    public final byte[] a(ObjectType objecttype) throws java.io.IOException {
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        this.d.a(byteArrayOutputStream, objecttype);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        com.flurry.sdk.kf.a(3, a, "Encoding " + this.c + ": " + new java.lang.String(byteArray));
        com.flurry.sdk.kx kxVar = new com.flurry.sdk.kx(new com.flurry.sdk.kv());
        java.io.ByteArrayOutputStream byteArrayOutputStream2 = new java.io.ByteArrayOutputStream();
        kxVar.a(byteArrayOutputStream2, byteArray);
        byte[] byteArray2 = byteArrayOutputStream2.toByteArray();
        c(byteArray2);
        return byteArray2;
    }

    public final ObjectType b(byte[] bArr) throws java.io.IOException {
        if (bArr == null) {
            throw new java.io.IOException("Decoding: " + this.c + ": Nothing to decode");
        }
        d(bArr);
        byte[] bArr2 = (byte[]) new com.flurry.sdk.kx(new com.flurry.sdk.kv()).a(new java.io.ByteArrayInputStream(bArr));
        com.flurry.sdk.kf.a(3, a, "Decoding: " + this.c + ": " + new java.lang.String(bArr2));
        return this.d.a(new java.io.ByteArrayInputStream(bArr2));
    }
}
