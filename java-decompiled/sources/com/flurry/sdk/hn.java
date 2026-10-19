package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class hn {
    private static final java.lang.String a = com.flurry.sdk.hn.class.getSimpleName();

    public static com.flurry.sdk.jb a(java.io.File file) {
        java.io.Closeable closeable;
        java.io.FileInputStream fileInputStream;
        java.io.DataInputStream dataInputStream;
        com.flurry.sdk.jb jbVar;
        if (file == null || !file.exists()) {
            return null;
        }
        com.flurry.sdk.jb.a aVar = new com.flurry.sdk.jb.a();
        try {
            try {
                fileInputStream = new java.io.FileInputStream(file);
            } catch (java.lang.Throwable th) {
                th = th;
            }
        } catch (java.lang.Exception e) {
            e = e;
            dataInputStream = null;
            fileInputStream = null;
        } catch (java.lang.Throwable th2) {
            th = th2;
            closeable = null;
            fileInputStream = null;
        }
        try {
            dataInputStream = new java.io.DataInputStream(fileInputStream);
            try {
            } catch (java.lang.Exception e2) {
                e = e2;
                com.flurry.sdk.kf.a(3, a, "Error loading legacy agent data.", e);
                com.flurry.sdk.lr.a((java.io.Closeable) dataInputStream);
                com.flurry.sdk.lr.a((java.io.Closeable) fileInputStream);
                jbVar = null;
                return jbVar;
            }
        } catch (java.lang.Exception e3) {
            e = e3;
            dataInputStream = null;
        } catch (java.lang.Throwable th3) {
            th = th3;
            closeable = null;
            com.flurry.sdk.lr.a(closeable);
            com.flurry.sdk.lr.a((java.io.Closeable) fileInputStream);
            throw th;
        }
        if (dataInputStream.readUnsignedShort() != 46586) {
            com.flurry.sdk.kf.a(3, a, "Unexpected file type");
            com.flurry.sdk.lr.a((java.io.Closeable) dataInputStream);
            com.flurry.sdk.lr.a((java.io.Closeable) fileInputStream);
            return null;
        }
        int readUnsignedShort = dataInputStream.readUnsignedShort();
        if (readUnsignedShort != 2) {
            com.flurry.sdk.kf.a(6, a, "Unknown agent file version: " + readUnsignedShort);
            com.flurry.sdk.lr.a((java.io.Closeable) dataInputStream);
            com.flurry.sdk.lr.a((java.io.Closeable) fileInputStream);
            return null;
        }
        jbVar = (com.flurry.sdk.jb) aVar.a(dataInputStream);
        com.flurry.sdk.lr.a((java.io.Closeable) dataInputStream);
        com.flurry.sdk.lr.a((java.io.Closeable) fileInputStream);
        return jbVar;
    }
}
