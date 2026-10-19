package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class in {
    public static final java.lang.String b = com.flurry.sdk.in.class.getName();
    private static com.flurry.sdk.in c = null;
    public java.lang.String a;
    private com.flurry.sdk.jy<java.util.List<com.flurry.sdk.io>> d;
    private java.util.List<com.flurry.sdk.io> e;
    private boolean f;

    private in() {
    }

    public static synchronized com.flurry.sdk.in a() {
        com.flurry.sdk.in inVar;
        synchronized (com.flurry.sdk.in.class) {
            if (c == null) {
                com.flurry.sdk.in inVar2 = new com.flurry.sdk.in();
                c = inVar2;
                inVar2.d = new com.flurry.sdk.jy<>(com.flurry.sdk.jr.a().a.getFileStreamPath(".yflurrypulselogging." + java.lang.Long.toString(com.flurry.sdk.lr.i(com.flurry.sdk.jr.a().d), 16)), ".yflurrypulselogging.", 1, new com.flurry.sdk.lc<java.util.List<com.flurry.sdk.io>>() { // from class: com.flurry.sdk.in.1
                    @Override // com.flurry.sdk.lc
                    public final com.flurry.sdk.kz<java.util.List<com.flurry.sdk.io>> a(int i) {
                        return new com.flurry.sdk.ky(new com.flurry.sdk.io.a());
                    }
                });
                inVar2.f = ((java.lang.Boolean) com.flurry.sdk.li.a().a("UseHttps")).booleanValue();
                com.flurry.sdk.kf.a(4, b, "initSettings, UseHttps = " + inVar2.f);
                inVar2.e = inVar2.d.a();
                if (inVar2.e == null) {
                    inVar2.e = new java.util.ArrayList();
                }
            }
            inVar = c;
        }
        return inVar;
    }

    public final synchronized void a(com.flurry.sdk.im imVar) {
        try {
            this.e.add(new com.flurry.sdk.io(imVar.d()));
            com.flurry.sdk.kf.a(4, b, "Saving persistent Pulse logging data.");
            this.d.a(this.e);
        } catch (java.io.IOException e) {
            com.flurry.sdk.kf.a(6, b, "Error when generating pulse log report in addReport part");
        }
    }

    private byte[] d() throws java.io.IOException {
        java.io.DataOutputStream dataOutputStream;
        java.io.ByteArrayOutputStream byteArrayOutputStream;
        byte[] byteArray;
        java.io.DataOutputStream dataOutputStream2 = null;
        try {
            byteArrayOutputStream = new java.io.ByteArrayOutputStream();
            dataOutputStream = new java.io.DataOutputStream(byteArrayOutputStream);
        } catch (java.io.IOException e) {
            e = e;
        } catch (java.lang.Throwable th) {
            th = th;
            dataOutputStream = null;
        }
        try {
            if (this.e == null || this.e.isEmpty()) {
                byteArray = byteArrayOutputStream.toByteArray();
                com.flurry.sdk.lr.a(dataOutputStream);
            } else {
                dataOutputStream.writeShort(1);
                dataOutputStream.writeShort(1);
                dataOutputStream.writeLong(java.lang.System.currentTimeMillis());
                dataOutputStream.writeUTF(com.flurry.sdk.jr.a().d);
                dataOutputStream.writeUTF(com.flurry.sdk.jn.a().i());
                dataOutputStream.writeShort(com.flurry.sdk.js.a());
                dataOutputStream.writeShort(3);
                com.flurry.sdk.jn.a();
                dataOutputStream.writeUTF(com.flurry.sdk.jn.d());
                dataOutputStream.writeBoolean(com.flurry.sdk.je.a().d());
                java.util.ArrayList<com.flurry.sdk.ht> arrayList = new java.util.ArrayList();
                for (java.util.Map.Entry entry : java.util.Collections.unmodifiableMap(com.flurry.sdk.je.a().a).entrySet()) {
                    com.flurry.sdk.ht htVar = new com.flurry.sdk.ht();
                    htVar.a = ((com.flurry.sdk.jm) entry.getKey()).c;
                    if (((com.flurry.sdk.jm) entry.getKey()).d) {
                        htVar.b = new java.lang.String((byte[]) entry.getValue());
                    } else {
                        htVar.b = com.flurry.sdk.lr.b((byte[]) entry.getValue());
                    }
                    arrayList.add(htVar);
                }
                dataOutputStream.writeShort(arrayList.size());
                for (com.flurry.sdk.ht htVar2 : arrayList) {
                    dataOutputStream.writeShort(htVar2.a);
                    byte[] bytes = htVar2.b.getBytes();
                    dataOutputStream.writeShort(bytes.length);
                    dataOutputStream.write(bytes);
                }
                dataOutputStream.writeShort(6);
                dataOutputStream.writeShort(com.flurry.sdk.ig.MODEL.h);
                dataOutputStream.writeUTF(android.os.Build.MODEL);
                dataOutputStream.writeShort(com.flurry.sdk.ig.BRAND.h);
                dataOutputStream.writeUTF(android.os.Build.BOARD);
                dataOutputStream.writeShort(com.flurry.sdk.ig.ID.h);
                dataOutputStream.writeUTF(android.os.Build.ID);
                dataOutputStream.writeShort(com.flurry.sdk.ig.DEVICE.h);
                dataOutputStream.writeUTF(android.os.Build.DEVICE);
                dataOutputStream.writeShort(com.flurry.sdk.ig.PRODUCT.h);
                dataOutputStream.writeUTF(android.os.Build.PRODUCT);
                dataOutputStream.writeShort(com.flurry.sdk.ig.VERSION_RELEASE.h);
                dataOutputStream.writeUTF(android.os.Build.VERSION.RELEASE);
                dataOutputStream.writeShort(this.e.size());
                java.util.Iterator<com.flurry.sdk.io> it = this.e.iterator();
                while (it.hasNext()) {
                    dataOutputStream.write(it.next().a);
                }
                byte[] byteArray2 = byteArrayOutputStream.toByteArray();
                java.util.zip.CRC32 crc32 = new java.util.zip.CRC32();
                crc32.update(byteArray2);
                dataOutputStream.writeInt((int) crc32.getValue());
                byteArray = byteArrayOutputStream.toByteArray();
                com.flurry.sdk.lr.a(dataOutputStream);
            }
            return byteArray;
        } catch (java.io.IOException e2) {
            e = e2;
            dataOutputStream2 = dataOutputStream;
            try {
                com.flurry.sdk.kf.a(6, b, "Error when generating report", e);
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

    /* JADX WARN: Multi-variable type inference failed */
    private synchronized void a(byte[] bArr) {
        java.lang.String str;
        if (!com.flurry.sdk.jk.a().b) {
            com.flurry.sdk.kf.a(5, b, "Reports were not sent! No Internet connection!");
        } else if (bArr == 0 || bArr.length == 0) {
            com.flurry.sdk.kf.a(3, b, "No report need be sent");
        } else {
            if (this.a != null) {
                str = this.a;
            } else {
                str = "https://data.flurry.com/pcr.do";
            }
            com.flurry.sdk.kf.a(4, b, "PulseLoggingManager: start upload data " + java.util.Arrays.toString(bArr) + " to " + str);
            com.flurry.sdk.kl klVar = new com.flurry.sdk.kl();
            klVar.f = str;
            klVar.w = 100000;
            klVar.g = com.flurry.sdk.kn.a.kPost;
            klVar.j = true;
            klVar.a("Content-Type", "application/octet-stream");
            klVar.c = new com.flurry.sdk.kv();
            klVar.b = bArr;
            klVar.a = new com.flurry.sdk.kl.a<byte[], java.lang.Void>() { // from class: com.flurry.sdk.in.2
                @Override // com.flurry.sdk.kl.a
                public final /* synthetic */ void a(com.flurry.sdk.kl<byte[], java.lang.Void> klVar2, java.lang.Void r7) {
                    int i = klVar2.p;
                    if (i <= 0) {
                        com.flurry.sdk.kf.e(com.flurry.sdk.in.b, "Server Error: " + i);
                        return;
                    }
                    if (i < 200 || i >= 300) {
                        com.flurry.sdk.kf.a(3, com.flurry.sdk.in.b, "Pulse logging report sent unsuccessfully, HTTP response:" + i);
                        return;
                    }
                    com.flurry.sdk.kf.a(3, com.flurry.sdk.in.b, "Pulse logging report sent successfully HTTP response:" + i);
                    com.flurry.sdk.in.this.e.clear();
                    com.flurry.sdk.in.this.d.a(com.flurry.sdk.in.this.e);
                }
            };
            com.flurry.sdk.jp.a().a((java.lang.Object) this, (com.flurry.sdk.in) klVar);
        }
    }

    public final synchronized void b() {
        try {
            a(d());
        } catch (java.io.IOException e) {
            com.flurry.sdk.kf.a(6, b, "Report not send due to exception in generate data");
        }
    }
}
