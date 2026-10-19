package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public abstract class lw implements java.lang.Runnable {
    private static final java.lang.String a = com.flurry.sdk.lw.class.getSimpleName();
    java.io.PrintStream u;
    java.io.PrintWriter v;

    public abstract void a();

    @Override // java.lang.Runnable
    public final void run() {
        try {
            a();
        } catch (java.lang.Throwable th) {
            if (this.u != null) {
                th.printStackTrace(this.u);
            } else if (this.v != null) {
                th.printStackTrace(this.v);
            } else {
                th.printStackTrace();
            }
            com.flurry.sdk.kf.a(6, a, "", th);
        }
    }
}
