package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class je {
    private static final java.lang.String b = com.flurry.sdk.je.class.getSimpleName();
    private static com.flurry.sdk.je c;
    public final java.util.Map<com.flurry.sdk.jm, byte[]> a;
    private final java.util.Set<java.lang.String> d;
    private final com.flurry.sdk.ka<com.flurry.sdk.le> e;
    private com.flurry.sdk.je.a f;
    private com.flurry.sdk.jo g;
    private java.lang.String h;

    enum a {
        NONE,
        ADVERTISING,
        DEVICE,
        REPORTED_IDS,
        FINISHED
    }

    public static synchronized com.flurry.sdk.je a() {
        com.flurry.sdk.je jeVar;
        synchronized (com.flurry.sdk.je.class) {
            if (c == null) {
                c = new com.flurry.sdk.je();
            }
            jeVar = c;
        }
        return jeVar;
    }

    public static void b() {
        c = null;
    }

    private je() {
        java.util.HashSet hashSet = new java.util.HashSet();
        hashSet.add("null");
        hashSet.add("9774d56d682e549c");
        hashSet.add("dead00beef");
        this.d = java.util.Collections.unmodifiableSet(hashSet);
        this.a = new java.util.HashMap();
        this.e = new com.flurry.sdk.ka<com.flurry.sdk.le>() { // from class: com.flurry.sdk.je.1
            @Override // com.flurry.sdk.ka
            public final /* synthetic */ void a(com.flurry.sdk.le leVar) {
                switch (com.flurry.sdk.je.AnonymousClass4.a[leVar.c - 1]) {
                    case 1:
                        if (com.flurry.sdk.je.this.c()) {
                            com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.je.1.1
                                @Override // com.flurry.sdk.lw
                                public final void a() {
                                    com.flurry.sdk.je.this.e();
                                }
                            });
                            break;
                        }
                        break;
                }
            }
        };
        this.f = com.flurry.sdk.je.a.NONE;
        com.flurry.sdk.kb.a().a("com.flurry.android.sdk.FlurrySessionEvent", this.e);
        com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.je.2
            @Override // com.flurry.sdk.lw
            public final void a() {
                com.flurry.sdk.je.b(com.flurry.sdk.je.this);
            }
        });
    }

    public final boolean c() {
        return com.flurry.sdk.je.a.FINISHED.equals(this.f);
    }

    public final boolean d() {
        return this.g == null || !this.g.b;
    }

    /* renamed from: com.flurry.sdk.je$4, reason: invalid class name */
    static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] a;

        static {
            try {
                b[com.flurry.sdk.je.a.NONE.ordinal()] = 1;
            } catch (java.lang.NoSuchFieldError e) {
            }
            try {
                b[com.flurry.sdk.je.a.ADVERTISING.ordinal()] = 2;
            } catch (java.lang.NoSuchFieldError e2) {
            }
            try {
                b[com.flurry.sdk.je.a.DEVICE.ordinal()] = 3;
            } catch (java.lang.NoSuchFieldError e3) {
            }
            try {
                b[com.flurry.sdk.je.a.REPORTED_IDS.ordinal()] = 4;
            } catch (java.lang.NoSuchFieldError e4) {
            }
            a = new int[com.flurry.sdk.le.a.a().length];
            try {
                a[com.flurry.sdk.le.a.a - 1] = 1;
            } catch (java.lang.NoSuchFieldError e5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        com.flurry.sdk.lr.b();
        if (com.flurry.sdk.ls.a(com.flurry.sdk.jr.a().a)) {
            this.g = com.flurry.sdk.ls.b(com.flurry.sdk.jr.a().a);
            if (c()) {
                h();
                com.flurry.sdk.kb.a().a(new com.flurry.sdk.jg());
            }
        }
    }

    private static void a(java.lang.String str, java.io.File file) {
        java.io.DataOutputStream dataOutputStream;
        try {
            dataOutputStream = new java.io.DataOutputStream(new java.io.FileOutputStream(file));
            try {
                try {
                    dataOutputStream.writeInt(1);
                    dataOutputStream.writeUTF(str);
                    com.flurry.sdk.lr.a(dataOutputStream);
                } catch (java.lang.Throwable th) {
                    th = th;
                    com.flurry.sdk.kf.a(6, b, "Error when saving deviceId", th);
                    com.flurry.sdk.lr.a(dataOutputStream);
                }
            } catch (java.lang.Throwable th2) {
                th = th2;
                com.flurry.sdk.lr.a(dataOutputStream);
                throw th;
            }
        } catch (java.lang.Throwable th3) {
            th = th3;
            dataOutputStream = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v3 */
    private static java.lang.String f() {
        java.io.DataInputStream dataInputStream;
        java.io.File fileStreamPath = com.flurry.sdk.jr.a().a.getFileStreamPath(".flurryb.");
        if (fileStreamPath != null) {
            ?? exists = fileStreamPath.exists();
            try {
                if (exists != 0) {
                    try {
                        dataInputStream = new java.io.DataInputStream(new java.io.FileInputStream(fileStreamPath));
                        try {
                            r0 = 1 == dataInputStream.readInt() ? dataInputStream.readUTF() : null;
                            com.flurry.sdk.lr.a((java.io.Closeable) dataInputStream);
                        } catch (java.lang.Throwable th) {
                            th = th;
                            com.flurry.sdk.kf.a(6, b, "Error when loading deviceId", th);
                            com.flurry.sdk.lr.a((java.io.Closeable) dataInputStream);
                            return r0;
                        }
                    } catch (java.lang.Throwable th2) {
                        exists = 0;
                        th = th2;
                        com.flurry.sdk.lr.a((java.io.Closeable) exists);
                        throw th;
                    }
                }
            } catch (java.lang.Throwable th3) {
                th = th3;
            }
        }
        return r0;
    }

    private java.lang.String g() {
        java.lang.String[] list;
        java.io.DataInputStream dataInputStream;
        java.lang.Throwable th;
        java.lang.String str = null;
        java.io.File filesDir = com.flurry.sdk.jr.a().a.getFilesDir();
        if (filesDir != null && (list = filesDir.list(new java.io.FilenameFilter() { // from class: com.flurry.sdk.je.3
            @Override // java.io.FilenameFilter
            public final boolean accept(java.io.File file, java.lang.String str2) {
                return str2.startsWith(".flurryagent.");
            }
        })) != null && list.length != 0) {
            java.io.File fileStreamPath = com.flurry.sdk.jr.a().a.getFileStreamPath(list[0]);
            if (fileStreamPath != null && fileStreamPath.exists()) {
                try {
                    dataInputStream = new java.io.DataInputStream(new java.io.FileInputStream(fileStreamPath));
                    try {
                        try {
                            if (46586 == dataInputStream.readUnsignedShort() && 2 == dataInputStream.readUnsignedShort()) {
                                dataInputStream.readUTF();
                                str = dataInputStream.readUTF();
                            }
                            com.flurry.sdk.lr.a((java.io.Closeable) dataInputStream);
                        } catch (java.lang.Throwable th2) {
                            th = th2;
                            com.flurry.sdk.kf.a(6, b, "Error when loading deviceId", th);
                            com.flurry.sdk.lr.a((java.io.Closeable) dataInputStream);
                            return str;
                        }
                    } catch (java.lang.Throwable th3) {
                        th = th3;
                        com.flurry.sdk.lr.a((java.io.Closeable) dataInputStream);
                        throw th;
                    }
                } catch (java.lang.Throwable th4) {
                    th = th4;
                    dataInputStream = null;
                }
            }
        }
        return str;
    }

    private void h() {
        java.lang.String str;
        if (this.g == null) {
            str = null;
        } else {
            str = this.g.a;
        }
        if (str != null) {
            com.flurry.sdk.kf.a(3, b, "Fetched advertising id");
            this.a.put(com.flurry.sdk.jm.AndroidAdvertisingId, com.flurry.sdk.lr.e(str));
        }
        java.lang.String str2 = this.h;
        if (str2 != null) {
            com.flurry.sdk.kf.a(3, b, "Fetched device id");
            this.a.put(com.flurry.sdk.jm.DeviceId, com.flurry.sdk.lr.e(str2));
        }
    }

    static /* synthetic */ void b(com.flurry.sdk.je jeVar) {
        boolean z;
        java.lang.String str;
        while (!com.flurry.sdk.je.a.FINISHED.equals(jeVar.f)) {
            switch (jeVar.f) {
                case NONE:
                    jeVar.f = com.flurry.sdk.je.a.ADVERTISING;
                    break;
                case ADVERTISING:
                    jeVar.f = com.flurry.sdk.je.a.DEVICE;
                    break;
                case DEVICE:
                    jeVar.f = com.flurry.sdk.je.a.REPORTED_IDS;
                    break;
                case REPORTED_IDS:
                    jeVar.f = com.flurry.sdk.je.a.FINISHED;
                    break;
            }
            try {
                switch (jeVar.f) {
                    case ADVERTISING:
                        jeVar.e();
                        continue;
                    case DEVICE:
                        com.flurry.sdk.lr.b();
                        java.lang.String string = android.provider.Settings.Secure.getString(com.flurry.sdk.jr.a().a.getContentResolver(), "android_id");
                        if (android.text.TextUtils.isEmpty(string)) {
                            z = false;
                        } else {
                            z = !jeVar.d.contains(string.toLowerCase(java.util.Locale.US));
                        }
                        if (!z) {
                            str = null;
                        } else {
                            str = "AND" + string;
                        }
                        if (android.text.TextUtils.isEmpty(str)) {
                            str = f();
                            if (android.text.TextUtils.isEmpty(str)) {
                                str = jeVar.g();
                                if (android.text.TextUtils.isEmpty(str)) {
                                    str = "ID" + java.lang.Long.toString(java.lang.Double.doubleToLongBits(java.lang.Math.random()) + ((java.lang.System.nanoTime() + (com.flurry.sdk.lr.i(com.flurry.sdk.lo.a(com.flurry.sdk.jr.a().a)) * 37)) * 37), 16);
                                }
                                if (!android.text.TextUtils.isEmpty(str)) {
                                    java.io.File fileStreamPath = com.flurry.sdk.jr.a().a.getFileStreamPath(".flurryb.");
                                    if (com.flurry.sdk.lq.a(fileStreamPath)) {
                                        a(str, fileStreamPath);
                                    }
                                }
                            }
                        }
                        jeVar.h = str;
                        continue;
                    case REPORTED_IDS:
                        jeVar.h();
                        continue;
                    default:
                        continue;
                }
            } catch (java.lang.Exception e) {
                com.flurry.sdk.kf.a(4, b, "Exception during id fetch:" + jeVar.f + ", " + e);
            }
            com.flurry.sdk.kf.a(4, b, "Exception during id fetch:" + jeVar.f + ", " + e);
        }
        com.flurry.sdk.kb.a().a(new com.flurry.sdk.jf());
    }
}
