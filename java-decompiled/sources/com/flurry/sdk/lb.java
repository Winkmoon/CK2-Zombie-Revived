package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class lb<T> implements com.flurry.sdk.kz<T> {
    private final java.lang.String a;
    private final int b;
    private final com.flurry.sdk.lc<T> c;

    public lb(java.lang.String str, int i, com.flurry.sdk.lc<T> lcVar) {
        this.a = str;
        this.b = i;
        this.c = lcVar;
    }

    @Override // com.flurry.sdk.kz
    public final void a(java.io.OutputStream outputStream, T t) throws java.io.IOException {
        if (outputStream != null && this.c != null) {
            java.io.DataOutputStream dataOutputStream = new java.io.DataOutputStream(outputStream) { // from class: com.flurry.sdk.lb.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            dataOutputStream.writeUTF(this.a);
            dataOutputStream.writeInt(this.b);
            this.c.a(this.b).a(dataOutputStream, t);
            dataOutputStream.flush();
        }
    }

    @Override // com.flurry.sdk.kz
    public final T a(java.io.InputStream inputStream) throws java.io.IOException {
        if (inputStream == null || this.c == null) {
            return null;
        }
        java.io.DataInputStream dataInputStream = new java.io.DataInputStream(inputStream) { // from class: com.flurry.sdk.lb.2
            @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
            }
        };
        java.lang.String readUTF = dataInputStream.readUTF();
        if (!this.a.equals(readUTF)) {
            throw new java.io.IOException("Signature: " + readUTF + " is invalid");
        }
        return this.c.a(dataInputStream.readInt()).a(dataInputStream);
    }
}
