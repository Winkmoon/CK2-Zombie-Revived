package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class il {
    public static int a;
    public static int b;
    public static java.util.concurrent.atomic.AtomicInteger c;
    static com.flurry.sdk.jy<java.util.List<com.flurry.sdk.im>> d;
    private static com.flurry.sdk.il f;
    private static java.util.Map<java.lang.Integer, com.flurry.sdk.im> g;
    private final java.util.concurrent.atomic.AtomicInteger h;
    private long i;
    private java.lang.String e = com.flurry.sdk.il.class.getSimpleName();
    private com.flurry.sdk.ka<com.flurry.sdk.jj> j = new com.flurry.sdk.ka<com.flurry.sdk.jj>() { // from class: com.flurry.sdk.il.1
        @Override // com.flurry.sdk.ka
        public final /* synthetic */ void a(com.flurry.sdk.jj jjVar) {
            com.flurry.sdk.jj jjVar2 = jjVar;
            com.flurry.sdk.kf.a(4, com.flurry.sdk.il.this.e, "onNetworkStateChanged : isNetworkEnable = " + jjVar2.a);
            if (!jjVar2.a) {
                return;
            }
            com.flurry.sdk.jr.a().b(new java.lang.Runnable() { // from class: com.flurry.sdk.il.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    com.flurry.sdk.in.a().b();
                }
            });
        }
    };

    private il() {
        g = new java.util.HashMap();
        this.h = new java.util.concurrent.atomic.AtomicInteger(0);
        c = new java.util.concurrent.atomic.AtomicInteger(0);
        if (b == 0) {
            b = 600000;
        }
        if (a == 0) {
            a = 15;
        }
        this.i = com.flurry.sdk.jr.a().a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).getLong("timeToSendNextPulseReport", 0L);
        if (d == null) {
            m();
        }
        com.flurry.sdk.kb.a().a("com.flurry.android.sdk.NetworkStateEvent", this.j);
    }

    public static synchronized com.flurry.sdk.il a() {
        com.flurry.sdk.il ilVar;
        synchronized (com.flurry.sdk.il.class) {
            if (f == null) {
                f = new com.flurry.sdk.il();
            }
            ilVar = f;
        }
        return ilVar;
    }

    public static void b() {
        if (f != null) {
            com.flurry.sdk.kb.a().b("com.flurry.android.sdk.NetworkStateEvent", f.j);
            g.clear();
            g = null;
            f = null;
        }
    }

    public static void a(int i) {
        a = i;
    }

    public static void b(int i) {
        b = i;
    }

    public final synchronized void a(com.flurry.sdk.im imVar) {
        if (imVar == null) {
            com.flurry.sdk.kf.a(3, this.e, "Must add valid PulseCallbackAsyncReportInfo");
        } else {
            com.flurry.sdk.kf.a(3, this.e, "Adding and sending " + imVar.c + " report to PulseCallbackManager.");
            if (imVar.a().size() != 0) {
                if (this.i == 0) {
                    this.i = java.lang.System.currentTimeMillis() + b;
                    com.flurry.sdk.jr.a().b(new java.lang.Runnable() { // from class: com.flurry.sdk.il.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            com.flurry.sdk.il.this.k();
                        }
                    });
                }
                int l = l();
                imVar.b = l;
                g.put(java.lang.Integer.valueOf(l), imVar);
                java.util.Iterator<com.flurry.sdk.ii> it = imVar.a().iterator();
                while (it.hasNext()) {
                    com.flurry.sdk.hk.a().c.b((com.flurry.sdk.ih) it.next());
                }
            }
        }
    }

    public final synchronized void b(com.flurry.sdk.im imVar) {
        if (imVar == null) {
            com.flurry.sdk.kf.a(3, this.e, "Must add valid PulseCallbackAsyncReportInfo");
        } else {
            if (this.i == 0) {
                this.i = java.lang.System.currentTimeMillis() + b;
                com.flurry.sdk.jr.a().b(new java.lang.Runnable() { // from class: com.flurry.sdk.il.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        com.flurry.sdk.il.this.k();
                    }
                });
            }
            int l = l();
            imVar.b = l;
            g.put(java.lang.Integer.valueOf(l), imVar);
            java.util.Iterator<com.flurry.sdk.ii> it = imVar.a().iterator();
            while (it.hasNext()) {
                java.util.Iterator<com.flurry.sdk.ij> it2 = it.next().a.iterator();
                while (it2.hasNext()) {
                    it2.next();
                    c.incrementAndGet();
                    if (h()) {
                        com.flurry.sdk.kf.a(3, this.e, "Max Callback Attempts threshold reached. Sending callback logging reports");
                        j();
                    }
                }
            }
            if (i()) {
                com.flurry.sdk.kf.a(3, this.e, "Time threshold reached. Sending callback logging reports");
                j();
            }
            com.flurry.sdk.kf.a(3, this.e, "Restoring " + imVar.c + " report to PulseCallbackManager. Number of stored completed callbacks: " + c.get());
        }
    }

    private synchronized void c(int i) {
        com.flurry.sdk.kf.a(3, this.e, "Removing report " + i + " from PulseCallbackManager");
        g.remove(java.lang.Integer.valueOf(i));
    }

    public static java.util.List<com.flurry.sdk.im> c() {
        return new java.util.ArrayList(g.values());
    }

    public final synchronized void a(final com.flurry.sdk.ij ijVar) {
        com.flurry.sdk.kf.a(3, this.e, ijVar.l.m.c + " report sent successfully to " + ijVar.l.k);
        ijVar.f = com.flurry.sdk.ik.COMPLETE;
        ijVar.g = "";
        c(ijVar);
        if (com.flurry.sdk.kf.c() <= 3 && com.flurry.sdk.kf.d()) {
            com.flurry.sdk.jr.a().a(new java.lang.Runnable() { // from class: com.flurry.sdk.il.4
                @Override // java.lang.Runnable
                public final void run() {
                    android.widget.Toast.makeText(com.flurry.sdk.jr.a().a, "PulseCallbackReportInfo HTTP Response Code: " + ijVar.e + " for url: " + ijVar.l.r, 1).show();
                }
            });
        }
    }

    public final synchronized boolean a(com.flurry.sdk.ij ijVar, java.lang.String str) {
        boolean z = true;
        synchronized (this) {
            ijVar.h++;
            ijVar.i = java.lang.System.currentTimeMillis();
            if ((ijVar.h > ijVar.l.d) || android.text.TextUtils.isEmpty(str)) {
                com.flurry.sdk.kf.a(3, this.e, "Maximum number of redirects attempted. Aborting: " + ijVar.l.m.c + " report to " + ijVar.l.k);
                ijVar.f = com.flurry.sdk.ik.INVALID_RESPONSE;
                ijVar.g = "";
                c(ijVar);
                z = false;
            } else {
                com.flurry.sdk.kf.a(3, this.e, "Report to " + ijVar.l.k + " redirecting to url: " + str);
                ijVar.l.r = str;
                d();
            }
        }
        return z;
    }

    public final synchronized void b(com.flurry.sdk.ij ijVar) {
        com.flurry.sdk.kf.a(3, this.e, "Maximum number of attempts reached. Aborting: " + ijVar.l.m.c);
        ijVar.f = com.flurry.sdk.ik.TIMEOUT;
        ijVar.i = java.lang.System.currentTimeMillis();
        ijVar.g = "";
        c(ijVar);
    }

    public final synchronized boolean b(com.flurry.sdk.ij ijVar, java.lang.String str) {
        boolean z = false;
        synchronized (this) {
            ijVar.f = com.flurry.sdk.ik.INVALID_RESPONSE;
            ijVar.i = java.lang.System.currentTimeMillis();
            if (str == null) {
                str = "";
            }
            ijVar.g = str;
            com.flurry.sdk.ii iiVar = ijVar.l;
            if (iiVar.p >= iiVar.c) {
                com.flurry.sdk.kf.a(3, this.e, "Maximum number of attempts reached. Aborting: " + ijVar.l.m.c + " report to " + ijVar.l.k);
                c(ijVar);
            } else if (!com.flurry.sdk.ly.h(ijVar.l.r)) {
                com.flurry.sdk.kf.a(3, this.e, "Url: " + ijVar.l.r + " is invalid.");
                c(ijVar);
            } else {
                com.flurry.sdk.kf.a(3, this.e, "Retrying callback to " + ijVar.l.m.c + " in: " + (ijVar.l.g / 1000) + " seconds.");
                ijVar.a();
                c.incrementAndGet();
                d();
                g();
                z = true;
            }
        }
        return z;
    }

    public final void d() {
        com.flurry.sdk.jr.a().b(new java.lang.Runnable() { // from class: com.flurry.sdk.il.5
            @Override // java.lang.Runnable
            public final void run() {
                com.flurry.sdk.il.a();
                java.util.List<com.flurry.sdk.im> c2 = com.flurry.sdk.il.c();
                if (com.flurry.sdk.il.d == null) {
                    com.flurry.sdk.il.m();
                }
                com.flurry.sdk.il.d.a(c2);
            }
        });
    }

    public static java.util.List<com.flurry.sdk.im> e() {
        if (d == null) {
            m();
        }
        return d.a();
    }

    private void c(com.flurry.sdk.ij ijVar) {
        ijVar.d = true;
        ijVar.a();
        c.incrementAndGet();
        ijVar.l.c();
        com.flurry.sdk.kf.a(3, this.e, ijVar.l.m.c + " report to " + ijVar.l.k + " finalized.");
        d();
        g();
    }

    private void g() {
        if (h() || i()) {
            com.flurry.sdk.kf.a(3, this.e, "Threshold reached. Sending callback logging reports");
            j();
        }
    }

    private static boolean h() {
        return c.intValue() >= a;
    }

    private boolean i() {
        return java.lang.System.currentTimeMillis() > this.i;
    }

    private void j() {
        for (com.flurry.sdk.im imVar : c()) {
            java.util.Iterator<com.flurry.sdk.ii> it = imVar.a().iterator();
            boolean z = false;
            while (it.hasNext()) {
                java.util.Iterator<com.flurry.sdk.ij> it2 = it.next().a.iterator();
                while (it2.hasNext()) {
                    com.flurry.sdk.ij next = it2.next();
                    if (next.j) {
                        it2.remove();
                    } else if (!next.f.equals(com.flurry.sdk.ik.PENDING_COMPLETION)) {
                        next.j = true;
                        z = true;
                    }
                }
            }
            if (z) {
                com.flurry.sdk.in.a().a(imVar);
            }
        }
        com.flurry.sdk.in.a().b();
        this.i = java.lang.System.currentTimeMillis() + b;
        k();
        java.util.List<com.flurry.sdk.im> c2 = c();
        for (int i = 0; i < c2.size(); i++) {
            com.flurry.sdk.im imVar2 = c2.get(i);
            if (imVar2.b()) {
                c(imVar2.b);
            } else {
                java.util.List<com.flurry.sdk.ii> a2 = imVar2.a();
                for (int i2 = 0; i2 < a2.size(); i2++) {
                    com.flurry.sdk.ii iiVar = a2.get(i2);
                    if (iiVar.l) {
                        imVar2.d.remove(java.lang.Long.valueOf(iiVar.b));
                    } else {
                        java.util.Iterator<com.flurry.sdk.ij> it3 = iiVar.a.iterator();
                        while (it3.hasNext()) {
                            if (it3.next().j) {
                                it3.remove();
                            }
                        }
                    }
                }
            }
        }
        c = new java.util.concurrent.atomic.AtomicInteger(0);
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        android.content.SharedPreferences.Editor edit = com.flurry.sdk.jr.a().a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).edit();
        edit.putLong("timeToSendNextPulseReport", this.i);
        edit.commit();
    }

    private synchronized int l() {
        return this.h.incrementAndGet();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void m() {
        d = new com.flurry.sdk.jy<>(com.flurry.sdk.jr.a().a.getFileStreamPath(".yflurryanongoingpulsecallbackreporter"), ".yflurryanongoingpulsecallbackreporter", 2, new com.flurry.sdk.lc<java.util.List<com.flurry.sdk.im>>() { // from class: com.flurry.sdk.il.6
            @Override // com.flurry.sdk.lc
            public final com.flurry.sdk.kz<java.util.List<com.flurry.sdk.im>> a(int i) {
                return new com.flurry.sdk.ky(new com.flurry.sdk.im.a());
            }
        });
    }
}
