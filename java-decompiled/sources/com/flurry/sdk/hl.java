package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class hl {
    private static final java.lang.String b = com.flurry.sdk.hl.class.getSimpleName();
    boolean a;
    private final com.flurry.sdk.hm c;
    private final java.io.File d;
    private java.lang.String e;

    public hl() {
        this(com.flurry.sdk.jr.a().a);
    }

    public hl(android.content.Context context) {
        this.c = new com.flurry.sdk.hm();
        this.d = context.getFileStreamPath(".flurryinstallreceiver.");
        com.flurry.sdk.kf.a(3, b, "Referrer file name if it exists:  " + this.d);
    }

    public final synchronized java.util.Map<java.lang.String, java.util.List<java.lang.String>> a() {
        c();
        return com.flurry.sdk.hm.a(this.e);
    }

    public final synchronized java.lang.String b() {
        c();
        return this.e;
    }

    public final synchronized void a(java.lang.String str) {
        this.a = true;
        b(str);
        com.flurry.sdk.lq.a(this.d, this.e);
    }

    private void b(java.lang.String str) {
        if (str != null) {
            this.e = str;
        }
    }

    private void c() {
        if (!this.a) {
            this.a = true;
            com.flurry.sdk.kf.a(4, b, "Loading referrer info from file: " + this.d.getAbsolutePath());
            java.lang.String c = com.flurry.sdk.lq.c(this.d);
            com.flurry.sdk.kf.a(b, "Referrer file contents: " + c);
            b(c);
        }
    }
}
