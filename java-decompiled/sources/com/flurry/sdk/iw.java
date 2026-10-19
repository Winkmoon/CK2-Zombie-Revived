package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class iw {
    private static final java.lang.String b = com.flurry.sdk.iw.class.getSimpleName();
    public byte[] a;

    public iw(java.lang.String str, java.lang.String str2, boolean z, boolean z2, long j, long j2, java.util.List<com.flurry.sdk.iy> list, java.util.Map<com.flurry.sdk.jm, byte[]> map, java.util.Map<java.lang.String, java.util.List<java.lang.String>> map2, java.util.Map<java.lang.String, java.util.List<java.lang.String>> map3, java.util.Map<java.lang.String, java.util.Map<java.lang.String, java.lang.String>> map4, long j3) throws java.io.IOException {
        java.io.DataOutputStream dataOutputStream;
        byte[] bArr;
        this.a = null;
        java.io.DataOutputStream dataOutputStream2 = null;
        try {
            com.flurry.sdk.jx jxVar = new com.flurry.sdk.jx();
            java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
            java.security.DigestOutputStream digestOutputStream = new java.security.DigestOutputStream(byteArrayOutputStream, jxVar);
            dataOutputStream = new java.io.DataOutputStream(digestOutputStream);
            try {
                dataOutputStream.writeShort(30);
                dataOutputStream.writeShort(0);
                dataOutputStream.writeLong(0L);
                dataOutputStream.writeShort(0);
                dataOutputStream.writeShort(3);
                dataOutputStream.writeShort(com.flurry.sdk.js.a());
                dataOutputStream.writeLong(j3);
                dataOutputStream.writeUTF(str);
                dataOutputStream.writeUTF(str2);
                dataOutputStream.writeShort(map.size());
                for (java.util.Map.Entry<com.flurry.sdk.jm, byte[]> entry : map.entrySet()) {
                    dataOutputStream.writeShort(entry.getKey().c);
                    byte[] value = entry.getValue();
                    dataOutputStream.writeShort(value.length);
                    dataOutputStream.write(value);
                }
                dataOutputStream.writeByte(0);
                dataOutputStream.writeBoolean(z);
                dataOutputStream.writeBoolean(z2);
                dataOutputStream.writeLong(j);
                dataOutputStream.writeLong(j2);
                dataOutputStream.writeShort(6);
                dataOutputStream.writeUTF("device.model");
                dataOutputStream.writeUTF(android.os.Build.MODEL);
                dataOutputStream.writeByte(0);
                dataOutputStream.writeUTF("build.brand");
                dataOutputStream.writeUTF(android.os.Build.BRAND);
                dataOutputStream.writeByte(0);
                dataOutputStream.writeUTF("build.id");
                dataOutputStream.writeUTF(android.os.Build.ID);
                dataOutputStream.writeByte(0);
                dataOutputStream.writeUTF("version.release");
                dataOutputStream.writeUTF(android.os.Build.VERSION.RELEASE);
                dataOutputStream.writeByte(0);
                dataOutputStream.writeUTF("build.device");
                dataOutputStream.writeUTF(android.os.Build.DEVICE);
                dataOutputStream.writeByte(0);
                dataOutputStream.writeUTF("build.product");
                dataOutputStream.writeUTF(android.os.Build.PRODUCT);
                dataOutputStream.writeByte(0);
                dataOutputStream.writeShort(map2 != null ? map2.keySet().size() : 0);
                if (map2 != null) {
                    com.flurry.sdk.kf.a(3, b, "sending referrer values because it exists");
                    for (java.util.Map.Entry<java.lang.String, java.util.List<java.lang.String>> entry2 : map2.entrySet()) {
                        com.flurry.sdk.kf.a(3, b, "Referrer Entry:  " + entry2.getKey() + "=" + entry2.getValue());
                        dataOutputStream.writeUTF(entry2.getKey());
                        com.flurry.sdk.kf.a(3, b, "referrer key is :" + entry2.getKey());
                        dataOutputStream.writeShort(entry2.getValue().size());
                        for (java.lang.String str3 : entry2.getValue()) {
                            dataOutputStream.writeUTF(str3);
                            com.flurry.sdk.kf.a(3, b, "referrer value is :" + str3);
                        }
                    }
                }
                dataOutputStream.writeBoolean(false);
                int size = map3 != null ? map3.keySet().size() : 0;
                com.flurry.sdk.kf.a(3, b, "optionsMapSize is:  " + size);
                dataOutputStream.writeShort(size);
                if (map3 != null) {
                    com.flurry.sdk.kf.a(3, b, "sending launch options");
                    for (java.util.Map.Entry<java.lang.String, java.util.List<java.lang.String>> entry3 : map3.entrySet()) {
                        com.flurry.sdk.kf.a(3, b, "Launch Options Key:  " + entry3.getKey());
                        dataOutputStream.writeUTF(entry3.getKey());
                        dataOutputStream.writeShort(entry3.getValue().size());
                        for (java.lang.String str4 : entry3.getValue()) {
                            dataOutputStream.writeUTF(str4);
                            com.flurry.sdk.kf.a(3, b, "Launch Options value is :" + str4);
                        }
                    }
                }
                int size2 = map4 != null ? map4.keySet().size() : 0;
                com.flurry.sdk.kf.a(3, b, "numOriginAttributions is:  " + size);
                dataOutputStream.writeShort(size2);
                if (map4 != null) {
                    for (java.util.Map.Entry<java.lang.String, java.util.Map<java.lang.String, java.lang.String>> entry4 : map4.entrySet()) {
                        com.flurry.sdk.kf.a(3, b, "Origin Atttribute Key:  " + entry4.getKey());
                        dataOutputStream.writeUTF(entry4.getKey());
                        dataOutputStream.writeShort(entry4.getValue().size());
                        com.flurry.sdk.kf.a(3, b, "Origin Attribute Map Size for " + entry4.getKey() + ":  " + entry4.getValue().size());
                        for (java.util.Map.Entry<java.lang.String, java.lang.String> entry5 : entry4.getValue().entrySet()) {
                            com.flurry.sdk.kf.a(3, b, "Origin Atttribute for " + entry4.getKey() + ":  " + entry5.getKey() + ":" + entry5.getValue());
                            dataOutputStream.writeUTF(entry5.getKey() != null ? entry5.getKey() : "");
                            dataOutputStream.writeUTF(entry5.getValue() != null ? entry5.getValue() : "");
                        }
                    }
                }
                dataOutputStream.writeUTF(com.flurry.sdk.lo.a(com.flurry.sdk.jr.a().a));
                int size3 = list.size();
                dataOutputStream.writeShort(size3);
                for (int i = 0; i < size3; i++) {
                    dataOutputStream.write(list.get(i).a);
                }
                dataOutputStream.writeShort(0);
                digestOutputStream.on(false);
                dataOutputStream.write(jxVar.a());
                dataOutputStream.close();
                bArr = byteArrayOutputStream.toByteArray();
                com.flurry.sdk.lr.a(dataOutputStream);
            } catch (java.lang.Throwable th) {
                th = th;
                dataOutputStream2 = dataOutputStream;
                try {
                    com.flurry.sdk.kf.a(6, b, "Error when generating report", th);
                    com.flurry.sdk.lr.a(dataOutputStream2);
                    bArr = null;
                    this.a = bArr;
                } catch (java.lang.Throwable th2) {
                    th = th2;
                    dataOutputStream = dataOutputStream2;
                    com.flurry.sdk.lr.a(dataOutputStream);
                    throw th;
                }
            }
        } catch (java.lang.Throwable th3) {
            th = th3;
            dataOutputStream = null;
        }
        this.a = bArr;
    }
}
