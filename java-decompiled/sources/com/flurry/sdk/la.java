package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class la implements com.flurry.sdk.kz<java.lang.String> {
    @Override // com.flurry.sdk.kz
    public final /* synthetic */ void a(java.io.OutputStream outputStream, java.lang.String str) throws java.io.IOException {
        java.lang.String str2 = str;
        if (outputStream == null || str2 == null) {
            return;
        }
        byte[] bytes = str2.getBytes("utf-8");
        outputStream.write(bytes, 0, bytes.length);
    }

    @Override // com.flurry.sdk.kz
    public final /* synthetic */ java.lang.String a(java.io.InputStream inputStream) throws java.io.IOException {
        if (inputStream == null) {
            return null;
        }
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        com.flurry.sdk.lr.a(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toString();
    }
}
