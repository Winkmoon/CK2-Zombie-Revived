package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class ks {
    private static final java.lang.String c = com.flurry.sdk.ks.class.getSimpleName();
    java.lang.String a;
    byte[] b;

    /* synthetic */ ks(byte b) {
        this();
    }

    public static class a implements com.flurry.sdk.kz<com.flurry.sdk.ks> {
        @Override // com.flurry.sdk.kz
        public final /* synthetic */ void a(java.io.OutputStream outputStream, com.flurry.sdk.ks ksVar) throws java.io.IOException {
            com.flurry.sdk.ks ksVar2 = ksVar;
            if (outputStream == null || ksVar2 == null) {
                return;
            }
            java.io.DataOutputStream dataOutputStream = new java.io.DataOutputStream(outputStream) { // from class: com.flurry.sdk.ks.a.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            dataOutputStream.writeShort(ksVar2.b.length);
            dataOutputStream.write(ksVar2.b);
            dataOutputStream.writeShort(0);
            dataOutputStream.flush();
        }

        @Override // com.flurry.sdk.kz
        public final /* synthetic */ com.flurry.sdk.ks a(java.io.InputStream inputStream) throws java.io.IOException {
            if (inputStream == null) {
                return null;
            }
            java.io.DataInputStream dataInputStream = new java.io.DataInputStream(inputStream) { // from class: com.flurry.sdk.ks.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            com.flurry.sdk.ks ksVar = new com.flurry.sdk.ks((byte) 0);
            int readShort = dataInputStream.readShort();
            if (readShort == 0) {
                return null;
            }
            ksVar.b = new byte[readShort];
            dataInputStream.readFully(ksVar.b);
            dataInputStream.readUnsignedShort();
            return ksVar;
        }
    }

    private ks() {
        this.a = null;
        this.b = null;
    }

    public ks(byte[] bArr) {
        this.a = null;
        this.b = null;
        this.a = java.util.UUID.randomUUID().toString();
        this.b = bArr;
    }

    public static java.lang.String a(java.lang.String str) {
        return ".yflurrydatasenderblock." + str;
    }
}
