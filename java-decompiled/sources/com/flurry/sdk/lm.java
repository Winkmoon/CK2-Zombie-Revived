package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class lm {
    private static long a = 100;
    private static com.flurry.sdk.lm b = null;
    private final com.flurry.sdk.ln c = new com.flurry.sdk.ln();

    public static synchronized com.flurry.sdk.lm a() {
        com.flurry.sdk.lm lmVar;
        synchronized (com.flurry.sdk.lm.class) {
            if (b == null) {
                b = new com.flurry.sdk.lm();
            }
            lmVar = b;
        }
        return lmVar;
    }

    public static synchronized void b() {
        synchronized (com.flurry.sdk.lm.class) {
            if (b != null) {
                b.c();
                b = null;
            }
        }
    }

    public lm() {
        this.c.a = a;
        this.c.b = true;
    }

    public final synchronized void a(com.flurry.sdk.ka<com.flurry.sdk.ll> kaVar) {
        com.flurry.sdk.kb.a().a("com.flurry.android.sdk.TickEvent", kaVar);
        if (com.flurry.sdk.kb.a().b("com.flurry.android.sdk.TickEvent") > 0) {
            this.c.a();
        }
    }

    public final synchronized void b(com.flurry.sdk.ka<com.flurry.sdk.ll> kaVar) {
        com.flurry.sdk.kb.a().b("com.flurry.android.sdk.TickEvent", kaVar);
        if (com.flurry.sdk.kb.a().b("com.flurry.android.sdk.TickEvent") == 0) {
            this.c.b();
        }
    }

    private synchronized void c() {
        com.flurry.sdk.kb.a().a("com.flurry.android.sdk.TickEvent");
        this.c.b();
    }
}
