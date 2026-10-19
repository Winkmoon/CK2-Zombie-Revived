package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class kt {
    java.lang.String b;
    java.util.LinkedHashMap<java.lang.String, java.util.List<java.lang.String>> c;
    private static final java.lang.String d = com.flurry.sdk.kt.class.getSimpleName();
    public static final java.lang.Integer a = 50;

    public kt(java.lang.String str) {
        this.b = str + "Main";
        b(this.b);
    }

    private void b(java.lang.String str) {
        this.c = new java.util.LinkedHashMap<>();
        java.util.ArrayList<java.lang.String> arrayList = new java.util.ArrayList();
        if (i(str)) {
            java.util.List<java.lang.String> j = j(str);
            if (j != null && j.size() > 0) {
                arrayList.addAll(j);
                java.util.Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    c((java.lang.String) it.next());
                }
            }
            h(str);
        } else {
            java.util.List list = (java.util.List) new com.flurry.sdk.jy(com.flurry.sdk.jr.a().a.getFileStreamPath(d(this.b)), str, 1, new com.flurry.sdk.lc<java.util.List<com.flurry.sdk.ku>>() { // from class: com.flurry.sdk.kt.1
                @Override // com.flurry.sdk.lc
                public final com.flurry.sdk.kz<java.util.List<com.flurry.sdk.ku>> a(int i) {
                    return new com.flurry.sdk.ky(new com.flurry.sdk.ku.a());
                }
            }).a();
            if (list == null) {
                com.flurry.sdk.kf.c(d, "New main file also not found. returning..");
                return;
            } else {
                java.util.Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(((com.flurry.sdk.ku) it2.next()).a);
                }
            }
        }
        for (java.lang.String str2 : arrayList) {
            this.c.put(str2, g(str2));
        }
    }

    private void c(java.lang.String str) {
        java.util.List<java.lang.String> j = j(str);
        if (j == null) {
            com.flurry.sdk.kf.c(d, "No old file to replace");
            return;
        }
        for (java.lang.String str2 : j) {
            byte[] k = k(str2);
            if (k == null) {
                com.flurry.sdk.kf.a(6, d, "File does not exist");
            } else {
                a(str2, k);
                com.flurry.sdk.lr.b();
                com.flurry.sdk.kf.a(5, d, "Deleting  block File for " + str2 + " file name:" + com.flurry.sdk.jr.a().a.getFileStreamPath(".flurrydatasenderblock." + str2));
                java.io.File fileStreamPath = com.flurry.sdk.jr.a().a.getFileStreamPath(".flurrydatasenderblock." + str2);
                if (fileStreamPath.exists()) {
                    com.flurry.sdk.kf.a(5, d, "Found file for " + str2 + ". Deleted - " + fileStreamPath.delete());
                }
            }
        }
        if (j != null) {
            a(str, j, ".YFlurrySenderIndex.info.");
            h(str);
        }
    }

    private static java.lang.String d(java.lang.String str) {
        return ".YFlurrySenderIndex.info." + str;
    }

    private synchronized void a() {
        java.util.LinkedList linkedList = new java.util.LinkedList(this.c.keySet());
        new com.flurry.sdk.jy(com.flurry.sdk.jr.a().a.getFileStreamPath(d(this.b)), ".YFlurrySenderIndex.info.", 1, new com.flurry.sdk.lc<java.util.List<com.flurry.sdk.ku>>() { // from class: com.flurry.sdk.kt.4
            @Override // com.flurry.sdk.lc
            public final com.flurry.sdk.kz<java.util.List<com.flurry.sdk.ku>> a(int i) {
                return new com.flurry.sdk.ky(new com.flurry.sdk.ku.a());
            }
        }).b();
        if (!linkedList.isEmpty()) {
            a(this.b, linkedList, this.b);
        }
    }

    public final synchronized void a(com.flurry.sdk.ks ksVar, java.lang.String str) {
        java.util.List<java.lang.String> list;
        boolean z = false;
        synchronized (this) {
            com.flurry.sdk.kf.a(4, d, "addBlockInfo" + str);
            java.lang.String str2 = ksVar.a;
            java.util.List<java.lang.String> list2 = this.c.get(str);
            if (list2 == null) {
                com.flurry.sdk.kf.a(4, d, "New Data Key");
                list = new java.util.LinkedList();
                z = true;
            } else {
                list = list2;
            }
            list.add(str2);
            if (list.size() > a.intValue()) {
                e(list.get(0));
                list.remove(0);
            }
            this.c.put(str, list);
            a(str, list, ".YFlurrySenderIndex.info.");
            if (z) {
                a();
            }
        }
    }

    private boolean e(java.lang.String str) {
        return new com.flurry.sdk.jy(com.flurry.sdk.jr.a().a.getFileStreamPath(com.flurry.sdk.ks.a(str)), ".yflurrydatasenderblock.", 1, new com.flurry.sdk.lc<com.flurry.sdk.ks>() { // from class: com.flurry.sdk.kt.2
            @Override // com.flurry.sdk.lc
            public final com.flurry.sdk.kz<com.flurry.sdk.ks> a(int i) {
                return new com.flurry.sdk.ks.a();
            }
        }).b();
    }

    public final boolean a(java.lang.String str, java.lang.String str2) {
        java.util.List<java.lang.String> list = this.c.get(str2);
        boolean z = false;
        if (list != null) {
            e(str);
            z = list.remove(str);
        }
        if (list != null && !list.isEmpty()) {
            this.c.put(str2, list);
            a(str2, list, ".YFlurrySenderIndex.info.");
        } else {
            f(str2);
        }
        return z;
    }

    public final java.util.List<java.lang.String> a(java.lang.String str) {
        return this.c.get(str);
    }

    private synchronized boolean f(java.lang.String str) {
        boolean b;
        com.flurry.sdk.lr.b();
        com.flurry.sdk.jy jyVar = new com.flurry.sdk.jy(com.flurry.sdk.jr.a().a.getFileStreamPath(d(str)), ".YFlurrySenderIndex.info.", 1, new com.flurry.sdk.lc<java.util.List<com.flurry.sdk.ku>>() { // from class: com.flurry.sdk.kt.3
            @Override // com.flurry.sdk.lc
            public final com.flurry.sdk.kz<java.util.List<com.flurry.sdk.ku>> a(int i) {
                return new com.flurry.sdk.ky(new com.flurry.sdk.ku.a());
            }
        });
        java.util.List<java.lang.String> a2 = a(str);
        if (a2 != null) {
            com.flurry.sdk.kf.a(4, d, "discardOutdatedBlocksForDataKey: notSentBlocks = " + a2.size());
            for (java.lang.String str2 : a2) {
                e(str2);
                com.flurry.sdk.kf.a(4, d, "discardOutdatedBlocksForDataKey: removed block = " + str2);
            }
        }
        this.c.remove(str);
        b = jyVar.b();
        a();
        return b;
    }

    private synchronized java.util.List<java.lang.String> g(java.lang.String str) {
        java.util.ArrayList arrayList;
        com.flurry.sdk.lr.b();
        com.flurry.sdk.kf.a(5, d, "Reading Index File for " + str + " file name:" + com.flurry.sdk.jr.a().a.getFileStreamPath(d(str)));
        java.util.List list = (java.util.List) new com.flurry.sdk.jy(com.flurry.sdk.jr.a().a.getFileStreamPath(d(str)), ".YFlurrySenderIndex.info.", 1, new com.flurry.sdk.lc<java.util.List<com.flurry.sdk.ku>>() { // from class: com.flurry.sdk.kt.5
            @Override // com.flurry.sdk.lc
            public final com.flurry.sdk.kz<java.util.List<com.flurry.sdk.ku>> a(int i) {
                return new com.flurry.sdk.ky(new com.flurry.sdk.ku.a());
            }
        }).a();
        arrayList = new java.util.ArrayList();
        java.util.Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((com.flurry.sdk.ku) it.next()).a);
        }
        return arrayList;
    }

    private synchronized void a(java.lang.String str, byte[] bArr) {
        com.flurry.sdk.lr.b();
        com.flurry.sdk.kf.a(5, d, "Saving Block File for " + str + " file name:" + com.flurry.sdk.jr.a().a.getFileStreamPath(com.flurry.sdk.ks.a(str)));
        new com.flurry.sdk.jy(com.flurry.sdk.jr.a().a.getFileStreamPath(com.flurry.sdk.ks.a(str)), ".yflurrydatasenderblock.", 1, new com.flurry.sdk.lc<com.flurry.sdk.ks>() { // from class: com.flurry.sdk.kt.6
            @Override // com.flurry.sdk.lc
            public final com.flurry.sdk.kz<com.flurry.sdk.ks> a(int i) {
                return new com.flurry.sdk.ks.a();
            }
        }).a(new com.flurry.sdk.ks(bArr));
    }

    private static void h(java.lang.String str) {
        com.flurry.sdk.lr.b();
        com.flurry.sdk.kf.a(5, d, "Deleting Index File for " + str + " file name:" + com.flurry.sdk.jr.a().a.getFileStreamPath(".FlurrySenderIndex.info." + str));
        java.io.File fileStreamPath = com.flurry.sdk.jr.a().a.getFileStreamPath(".FlurrySenderIndex.info." + str);
        if (fileStreamPath.exists()) {
            com.flurry.sdk.kf.a(5, d, "Found file for " + str + ". Deleted - " + fileStreamPath.delete());
        }
    }

    private synchronized void a(java.lang.String str, java.util.List<java.lang.String> list, java.lang.String str2) {
        com.flurry.sdk.lr.b();
        com.flurry.sdk.kf.a(5, d, "Saving Index File for " + str + " file name:" + com.flurry.sdk.jr.a().a.getFileStreamPath(d(str)));
        com.flurry.sdk.jy jyVar = new com.flurry.sdk.jy(com.flurry.sdk.jr.a().a.getFileStreamPath(d(str)), str2, 1, new com.flurry.sdk.lc<java.util.List<com.flurry.sdk.ku>>() { // from class: com.flurry.sdk.kt.7
            @Override // com.flurry.sdk.lc
            public final com.flurry.sdk.kz<java.util.List<com.flurry.sdk.ku>> a(int i) {
                return new com.flurry.sdk.ky(new com.flurry.sdk.ku.a());
            }
        });
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.Iterator<java.lang.String> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new com.flurry.sdk.ku(it.next()));
        }
        jyVar.a(arrayList);
    }

    private synchronized boolean i(java.lang.String str) {
        java.io.File fileStreamPath;
        fileStreamPath = com.flurry.sdk.jr.a().a.getFileStreamPath(".FlurrySenderIndex.info." + str);
        com.flurry.sdk.kf.a(5, d, "isOldIndexFilePresent: for " + str + fileStreamPath.exists());
        return fileStreamPath.exists();
    }

    private synchronized java.util.List<java.lang.String> j(java.lang.String str) {
        java.util.ArrayList arrayList;
        java.io.DataInputStream dataInputStream;
        java.lang.Throwable th;
        int readUnsignedShort;
        java.util.ArrayList arrayList2 = null;
        synchronized (this) {
            com.flurry.sdk.lr.b();
            com.flurry.sdk.kf.a(5, d, "Reading Index File for " + str + " file name:" + com.flurry.sdk.jr.a().a.getFileStreamPath(".FlurrySenderIndex.info." + str));
            java.io.File fileStreamPath = com.flurry.sdk.jr.a().a.getFileStreamPath(".FlurrySenderIndex.info." + str);
            if (fileStreamPath.exists()) {
                com.flurry.sdk.kf.a(5, d, "Reading Index File for " + str + " Found file.");
                try {
                    dataInputStream = new java.io.DataInputStream(new java.io.FileInputStream(fileStreamPath));
                    try {
                        try {
                            readUnsignedShort = dataInputStream.readUnsignedShort();
                        } catch (java.lang.Throwable th2) {
                            th = th2;
                            com.flurry.sdk.lr.a((java.io.Closeable) dataInputStream);
                            throw th;
                        }
                    } catch (java.lang.Throwable th3) {
                        arrayList = null;
                        th = th3;
                    }
                } catch (java.lang.Throwable th4) {
                    dataInputStream = null;
                    arrayList = null;
                    th = th4;
                }
                if (readUnsignedShort == 0) {
                    com.flurry.sdk.lr.a((java.io.Closeable) dataInputStream);
                } else {
                    arrayList = new java.util.ArrayList(readUnsignedShort);
                    for (int i = 0; i < readUnsignedShort; i++) {
                        try {
                            int readUnsignedShort2 = dataInputStream.readUnsignedShort();
                            com.flurry.sdk.kf.a(4, d, "read iter " + i + " dataLength = " + readUnsignedShort2);
                            byte[] bArr = new byte[readUnsignedShort2];
                            dataInputStream.readFully(bArr);
                            arrayList.add(new java.lang.String(bArr));
                        } catch (java.lang.Throwable th5) {
                            th = th5;
                            com.flurry.sdk.kf.a(6, d, "Error when loading persistent file", th);
                            com.flurry.sdk.lr.a((java.io.Closeable) dataInputStream);
                            arrayList2 = arrayList;
                            return arrayList2;
                        }
                    }
                    dataInputStream.readUnsignedShort();
                    com.flurry.sdk.lr.a((java.io.Closeable) dataInputStream);
                }
            } else {
                com.flurry.sdk.kf.a(5, d, "Agent cache file doesn't exist.");
                arrayList = null;
            }
            arrayList2 = arrayList;
        }
        return arrayList2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    private static byte[] k(java.lang.String str) {
        java.io.DataInputStream dataInputStream;
        java.lang.Throwable th;
        byte[] bArr = null;
        com.flurry.sdk.lr.b();
        com.flurry.sdk.kf.a(5, d, "Reading block File for " + str + " file name:" + com.flurry.sdk.jr.a().a.getFileStreamPath(".flurrydatasenderblock." + str));
        java.io.File fileStreamPath = com.flurry.sdk.jr.a().a.getFileStreamPath(".flurrydatasenderblock." + str);
        if (fileStreamPath.exists()) {
            ?? r2 = d;
            com.flurry.sdk.kf.a(5, (java.lang.String) r2, "Reading Index File for " + str + " Found file.");
            try {
                try {
                    dataInputStream = new java.io.DataInputStream(new java.io.FileInputStream(fileStreamPath));
                    try {
                        int readUnsignedShort = dataInputStream.readUnsignedShort();
                        if (readUnsignedShort == 0) {
                            com.flurry.sdk.lr.a((java.io.Closeable) dataInputStream);
                            r2 = dataInputStream;
                        } else {
                            bArr = new byte[readUnsignedShort];
                            dataInputStream.readFully(bArr);
                            dataInputStream.readUnsignedShort();
                            com.flurry.sdk.lr.a((java.io.Closeable) dataInputStream);
                            r2 = dataInputStream;
                        }
                    } catch (java.lang.Throwable th2) {
                        th = th2;
                        com.flurry.sdk.kf.a(6, d, "Error when loading persistent file", th);
                        com.flurry.sdk.lr.a((java.io.Closeable) dataInputStream);
                        r2 = dataInputStream;
                        return bArr;
                    }
                } catch (java.lang.Throwable th3) {
                    th = th3;
                    com.flurry.sdk.lr.a((java.io.Closeable) r2);
                    throw th;
                }
            } catch (java.lang.Throwable th4) {
                th = th4;
                dataInputStream = null;
            }
        } else {
            com.flurry.sdk.kf.a(4, d, "Agent cache file doesn't exist.");
        }
        return bArr;
    }
}
