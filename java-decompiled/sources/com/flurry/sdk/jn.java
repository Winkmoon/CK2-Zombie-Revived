package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class jn implements com.flurry.sdk.lj.a {
    private static com.flurry.sdk.jn a;
    private static final java.lang.String b = com.flurry.sdk.jn.class.getSimpleName();
    private java.lang.String c;
    private java.lang.String d;

    public static synchronized com.flurry.sdk.jn a() {
        com.flurry.sdk.jn jnVar;
        synchronized (com.flurry.sdk.jn.class) {
            if (a == null) {
                a = new com.flurry.sdk.jn();
            }
            jnVar = a;
        }
        return jnVar;
    }

    public static void b() {
        if (a != null) {
            com.flurry.sdk.li.a().b("VersionName", a);
        }
        a = null;
    }

    private jn() {
        com.flurry.sdk.li a2 = com.flurry.sdk.li.a();
        this.c = (java.lang.String) a2.a("VersionName");
        a2.a("VersionName", (com.flurry.sdk.lj.a) this);
        com.flurry.sdk.kf.a(4, b, "initSettings, VersionName = " + this.c);
    }

    public static java.lang.String c() {
        return android.os.Build.VERSION.RELEASE;
    }

    public static java.lang.String d() {
        return android.os.Build.DEVICE;
    }

    public static java.lang.String e() {
        return android.os.Build.ID;
    }

    public static java.lang.String f() {
        return android.os.Build.MANUFACTURER;
    }

    public static java.lang.String g() {
        return android.os.Build.MODEL;
    }

    public static java.lang.String h() {
        return "";
    }

    public static java.lang.String a(android.content.Context context) {
        android.content.pm.PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return null;
        }
        try {
            return packageManager.getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (android.content.pm.PackageManager.NameNotFoundException e) {
            return "unknown";
        }
    }

    public final synchronized java.lang.String i() {
        java.lang.String str;
        if (!android.text.TextUtils.isEmpty(this.c)) {
            str = this.c;
        } else if (!android.text.TextUtils.isEmpty(this.d)) {
            str = this.d;
        } else {
            this.d = j();
            str = this.d;
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0019, code lost:
    
        r0 = "Unknown";
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String j() {
        /*
            com.flurry.sdk.jr r0 = com.flurry.sdk.jr.a()     // Catch: java.lang.Throwable -> L25
            android.content.Context r0 = r0.a     // Catch: java.lang.Throwable -> L25
            android.content.pm.PackageManager r1 = r0.getPackageManager()     // Catch: java.lang.Throwable -> L25
            java.lang.String r0 = r0.getPackageName()     // Catch: java.lang.Throwable -> L25
            r2 = 0
            android.content.pm.PackageInfo r0 = r1.getPackageInfo(r0, r2)     // Catch: java.lang.Throwable -> L25
            java.lang.String r1 = r0.versionName     // Catch: java.lang.Throwable -> L25
            if (r1 == 0) goto L1a
            java.lang.String r0 = r0.versionName     // Catch: java.lang.Throwable -> L25
        L19:
            return r0
        L1a:
            int r1 = r0.versionCode     // Catch: java.lang.Throwable -> L25
            if (r1 == 0) goto L2e
            int r0 = r0.versionCode     // Catch: java.lang.Throwable -> L25
            java.lang.String r0 = java.lang.Integer.toString(r0)     // Catch: java.lang.Throwable -> L25
            goto L19
        L25:
            r0 = move-exception
            r1 = 6
            java.lang.String r2 = com.flurry.sdk.jn.b
            java.lang.String r3 = ""
            com.flurry.sdk.kf.a(r1, r2, r3, r0)
        L2e:
            java.lang.String r0 = "Unknown"
            goto L19
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.jn.j():java.lang.String");
    }

    @Override // com.flurry.sdk.lj.a
    public final void a(java.lang.String str, java.lang.Object obj) {
        if (str.equals("VersionName")) {
            this.c = (java.lang.String) obj;
            com.flurry.sdk.kf.a(4, b, "onSettingUpdate, VersionName = " + this.c);
        } else {
            com.flurry.sdk.kf.a(6, b, "onSettingUpdate internal error!");
        }
    }
}
