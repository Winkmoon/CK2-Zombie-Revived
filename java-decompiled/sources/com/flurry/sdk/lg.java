package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
final class lg {
    private java.util.Timer a;
    private com.flurry.sdk.lg.a b;

    class a extends java.util.TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public final void run() {
            com.flurry.sdk.lg.this.a();
            com.flurry.sdk.kb.a().a(new com.flurry.sdk.lh());
        }
    }

    lg() {
    }

    public final synchronized void a(long j) {
        boolean z;
        if (this.a != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            a();
        }
        this.a = new java.util.Timer("FlurrySessionTimer");
        this.b = new com.flurry.sdk.lg.a();
        this.a.schedule(this.b, j);
    }

    public final synchronized void a() {
        if (this.a != null) {
            this.a.cancel();
            this.a = null;
        }
        this.b = null;
    }
}
