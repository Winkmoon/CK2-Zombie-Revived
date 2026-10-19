package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class id {
    long a;
    boolean b;
    byte[] c;

    public static class a implements com.flurry.sdk.kz<com.flurry.sdk.id> {
        @Override // com.flurry.sdk.kz
        public final /* synthetic */ void a(java.io.OutputStream outputStream, com.flurry.sdk.id idVar) throws java.io.IOException {
            com.flurry.sdk.id idVar2 = idVar;
            if (outputStream == null || idVar2 == null) {
                return;
            }
            java.io.DataOutputStream dataOutputStream = new java.io.DataOutputStream(outputStream) { // from class: com.flurry.sdk.id.a.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            dataOutputStream.writeLong(idVar2.a);
            dataOutputStream.writeBoolean(idVar2.b);
            dataOutputStream.writeInt(idVar2.c.length);
            dataOutputStream.write(idVar2.c);
            dataOutputStream.flush();
        }

        @Override // com.flurry.sdk.kz
        public final /* synthetic */ com.flurry.sdk.id a(java.io.InputStream inputStream) throws java.io.IOException {
            if (inputStream == null) {
                return null;
            }
            java.io.DataInputStream dataInputStream = new java.io.DataInputStream(inputStream) { // from class: com.flurry.sdk.id.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            com.flurry.sdk.id idVar = new com.flurry.sdk.id();
            idVar.a = dataInputStream.readLong();
            idVar.b = dataInputStream.readBoolean();
            idVar.c = new byte[dataInputStream.readInt()];
            dataInputStream.readFully(idVar.c);
            return idVar;
        }
    }
}
