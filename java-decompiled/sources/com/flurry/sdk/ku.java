package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class ku {
    java.lang.String a;

    /* synthetic */ ku(byte b) {
        this();
    }

    public static class a implements com.flurry.sdk.kz<com.flurry.sdk.ku> {
        @Override // com.flurry.sdk.kz
        public final /* synthetic */ void a(java.io.OutputStream outputStream, com.flurry.sdk.ku kuVar) throws java.io.IOException {
            com.flurry.sdk.ku kuVar2 = kuVar;
            if (outputStream == null || kuVar2 == null) {
                return;
            }
            java.io.DataOutputStream dataOutputStream = new java.io.DataOutputStream(outputStream) { // from class: com.flurry.sdk.ku.a.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            dataOutputStream.writeUTF(kuVar2.a);
            dataOutputStream.flush();
        }

        @Override // com.flurry.sdk.kz
        public final /* synthetic */ com.flurry.sdk.ku a(java.io.InputStream inputStream) throws java.io.IOException {
            if (inputStream == null) {
                return null;
            }
            java.io.DataInputStream dataInputStream = new java.io.DataInputStream(inputStream) { // from class: com.flurry.sdk.ku.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            com.flurry.sdk.ku kuVar = new com.flurry.sdk.ku((byte) 0);
            kuVar.a = dataInputStream.readUTF();
            return kuVar;
        }
    }

    private ku() {
    }

    public ku(java.lang.String str) {
        this.a = str;
    }
}
