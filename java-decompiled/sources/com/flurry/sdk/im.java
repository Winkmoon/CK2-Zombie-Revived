package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class im {
    private static final java.lang.String e = com.flurry.sdk.in.class.getName();
    public long a;
    int b;
    public java.lang.String c;
    java.util.Map<java.lang.Long, com.flurry.sdk.ii> d;
    private long f = java.lang.System.currentTimeMillis();
    private long g;
    private com.flurry.sdk.iq h;
    private boolean i;
    private int j;
    private java.util.concurrent.atomic.AtomicInteger k;

    public im(java.lang.String str, boolean z, long j, long j2, com.flurry.sdk.iq iqVar, java.util.Map<java.lang.Long, com.flurry.sdk.ii> map) {
        this.c = str;
        this.i = z;
        this.a = j;
        this.g = j2;
        this.h = iqVar;
        this.d = map;
        if (map != null) {
            java.util.Iterator<java.lang.Long> it = map.keySet().iterator();
            while (it.hasNext()) {
                map.get(it.next()).m = this;
            }
            this.j = map.size();
        } else {
            this.j = 0;
        }
        this.k = new java.util.concurrent.atomic.AtomicInteger(0);
    }

    public final java.util.List<com.flurry.sdk.ii> a() {
        return this.d != null ? new java.util.ArrayList(this.d.values()) : java.util.Collections.emptyList();
    }

    public final synchronized boolean b() {
        return this.k.intValue() >= this.j;
    }

    public final synchronized void c() {
        this.k.incrementAndGet();
    }

    public static class a implements com.flurry.sdk.kz<com.flurry.sdk.im> {
        com.flurry.sdk.ky<com.flurry.sdk.ii> a = new com.flurry.sdk.ky<>(new com.flurry.sdk.ii.a());

        @Override // com.flurry.sdk.kz
        public final /* synthetic */ void a(java.io.OutputStream outputStream, com.flurry.sdk.im imVar) throws java.io.IOException {
            com.flurry.sdk.im imVar2 = imVar;
            if (outputStream == null || imVar2 == null) {
                return;
            }
            java.io.DataOutputStream dataOutputStream = new java.io.DataOutputStream(outputStream) { // from class: com.flurry.sdk.im.a.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            dataOutputStream.writeLong(imVar2.a);
            dataOutputStream.writeLong(imVar2.f);
            dataOutputStream.writeLong(imVar2.g);
            dataOutputStream.writeInt(imVar2.h.e);
            dataOutputStream.writeBoolean(imVar2.i);
            dataOutputStream.writeInt(imVar2.b);
            if (imVar2.c != null) {
                dataOutputStream.writeUTF(imVar2.c);
            } else {
                dataOutputStream.writeUTF("");
            }
            dataOutputStream.writeInt(imVar2.j);
            dataOutputStream.writeInt(imVar2.k.intValue());
            dataOutputStream.flush();
            this.a.a(outputStream, imVar2.a());
        }

        @Override // com.flurry.sdk.kz
        public final /* synthetic */ com.flurry.sdk.im a(java.io.InputStream inputStream) throws java.io.IOException {
            if (inputStream == null) {
                return null;
            }
            java.io.DataInputStream dataInputStream = new java.io.DataInputStream(inputStream) { // from class: com.flurry.sdk.im.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            long readLong = dataInputStream.readLong();
            long readLong2 = dataInputStream.readLong();
            long readLong3 = dataInputStream.readLong();
            com.flurry.sdk.iq a = com.flurry.sdk.iq.a(dataInputStream.readInt());
            boolean readBoolean = dataInputStream.readBoolean();
            int readInt = dataInputStream.readInt();
            java.lang.String readUTF = dataInputStream.readUTF();
            int readInt2 = dataInputStream.readInt();
            int readInt3 = dataInputStream.readInt();
            com.flurry.sdk.im imVar = new com.flurry.sdk.im(readUTF, readBoolean, readLong, readLong3, a, null);
            imVar.f = readLong2;
            imVar.b = readInt;
            imVar.j = readInt2;
            imVar.k = new java.util.concurrent.atomic.AtomicInteger(readInt3);
            java.util.List<com.flurry.sdk.ii> a2 = this.a.a(inputStream);
            if (a2 != null) {
                imVar.d = new java.util.HashMap();
                for (com.flurry.sdk.ii iiVar : a2) {
                    iiVar.m = imVar;
                    imVar.d.put(java.lang.Long.valueOf(iiVar.b), iiVar);
                }
            }
            return imVar;
        }
    }

    public final byte[] d() throws java.io.IOException {
        java.io.DataOutputStream dataOutputStream;
        java.io.ByteArrayOutputStream byteArrayOutputStream;
        java.io.DataOutputStream dataOutputStream2 = null;
        try {
            byteArrayOutputStream = new java.io.ByteArrayOutputStream();
            dataOutputStream = new java.io.DataOutputStream(byteArrayOutputStream);
        } catch (java.io.IOException e2) {
            e = e2;
        } catch (java.lang.Throwable th) {
            th = th;
            dataOutputStream = null;
        }
        try {
            dataOutputStream.writeShort(this.h.e);
            dataOutputStream.writeLong(this.a);
            dataOutputStream.writeLong(this.g);
            dataOutputStream.writeBoolean(this.i);
            if (this.i) {
                dataOutputStream.writeShort(this.b);
                dataOutputStream.writeUTF(this.c);
            }
            dataOutputStream.writeShort(this.d.size());
            if (this.d != null) {
                for (java.util.Map.Entry<java.lang.Long, com.flurry.sdk.ii> entry : this.d.entrySet()) {
                    com.flurry.sdk.ii value = entry.getValue();
                    dataOutputStream.writeLong(entry.getKey().longValue());
                    dataOutputStream.writeUTF(value.r);
                    dataOutputStream.writeShort(value.a.size());
                    java.util.Iterator<com.flurry.sdk.ij> it = value.a.iterator();
                    while (it.hasNext()) {
                        com.flurry.sdk.ij next = it.next();
                        dataOutputStream.writeShort(next.a);
                        dataOutputStream.writeLong(next.b);
                        dataOutputStream.writeLong(next.c);
                        dataOutputStream.writeBoolean(next.d);
                        dataOutputStream.writeShort(next.e);
                        dataOutputStream.writeShort(next.f.e);
                        if ((next.e < 200 || next.e >= 400) && next.g != null) {
                            byte[] bytes = next.g.getBytes();
                            dataOutputStream.writeShort(bytes.length);
                            dataOutputStream.write(bytes);
                        }
                        dataOutputStream.writeShort(next.h);
                        dataOutputStream.writeInt((int) next.k);
                    }
                }
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            com.flurry.sdk.lr.a(dataOutputStream);
            return byteArray;
        } catch (java.io.IOException e3) {
            e = e3;
            dataOutputStream2 = dataOutputStream;
            try {
                com.flurry.sdk.kf.a(6, e, "Error when generating report", e);
                throw e;
            } catch (java.lang.Throwable th2) {
                th = th2;
                dataOutputStream = dataOutputStream2;
                com.flurry.sdk.lr.a(dataOutputStream);
                throw th;
            }
        } catch (java.lang.Throwable th3) {
            th = th3;
            com.flurry.sdk.lr.a(dataOutputStream);
            throw th;
        }
    }
}
