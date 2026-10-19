package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class jb {
    private static final java.lang.String d = com.flurry.sdk.jb.class.getSimpleName();
    boolean a;
    long b;
    final java.util.List<com.flurry.sdk.iy> c = new java.util.ArrayList();

    public static class a implements com.flurry.sdk.kz<com.flurry.sdk.jb> {
        @Override // com.flurry.sdk.kz
        public final /* synthetic */ com.flurry.sdk.jb a(java.io.InputStream inputStream) throws java.io.IOException {
            if (inputStream == null) {
                return null;
            }
            java.io.DataInputStream dataInputStream = new java.io.DataInputStream(inputStream) { // from class: com.flurry.sdk.jb.a.1
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            com.flurry.sdk.jb jbVar = new com.flurry.sdk.jb();
            dataInputStream.readUTF();
            dataInputStream.readUTF();
            jbVar.a = dataInputStream.readBoolean();
            jbVar.b = dataInputStream.readLong();
            while (true) {
                int readUnsignedShort = dataInputStream.readUnsignedShort();
                if (readUnsignedShort == 0) {
                    return jbVar;
                }
                byte[] bArr = new byte[readUnsignedShort];
                dataInputStream.readFully(bArr);
                jbVar.c.add(0, new com.flurry.sdk.iy(bArr));
            }
        }

        @Override // com.flurry.sdk.kz
        public final /* synthetic */ void a(java.io.OutputStream outputStream, com.flurry.sdk.jb jbVar) throws java.io.IOException {
            throw new java.lang.UnsupportedOperationException("Serialization not supported");
        }
    }
}
