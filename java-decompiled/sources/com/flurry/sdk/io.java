package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class io {
    byte[] a;

    public io() {
    }

    public io(byte[] bArr) {
        this.a = bArr;
    }

    public static class a implements com.flurry.sdk.kz<com.flurry.sdk.io> {
        @Override // com.flurry.sdk.kz
        public final /* synthetic */ void a(java.io.OutputStream outputStream, com.flurry.sdk.io ioVar) throws java.io.IOException {
            com.flurry.sdk.io ioVar2 = ioVar;
            if (outputStream == null || ioVar2 == null) {
                return;
            }
            java.io.DataOutputStream dataOutputStream = new java.io.DataOutputStream(outputStream) { // from class: com.flurry.sdk.io.a.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            dataOutputStream.writeShort(ioVar2.a.length);
            dataOutputStream.write(ioVar2.a);
            dataOutputStream.writeShort(0);
            dataOutputStream.flush();
        }

        @Override // com.flurry.sdk.kz
        public final /* synthetic */ com.flurry.sdk.io a(java.io.InputStream inputStream) throws java.io.IOException {
            java.io.DataInputStream dataInputStream;
            int readShort;
            if (inputStream == null || (readShort = (dataInputStream = new java.io.DataInputStream(inputStream) { // from class: com.flurry.sdk.io.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            }).readShort()) == 0) {
                return null;
            }
            com.flurry.sdk.io ioVar = new com.flurry.sdk.io();
            ioVar.a = new byte[readShort];
            dataInputStream.readFully(ioVar.a);
            dataInputStream.readUnsignedShort();
            return ioVar;
        }
    }
}
