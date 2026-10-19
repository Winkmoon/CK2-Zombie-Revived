package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class lk implements java.util.concurrent.ThreadFactory {
    private final java.lang.ThreadGroup a;
    private final int b = 1;

    public lk(java.lang.String str) {
        this.a = new java.lang.ThreadGroup(str);
    }

    @Override // java.util.concurrent.ThreadFactory
    public final java.lang.Thread newThread(java.lang.Runnable runnable) {
        java.lang.Thread thread = new java.lang.Thread(this.a, runnable);
        thread.setName(this.a.getName() + ":" + thread.getId());
        thread.setPriority(this.b);
        return thread;
    }
}
