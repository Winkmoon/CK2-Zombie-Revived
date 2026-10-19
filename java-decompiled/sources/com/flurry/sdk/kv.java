package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class kv implements com.flurry.sdk.kz<byte[]> {
    @Override // com.flurry.sdk.kz
    public final /* synthetic */ void a(java.io.OutputStream outputStream, byte[] bArr) throws java.io.IOException {
        byte[] bArr2 = bArr;
        if (outputStream == null || bArr2 == null) {
            return;
        }
        outputStream.write(bArr2, 0, bArr2.length);
    }

    @Override // com.flurry.sdk.kz
    public final /* synthetic */ byte[] a(java.io.InputStream inputStream) throws java.io.IOException {
        if (inputStream == null) {
            return null;
        }
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        com.flurry.sdk.lr.a(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
}
