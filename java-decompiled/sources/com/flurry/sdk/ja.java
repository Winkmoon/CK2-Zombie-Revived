package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class ja implements com.flurry.sdk.lj.a {
    static final java.lang.String a = com.flurry.sdk.ja.class.getSimpleName();
    static int b = 100;
    static int c = 10;
    static int d = 1000;
    static int e = 160000;
    static int f = 50;
    java.lang.ref.WeakReference<com.flurry.sdk.ld> g;
    java.io.File h;
    com.flurry.sdk.jy<java.util.List<com.flurry.sdk.iy>> i;
    public boolean j;
    boolean k;
    java.lang.String l;
    byte m;
    java.lang.Long n;
    private long u;
    private final java.util.concurrent.atomic.AtomicInteger q = new java.util.concurrent.atomic.AtomicInteger(0);
    private final java.util.concurrent.atomic.AtomicInteger r = new java.util.concurrent.atomic.AtomicInteger(0);
    private final java.util.concurrent.atomic.AtomicInteger s = new java.util.concurrent.atomic.AtomicInteger(0);
    private final com.flurry.sdk.ka<com.flurry.sdk.le> t = new com.flurry.sdk.ka<com.flurry.sdk.le>() { // from class: com.flurry.sdk.ja.1
        @Override // com.flurry.sdk.ka
        public final /* synthetic */ void a(com.flurry.sdk.le leVar) {
            com.flurry.sdk.le leVar2 = leVar;
            if (com.flurry.sdk.ja.this.g == null || leVar2.b == com.flurry.sdk.ja.this.g.get()) {
                switch (com.flurry.sdk.ja.AnonymousClass8.a[leVar2.c - 1]) {
                    case 1:
                        final com.flurry.sdk.ja jaVar = com.flurry.sdk.ja.this;
                        com.flurry.sdk.ld ldVar = leVar2.b;
                        android.content.Context context = leVar2.a.get();
                        jaVar.g = new java.lang.ref.WeakReference<>(ldVar);
                        com.flurry.sdk.li a2 = com.flurry.sdk.li.a();
                        jaVar.k = ((java.lang.Boolean) a2.a("LogEvents")).booleanValue();
                        a2.a("LogEvents", (com.flurry.sdk.lj.a) jaVar);
                        com.flurry.sdk.kf.a(4, com.flurry.sdk.ja.a, "initSettings, LogEvents = " + jaVar.k);
                        jaVar.l = (java.lang.String) a2.a("UserId");
                        a2.a("UserId", (com.flurry.sdk.lj.a) jaVar);
                        com.flurry.sdk.kf.a(4, com.flurry.sdk.ja.a, "initSettings, UserId = " + jaVar.l);
                        jaVar.m = ((java.lang.Byte) a2.a("Gender")).byteValue();
                        a2.a("Gender", (com.flurry.sdk.lj.a) jaVar);
                        com.flurry.sdk.kf.a(4, com.flurry.sdk.ja.a, "initSettings, Gender = " + ((int) jaVar.m));
                        jaVar.n = (java.lang.Long) a2.a("Age");
                        a2.a("Age", (com.flurry.sdk.lj.a) jaVar);
                        com.flurry.sdk.kf.a(4, com.flurry.sdk.ja.a, "initSettings, BirthDate = " + jaVar.n);
                        jaVar.o = ((java.lang.Boolean) a2.a("analyticsEnabled")).booleanValue();
                        a2.a("analyticsEnabled", (com.flurry.sdk.lj.a) jaVar);
                        com.flurry.sdk.kf.a(4, com.flurry.sdk.ja.a, "initSettings, AnalyticsEnabled = " + jaVar.o);
                        jaVar.h = context.getFileStreamPath(".flurryagent." + java.lang.Integer.toString(com.flurry.sdk.jr.a().d.hashCode(), 16));
                        jaVar.i = new com.flurry.sdk.jy<>(context.getFileStreamPath(".yflurryreport." + java.lang.Long.toString(com.flurry.sdk.lr.i(com.flurry.sdk.jr.a().d), 16)), ".yflurryreport.", 1, new com.flurry.sdk.lc<java.util.List<com.flurry.sdk.iy>>() { // from class: com.flurry.sdk.ja.10
                            @Override // com.flurry.sdk.lc
                            public final com.flurry.sdk.kz<java.util.List<com.flurry.sdk.iy>> a(int i) {
                                return new com.flurry.sdk.ky(new com.flurry.sdk.iy.a());
                            }
                        });
                        jaVar.a(context);
                        jaVar.a(true);
                        if (com.flurry.sdk.hk.a().a != null) {
                            com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.ja.11
                                @Override // com.flurry.sdk.lw
                                public final void a() {
                                    com.flurry.sdk.hk.a().a.a();
                                }
                            });
                        }
                        com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.ja.12
                            @Override // com.flurry.sdk.lw
                            public final void a() {
                                com.flurry.sdk.ja.this.e();
                            }
                        });
                        com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.ja.13
                            @Override // com.flurry.sdk.lw
                            public final void a() {
                                com.flurry.sdk.ja.d(com.flurry.sdk.ja.this);
                            }
                        });
                        if (com.flurry.sdk.je.a().c()) {
                            com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.ja.14
                                @Override // com.flurry.sdk.lw
                                public final void a() {
                                    com.flurry.sdk.ja jaVar2 = com.flurry.sdk.ja.this;
                                    com.flurry.sdk.jd.a();
                                    jaVar2.a(true, com.flurry.sdk.jd.d());
                                }
                            });
                            break;
                        } else {
                            com.flurry.sdk.kb.a().a("com.flurry.android.sdk.IdProviderFinishedEvent", jaVar.p);
                            break;
                        }
                    case 2:
                        com.flurry.sdk.ja jaVar2 = com.flurry.sdk.ja.this;
                        leVar2.a.get();
                        jaVar2.a();
                        break;
                    case 3:
                        com.flurry.sdk.ja jaVar3 = com.flurry.sdk.ja.this;
                        leVar2.a.get();
                        jaVar3.b();
                        break;
                    case 4:
                        com.flurry.sdk.kb.a().b("com.flurry.android.sdk.FlurrySessionEvent", com.flurry.sdk.ja.this.t);
                        com.flurry.sdk.ja.this.a(leVar2.d);
                        break;
                }
            }
        }
    };
    private int v = -1;
    private final java.util.List<com.flurry.sdk.iy> w = new java.util.ArrayList();
    private final java.util.Map<java.lang.String, java.util.List<java.lang.String>> x = new java.util.HashMap();
    private final java.util.Map<java.lang.String, java.lang.String> y = new java.util.HashMap();
    private final java.util.Map<java.lang.String, com.flurry.sdk.iu> z = new java.util.HashMap();
    private final java.util.List<com.flurry.sdk.iv> A = new java.util.ArrayList();
    private boolean B = true;
    private int C = 0;
    private final java.util.List<com.flurry.sdk.it> D = new java.util.ArrayList();
    private int E = 0;
    private int F = 0;
    boolean o = true;
    private final com.flurry.sdk.hl G = new com.flurry.sdk.hl();
    final com.flurry.sdk.ka<com.flurry.sdk.jf> p = new com.flurry.sdk.ka<com.flurry.sdk.jf>() { // from class: com.flurry.sdk.ja.9
        @Override // com.flurry.sdk.ka
        public final /* synthetic */ void a(com.flurry.sdk.jf jfVar) {
            com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.ja.9.1
                @Override // com.flurry.sdk.lw
                public final void a() {
                    com.flurry.sdk.ja jaVar = com.flurry.sdk.ja.this;
                    com.flurry.sdk.jd.a();
                    jaVar.a(true, com.flurry.sdk.jd.d());
                }
            });
        }
    };

    /* renamed from: com.flurry.sdk.ja$8, reason: invalid class name */
    static /* synthetic */ class AnonymousClass8 {
        static final /* synthetic */ int[] a = new int[com.flurry.sdk.le.a.a().length];

        static {
            try {
                a[com.flurry.sdk.le.a.a - 1] = 1;
            } catch (java.lang.NoSuchFieldError e) {
            }
            try {
                a[com.flurry.sdk.le.a.c - 1] = 2;
            } catch (java.lang.NoSuchFieldError e2) {
            }
            try {
                a[com.flurry.sdk.le.a.d - 1] = 3;
            } catch (java.lang.NoSuchFieldError e3) {
            }
            try {
                a[com.flurry.sdk.le.a.e - 1] = 4;
            } catch (java.lang.NoSuchFieldError e4) {
            }
        }
    }

    public ja() {
        com.flurry.sdk.kb.a().a("com.flurry.android.sdk.FlurrySessionEvent", this.t);
    }

    public final synchronized void a() {
        this.v = com.flurry.sdk.lp.e();
        if (com.flurry.sdk.hk.a().c != null) {
            com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.ja.15
                @Override // com.flurry.sdk.lw
                public final void a() {
                    com.flurry.sdk.hk.a().c.d();
                }
            });
        }
        if (this.o && com.flurry.sdk.hk.a().a != null) {
            com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.ja.16
                @Override // com.flurry.sdk.lw
                public final void a() {
                    com.flurry.sdk.hk.a().a.b();
                }
            });
        }
    }

    public final synchronized void b() {
        a(false);
        com.flurry.sdk.jd.a();
        final long d2 = com.flurry.sdk.jd.d();
        com.flurry.sdk.jd.a();
        final long f2 = com.flurry.sdk.jd.f();
        com.flurry.sdk.jd.a();
        final long j = 0;
        com.flurry.sdk.jq i = com.flurry.sdk.jd.i();
        if (i != null) {
            j = i.f;
        }
        com.flurry.sdk.jd.a();
        final int i2 = com.flurry.sdk.jd.h().e;
        com.flurry.sdk.jd.a();
        b(com.flurry.sdk.jd.f());
        if (this.o && com.flurry.sdk.hk.a().a != null) {
            com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.ja.2
                @Override // com.flurry.sdk.lw
                public final void a() {
                    com.flurry.sdk.hk.a().a.a(d2);
                }
            });
        }
        com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.ja.3
            @Override // com.flurry.sdk.lw
            public final void a() {
                com.flurry.sdk.ja.this.f();
            }
        });
        if (com.flurry.sdk.je.a().c()) {
            com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.ja.4
                @Override // com.flurry.sdk.lw
                public final void a() {
                    com.flurry.sdk.iy a2 = com.flurry.sdk.ja.this.a(d2, f2, j, i2);
                    com.flurry.sdk.ja.this.w.clear();
                    com.flurry.sdk.ja.this.w.add(a2);
                    com.flurry.sdk.ja.this.d();
                }
            });
        }
    }

    public final synchronized void a(final long j) {
        com.flurry.sdk.kb.a().a(this.p);
        com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.ja.5
            @Override // com.flurry.sdk.lw
            public final void a() {
                if (com.flurry.sdk.ja.this.o && com.flurry.sdk.hk.a().a != null) {
                    com.flurry.sdk.hk.a().a.c();
                }
                if (com.flurry.sdk.hk.a().c != null) {
                    com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.ja.5.1
                        @Override // com.flurry.sdk.lw
                        public final void a() {
                            com.flurry.sdk.hk.a().c.c = true;
                        }
                    });
                }
            }
        });
        if (com.flurry.sdk.je.a().c()) {
            com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.ja.6
                @Override // com.flurry.sdk.lw
                public final void a() {
                    com.flurry.sdk.ja.this.a(false, j);
                }
            });
        }
        com.flurry.sdk.li.a().b("Gender", this);
        com.flurry.sdk.li.a().b("UserId", this);
        com.flurry.sdk.li.a().b("Age", this);
        com.flurry.sdk.li.a().b("LogEvents", this);
    }

    @Override // com.flurry.sdk.lj.a
    public final void a(java.lang.String str, java.lang.Object obj) {
        switch (str) {
            case "LogEvents":
                this.k = ((java.lang.Boolean) obj).booleanValue();
                com.flurry.sdk.kf.a(4, a, "onSettingUpdate, LogEvents = " + this.k);
                break;
            case "UserId":
                this.l = (java.lang.String) obj;
                com.flurry.sdk.kf.a(4, a, "onSettingUpdate, UserId = " + this.l);
                break;
            case "Gender":
                this.m = ((java.lang.Byte) obj).byteValue();
                com.flurry.sdk.kf.a(4, a, "onSettingUpdate, Gender = " + ((int) this.m));
                break;
            case "Age":
                this.n = (java.lang.Long) obj;
                com.flurry.sdk.kf.a(4, a, "onSettingUpdate, Birthdate = " + this.n);
                break;
            case "analyticsEnabled":
                this.o = ((java.lang.Boolean) obj).booleanValue();
                com.flurry.sdk.kf.a(4, a, "onSettingUpdate, AnalyticsEnabled = " + this.o);
                break;
            default:
                com.flurry.sdk.kf.a(6, a, "onSettingUpdate internal error!");
                break;
        }
    }

    final void a(android.content.Context context) {
        android.os.Bundle extras;
        if ((context instanceof android.app.Activity) && (extras = ((android.app.Activity) context).getIntent().getExtras()) != null) {
            com.flurry.sdk.kf.a(3, a, "Launch Options Bundle is present " + extras.toString());
            for (java.lang.String str : extras.keySet()) {
                if (str != null) {
                    java.lang.Object obj = extras.get(str);
                    java.lang.String obj2 = obj != null ? obj.toString() : "null";
                    this.x.put(str, new java.util.ArrayList(java.util.Arrays.asList(obj2)));
                    com.flurry.sdk.kf.a(3, a, "Launch options Key: " + str + ". Its value: " + obj2);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01bf  */
    @android.annotation.TargetApi(18)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void a(boolean r11) {
        /*
            Method dump skipped, instructions count: 467
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.ja.a(boolean):void");
    }

    private synchronized void b(long j) {
        for (com.flurry.sdk.iv ivVar : this.A) {
            if (ivVar.b && !ivVar.c) {
                ivVar.a(j);
            }
        }
    }

    final synchronized com.flurry.sdk.iy a(long j, long j2, long j3, int i) {
        com.flurry.sdk.iy iyVar;
        com.flurry.sdk.iz izVar = new com.flurry.sdk.iz();
        izVar.a = com.flurry.sdk.jn.a().i();
        izVar.b = j;
        izVar.c = j2;
        izVar.d = j3;
        izVar.e = this.y;
        com.flurry.sdk.jd.a();
        com.flurry.sdk.jq i2 = com.flurry.sdk.jd.i();
        izVar.f = i2 != null ? i2.d() : null;
        com.flurry.sdk.jd.a();
        com.flurry.sdk.jq i3 = com.flurry.sdk.jd.i();
        izVar.g = i3 != null ? i3.e() : null;
        com.flurry.sdk.jd.a();
        com.flurry.sdk.jq i4 = com.flurry.sdk.jd.i();
        izVar.h = i4 != null ? i4.f() : null;
        com.flurry.sdk.jh.a();
        izVar.i = com.flurry.sdk.jh.b();
        com.flurry.sdk.jh.a();
        izVar.j = java.util.TimeZone.getDefault().getID();
        izVar.k = i;
        izVar.l = this.v != -1 ? this.v : com.flurry.sdk.lp.e();
        izVar.m = this.l == null ? "" : this.l;
        izVar.n = com.flurry.sdk.ji.a().e();
        izVar.o = this.F;
        izVar.p = this.m;
        izVar.q = this.n;
        izVar.r = this.z;
        izVar.s = this.A;
        izVar.t = this.B;
        izVar.v = this.D;
        izVar.u = this.E;
        try {
            iyVar = new com.flurry.sdk.iy(izVar);
        } catch (java.io.IOException e2) {
            com.flurry.sdk.kf.a(5, a, "Error creating analytics session report: " + e2);
            iyVar = null;
        }
        if (iyVar == null) {
            com.flurry.sdk.kf.e(a, "New session report wasn't created");
        }
        return iyVar;
    }

    public final synchronized void c() {
        this.F++;
    }

    public final synchronized com.flurry.android.FlurryEventRecordStatus a(java.lang.String str, java.lang.String str2, java.util.Map<java.lang.String, java.lang.String> map) {
        com.flurry.android.FlurryEventRecordStatus flurryEventRecordStatus;
        flurryEventRecordStatus = com.flurry.android.FlurryEventRecordStatus.kFlurryEventFailed;
        if (map != null && !android.text.TextUtils.isEmpty(str2)) {
            map.put("\ue8ffsid+Tumblr", str2);
            flurryEventRecordStatus = a(str, map, false);
            com.flurry.sdk.kf.a(5, a, "logEvent status for syndication:" + flurryEventRecordStatus);
        }
        return flurryEventRecordStatus;
    }

    public final synchronized com.flurry.android.FlurryEventRecordStatus a(java.lang.String str, java.util.Map<java.lang.String, java.lang.String> map, boolean z) {
        com.flurry.android.FlurryEventRecordStatus flurryEventRecordStatus;
        com.flurry.android.FlurryEventRecordStatus flurryEventRecordStatus2 = com.flurry.android.FlurryEventRecordStatus.kFlurryEventRecorded;
        if (!this.o) {
            flurryEventRecordStatus = com.flurry.android.FlurryEventRecordStatus.kFlurryEventAnalyticsDisabled;
            com.flurry.sdk.kf.e(a, "Analytics has been disabled, not logging event.");
        } else {
            long elapsedRealtime = android.os.SystemClock.elapsedRealtime();
            com.flurry.sdk.jd.a();
            long e2 = elapsedRealtime - com.flurry.sdk.jd.e();
            final java.lang.String b2 = com.flurry.sdk.lr.b(str);
            if (b2.length() == 0) {
                flurryEventRecordStatus = com.flurry.android.FlurryEventRecordStatus.kFlurryEventFailed;
            } else {
                com.flurry.sdk.iu iuVar = this.z.get(b2);
                if (iuVar == null) {
                    if (this.z.size() < b) {
                        com.flurry.sdk.iu iuVar2 = new com.flurry.sdk.iu();
                        iuVar2.a = 1;
                        this.z.put(b2, iuVar2);
                        com.flurry.sdk.kf.e(a, "Event count started: " + b2);
                        flurryEventRecordStatus = flurryEventRecordStatus2;
                    } else {
                        com.flurry.sdk.kf.e(a, "Too many different events. Event not counted: " + b2);
                        flurryEventRecordStatus = com.flurry.android.FlurryEventRecordStatus.kFlurryEventUniqueCountExceeded;
                    }
                } else {
                    iuVar.a++;
                    com.flurry.sdk.kf.e(a, "Event count incremented: " + b2);
                    flurryEventRecordStatus = com.flurry.android.FlurryEventRecordStatus.kFlurryEventRecorded;
                }
                if (this.k && this.A.size() < d && this.C < e) {
                    final java.util.Map<java.lang.String, java.lang.String> emptyMap = map == null ? java.util.Collections.emptyMap() : map;
                    if (emptyMap.size() > c) {
                        com.flurry.sdk.kf.e(a, "MaxEventParams exceeded: " + emptyMap.size());
                        flurryEventRecordStatus = com.flurry.android.FlurryEventRecordStatus.kFlurryEventParamsCountExceeded;
                    } else {
                        com.flurry.sdk.iv ivVar = new com.flurry.sdk.iv(this.q.incrementAndGet(), b2, emptyMap, e2, z);
                        if (ivVar.b().length + this.C <= e) {
                            this.A.add(ivVar);
                            this.C = ivVar.b().length + this.C;
                            flurryEventRecordStatus = com.flurry.android.FlurryEventRecordStatus.kFlurryEventRecorded;
                            if (this.o && com.flurry.sdk.hk.a().a != null) {
                                com.flurry.sdk.jr.a().b(new java.lang.Runnable() { // from class: com.flurry.sdk.ja.7
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        com.flurry.sdk.hk.a().a.a(b2, emptyMap);
                                    }
                                });
                            }
                        } else {
                            this.C = e;
                            this.B = false;
                            com.flurry.sdk.kf.e(a, "Event Log size exceeded. No more event details logged.");
                            flurryEventRecordStatus = com.flurry.android.FlurryEventRecordStatus.kFlurryEventLogCountExceeded;
                        }
                    }
                } else {
                    this.B = false;
                }
            }
        }
        return flurryEventRecordStatus;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x002b, code lost:
    
        r2 = android.os.SystemClock.elapsedRealtime();
        com.flurry.sdk.jd.a();
        r2 = r2 - com.flurry.sdk.jd.e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0037, code lost:
    
        if (r10 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003d, code lost:
    
        if (r10.size() <= 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0043, code lost:
    
        if (r8.C >= com.flurry.sdk.ja.e) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0045, code lost:
    
        r1 = r8.C - r0.b().length;
        r4 = new java.util.HashMap(r0.a());
        r0.a(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0061, code lost:
    
        if ((r0.b().length + r1) > com.flurry.sdk.ja.e) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006d, code lost:
    
        if (r0.a().size() <= com.flurry.sdk.ja.c) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006f, code lost:
    
        com.flurry.sdk.kf.e(com.flurry.sdk.ja.a, "MaxEventParams exceeded on endEvent: " + r0.a().size());
        r0.b(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0095, code lost:
    
        r8.C = r1 + r0.b().length;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a1, code lost:
    
        r0.b(r4);
        r8.B = false;
        r8.C = com.flurry.sdk.ja.e;
        com.flurry.sdk.kf.e(com.flurry.sdk.ja.a, "Event Log size exceeded. No more event details logged.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008e, code lost:
    
        r0.a(r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void a(java.lang.String r9, java.util.Map<java.lang.String, java.lang.String> r10) {
        /*
            r8 = this;
            r2 = 0
            monitor-enter(r8)
            java.util.List<com.flurry.sdk.iv> r0 = r8.A     // Catch: java.lang.Throwable -> L9e
            java.util.Iterator r3 = r0.iterator()     // Catch: java.lang.Throwable -> L9e
        L8:
            boolean r0 = r3.hasNext()     // Catch: java.lang.Throwable -> L9e
            if (r0 == 0) goto L91
            java.lang.Object r0 = r3.next()     // Catch: java.lang.Throwable -> L9e
            com.flurry.sdk.iv r0 = (com.flurry.sdk.iv) r0     // Catch: java.lang.Throwable -> L9e
            boolean r1 = r0.b     // Catch: java.lang.Throwable -> L9e
            if (r1 == 0) goto L93
            long r4 = r0.d     // Catch: java.lang.Throwable -> L9e
            r6 = 0
            int r1 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r1 != 0) goto L93
            java.lang.String r1 = r0.a     // Catch: java.lang.Throwable -> L9e
            boolean r1 = r1.equals(r9)     // Catch: java.lang.Throwable -> L9e
            if (r1 == 0) goto L93
            r1 = 1
        L29:
            if (r1 == 0) goto L8
            long r2 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L9e
            com.flurry.sdk.jd.a()     // Catch: java.lang.Throwable -> L9e
            long r4 = com.flurry.sdk.jd.e()     // Catch: java.lang.Throwable -> L9e
            long r2 = r2 - r4
            if (r10 == 0) goto L8e
            int r1 = r10.size()     // Catch: java.lang.Throwable -> L9e
            if (r1 <= 0) goto L8e
            int r1 = r8.C     // Catch: java.lang.Throwable -> L9e
            int r4 = com.flurry.sdk.ja.e     // Catch: java.lang.Throwable -> L9e
            if (r1 >= r4) goto L8e
            int r1 = r8.C     // Catch: java.lang.Throwable -> L9e
            byte[] r4 = r0.b()     // Catch: java.lang.Throwable -> L9e
            int r4 = r4.length     // Catch: java.lang.Throwable -> L9e
            int r1 = r1 - r4
            java.util.HashMap r4 = new java.util.HashMap     // Catch: java.lang.Throwable -> L9e
            java.util.Map r5 = r0.a()     // Catch: java.lang.Throwable -> L9e
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L9e
            r0.a(r10)     // Catch: java.lang.Throwable -> L9e
            byte[] r5 = r0.b()     // Catch: java.lang.Throwable -> L9e
            int r5 = r5.length     // Catch: java.lang.Throwable -> L9e
            int r5 = r5 + r1
            int r6 = com.flurry.sdk.ja.e     // Catch: java.lang.Throwable -> L9e
            if (r5 > r6) goto La1
            java.util.Map r5 = r0.a()     // Catch: java.lang.Throwable -> L9e
            int r5 = r5.size()     // Catch: java.lang.Throwable -> L9e
            int r6 = com.flurry.sdk.ja.c     // Catch: java.lang.Throwable -> L9e
            if (r5 <= r6) goto L95
            java.lang.String r1 = com.flurry.sdk.ja.a     // Catch: java.lang.Throwable -> L9e
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L9e
            java.lang.String r6 = "MaxEventParams exceeded on endEvent: "
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L9e
            java.util.Map r6 = r0.a()     // Catch: java.lang.Throwable -> L9e
            int r6 = r6.size()     // Catch: java.lang.Throwable -> L9e
            java.lang.StringBuilder r5 = r5.append(r6)     // Catch: java.lang.Throwable -> L9e
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L9e
            com.flurry.sdk.kf.e(r1, r5)     // Catch: java.lang.Throwable -> L9e
            r0.b(r4)     // Catch: java.lang.Throwable -> L9e
        L8e:
            r0.a(r2)     // Catch: java.lang.Throwable -> L9e
        L91:
            monitor-exit(r8)
            return
        L93:
            r1 = r2
            goto L29
        L95:
            byte[] r4 = r0.b()     // Catch: java.lang.Throwable -> L9e
            int r4 = r4.length     // Catch: java.lang.Throwable -> L9e
            int r1 = r1 + r4
            r8.C = r1     // Catch: java.lang.Throwable -> L9e
            goto L8e
        L9e:
            r0 = move-exception
            monitor-exit(r8)
            throw r0
        La1:
            r0.b(r4)     // Catch: java.lang.Throwable -> L9e
            r1 = 0
            r8.B = r1     // Catch: java.lang.Throwable -> L9e
            int r1 = com.flurry.sdk.ja.e     // Catch: java.lang.Throwable -> L9e
            r8.C = r1     // Catch: java.lang.Throwable -> L9e
            java.lang.String r1 = com.flurry.sdk.ja.a     // Catch: java.lang.Throwable -> L9e
            java.lang.String r4 = "Event Log size exceeded. No more event details logged."
            com.flurry.sdk.kf.e(r1, r4)     // Catch: java.lang.Throwable -> L9e
            goto L8e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.ja.a(java.lang.String, java.util.Map):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001d A[Catch: all -> 0x0099, TRY_LEAVE, TryCatch #0 {, blocks: (B:26:0x0004, B:5:0x000d, B:7:0x001d, B:13:0x005a, B:15:0x0062, B:17:0x006e, B:20:0x0078, B:12:0x00a0), top: B:25:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void a(java.lang.String r10, java.lang.String r11, java.lang.String r12, java.lang.Throwable r13) {
        /*
            r9 = this;
            r0 = 0
            monitor-enter(r9)
            if (r10 == 0) goto L55
            java.lang.String r1 = "uncaught"
            boolean r1 = r1.equals(r10)     // Catch: java.lang.Throwable -> L99
            if (r1 == 0) goto L55
            r1 = 1
        Ld:
            int r2 = r9.E     // Catch: java.lang.Throwable -> L99
            int r2 = r2 + 1
            r9.E = r2     // Catch: java.lang.Throwable -> L99
            java.util.List<com.flurry.sdk.it> r2 = r9.D     // Catch: java.lang.Throwable -> L99
            int r2 = r2.size()     // Catch: java.lang.Throwable -> L99
            int r3 = com.flurry.sdk.ja.f     // Catch: java.lang.Throwable -> L99
            if (r2 >= r3) goto L57
            long r0 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L99
            java.lang.Long r2 = java.lang.Long.valueOf(r0)     // Catch: java.lang.Throwable -> L99
            com.flurry.sdk.it r0 = new com.flurry.sdk.it     // Catch: java.lang.Throwable -> L99
            java.util.concurrent.atomic.AtomicInteger r1 = r9.r     // Catch: java.lang.Throwable -> L99
            int r1 = r1.incrementAndGet()     // Catch: java.lang.Throwable -> L99
            long r2 = r2.longValue()     // Catch: java.lang.Throwable -> L99
            r4 = r10
            r5 = r11
            r6 = r12
            r7 = r13
            r0.<init>(r1, r2, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L99
            java.util.List<com.flurry.sdk.it> r1 = r9.D     // Catch: java.lang.Throwable -> L99
            r1.add(r0)     // Catch: java.lang.Throwable -> L99
            java.lang.String r1 = com.flurry.sdk.ja.a     // Catch: java.lang.Throwable -> L99
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L99
            java.lang.String r3 = "Error logged: "
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L99
            java.lang.String r0 = r0.a     // Catch: java.lang.Throwable -> L99
            java.lang.StringBuilder r0 = r2.append(r0)     // Catch: java.lang.Throwable -> L99
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L99
            com.flurry.sdk.kf.e(r1, r0)     // Catch: java.lang.Throwable -> L99
        L53:
            monitor-exit(r9)
            return
        L55:
            r1 = r0
            goto Ld
        L57:
            if (r1 == 0) goto La0
            r8 = r0
        L5a:
            java.util.List<com.flurry.sdk.it> r0 = r9.D     // Catch: java.lang.Throwable -> L99
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L99
            if (r8 >= r0) goto L53
            java.util.List<com.flurry.sdk.it> r0 = r9.D     // Catch: java.lang.Throwable -> L99
            java.lang.Object r0 = r0.get(r8)     // Catch: java.lang.Throwable -> L99
            com.flurry.sdk.it r0 = (com.flurry.sdk.it) r0     // Catch: java.lang.Throwable -> L99
            java.lang.String r1 = r0.a     // Catch: java.lang.Throwable -> L99
            if (r1 == 0) goto L9c
            java.lang.String r1 = "uncaught"
            java.lang.String r0 = r0.a     // Catch: java.lang.Throwable -> L99
            boolean r0 = r1.equals(r0)     // Catch: java.lang.Throwable -> L99
            if (r0 != 0) goto L9c
            long r0 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L99
            java.lang.Long r2 = java.lang.Long.valueOf(r0)     // Catch: java.lang.Throwable -> L99
            com.flurry.sdk.it r0 = new com.flurry.sdk.it     // Catch: java.lang.Throwable -> L99
            java.util.concurrent.atomic.AtomicInteger r1 = r9.r     // Catch: java.lang.Throwable -> L99
            int r1 = r1.incrementAndGet()     // Catch: java.lang.Throwable -> L99
            long r2 = r2.longValue()     // Catch: java.lang.Throwable -> L99
            r4 = r10
            r5 = r11
            r6 = r12
            r7 = r13
            r0.<init>(r1, r2, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L99
            java.util.List<com.flurry.sdk.it> r1 = r9.D     // Catch: java.lang.Throwable -> L99
            r1.set(r8, r0)     // Catch: java.lang.Throwable -> L99
            goto L53
        L99:
            r0 = move-exception
            monitor-exit(r9)
            throw r0
        L9c:
            int r0 = r8 + 1
            r8 = r0
            goto L5a
        La0:
            java.lang.String r0 = com.flurry.sdk.ja.a     // Catch: java.lang.Throwable -> L99
            java.lang.String r1 = "Max errors logged. No more errors logged."
            com.flurry.sdk.kf.e(r0, r1)     // Catch: java.lang.Throwable -> L99
            goto L53
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.ja.a(java.lang.String, java.lang.String, java.lang.String, java.lang.Throwable):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(boolean z, long j) {
        byte[] bArr;
        if (!this.o) {
            com.flurry.sdk.kf.a(3, a, "Analytics disabled, not sending agent report.");
        } else if (z || !this.w.isEmpty()) {
            com.flurry.sdk.kf.a(3, a, "generating agent report");
            try {
                bArr = new com.flurry.sdk.iw(com.flurry.sdk.jr.a().d, com.flurry.sdk.jn.a().i(), this.j, com.flurry.sdk.je.a().d(), this.u, j, this.w, java.util.Collections.unmodifiableMap(com.flurry.sdk.je.a().a), this.G.a(), this.x, com.flurry.sdk.jt.a().c(), java.lang.System.currentTimeMillis()).a;
            } catch (java.lang.Exception e2) {
                com.flurry.sdk.kf.e(a, "Exception while generating report: " + e2);
                bArr = null;
            }
            if (bArr == null) {
                com.flurry.sdk.kf.e(a, "Error generating report");
            } else {
                com.flurry.sdk.kf.a(3, a, "generated report of size " + bArr.length + " with " + this.w.size() + " reports.");
                com.flurry.sdk.hk.a().b.b(bArr, com.flurry.sdk.jr.a().d, new java.lang.StringBuilder().append(com.flurry.sdk.js.a()).toString());
            }
            this.w.clear();
            this.i.b();
        }
    }

    public final synchronized void d() {
        com.flurry.sdk.kf.a(4, a, "Saving persistent agent data.");
        this.i.a(this.w);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void e() {
        com.flurry.sdk.kf.a(4, a, "Loading persistent session report data.");
        java.util.List<com.flurry.sdk.iy> a2 = this.i.a();
        if (a2 != null) {
            this.w.addAll(a2);
        } else if (this.h.exists()) {
            com.flurry.sdk.kf.a(4, a, "Legacy persistent agent data found, converting.");
            com.flurry.sdk.jb a3 = com.flurry.sdk.hn.a(this.h);
            if (a3 != null) {
                boolean z = a3.a;
                long j = a3.b;
                if (j <= 0) {
                    com.flurry.sdk.jd.a();
                    j = com.flurry.sdk.jd.d();
                }
                this.j = z;
                this.u = j;
                f();
                java.util.List unmodifiableList = java.util.Collections.unmodifiableList(a3.c);
                if (unmodifiableList != null) {
                    this.w.addAll(unmodifiableList);
                }
            }
            this.h.delete();
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        android.content.SharedPreferences.Editor edit = com.flurry.sdk.jr.a().a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).edit();
        edit.putBoolean("com.flurry.sdk.previous_successful_report", this.j);
        edit.putLong("com.flurry.sdk.initial_run_time", this.u);
        edit.commit();
    }

    static /* synthetic */ void d(com.flurry.sdk.ja jaVar) {
        android.content.SharedPreferences sharedPreferences = com.flurry.sdk.jr.a().a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0);
        jaVar.j = sharedPreferences.getBoolean("com.flurry.sdk.previous_successful_report", false);
        com.flurry.sdk.jd.a();
        jaVar.u = sharedPreferences.getLong("com.flurry.sdk.initial_run_time", com.flurry.sdk.jd.d());
    }
}
