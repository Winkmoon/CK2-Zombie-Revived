package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class kd<V> extends java.util.concurrent.FutureTask<V> {
    private final java.lang.ref.WeakReference<java.util.concurrent.Callable<V>> a;
    private final java.lang.ref.WeakReference<java.lang.Runnable> b;

    public kd(java.lang.Runnable runnable, V v) {
        super(runnable, v);
        this.a = new java.lang.ref.WeakReference<>(null);
        this.b = new java.lang.ref.WeakReference<>(runnable);
    }

    public final java.lang.Runnable a() {
        return this.b.get();
    }
}
