package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class it {
    public java.lang.String a;
    private int b;
    private long c;
    private java.lang.String d;
    private java.lang.String e;
    private java.lang.Throwable f;

    public it(int i, long j, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.Throwable th) {
        this.b = i;
        this.c = j;
        this.a = str;
        this.d = str2;
        this.e = str3;
        this.f = th;
    }

    public final byte[] a() {
        java.lang.Throwable th;
        java.io.DataOutputStream dataOutputStream;
        byte[] bArr;
        try {
            try {
                java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
                dataOutputStream = new java.io.DataOutputStream(byteArrayOutputStream);
                try {
                    dataOutputStream.writeShort(this.b);
                    dataOutputStream.writeLong(this.c);
                    dataOutputStream.writeUTF(this.a);
                    dataOutputStream.writeUTF(this.d);
                    dataOutputStream.writeUTF(this.e);
                    if (this.f != null) {
                        if ("uncaught".equals(this.a)) {
                            dataOutputStream.writeByte(3);
                        } else {
                            dataOutputStream.writeByte(2);
                        }
                        dataOutputStream.writeByte(2);
                        java.lang.StringBuilder sb = new java.lang.StringBuilder("");
                        java.lang.String property = java.lang.System.getProperty("line.separator");
                        for (java.lang.StackTraceElement stackTraceElement : this.f.getStackTrace()) {
                            sb.append(stackTraceElement);
                            sb.append(property);
                        }
                        if (this.f.getCause() != null) {
                            sb.append(property);
                            sb.append("Caused by: ");
                            for (java.lang.StackTraceElement stackTraceElement2 : this.f.getCause().getStackTrace()) {
                                sb.append(stackTraceElement2);
                                sb.append(property);
                            }
                        }
                        byte[] bytes = sb.toString().getBytes();
                        dataOutputStream.writeInt(bytes.length);
                        dataOutputStream.write(bytes);
                    } else {
                        dataOutputStream.writeByte(1);
                        dataOutputStream.writeByte(0);
                    }
                    dataOutputStream.flush();
                    bArr = byteArrayOutputStream.toByteArray();
                    com.flurry.sdk.lr.a(dataOutputStream);
                } catch (java.io.IOException e) {
                    bArr = new byte[0];
                    com.flurry.sdk.lr.a(dataOutputStream);
                    return bArr;
                }
            } catch (java.lang.Throwable th2) {
                th = th2;
                com.flurry.sdk.lr.a((java.io.Closeable) null);
                throw th;
            }
        } catch (java.io.IOException e2) {
            dataOutputStream = null;
        } catch (java.lang.Throwable th3) {
            th = th3;
            com.flurry.sdk.lr.a((java.io.Closeable) null);
            throw th;
        }
        return bArr;
    }
}
