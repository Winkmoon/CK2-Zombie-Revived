package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class hk implements com.flurry.sdk.ki {
    private static final java.lang.String d = com.flurry.sdk.hk.class.getSimpleName();
    public com.flurry.sdk.Cif a;
    public com.flurry.sdk.ix b;
    public com.flurry.sdk.ih c;

    public static synchronized com.flurry.sdk.hk a() {
        com.flurry.sdk.hk hkVar;
        synchronized (com.flurry.sdk.hk.class) {
            hkVar = (com.flurry.sdk.hk) com.flurry.sdk.jr.a().a(com.flurry.sdk.hk.class);
        }
        return hkVar;
    }

    @Override // com.flurry.sdk.ki
    public final void a(android.content.Context context) {
        com.flurry.sdk.ld.a(com.flurry.sdk.ja.class);
        this.b = new com.flurry.sdk.ix();
        this.a = new com.flurry.sdk.Cif();
        this.c = new com.flurry.sdk.ih();
        if (!com.flurry.sdk.lr.a(context, "android.permission.INTERNET")) {
            com.flurry.sdk.kf.b(d, "Application must declare permission: android.permission.INTERNET");
        }
        if (com.flurry.sdk.lr.a(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return;
        }
        com.flurry.sdk.kf.e(d, "It is highly recommended that the application declare permission: android.permission.ACCESS_NETWORK_STATE");
    }

    @Override // com.flurry.sdk.ki
    public final void b() {
        if (this.c != null) {
            this.c.c();
            this.c = null;
        }
        if (this.b != null) {
            com.flurry.sdk.ix ixVar = this.b;
            com.flurry.sdk.li.a().b("UseHttps", ixVar);
            com.flurry.sdk.li.a().b("ReportUrl", ixVar);
            this.b = null;
        }
        if (this.a != null) {
            com.flurry.sdk.Cif cif = this.a;
            com.flurry.sdk.jr.a().c(cif.a);
            com.flurry.sdk.kb.a().b("com.flurry.android.sdk.NetworkStateEvent", cif.d);
            com.flurry.sdk.kb.a().b("com.flurry.android.sdk.IdProviderUpdatedAdvertisingId", cif.c);
            com.flurry.sdk.kb.a().b("com.flurry.android.sdk.IdProviderFinishedEvent", cif.b);
            com.flurry.sdk.il.b();
            com.flurry.sdk.li.a().b("ProtonEnabled", cif);
            this.a = null;
        }
        com.flurry.sdk.ld.b(com.flurry.sdk.ja.class);
    }

    public static com.flurry.android.FlurryEventRecordStatus a(java.lang.String str, java.lang.String str2, java.util.Map<java.lang.String, java.lang.String> map) {
        com.flurry.sdk.ja c = c();
        com.flurry.android.FlurryEventRecordStatus flurryEventRecordStatus = com.flurry.android.FlurryEventRecordStatus.kFlurryEventFailed;
        if (c != null) {
            return c.a(str, com.flurry.sdk.jc.a(str2), map);
        }
        return flurryEventRecordStatus;
    }

    public static void a(java.lang.String str, java.lang.String str2, java.lang.Throwable th) {
        com.flurry.sdk.ja c = c();
        if (c != null) {
            c.a(str, str2, th.getClass().getName(), th);
        }
    }

    public static com.flurry.sdk.ja c() {
        com.flurry.sdk.ld c = com.flurry.sdk.lf.a().c();
        if (c == null) {
            return null;
        }
        return (com.flurry.sdk.ja) c.c(com.flurry.sdk.ja.class);
    }
}
