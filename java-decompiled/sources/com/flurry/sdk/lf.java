package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class lf implements com.flurry.sdk.lj.a {
    private static com.flurry.sdk.lf b;
    private static final java.lang.String c = com.flurry.sdk.lf.class.getSimpleName();
    public long a;
    private long g;
    private com.flurry.sdk.ld h;
    private final java.util.Map<android.content.Context, com.flurry.sdk.ld> d = new java.util.WeakHashMap();
    private final com.flurry.sdk.lg e = new com.flurry.sdk.lg();
    private final java.lang.Object f = new java.lang.Object();
    private com.flurry.sdk.ka<com.flurry.sdk.lh> i = new com.flurry.sdk.ka<com.flurry.sdk.lh>() { // from class: com.flurry.sdk.lf.1
        @Override // com.flurry.sdk.ka
        public final /* bridge */ /* synthetic */ void a(com.flurry.sdk.lh lhVar) {
            com.flurry.sdk.lf.this.h();
        }
    };
    private com.flurry.sdk.ka<com.flurry.sdk.ju> j = new com.flurry.sdk.ka<com.flurry.sdk.ju>() { // from class: com.flurry.sdk.lf.2
        @Override // com.flurry.sdk.ka
        public final /* synthetic */ void a(com.flurry.sdk.ju juVar) {
            com.flurry.sdk.ju juVar2 = juVar;
            android.app.Activity activity = juVar2.a.get();
            if (activity == null) {
                com.flurry.sdk.kf.a(com.flurry.sdk.lf.c, "Activity has been destroyed, can't pass ActivityLifecycleEvent to adobject.");
            }
            switch (com.flurry.sdk.lf.AnonymousClass5.a[juVar2.b.ordinal()]) {
                case 1:
                    com.flurry.sdk.kf.a(3, com.flurry.sdk.lf.c, "Automatic onStartSession for context:" + juVar2.a);
                    com.flurry.sdk.lf.this.e(activity);
                    break;
                case 2:
                    com.flurry.sdk.kf.a(3, com.flurry.sdk.lf.c, "Automatic onEndSession for context:" + juVar2.a);
                    com.flurry.sdk.lf.this.d(activity);
                    break;
                case 3:
                    com.flurry.sdk.kf.a(3, com.flurry.sdk.lf.c, "Automatic onEndSession (destroyed) for context:" + juVar2.a);
                    com.flurry.sdk.lf.this.d(activity);
                    break;
            }
        }
    };

    public static synchronized com.flurry.sdk.lf a() {
        com.flurry.sdk.lf lfVar;
        synchronized (com.flurry.sdk.lf.class) {
            if (b == null) {
                b = new com.flurry.sdk.lf();
            }
            lfVar = b;
        }
        return lfVar;
    }

    public static synchronized void b() {
        synchronized (com.flurry.sdk.lf.class) {
            if (b != null) {
                com.flurry.sdk.kb.a().a(b.i);
                com.flurry.sdk.kb.a().a(b.j);
                com.flurry.sdk.li.a().b("ContinueSessionMillis", b);
            }
            b = null;
        }
    }

    /* renamed from: com.flurry.sdk.lf$5, reason: invalid class name */
    static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] a = new int[com.flurry.sdk.ju.a.values().length];

        static {
            try {
                a[com.flurry.sdk.ju.a.kStarted.ordinal()] = 1;
            } catch (java.lang.NoSuchFieldError e) {
            }
            try {
                a[com.flurry.sdk.ju.a.kStopped.ordinal()] = 2;
            } catch (java.lang.NoSuchFieldError e2) {
            }
            try {
                a[com.flurry.sdk.ju.a.kDestroyed.ordinal()] = 3;
            } catch (java.lang.NoSuchFieldError e3) {
            }
        }
    }

    private lf() {
        com.flurry.sdk.li a = com.flurry.sdk.li.a();
        this.a = 0L;
        this.g = ((java.lang.Long) a.a("ContinueSessionMillis")).longValue();
        a.a("ContinueSessionMillis", (com.flurry.sdk.lj.a) this);
        com.flurry.sdk.kf.a(4, c, "initSettings, ContinueSessionMillis = " + this.g);
        com.flurry.sdk.kb.a().a("com.flurry.android.sdk.ActivityLifecycleEvent", this.j);
        com.flurry.sdk.kb.a().a("com.flurry.android.sdk.FlurrySessionTimerEvent", this.i);
    }

    private synchronized int g() {
        return this.d.size();
    }

    public final com.flurry.sdk.ld c() {
        com.flurry.sdk.ld ldVar;
        synchronized (this.f) {
            ldVar = this.h;
        }
        return ldVar;
    }

    public final synchronized void a(android.content.Context context) {
        if ((context instanceof android.app.Activity) && com.flurry.sdk.jv.a().c()) {
            com.flurry.sdk.kf.a(3, c, "bootstrap for context:" + context);
            e(context);
        }
    }

    public final synchronized void b(android.content.Context context) {
        if (!com.flurry.sdk.jv.a().c() || !(context instanceof android.app.Activity)) {
            com.flurry.sdk.kf.a(3, c, "Manual onStartSession for context:" + context);
            e(context);
        }
    }

    public final synchronized void c(android.content.Context context) {
        if (!com.flurry.sdk.jv.a().c() || !(context instanceof android.app.Activity)) {
            com.flurry.sdk.kf.a(3, c, "Manual onEndSession for context:" + context);
            d(context);
        }
    }

    public final synchronized boolean d() {
        boolean z;
        if (c() == null) {
            com.flurry.sdk.kf.a(2, c, "Session not found. No active session");
            z = false;
        } else {
            z = true;
        }
        return z;
    }

    public final synchronized void e() {
        for (java.util.Map.Entry<android.content.Context, com.flurry.sdk.ld> entry : this.d.entrySet()) {
            com.flurry.sdk.le leVar = new com.flurry.sdk.le();
            leVar.a = new java.lang.ref.WeakReference<>(entry.getKey());
            leVar.b = entry.getValue();
            leVar.c = com.flurry.sdk.le.a.d;
            com.flurry.sdk.jd.a();
            leVar.d = com.flurry.sdk.jd.d();
            leVar.b();
        }
        this.d.clear();
        com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.lf.3
            @Override // com.flurry.sdk.lw
            public final void a() {
                com.flurry.sdk.lf.this.h();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void e(android.content.Context context) {
        if (this.d.get(context) != null) {
            if (com.flurry.sdk.jv.a().c()) {
                com.flurry.sdk.kf.a(3, c, "Session already started with context:" + context);
            } else {
                com.flurry.sdk.kf.e(c, "Session already started with context:" + context);
            }
        } else {
            this.e.a();
            com.flurry.sdk.ld c2 = c();
            if (c2 == null) {
                c2 = new com.flurry.sdk.ld();
                com.flurry.sdk.kf.e(c, "Flurry session started for context:" + context);
                com.flurry.sdk.le leVar = new com.flurry.sdk.le();
                leVar.a = new java.lang.ref.WeakReference<>(context);
                leVar.b = c2;
                leVar.c = com.flurry.sdk.le.a.a;
                leVar.b();
            }
            this.d.put(context, c2);
            synchronized (this.f) {
                this.h = c2;
            }
            com.flurry.sdk.kf.e(c, "Flurry session resumed for context:" + context);
            com.flurry.sdk.le leVar2 = new com.flurry.sdk.le();
            leVar2.a = new java.lang.ref.WeakReference<>(context);
            leVar2.b = c2;
            leVar2.c = com.flurry.sdk.le.a.c;
            leVar2.b();
            this.a = 0L;
        }
    }

    final synchronized void d(android.content.Context context) {
        com.flurry.sdk.ld remove = this.d.remove(context);
        if (remove == null) {
            if (com.flurry.sdk.jv.a().c()) {
                com.flurry.sdk.kf.a(3, c, "Session cannot be ended, session not found for context:" + context);
            } else {
                com.flurry.sdk.kf.e(c, "Session cannot be ended, session not found for context:" + context);
            }
        } else {
            com.flurry.sdk.kf.e(c, "Flurry session paused for context:" + context);
            com.flurry.sdk.le leVar = new com.flurry.sdk.le();
            leVar.a = new java.lang.ref.WeakReference<>(context);
            leVar.b = remove;
            com.flurry.sdk.jd.a();
            leVar.d = com.flurry.sdk.jd.d();
            leVar.c = com.flurry.sdk.le.a.d;
            leVar.b();
            if (g() == 0) {
                this.e.a(this.g);
                this.a = java.lang.System.currentTimeMillis();
            } else {
                this.a = 0L;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void h() {
        int g = g();
        if (g > 0) {
            com.flurry.sdk.kf.a(5, c, "Session cannot be finalized, sessionContextCount:" + g);
        } else {
            final com.flurry.sdk.ld c2 = c();
            if (c2 == null) {
                com.flurry.sdk.kf.a(5, c, "Session cannot be finalized, current session not found");
            } else {
                com.flurry.sdk.kf.e(c, "Flurry session ended");
                com.flurry.sdk.le leVar = new com.flurry.sdk.le();
                leVar.b = c2;
                leVar.c = com.flurry.sdk.le.a.e;
                com.flurry.sdk.jd.a();
                leVar.d = com.flurry.sdk.jd.d();
                leVar.b();
                com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.lf.4
                    @Override // com.flurry.sdk.lw
                    public final void a() {
                        com.flurry.sdk.lf.a(com.flurry.sdk.lf.this, c2);
                    }
                });
            }
        }
    }

    @Override // com.flurry.sdk.lj.a
    public final void a(java.lang.String str, java.lang.Object obj) {
        if (str.equals("ContinueSessionMillis")) {
            this.g = ((java.lang.Long) obj).longValue();
            com.flurry.sdk.kf.a(4, c, "onSettingUpdate, ContinueSessionMillis = " + this.g);
        } else {
            com.flurry.sdk.kf.a(6, c, "onSettingUpdate internal error!");
        }
    }

    static /* synthetic */ void a(com.flurry.sdk.lf lfVar, com.flurry.sdk.ld ldVar) {
        synchronized (lfVar.f) {
            if (lfVar.h == ldVar) {
                lfVar.h = null;
            }
        }
    }
}
