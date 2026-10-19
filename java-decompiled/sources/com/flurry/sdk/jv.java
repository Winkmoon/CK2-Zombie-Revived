package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class jv {
    private static com.flurry.sdk.jv a;
    private static final java.lang.String b = com.flurry.sdk.jv.class.getSimpleName();
    private java.lang.Object c;

    public static synchronized com.flurry.sdk.jv a() {
        com.flurry.sdk.jv jvVar;
        synchronized (com.flurry.sdk.jv.class) {
            if (a == null) {
                a = new com.flurry.sdk.jv();
            }
            jvVar = a;
        }
        return jvVar;
    }

    public static synchronized void b() {
        synchronized (com.flurry.sdk.jv.class) {
            if (a != null) {
                com.flurry.sdk.jv jvVar = a;
                if (android.os.Build.VERSION.SDK_INT >= 14 && jvVar.c != null) {
                    android.content.Context context = com.flurry.sdk.jr.a().a;
                    if (context instanceof android.app.Application) {
                        ((android.app.Application) context).unregisterActivityLifecycleCallbacks((android.app.Application.ActivityLifecycleCallbacks) jvVar.c);
                        jvVar.c = null;
                    }
                }
            }
            a = null;
        }
    }

    private jv() {
        if (android.os.Build.VERSION.SDK_INT < 14 || this.c != null) {
            return;
        }
        android.content.Context context = com.flurry.sdk.jr.a().a;
        if (!(context instanceof android.app.Application)) {
            return;
        }
        this.c = new android.app.Application.ActivityLifecycleCallbacks() { // from class: com.flurry.sdk.jv.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityCreated(android.app.Activity activity, android.os.Bundle bundle) {
                com.flurry.sdk.kf.a(3, com.flurry.sdk.jv.b, "onActivityCreated for activity:" + activity);
                a(activity, com.flurry.sdk.ju.a.kCreated);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityStarted(android.app.Activity activity) {
                com.flurry.sdk.kf.a(3, com.flurry.sdk.jv.b, "onActivityStarted for activity:" + activity);
                a(activity, com.flurry.sdk.ju.a.kStarted);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityResumed(android.app.Activity activity) {
                com.flurry.sdk.kf.a(3, com.flurry.sdk.jv.b, "onActivityResumed for activity:" + activity);
                a(activity, com.flurry.sdk.ju.a.kResumed);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityPaused(android.app.Activity activity) {
                com.flurry.sdk.kf.a(3, com.flurry.sdk.jv.b, "onActivityPaused for activity:" + activity);
                a(activity, com.flurry.sdk.ju.a.kPaused);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityStopped(android.app.Activity activity) {
                com.flurry.sdk.kf.a(3, com.flurry.sdk.jv.b, "onActivityStopped for activity:" + activity);
                a(activity, com.flurry.sdk.ju.a.kStopped);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivitySaveInstanceState(android.app.Activity activity, android.os.Bundle bundle) {
                com.flurry.sdk.kf.a(3, com.flurry.sdk.jv.b, "onActivitySaveInstanceState for activity:" + activity);
                a(activity, com.flurry.sdk.ju.a.kSaveState);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityDestroyed(android.app.Activity activity) {
                com.flurry.sdk.kf.a(3, com.flurry.sdk.jv.b, "onActivityDestroyed for activity:" + activity);
                a(activity, com.flurry.sdk.ju.a.kDestroyed);
            }

            private static void a(android.app.Activity activity, com.flurry.sdk.ju.a aVar) {
                com.flurry.sdk.ju juVar = new com.flurry.sdk.ju();
                juVar.a = new java.lang.ref.WeakReference<>(activity);
                juVar.b = aVar;
                juVar.b();
            }
        };
        ((android.app.Application) context).registerActivityLifecycleCallbacks((android.app.Application.ActivityLifecycleCallbacks) this.c);
    }

    public final boolean c() {
        return this.c != null;
    }
}
