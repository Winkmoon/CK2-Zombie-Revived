package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public abstract class kq<ReportInfo extends com.flurry.sdk.kp> {
    private static final java.lang.String a = com.flurry.sdk.kq.class.getSimpleName();
    public static long b = 10000;
    public boolean c;
    public long d;
    private final com.flurry.sdk.jy<java.util.List<ReportInfo>> f;
    private int h;
    private final int e = Integer.MAX_VALUE;
    private final java.util.List<ReportInfo> g = new java.util.ArrayList();
    private final java.lang.Runnable i = new com.flurry.sdk.lw() { // from class: com.flurry.sdk.kq.1
        @Override // com.flurry.sdk.lw
        public final void a() {
            com.flurry.sdk.kq.this.b();
        }
    };
    private final com.flurry.sdk.ka<com.flurry.sdk.jj> j = new com.flurry.sdk.ka<com.flurry.sdk.jj>() { // from class: com.flurry.sdk.kq.2
        @Override // com.flurry.sdk.ka
        public final /* bridge */ /* synthetic */ void a(com.flurry.sdk.jj jjVar) {
            if (jjVar.a) {
                com.flurry.sdk.kq.this.b();
            }
        }
    };

    public abstract com.flurry.sdk.jy<java.util.List<ReportInfo>> a();

    public abstract void a(ReportInfo reportinfo);

    public kq() {
        com.flurry.sdk.kb.a().a("com.flurry.android.sdk.NetworkStateEvent", this.j);
        this.f = a();
        this.d = b;
        this.h = -1;
        com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.kq.3
            @Override // com.flurry.sdk.lw
            public final void a() {
                com.flurry.sdk.kq.this.b(com.flurry.sdk.kq.this.g);
                com.flurry.sdk.kq.this.b();
            }
        });
    }

    public final void c() {
        com.flurry.sdk.jr.a().c(this.i);
        com.flurry.sdk.kb.a().b("com.flurry.android.sdk.NetworkStateEvent", this.j);
    }

    public final void d() {
        this.c = false;
        com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.kq.4
            @Override // com.flurry.sdk.lw
            public final void a() {
                com.flurry.sdk.kq.this.b();
            }
        });
    }

    public final synchronized void b(ReportInfo reportinfo) {
        if (reportinfo != null) {
            this.g.add(reportinfo);
            com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.kq.5
                @Override // com.flurry.sdk.lw
                public final void a() {
                    com.flurry.sdk.kq.this.b();
                }
            });
        }
    }

    public final synchronized void c(ReportInfo reportinfo) {
        reportinfo.o = true;
        com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.kq.6
            @Override // com.flurry.sdk.lw
            public final void a() {
                com.flurry.sdk.kq.this.e();
            }
        });
    }

    public final synchronized void d(ReportInfo reportinfo) {
        reportinfo.a_();
        com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.kq.7
            @Override // com.flurry.sdk.lw
            public final void a() {
                com.flurry.sdk.kq.this.e();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b() {
        if (!this.c) {
            if (this.h >= 0) {
                com.flurry.sdk.kf.a(3, a, "Transmit is in progress");
            } else {
                g();
                if (this.g.isEmpty()) {
                    this.d = b;
                    this.h = -1;
                } else {
                    this.h = 0;
                    com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.kq.8
                        @Override // com.flurry.sdk.lw
                        public final void a() {
                            com.flurry.sdk.kq.this.e();
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void e() {
        ReportInfo reportinfo;
        com.flurry.sdk.lr.b();
        if (com.flurry.sdk.jk.a().b) {
            while (this.h < this.g.size()) {
                java.util.List<ReportInfo> list = this.g;
                int i = this.h;
                this.h = i + 1;
                reportinfo = list.get(i);
                if (!reportinfo.o) {
                    break;
                }
            }
        } else {
            com.flurry.sdk.kf.a(3, a, "Network is not available, aborting transmission");
        }
        reportinfo = null;
        if (reportinfo == null) {
            f();
        } else {
            a((com.flurry.sdk.kq<ReportInfo>) reportinfo);
        }
    }

    private synchronized void f() {
        g();
        a(this.g);
        if (this.c) {
            com.flurry.sdk.kf.a(3, a, "Reporter paused");
            this.d = b;
        } else if (this.g.isEmpty()) {
            com.flurry.sdk.kf.a(3, a, "All reports sent successfully");
            this.d = b;
        } else {
            this.d <<= 1;
            com.flurry.sdk.kf.a(3, a, "One or more reports failed to send, backing off: " + this.d + "ms");
            com.flurry.sdk.jr.a().a(this.i, this.d);
        }
        this.h = -1;
    }

    public synchronized void b(java.util.List<ReportInfo> list) {
        com.flurry.sdk.lr.b();
        java.util.List<ReportInfo> a2 = this.f.a();
        if (a2 != null) {
            list.addAll(a2);
        }
    }

    public synchronized void a(java.util.List<ReportInfo> list) {
        com.flurry.sdk.lr.b();
        this.f.a(new java.util.ArrayList(list));
    }

    private synchronized void g() {
        java.util.Iterator<ReportInfo> it = this.g.iterator();
        while (it.hasNext()) {
            ReportInfo next = it.next();
            if (next.o) {
                com.flurry.sdk.kf.a(3, a, "Url transmitted - " + next.q + " Attempts: " + next.p);
                it.remove();
            } else if (next.p > next.a()) {
                com.flurry.sdk.kf.a(3, a, "Exceeded max no of attempts - " + next.q + " Attempts: " + next.p);
                it.remove();
            } else if (java.lang.System.currentTimeMillis() > next.n && next.p > 0) {
                com.flurry.sdk.kf.a(3, a, "Expired: Time expired - " + next.q + " Attempts: " + next.p);
                it.remove();
            }
        }
    }
}
