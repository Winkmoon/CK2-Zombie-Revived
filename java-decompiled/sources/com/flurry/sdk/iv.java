package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class iv {
    public java.lang.String a;
    public boolean b;
    public boolean c;
    public long d;
    private final java.util.Map<java.lang.String, java.lang.String> e = new java.util.HashMap();
    private int f;
    private long g;

    public iv(int i, java.lang.String str, java.util.Map<java.lang.String, java.lang.String> map, long j, boolean z) {
        this.f = i;
        this.a = str;
        if (map != null) {
            this.e.putAll(map);
        }
        this.g = j;
        this.b = z;
        if (this.b) {
            this.c = false;
        } else {
            this.c = true;
        }
    }

    public final void a(long j) {
        this.c = true;
        this.d = j - this.g;
        com.flurry.sdk.kf.a(3, "FlurryAgent", "Ended event '" + this.a + "' (" + this.g + ") after " + this.d + "ms");
    }

    public final synchronized void a(java.util.Map<java.lang.String, java.lang.String> map) {
        if (map != null) {
            this.e.putAll(map);
        }
    }

    public final synchronized java.util.Map<java.lang.String, java.lang.String> a() {
        return new java.util.HashMap(this.e);
    }

    public final synchronized void b(java.util.Map<java.lang.String, java.lang.String> map) {
        this.e.clear();
        this.e.putAll(map);
    }

    public final synchronized byte[] b() {
        java.io.DataOutputStream dataOutputStream;
        java.lang.Throwable th;
        java.io.DataOutputStream dataOutputStream2;
        byte[] bArr;
        java.io.ByteArrayOutputStream byteArrayOutputStream;
        try {
            byteArrayOutputStream = new java.io.ByteArrayOutputStream();
            dataOutputStream = new java.io.DataOutputStream(byteArrayOutputStream);
        } catch (java.io.IOException e) {
            dataOutputStream2 = null;
        } catch (java.lang.Throwable th2) {
            dataOutputStream = null;
            th = th2;
        }
        try {
            dataOutputStream.writeShort(this.f);
            dataOutputStream.writeUTF(this.a);
            dataOutputStream.writeShort(this.e.size());
            for (java.util.Map.Entry<java.lang.String, java.lang.String> entry : this.e.entrySet()) {
                dataOutputStream.writeUTF(com.flurry.sdk.lr.b(entry.getKey()));
                dataOutputStream.writeUTF(com.flurry.sdk.lr.b(entry.getValue()));
            }
            dataOutputStream.writeLong(this.g);
            dataOutputStream.writeLong(this.d);
            dataOutputStream.flush();
            bArr = byteArrayOutputStream.toByteArray();
            com.flurry.sdk.lr.a(dataOutputStream);
        } catch (java.io.IOException e2) {
            dataOutputStream2 = dataOutputStream;
            try {
                bArr = new byte[0];
                com.flurry.sdk.lr.a(dataOutputStream2);
                return bArr;
            } catch (java.lang.Throwable th3) {
                th = th3;
                dataOutputStream = dataOutputStream2;
                com.flurry.sdk.lr.a(dataOutputStream);
                throw th;
            }
        } catch (java.lang.Throwable th4) {
            th = th4;
            com.flurry.sdk.lr.a(dataOutputStream);
            throw th;
        }
        return bArr;
    }
}
