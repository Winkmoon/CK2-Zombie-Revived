package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class ky<T> implements com.flurry.sdk.kz<java.util.List<T>> {
    com.flurry.sdk.kz<T> a;

    public ky(com.flurry.sdk.kz<T> kzVar) {
        this.a = kzVar;
    }

    @Override // com.flurry.sdk.kz
    public final void a(java.io.OutputStream outputStream, java.util.List<T> list) throws java.io.IOException {
        if (outputStream != null) {
            java.io.DataOutputStream dataOutputStream = new java.io.DataOutputStream(outputStream) { // from class: com.flurry.sdk.ky.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            int size = list != null ? list.size() : 0;
            dataOutputStream.writeInt(size);
            for (int i = 0; i < size; i++) {
                this.a.a(outputStream, list.get(i));
            }
            dataOutputStream.flush();
        }
    }

    @Override // com.flurry.sdk.kz
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final java.util.List<T> a(java.io.InputStream inputStream) throws java.io.IOException {
        if (inputStream == null) {
            return null;
        }
        int readInt = new java.io.DataInputStream(inputStream) { // from class: com.flurry.sdk.ky.2
            @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
            }
        }.readInt();
        java.util.ArrayList arrayList = new java.util.ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            T a = this.a.a(inputStream);
            if (a == null) {
                throw new java.io.IOException("Missing record.");
            }
            arrayList.add(a);
        }
        return arrayList;
    }
}
