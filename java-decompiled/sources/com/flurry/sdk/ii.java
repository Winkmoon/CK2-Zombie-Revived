package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class ii extends com.flurry.sdk.kp {
    private static final java.lang.String t = com.flurry.sdk.ii.class.getName();
    public java.util.ArrayList<com.flurry.sdk.ij> a;
    final long b;
    final int c;
    final int d;
    final com.flurry.sdk.ip e;
    final java.util.Map<java.lang.String, java.lang.String> f;
    long g;
    int h;
    int i;
    java.lang.String j;
    java.lang.String k;
    boolean l;
    public com.flurry.sdk.im m;
    private final int u = 1000;
    private final int v = 30000;

    public ii(java.lang.String str, long j, java.lang.String str2, long j2, int i, int i2, com.flurry.sdk.ip ipVar, java.util.Map<java.lang.String, java.lang.String> map, int i3, int i4, java.lang.String str3) {
        a(str2);
        this.n = j2;
        a_();
        this.k = str;
        this.b = j;
        this.s = i;
        this.c = i;
        this.d = i2;
        this.e = ipVar;
        this.f = map;
        this.h = i3;
        this.i = i4;
        this.j = str3;
        this.g = 30000L;
        this.a = new java.util.ArrayList<>();
    }

    @Override // com.flurry.sdk.kp
    public final void a_() {
        super.a_();
        if (this.p != 1) {
            this.g *= 3;
        }
    }

    public final synchronized void c() {
        this.m.c();
    }

    public final void d() {
        java.util.Iterator<com.flurry.sdk.ij> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().l = this;
        }
    }

    public static class a implements com.flurry.sdk.kz<com.flurry.sdk.ii> {
        com.flurry.sdk.ky<com.flurry.sdk.ij> a = new com.flurry.sdk.ky<>(new com.flurry.sdk.ij.a());

        @Override // com.flurry.sdk.kz
        public final /* synthetic */ void a(java.io.OutputStream outputStream, com.flurry.sdk.ii iiVar) throws java.io.IOException {
            com.flurry.sdk.ii iiVar2 = iiVar;
            if (outputStream == null || iiVar2 == null) {
                return;
            }
            java.io.DataOutputStream dataOutputStream = new java.io.DataOutputStream(outputStream) { // from class: com.flurry.sdk.ii.a.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            if (iiVar2.k != null) {
                dataOutputStream.writeUTF(iiVar2.k);
            } else {
                dataOutputStream.writeUTF("");
            }
            if (iiVar2.r != null) {
                dataOutputStream.writeUTF(iiVar2.r);
            } else {
                dataOutputStream.writeUTF("");
            }
            dataOutputStream.writeLong(iiVar2.n);
            dataOutputStream.writeInt(iiVar2.p);
            dataOutputStream.writeLong(iiVar2.b);
            dataOutputStream.writeInt(iiVar2.c);
            dataOutputStream.writeInt(iiVar2.d);
            dataOutputStream.writeInt(iiVar2.e.e);
            java.util.Map map = iiVar2.f;
            if (map != null) {
                dataOutputStream.writeInt(iiVar2.f.size());
                for (java.lang.String str : iiVar2.f.keySet()) {
                    dataOutputStream.writeUTF(str);
                    dataOutputStream.writeUTF((java.lang.String) map.get(str));
                }
            } else {
                dataOutputStream.writeInt(0);
            }
            dataOutputStream.writeLong(iiVar2.g);
            dataOutputStream.writeInt(iiVar2.h);
            dataOutputStream.writeInt(iiVar2.i);
            if (iiVar2.j != null) {
                dataOutputStream.writeUTF(iiVar2.j);
            } else {
                dataOutputStream.writeUTF("");
            }
            dataOutputStream.writeBoolean(iiVar2.l);
            dataOutputStream.flush();
            this.a.a(outputStream, (java.util.List<com.flurry.sdk.ij>) iiVar2.a);
        }

        @Override // com.flurry.sdk.kz
        public final /* synthetic */ com.flurry.sdk.ii a(java.io.InputStream inputStream) throws java.io.IOException {
            if (inputStream == null) {
                return null;
            }
            java.io.DataInputStream dataInputStream = new java.io.DataInputStream(inputStream) { // from class: com.flurry.sdk.ii.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            java.lang.String readUTF = dataInputStream.readUTF();
            if (readUTF.equals("")) {
                readUTF = null;
            }
            java.lang.String readUTF2 = dataInputStream.readUTF();
            long readLong = dataInputStream.readLong();
            int readInt = dataInputStream.readInt();
            long readLong2 = dataInputStream.readLong();
            int readInt2 = dataInputStream.readInt();
            int readInt3 = dataInputStream.readInt();
            com.flurry.sdk.ip a = com.flurry.sdk.ip.a(dataInputStream.readInt());
            java.util.HashMap hashMap = null;
            int readInt4 = dataInputStream.readInt();
            if (readInt4 != 0) {
                hashMap = new java.util.HashMap();
                for (int i = 0; i < readInt4; i++) {
                    hashMap.put(dataInputStream.readUTF(), dataInputStream.readUTF());
                }
            }
            long readLong3 = dataInputStream.readLong();
            int readInt5 = dataInputStream.readInt();
            int readInt6 = dataInputStream.readInt();
            java.lang.String readUTF3 = dataInputStream.readUTF();
            if (readUTF3.equals("")) {
                readUTF3 = null;
            }
            boolean readBoolean = dataInputStream.readBoolean();
            com.flurry.sdk.ii iiVar = new com.flurry.sdk.ii(readUTF, readLong2, readUTF2, readLong, readInt2, readInt3, a, hashMap, readInt5, readInt6, readUTF3);
            iiVar.g = readLong3;
            iiVar.l = readBoolean;
            iiVar.p = readInt;
            iiVar.a = (java.util.ArrayList) this.a.a(inputStream);
            iiVar.d();
            return iiVar;
        }
    }
}
