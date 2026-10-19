package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class jd implements com.flurry.sdk.ki {
    private static final java.lang.String a = com.flurry.sdk.jd.class.getSimpleName();

    public static synchronized com.flurry.sdk.jd a() {
        com.flurry.sdk.jd jdVar;
        synchronized (com.flurry.sdk.jd.class) {
            jdVar = (com.flurry.sdk.jd) com.flurry.sdk.jr.a().a(com.flurry.sdk.jd.class);
        }
        return jdVar;
    }

    @Override // com.flurry.sdk.ki
    public final void a(android.content.Context context) {
        com.flurry.sdk.ld.a(com.flurry.sdk.jq.class);
        com.flurry.sdk.kb.a();
        com.flurry.sdk.lm.a();
        com.flurry.sdk.li.a();
        com.flurry.sdk.jt.a();
        com.flurry.sdk.jk.a();
        com.flurry.sdk.je.a();
        com.flurry.sdk.jl.a();
        com.flurry.sdk.ji.a();
        com.flurry.sdk.je.a();
        com.flurry.sdk.jn.a();
        com.flurry.sdk.jh.a();
        com.flurry.sdk.jp.a();
    }

    @Override // com.flurry.sdk.ki
    public final void b() {
        com.flurry.sdk.jp.b();
        com.flurry.sdk.jh.a = null;
        com.flurry.sdk.jn.b();
        com.flurry.sdk.je.b();
        com.flurry.sdk.ji.b();
        com.flurry.sdk.jl.b();
        com.flurry.sdk.je.b();
        com.flurry.sdk.jk.b();
        com.flurry.sdk.jt.b();
        com.flurry.sdk.li.b();
        com.flurry.sdk.lm.b();
        com.flurry.sdk.kb.b();
        com.flurry.sdk.ld.b(com.flurry.sdk.jq.class);
    }

    public static java.lang.String c() {
        com.flurry.sdk.jq i = i();
        if (i == null) {
            return null;
        }
        return java.lang.Long.toString(i.c);
    }

    public static long d() {
        com.flurry.sdk.jq i = i();
        if (i == null) {
            return 0L;
        }
        return i.c;
    }

    public static long e() {
        com.flurry.sdk.jq i = i();
        if (i == null) {
            return 0L;
        }
        return i.d;
    }

    public static long f() {
        com.flurry.sdk.jq i = i();
        if (i == null) {
            return -1L;
        }
        return i.e;
    }

    public static long g() {
        com.flurry.sdk.jq i = i();
        if (i == null) {
            return 0L;
        }
        return i.c();
    }

    public static com.flurry.sdk.jk.a h() {
        return com.flurry.sdk.jk.a().c();
    }

    public static com.flurry.sdk.jq i() {
        com.flurry.sdk.ld c = com.flurry.sdk.lf.a().c();
        if (c == null) {
            return null;
        }
        return (com.flurry.sdk.jq) c.c(com.flurry.sdk.jq.class);
    }
}
