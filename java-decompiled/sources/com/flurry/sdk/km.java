package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class km {
    private static final java.lang.String a = com.flurry.sdk.km.class.getSimpleName();
    private java.util.Timer b;
    private com.flurry.sdk.km.a c;
    private com.flurry.sdk.kn d;

    public km(com.flurry.sdk.kn knVar) {
        this.d = knVar;
    }

    public final synchronized void a(long j) {
        synchronized (this) {
            if (this.b != null) {
                a();
            }
            this.b = new java.util.Timer("HttpRequestTimeoutTimer");
            this.c = new com.flurry.sdk.km.a(this, (byte) 0);
            this.b.schedule(this.c, j);
            com.flurry.sdk.kf.a(3, a, "HttpRequestTimeoutTimer started: " + j + "MS");
        }
    }

    public final synchronized void a() {
        if (this.b != null) {
            this.b.cancel();
            this.b = null;
            com.flurry.sdk.kf.a(3, a, "HttpRequestTimeoutTimer stopped.");
        }
        this.c = null;
    }

    class a extends java.util.TimerTask {
        private a() {
        }

        /* synthetic */ a(com.flurry.sdk.km kmVar, byte b) {
            this();
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public final void run() {
            com.flurry.sdk.kf.a(3, com.flurry.sdk.km.a, "HttpRequest timed out. Cancelling.");
            com.flurry.sdk.kn knVar = com.flurry.sdk.km.this.d;
            com.flurry.sdk.kf.a(3, com.flurry.sdk.kn.e, "Timeout (" + (java.lang.System.currentTimeMillis() - knVar.m) + "MS) for url: " + knVar.f);
            knVar.p = 629;
            knVar.t = true;
            knVar.h();
            knVar.f();
        }
    }
}
