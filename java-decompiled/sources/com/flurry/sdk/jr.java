package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class jr {
    private static final java.lang.String e = com.flurry.sdk.jr.class.getSimpleName();
    private static com.flurry.sdk.jr f;
    public final android.content.Context a;
    public final android.os.Handler c;
    public final java.lang.String d;
    private final com.flurry.sdk.kh h;
    public final android.os.Handler b = new android.os.Handler(android.os.Looper.getMainLooper());
    private final android.os.HandlerThread g = new android.os.HandlerThread("FlurryAgent");

    public static com.flurry.sdk.jr a() {
        return f;
    }

    public static synchronized void a(android.content.Context context, java.lang.String str) {
        synchronized (com.flurry.sdk.jr.class) {
            if (f != null) {
                if (!f.d.equals(str)) {
                    throw new java.lang.IllegalStateException("Only one API key per application is supported!");
                }
                com.flurry.sdk.kf.e(e, "Flurry is already initialized");
            } else {
                if (context == null) {
                    throw new java.lang.IllegalArgumentException("Context cannot be null");
                }
                if (android.text.TextUtils.isEmpty(str)) {
                    throw new java.lang.IllegalArgumentException("API key must be specified");
                }
                com.flurry.sdk.jr jrVar = new com.flurry.sdk.jr(context, str);
                f = jrVar;
                jrVar.h.a(context);
            }
        }
    }

    public static synchronized void b() {
        synchronized (com.flurry.sdk.jr.class) {
            if (f != null) {
                com.flurry.sdk.jr jrVar = f;
                jrVar.h.a();
                jrVar.g.quit();
                f = null;
            }
        }
    }

    private jr(android.content.Context context, java.lang.String str) {
        this.a = context.getApplicationContext();
        this.g.start();
        this.c = new android.os.Handler(this.g.getLooper());
        this.d = str;
        this.h = new com.flurry.sdk.kh();
    }

    public final void a(java.lang.Runnable runnable) {
        this.b.post(runnable);
    }

    public final void b(java.lang.Runnable runnable) {
        this.c.post(runnable);
    }

    public final void a(java.lang.Runnable runnable, long j) {
        if (runnable != null) {
            this.c.postDelayed(runnable, j);
        }
    }

    public final void c(java.lang.Runnable runnable) {
        if (runnable != null) {
            this.c.removeCallbacks(runnable);
        }
    }

    public final com.flurry.sdk.ki a(java.lang.Class<? extends com.flurry.sdk.ki> cls) {
        return this.h.b(cls);
    }
}
