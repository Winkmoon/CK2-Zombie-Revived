package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class kx<ObjectType> extends com.flurry.sdk.kw<ObjectType> {
    public kx(com.flurry.sdk.kz<ObjectType> kzVar) {
        super(kzVar);
    }

    @Override // com.flurry.sdk.kw, com.flurry.sdk.kz
    public final void a(java.io.OutputStream outputStream, ObjectType objecttype) throws java.io.IOException {
        java.util.zip.GZIPOutputStream gZIPOutputStream;
        if (outputStream != null) {
            try {
                gZIPOutputStream = new java.util.zip.GZIPOutputStream(outputStream);
                try {
                    super.a(gZIPOutputStream, objecttype);
                    com.flurry.sdk.lr.a(gZIPOutputStream);
                } catch (java.lang.Throwable th) {
                    th = th;
                    com.flurry.sdk.lr.a(gZIPOutputStream);
                    throw th;
                }
            } catch (java.lang.Throwable th2) {
                th = th2;
                gZIPOutputStream = null;
            }
        }
    }

    @Override // com.flurry.sdk.kw, com.flurry.sdk.kz
    public final ObjectType a(java.io.InputStream inputStream) throws java.io.IOException {
        java.util.zip.GZIPInputStream gZIPInputStream;
        java.lang.Throwable th;
        ObjectType objecttype = null;
        if (inputStream != null) {
            try {
                gZIPInputStream = new java.util.zip.GZIPInputStream(inputStream);
            } catch (java.lang.Throwable th2) {
                gZIPInputStream = null;
                th = th2;
            }
            try {
                objecttype = (ObjectType) super.a(gZIPInputStream);
                com.flurry.sdk.lr.a((java.io.Closeable) gZIPInputStream);
            } catch (java.lang.Throwable th3) {
                th = th3;
                com.flurry.sdk.lr.a((java.io.Closeable) gZIPInputStream);
                throw th;
            }
        }
        return objecttype;
    }
}
