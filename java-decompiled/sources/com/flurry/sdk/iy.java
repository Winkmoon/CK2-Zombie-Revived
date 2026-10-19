package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class iy {
    private static final java.lang.String b = com.flurry.sdk.iy.class.getSimpleName();
    byte[] a;

    /* synthetic */ iy(byte b2) {
        this();
    }

    public static class a implements com.flurry.sdk.kz<com.flurry.sdk.iy> {
        @Override // com.flurry.sdk.kz
        public final /* synthetic */ void a(java.io.OutputStream outputStream, com.flurry.sdk.iy iyVar) throws java.io.IOException {
            com.flurry.sdk.iy iyVar2 = iyVar;
            if (outputStream == null || iyVar2 == null) {
                return;
            }
            java.io.DataOutputStream dataOutputStream = new java.io.DataOutputStream(outputStream) { // from class: com.flurry.sdk.iy.a.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            int i = 0;
            if (iyVar2.a != null) {
                i = iyVar2.a.length;
            }
            dataOutputStream.writeShort(i);
            if (i > 0) {
                dataOutputStream.write(iyVar2.a);
            }
            dataOutputStream.flush();
        }

        @Override // com.flurry.sdk.kz
        public final /* synthetic */ com.flurry.sdk.iy a(java.io.InputStream inputStream) throws java.io.IOException {
            if (inputStream == null) {
                return null;
            }
            java.io.DataInputStream dataInputStream = new java.io.DataInputStream(inputStream) { // from class: com.flurry.sdk.iy.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            com.flurry.sdk.iy iyVar = new com.flurry.sdk.iy((byte) 0);
            int readUnsignedShort = dataInputStream.readUnsignedShort();
            if (readUnsignedShort <= 0) {
                return iyVar;
            }
            byte[] bArr = new byte[readUnsignedShort];
            dataInputStream.readFully(bArr);
            iyVar.a = bArr;
            return iyVar;
        }
    }

    private iy() {
    }

    public iy(byte[] bArr) {
        this.a = bArr;
    }

    public iy(com.flurry.sdk.iz izVar) throws java.io.IOException {
        java.io.DataOutputStream dataOutputStream;
        int i;
        java.io.DataOutputStream dataOutputStream2 = null;
        try {
            java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
            dataOutputStream = new java.io.DataOutputStream(byteArrayOutputStream);
            try {
                dataOutputStream.writeShort(7);
                dataOutputStream.writeUTF(izVar.a);
                dataOutputStream.writeLong(izVar.b);
                dataOutputStream.writeLong(izVar.c);
                dataOutputStream.writeLong(izVar.d);
                dataOutputStream.writeBoolean(true);
                dataOutputStream.writeByte(-1);
                if (android.text.TextUtils.isEmpty(izVar.f)) {
                    dataOutputStream.writeBoolean(false);
                } else {
                    dataOutputStream.writeBoolean(true);
                    dataOutputStream.writeUTF(izVar.f);
                }
                if (android.text.TextUtils.isEmpty(izVar.g)) {
                    dataOutputStream.writeBoolean(false);
                } else {
                    dataOutputStream.writeBoolean(true);
                    dataOutputStream.writeUTF(izVar.g);
                }
                java.util.Map<java.lang.String, java.lang.String> map = izVar.h;
                if (map == null) {
                    dataOutputStream.writeShort(0);
                } else {
                    dataOutputStream.writeShort(map.size());
                    for (java.util.Map.Entry<java.lang.String, java.lang.String> entry : map.entrySet()) {
                        dataOutputStream.writeUTF(entry.getKey());
                        dataOutputStream.writeUTF(entry.getValue());
                    }
                }
                java.util.Map<java.lang.String, java.lang.String> map2 = izVar.e;
                if (map2 == null) {
                    dataOutputStream.writeShort(0);
                } else {
                    dataOutputStream.writeShort(map2.size());
                    for (java.util.Map.Entry<java.lang.String, java.lang.String> entry2 : map2.entrySet()) {
                        dataOutputStream.writeUTF(entry2.getKey());
                        dataOutputStream.writeUTF(entry2.getValue());
                        dataOutputStream.writeByte(0);
                    }
                }
                dataOutputStream.writeUTF(izVar.i);
                dataOutputStream.writeUTF(izVar.j);
                dataOutputStream.writeByte(izVar.k);
                dataOutputStream.writeByte(izVar.l);
                dataOutputStream.writeUTF(izVar.m);
                if (izVar.n == null) {
                    dataOutputStream.writeBoolean(false);
                } else {
                    dataOutputStream.writeBoolean(true);
                    dataOutputStream.writeDouble(com.flurry.sdk.lr.a(izVar.n.getLatitude()));
                    dataOutputStream.writeDouble(com.flurry.sdk.lr.a(izVar.n.getLongitude()));
                    dataOutputStream.writeFloat(izVar.n.getAccuracy());
                }
                dataOutputStream.writeInt(izVar.o);
                dataOutputStream.writeByte(-1);
                dataOutputStream.writeByte(-1);
                dataOutputStream.writeByte(izVar.p);
                if (izVar.q == null) {
                    dataOutputStream.writeBoolean(false);
                } else {
                    dataOutputStream.writeBoolean(true);
                    dataOutputStream.writeLong(izVar.q.longValue());
                }
                java.util.Map<java.lang.String, com.flurry.sdk.iu> map3 = izVar.r;
                if (map3 == null) {
                    dataOutputStream.writeShort(0);
                } else {
                    dataOutputStream.writeShort(map3.size());
                    for (java.util.Map.Entry<java.lang.String, com.flurry.sdk.iu> entry3 : map3.entrySet()) {
                        dataOutputStream.writeUTF(entry3.getKey());
                        dataOutputStream.writeInt(entry3.getValue().a);
                    }
                }
                java.util.List<com.flurry.sdk.iv> list = izVar.s;
                if (list == null) {
                    dataOutputStream.writeShort(0);
                } else {
                    dataOutputStream.writeShort(list.size());
                    java.util.Iterator<com.flurry.sdk.iv> it = list.iterator();
                    while (it.hasNext()) {
                        dataOutputStream.write(it.next().b());
                    }
                }
                dataOutputStream.writeBoolean(izVar.t);
                java.util.List<com.flurry.sdk.it> list2 = izVar.v;
                if (list2 != null) {
                    int i2 = 0;
                    int i3 = 0;
                    int i4 = 0;
                    while (true) {
                        if (i2 >= list2.size()) {
                            i = i3;
                            break;
                        }
                        i4 += list2.get(i2).a().length;
                        if (i4 > 160000) {
                            com.flurry.sdk.kf.a(5, b, "Error Log size exceeded. No more event details logged.");
                            i = i3;
                            break;
                        } else {
                            i3++;
                            i2++;
                        }
                    }
                } else {
                    i = 0;
                }
                dataOutputStream.writeInt(izVar.u);
                dataOutputStream.writeShort(i);
                for (int i5 = 0; i5 < i; i5++) {
                    dataOutputStream.write(list2.get(i5).a());
                }
                dataOutputStream.writeInt(-1);
                dataOutputStream.writeShort(0);
                dataOutputStream.writeShort(0);
                dataOutputStream.writeShort(0);
                this.a = byteArrayOutputStream.toByteArray();
                com.flurry.sdk.lr.a(dataOutputStream);
            } catch (java.io.IOException e) {
                e = e;
                dataOutputStream2 = dataOutputStream;
                try {
                    com.flurry.sdk.kf.a(6, b, "", e);
                    throw e;
                } catch (java.lang.Throwable th) {
                    th = th;
                    dataOutputStream = dataOutputStream2;
                    com.flurry.sdk.lr.a(dataOutputStream);
                    throw th;
                }
            } catch (java.lang.Throwable th2) {
                th = th2;
                com.flurry.sdk.lr.a(dataOutputStream);
                throw th;
            }
        } catch (java.io.IOException e2) {
            e = e2;
        } catch (java.lang.Throwable th3) {
            th = th3;
            dataOutputStream = null;
        }
    }
}
