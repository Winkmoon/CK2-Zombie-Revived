package com.flurry.sdk;

/* renamed from: com.flurry.sdk.if, reason: invalid class name */
/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class Cif implements com.flurry.sdk.lj.a {
    private static final java.lang.String e = com.flurry.sdk.Cif.class.getSimpleName();
    private static java.lang.String f = "https://proton.flurry.com/sdk/v1/config";
    private com.flurry.sdk.jy<com.flurry.sdk.id> i;
    private com.flurry.sdk.jy<java.util.List<com.flurry.sdk.im>> j;
    private boolean n;
    private java.lang.String o;
    private boolean p;
    private boolean q;
    private long s;
    private boolean t;
    private com.flurry.sdk.hs u;
    private boolean v;
    public final java.lang.Runnable a = new com.flurry.sdk.lw() { // from class: com.flurry.sdk.if.1
        @Override // com.flurry.sdk.lw
        public final void a() {
            com.flurry.sdk.Cif.this.f();
        }
    };
    public final com.flurry.sdk.ka<com.flurry.sdk.jf> b = new com.flurry.sdk.ka<com.flurry.sdk.jf>() { // from class: com.flurry.sdk.if.4
        @Override // com.flurry.sdk.ka
        public final /* bridge */ /* synthetic */ void a(com.flurry.sdk.jf jfVar) {
            com.flurry.sdk.Cif.this.f();
        }
    };
    public final com.flurry.sdk.ka<com.flurry.sdk.jg> c = new com.flurry.sdk.ka<com.flurry.sdk.jg>() { // from class: com.flurry.sdk.if.5
        @Override // com.flurry.sdk.ka
        public final /* bridge */ /* synthetic */ void a(com.flurry.sdk.jg jgVar) {
            com.flurry.sdk.Cif.this.f();
        }
    };
    public final com.flurry.sdk.ka<com.flurry.sdk.jj> d = new com.flurry.sdk.ka<com.flurry.sdk.jj>() { // from class: com.flurry.sdk.if.6
        @Override // com.flurry.sdk.ka
        public final /* bridge */ /* synthetic */ void a(com.flurry.sdk.jj jjVar) {
            if (jjVar.a) {
                com.flurry.sdk.Cif.this.f();
            }
        }
    };
    private final com.flurry.sdk.kj<com.flurry.sdk.hr> g = new com.flurry.sdk.kj<>("proton config request", new com.flurry.sdk.ir());
    private final com.flurry.sdk.kj<com.flurry.sdk.hs> h = new com.flurry.sdk.kj<>("proton config response", new com.flurry.sdk.is());
    private final com.flurry.sdk.ie k = new com.flurry.sdk.ie();
    private final com.flurry.sdk.jw<java.lang.String, com.flurry.sdk.hv> l = new com.flurry.sdk.jw<>();
    private final java.util.List<com.flurry.sdk.im> m = new java.util.ArrayList();
    private long r = 10000;

    static /* synthetic */ boolean h(com.flurry.sdk.Cif cif) {
        cif.v = true;
        return true;
    }

    public Cif() {
        this.p = true;
        com.flurry.sdk.li a = com.flurry.sdk.li.a();
        this.n = ((java.lang.Boolean) a.a("ProtonEnabled")).booleanValue();
        a.a("ProtonEnabled", (com.flurry.sdk.lj.a) this);
        com.flurry.sdk.kf.a(4, e, "initSettings, protonEnabled = " + this.n);
        this.o = (java.lang.String) a.a("ProtonConfigUrl");
        a.a("ProtonConfigUrl", (com.flurry.sdk.lj.a) this);
        com.flurry.sdk.kf.a(4, e, "initSettings, protonConfigUrl = " + this.o);
        this.p = ((java.lang.Boolean) a.a("analyticsEnabled")).booleanValue();
        a.a("analyticsEnabled", (com.flurry.sdk.lj.a) this);
        com.flurry.sdk.kf.a(4, e, "initSettings, AnalyticsEnabled = " + this.p);
        com.flurry.sdk.kb.a().a("com.flurry.android.sdk.IdProviderFinishedEvent", this.b);
        com.flurry.sdk.kb.a().a("com.flurry.android.sdk.IdProviderUpdatedAdvertisingId", this.c);
        com.flurry.sdk.kb.a().a("com.flurry.android.sdk.NetworkStateEvent", this.d);
        this.i = new com.flurry.sdk.jy<>(com.flurry.sdk.jr.a().a.getFileStreamPath(".yflurryprotonconfig." + java.lang.Long.toString(com.flurry.sdk.lr.i(com.flurry.sdk.jr.a().d), 16)), ".yflurryprotonconfig.", 1, new com.flurry.sdk.lc<com.flurry.sdk.id>() { // from class: com.flurry.sdk.if.7
            @Override // com.flurry.sdk.lc
            public final com.flurry.sdk.kz<com.flurry.sdk.id> a(int i) {
                return new com.flurry.sdk.id.a();
            }
        });
        this.j = new com.flurry.sdk.jy<>(com.flurry.sdk.jr.a().a.getFileStreamPath(".yflurryprotonreport." + java.lang.Long.toString(com.flurry.sdk.lr.i(com.flurry.sdk.jr.a().d), 16)), ".yflurryprotonreport.", 1, new com.flurry.sdk.lc<java.util.List<com.flurry.sdk.im>>() { // from class: com.flurry.sdk.if.8
            @Override // com.flurry.sdk.lc
            public final com.flurry.sdk.kz<java.util.List<com.flurry.sdk.im>> a(int i) {
                return new com.flurry.sdk.ky(new com.flurry.sdk.im.a());
            }
        });
        com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.if.9
            @Override // com.flurry.sdk.lw
            public final void a() {
                com.flurry.sdk.Cif.this.i();
            }
        });
        com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.if.10
            @Override // com.flurry.sdk.lw
            public final void a() {
                com.flurry.sdk.Cif.this.k();
            }
        });
    }

    @Override // com.flurry.sdk.lj.a
    public final void a(java.lang.String str, java.lang.Object obj) {
        switch (str) {
            case "ProtonEnabled":
                this.n = ((java.lang.Boolean) obj).booleanValue();
                com.flurry.sdk.kf.a(4, e, "onSettingUpdate, protonEnabled = " + this.n);
                break;
            case "ProtonConfigUrl":
                this.o = (java.lang.String) obj;
                com.flurry.sdk.kf.a(4, e, "onSettingUpdate, protonConfigUrl = " + this.o);
                break;
            case "analyticsEnabled":
                this.p = ((java.lang.Boolean) obj).booleanValue();
                com.flurry.sdk.kf.a(4, e, "onSettingUpdate, AnalyticsEnabled = " + this.p);
                break;
            default:
                com.flurry.sdk.kf.a(6, e, "onSettingUpdate internal error!");
                break;
        }
    }

    public final synchronized void a() {
        if (this.n) {
            com.flurry.sdk.lr.b();
            com.flurry.sdk.jd.a();
            com.flurry.sdk.ih.a = com.flurry.sdk.jd.d();
            this.v = false;
            f();
        }
    }

    public final synchronized void b() {
        if (this.n) {
            com.flurry.sdk.lr.b();
            com.flurry.sdk.jd.a();
            b(com.flurry.sdk.jd.d());
            j();
        }
    }

    public final synchronized void a(long j) {
        if (this.n) {
            com.flurry.sdk.lr.b();
            b(j);
            b("flurry.session_end", (java.util.Map<java.lang.String, java.lang.String>) null);
            com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.if.11
                @Override // com.flurry.sdk.lw
                public final void a() {
                    com.flurry.sdk.Cif.this.l();
                }
            });
        }
    }

    public final synchronized void c() {
        if (this.n) {
            com.flurry.sdk.lr.b();
            j();
        }
    }

    public final synchronized void a(java.lang.String str, java.util.Map<java.lang.String, java.lang.String> map) {
        if (this.n) {
            com.flurry.sdk.lr.b();
            b(str, map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void e() {
        if (this.n) {
            com.flurry.sdk.lr.b();
            android.content.SharedPreferences sharedPreferences = com.flurry.sdk.jr.a().a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0);
            if (sharedPreferences.getBoolean("com.flurry.android.flurryAppInstall", true)) {
                b("flurry.app_install", (java.util.Map<java.lang.String, java.lang.String>) null);
                android.content.SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putBoolean("com.flurry.android.flurryAppInstall", false);
                edit.apply();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r4v1, types: [RequestObjectType, byte[]] */
    public synchronized void f() {
        if (this.n) {
            com.flurry.sdk.lr.b();
            if (this.q && com.flurry.sdk.je.a().c()) {
                final long currentTimeMillis = java.lang.System.currentTimeMillis();
                final boolean z = !com.flurry.sdk.je.a().d();
                if (this.u != null) {
                    if (this.t != z) {
                        com.flurry.sdk.kf.a(3, e, "Limit ad tracking value has changed, purging");
                        this.u = null;
                    } else if (java.lang.System.currentTimeMillis() < this.s + (this.u.b * 1000)) {
                        com.flurry.sdk.kf.a(3, e, "Cached Proton config valid, no need to refresh");
                        if (!this.v) {
                            this.v = true;
                            b("flurry.session_start", (java.util.Map<java.lang.String, java.lang.String>) null);
                        }
                    } else if (java.lang.System.currentTimeMillis() >= this.s + (this.u.c * 1000)) {
                        com.flurry.sdk.kf.a(3, e, "Cached Proton config expired, purging");
                        this.u = null;
                        this.l.a();
                    }
                }
                com.flurry.sdk.jp.a().a(this);
                com.flurry.sdk.kf.a(3, e, "Requesting proton config");
                ?? g = g();
                if (g != 0) {
                    com.flurry.sdk.kl klVar = new com.flurry.sdk.kl();
                    klVar.f = android.text.TextUtils.isEmpty(this.o) ? f : this.o;
                    klVar.w = 5000;
                    klVar.g = com.flurry.sdk.kn.a.kPost;
                    klVar.a("Content-Type", "application/x-flurry;version=2");
                    klVar.a("Accept", "application/x-flurry;version=2");
                    klVar.a("FM-Checksum", java.lang.Integer.toString(com.flurry.sdk.kj.a((byte[]) g)));
                    klVar.c = new com.flurry.sdk.kv();
                    klVar.d = new com.flurry.sdk.kv();
                    klVar.b = g;
                    klVar.a = new com.flurry.sdk.kl.a<byte[], byte[]>() { // from class: com.flurry.sdk.if.2
                        @Override // com.flurry.sdk.kl.a
                        public final /* synthetic */ void a(com.flurry.sdk.kl<byte[], byte[]> klVar2, byte[] bArr) {
                            long j;
                            com.flurry.sdk.hs hsVar;
                            final byte[] bArr2 = bArr;
                            int i = klVar2.p;
                            com.flurry.sdk.kf.a(3, com.flurry.sdk.Cif.e, "Proton config request: HTTP status code is:" + i);
                            if (i == 400 || i == 406 || i == 412 || i == 415) {
                                com.flurry.sdk.Cif.this.r = 10000L;
                                return;
                            }
                            if (klVar2.c() && bArr2 != null) {
                                com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.if.2.1
                                    @Override // com.flurry.sdk.lw
                                    public final void a() {
                                        com.flurry.sdk.Cif.this.a(currentTimeMillis, z, bArr2);
                                    }
                                });
                                try {
                                    hsVar = (com.flurry.sdk.hs) com.flurry.sdk.Cif.this.h.b(bArr2);
                                } catch (java.lang.Exception e2) {
                                    com.flurry.sdk.kf.a(5, com.flurry.sdk.Cif.e, "Failed to decode proton config response: " + e2);
                                    hsVar = null;
                                }
                                r1 = com.flurry.sdk.Cif.b(hsVar) ? hsVar : null;
                                if (r1 != null) {
                                    com.flurry.sdk.Cif.this.r = 10000L;
                                    com.flurry.sdk.Cif.this.s = currentTimeMillis;
                                    com.flurry.sdk.Cif.this.t = z;
                                    com.flurry.sdk.Cif.this.u = r1;
                                    com.flurry.sdk.Cif.this.h();
                                    if (!com.flurry.sdk.Cif.this.v) {
                                        com.flurry.sdk.Cif.h(com.flurry.sdk.Cif.this);
                                        com.flurry.sdk.Cif.this.b("flurry.session_start", (java.util.Map<java.lang.String, java.lang.String>) null);
                                    }
                                    com.flurry.sdk.Cif.this.e();
                                }
                            }
                            if (r1 == null) {
                                long j2 = com.flurry.sdk.Cif.this.r << 1;
                                if (i == 429) {
                                    java.util.List<java.lang.String> a = klVar2.a("Retry-After");
                                    if (!a.isEmpty()) {
                                        java.lang.String str = a.get(0);
                                        com.flurry.sdk.kf.a(3, com.flurry.sdk.Cif.e, "Server returned retry time: " + str);
                                        try {
                                            j = java.lang.Long.parseLong(str) * 1000;
                                        } catch (java.lang.NumberFormatException e3) {
                                            com.flurry.sdk.kf.a(3, com.flurry.sdk.Cif.e, "Server returned nonsensical retry time");
                                        }
                                        com.flurry.sdk.Cif.this.r = j;
                                        com.flurry.sdk.kf.a(3, com.flurry.sdk.Cif.e, "Proton config request failed, backing off: " + com.flurry.sdk.Cif.this.r + "ms");
                                        com.flurry.sdk.jr.a().a(com.flurry.sdk.Cif.this.a, com.flurry.sdk.Cif.this.r);
                                    }
                                }
                                j = j2;
                                com.flurry.sdk.Cif.this.r = j;
                                com.flurry.sdk.kf.a(3, com.flurry.sdk.Cif.e, "Proton config request failed, backing off: " + com.flurry.sdk.Cif.this.r + "ms");
                                com.flurry.sdk.jr.a().a(com.flurry.sdk.Cif.this.a, com.flurry.sdk.Cif.this.r);
                            }
                        }
                    };
                    com.flurry.sdk.jp.a().a((java.lang.Object) this, (com.flurry.sdk.Cif) klVar);
                }
            }
        }
    }

    private byte[] g() {
        try {
            com.flurry.sdk.hr hrVar = new com.flurry.sdk.hr();
            hrVar.a = com.flurry.sdk.jr.a().d;
            hrVar.b = com.flurry.sdk.lo.a(com.flurry.sdk.jr.a().a);
            hrVar.c = com.flurry.sdk.lo.b(com.flurry.sdk.jr.a().a);
            hrVar.d = com.flurry.sdk.js.a();
            hrVar.e = 3;
            com.flurry.sdk.jn.a();
            hrVar.f = com.flurry.sdk.jn.c();
            hrVar.g = !com.flurry.sdk.je.a().d();
            hrVar.h = new com.flurry.sdk.hu();
            hrVar.h.a = new com.flurry.sdk.ho();
            hrVar.h.a.a = android.os.Build.MODEL;
            hrVar.h.a.b = android.os.Build.BRAND;
            hrVar.h.a.c = android.os.Build.ID;
            hrVar.h.a.d = android.os.Build.DEVICE;
            hrVar.h.a.e = android.os.Build.PRODUCT;
            hrVar.h.a.f = android.os.Build.VERSION.RELEASE;
            hrVar.i = new java.util.ArrayList();
            for (java.util.Map.Entry entry : java.util.Collections.unmodifiableMap(com.flurry.sdk.je.a().a).entrySet()) {
                com.flurry.sdk.ht htVar = new com.flurry.sdk.ht();
                htVar.a = ((com.flurry.sdk.jm) entry.getKey()).c;
                if (((com.flurry.sdk.jm) entry.getKey()).d) {
                    htVar.b = new java.lang.String((byte[]) entry.getValue());
                } else {
                    htVar.b = com.flurry.sdk.lr.b((byte[]) entry.getValue());
                }
                hrVar.i.add(htVar);
            }
            android.location.Location e2 = com.flurry.sdk.ji.a().e();
            if (e2 != null) {
                hrVar.j = new com.flurry.sdk.hy();
                hrVar.j.a = new com.flurry.sdk.hx();
                hrVar.j.a.a = com.flurry.sdk.lr.a(e2.getLatitude());
                hrVar.j.a.b = com.flurry.sdk.lr.a(e2.getLongitude());
                hrVar.j.a.c = (float) com.flurry.sdk.lr.a(e2.getAccuracy());
            }
            java.lang.String str = (java.lang.String) com.flurry.sdk.li.a().a("UserId");
            if (!str.equals("")) {
                hrVar.k = new com.flurry.sdk.ib();
                hrVar.k.a = str;
            }
            return this.g.a((com.flurry.sdk.kj<com.flurry.sdk.hr>) hrVar);
        } catch (java.lang.Exception e3) {
            com.flurry.sdk.kf.a(5, e, "Proton config request failed with exception: " + e3);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(com.flurry.sdk.hs hsVar) {
        boolean z;
        boolean z2;
        if (hsVar == null) {
            return false;
        }
        com.flurry.sdk.hq hqVar = hsVar.e;
        if (hqVar != null && hqVar.a != null) {
            for (int i = 0; i < hqVar.a.size(); i++) {
                com.flurry.sdk.hp hpVar = hqVar.a.get(i);
                if (hpVar != null) {
                    if (!hpVar.b.equals("") && hpVar.a != -1 && !hpVar.e.equals("")) {
                        java.util.List<com.flurry.sdk.hv> list = hpVar.c;
                        if (list != null) {
                            for (com.flurry.sdk.hv hvVar : list) {
                                if (hvVar.a.equals("")) {
                                    com.flurry.sdk.kf.a(3, e, "An event is missing a name");
                                    z2 = false;
                                    break;
                                }
                                if ((hvVar instanceof com.flurry.sdk.hw) && ((com.flurry.sdk.hw) hvVar).c.equals("")) {
                                    com.flurry.sdk.kf.a(3, e, "An event trigger is missing a param name");
                                    z2 = false;
                                    break;
                                }
                            }
                        }
                        z2 = true;
                        if (!z2) {
                        }
                    }
                    com.flurry.sdk.kf.a(3, e, "A callback template is missing required values");
                    z = false;
                    break;
                }
            }
        }
        z = true;
        if (z && (hsVar.e == null || hsVar.e.e == null || !hsVar.e.e.equals(""))) {
            return true;
        }
        com.flurry.sdk.kf.a(3, e, "Config response is missing required values.");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        java.util.List<com.flurry.sdk.hp> list;
        java.util.List<com.flurry.sdk.hv> list2;
        if (this.u != null) {
            com.flurry.sdk.kf.a(5, e, "Processing config response");
            com.flurry.sdk.il.a(this.u.e.c);
            com.flurry.sdk.il.b(this.u.e.d * 1000);
            com.flurry.sdk.in a = com.flurry.sdk.in.a();
            java.lang.String str = this.u.e.e;
            if (str != null && !str.endsWith(".do")) {
                com.flurry.sdk.kf.a(5, com.flurry.sdk.in.b, "overriding analytics agent report URL without an endpoint, are you sure?");
            }
            a.a = str;
            if (this.n) {
                com.flurry.sdk.li.a().a("analyticsEnabled", java.lang.Boolean.valueOf(this.u.f.b));
            }
            this.l.a();
            com.flurry.sdk.hq hqVar = this.u.e;
            if (hqVar != null && (list = hqVar.a) != null) {
                for (com.flurry.sdk.hp hpVar : list) {
                    if (hpVar != null && (list2 = hpVar.c) != null) {
                        for (com.flurry.sdk.hv hvVar : list2) {
                            if (hvVar != null && !android.text.TextUtils.isEmpty(hvVar.a)) {
                                hvVar.b = hpVar;
                                this.l.a((com.flurry.sdk.jw<java.lang.String, com.flurry.sdk.hv>) hvVar.a, (java.lang.String) hvVar);
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(java.lang.String str, java.util.Map<java.lang.String, java.lang.String> map) {
        com.flurry.sdk.iq iqVar;
        boolean z;
        com.flurry.sdk.kf.a(3, e, "Event triggered: " + str);
        if (!this.p) {
            com.flurry.sdk.kf.e(e, "Analytics and pulse have been disabled.");
        } else if (this.u == null) {
            com.flurry.sdk.kf.a(3, e, "Config response is empty. No events to fire.");
        } else {
            com.flurry.sdk.lr.b();
            if (!android.text.TextUtils.isEmpty(str)) {
                java.util.List<com.flurry.sdk.hv> a = this.l.a((com.flurry.sdk.jw<java.lang.String, com.flurry.sdk.hv>) str);
                if (a == null) {
                    com.flurry.sdk.kf.a(3, e, "No events to fire. Returning.");
                } else if (a.size() == 0) {
                    com.flurry.sdk.kf.a(3, e, "No events to fire. Returning.");
                } else {
                    long currentTimeMillis = java.lang.System.currentTimeMillis();
                    boolean z2 = map != null;
                    switch (str) {
                        case "flurry.session_start":
                            iqVar = com.flurry.sdk.iq.SESSION_START;
                            break;
                        case "flurry.session_end":
                            iqVar = com.flurry.sdk.iq.SESSION_END;
                            break;
                        case "flurry.app_install":
                            iqVar = com.flurry.sdk.iq.INSTALL;
                            break;
                        default:
                            iqVar = com.flurry.sdk.iq.APPLICATION_EVENT;
                            break;
                    }
                    java.util.HashMap hashMap = new java.util.HashMap();
                    for (com.flurry.sdk.hv hvVar : a) {
                        boolean z3 = false;
                        if (hvVar instanceof com.flurry.sdk.hw) {
                            com.flurry.sdk.kf.a(4, e, "Event contains triggers.");
                            java.lang.String[] strArr = ((com.flurry.sdk.hw) hvVar).d;
                            if (strArr == null) {
                                com.flurry.sdk.kf.a(4, e, "Template does not contain trigger values. Firing.");
                                z3 = true;
                            } else if (strArr.length == 0) {
                                com.flurry.sdk.kf.a(4, e, "Template does not contain trigger values. Firing.");
                                z3 = true;
                            } else if (map == null) {
                                com.flurry.sdk.kf.a(4, e, "Publisher has not passed in params list. Not firing.");
                            }
                            java.lang.String str2 = map.get(((com.flurry.sdk.hw) hvVar).c);
                            if (str2 == null) {
                                com.flurry.sdk.kf.a(4, e, "Publisher params has no value associated with proton key. Not firing.");
                            } else {
                                int i = 0;
                                while (true) {
                                    if (i >= strArr.length) {
                                        z = z3;
                                    } else if (!strArr[i].equals(str2)) {
                                        i++;
                                    } else {
                                        z = true;
                                    }
                                }
                                if (!z) {
                                    com.flurry.sdk.kf.a(4, e, "Publisher params list does not match proton param values. Not firing.");
                                } else {
                                    com.flurry.sdk.kf.a(4, e, "Publisher params match proton values. Firing.");
                                }
                            }
                        }
                        com.flurry.sdk.hp hpVar = hvVar.b;
                        if (hpVar == null) {
                            com.flurry.sdk.kf.a(3, e, "Template is empty. Not firing current event.");
                        } else {
                            com.flurry.sdk.kf.a(3, e, "Creating callback report for partner: " + hpVar.b);
                            java.util.HashMap hashMap2 = new java.util.HashMap();
                            hashMap2.put("event_name", str);
                            hashMap2.put("event_time_millis", java.lang.String.valueOf(currentTimeMillis));
                            java.lang.String a2 = this.k.a(hpVar.e, hashMap2);
                            java.lang.String str3 = null;
                            if (hpVar.f != null) {
                                str3 = this.k.a(hpVar.f, hashMap2);
                            }
                            hashMap.put(java.lang.Long.valueOf(hpVar.a), new com.flurry.sdk.ii(hpVar.b, hpVar.a, a2, java.lang.System.currentTimeMillis() + 259200000, this.u.e.b, hpVar.g, hpVar.d, hpVar.j, hpVar.i, hpVar.h, str3));
                        }
                    }
                    if (hashMap.size() != 0) {
                        com.flurry.sdk.jd.a();
                        long d = com.flurry.sdk.jd.d();
                        com.flurry.sdk.jd.a();
                        com.flurry.sdk.im imVar = new com.flurry.sdk.im(str, z2, d, com.flurry.sdk.jd.g(), iqVar, hashMap);
                        if ("flurry.session_end".equals(str)) {
                            com.flurry.sdk.kf.a(3, e, "Storing Pulse callbacks for event: " + str);
                            this.m.add(imVar);
                        } else {
                            com.flurry.sdk.kf.a(3, e, "Firing Pulse callbacks for event: " + str);
                            com.flurry.sdk.il.a().a(imVar);
                        }
                    }
                }
            }
        }
    }

    private synchronized void b(long j) {
        java.util.Iterator<com.flurry.sdk.im> it = this.m.iterator();
        while (it.hasNext()) {
            if (j == it.next().a) {
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void i() {
        com.flurry.sdk.hs hsVar;
        com.flurry.sdk.id a = this.i.a();
        if (a != null) {
            try {
                hsVar = this.h.b(a.c);
            } catch (java.lang.Exception e2) {
                com.flurry.sdk.kf.a(5, e, "Failed to decode saved proton config response: " + e2);
                this.i.b();
                hsVar = null;
            }
            if (!b(hsVar)) {
                hsVar = null;
            }
            if (hsVar != null) {
                com.flurry.sdk.kf.a(4, e, "Loaded saved proton config response");
                this.r = 10000L;
                this.s = a.a;
                this.t = a.b;
                this.u = hsVar;
                h();
            }
        }
        this.q = true;
        com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.if.3
            @Override // com.flurry.sdk.lw
            public final void a() {
                com.flurry.sdk.Cif.this.f();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(long j, boolean z, byte[] bArr) {
        if (bArr != null) {
            com.flurry.sdk.kf.a(4, e, "Saving proton config response");
            com.flurry.sdk.id idVar = new com.flurry.sdk.id();
            idVar.a = j;
            idVar.b = z;
            idVar.c = bArr;
            this.i.a(idVar);
        }
    }

    private synchronized void j() {
        if (!this.p) {
            com.flurry.sdk.kf.e(e, "Analytics disabled, not sending pulse reports.");
        } else {
            com.flurry.sdk.kf.a(4, e, "Sending " + this.m.size() + " queued reports.");
            for (com.flurry.sdk.im imVar : this.m) {
                com.flurry.sdk.kf.a(3, e, "Firing Pulse callbacks for event: " + imVar.c);
                com.flurry.sdk.il.a().a(imVar);
            }
            m();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void k() {
        com.flurry.sdk.kf.a(4, e, "Loading queued report data.");
        java.util.List<com.flurry.sdk.im> a = this.j.a();
        if (a != null) {
            this.m.addAll(a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void l() {
        com.flurry.sdk.kf.a(4, e, "Saving queued report data.");
        this.j.a(this.m);
    }

    private synchronized void m() {
        this.m.clear();
        this.j.b();
    }
}
