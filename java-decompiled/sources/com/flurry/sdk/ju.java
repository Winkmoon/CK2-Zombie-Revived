package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class ju extends com.flurry.sdk.jz {
    public java.lang.ref.WeakReference<android.app.Activity> a;
    public com.flurry.sdk.ju.a b;

    public enum a {
        kCreated,
        kDestroyed,
        kPaused,
        kResumed,
        kStarted,
        kStopped,
        kSaveState
    }

    public ju() {
        super("com.flurry.android.sdk.ActivityLifecycleEvent");
        this.a = new java.lang.ref.WeakReference<>(null);
    }
}
