package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class li extends com.flurry.sdk.lj {
    public static final java.lang.Integer a = 226;
    public static final java.lang.Integer b = 6;
    public static final java.lang.Integer c = 3;
    public static final java.lang.Integer d = 1;
    public static final java.lang.String e = null;
    public static final java.lang.Boolean f = true;
    public static final java.lang.Boolean g = true;
    public static final java.lang.String h = null;
    public static final java.lang.Boolean i = true;
    public static final android.location.Criteria j = null;
    public static final android.location.Location k = null;
    public static final java.lang.Long l = 10000L;
    public static final java.lang.Boolean m = true;
    public static final java.lang.Long n = null;
    public static final java.lang.Byte o = (byte) -1;
    public static final java.lang.Boolean p = false;
    public static final java.lang.String q = null;
    public static final java.lang.Boolean r = true;
    private static com.flurry.sdk.li s;

    public static synchronized com.flurry.sdk.li a() {
        com.flurry.sdk.li liVar;
        synchronized (com.flurry.sdk.li.class) {
            if (s == null) {
                s = new com.flurry.sdk.li();
            }
            liVar = s;
        }
        return liVar;
    }

    public static synchronized void b() {
        synchronized (com.flurry.sdk.li.class) {
            if (s != null) {
                s.c();
            }
            s = null;
        }
    }

    private li() {
        a("AgentVersion", a);
        a("ReleaseMajorVersion", b);
        a("ReleaseMinorVersion", c);
        a("ReleasePatchVersion", d);
        a("ReleaseBetaVersion", "");
        a("VersionName", e);
        a("CaptureUncaughtExceptions", f);
        a("UseHttps", g);
        a("ReportUrl", h);
        a("ReportLocation", i);
        a("ExplicitLocation", k);
        a("ContinueSessionMillis", l);
        a("LogEvents", m);
        a("Age", n);
        a("Gender", o);
        a("UserId", "");
        a("ProtonEnabled", p);
        a("ProtonConfigUrl", q);
        a("analyticsEnabled", r);
    }
}
