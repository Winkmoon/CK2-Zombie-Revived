package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class ih extends com.flurry.sdk.kq<com.flurry.sdk.ii> {
    public static long a;
    private static final java.lang.String e = com.flurry.sdk.ih.class.getSimpleName();

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r2v26, types: [RequestObjectType, byte[]] */
    @Override // com.flurry.sdk.kq
    public final /* synthetic */ void a(com.flurry.sdk.ii iiVar) {
        final com.flurry.sdk.ii iiVar2 = iiVar;
        com.flurry.sdk.kf.a(3, e, "Sending next pulse report to " + iiVar2.k + " at: " + iiVar2.r);
        com.flurry.sdk.jd.a();
        long d = com.flurry.sdk.jd.d();
        if (d == 0) {
            d = a;
        }
        com.flurry.sdk.jd.a();
        long g = com.flurry.sdk.jd.g();
        if (g == 0) {
            g = java.lang.System.currentTimeMillis() - d;
        }
        final com.flurry.sdk.ij ijVar = new com.flurry.sdk.ij(iiVar2, d, g, iiVar2.p);
        com.flurry.sdk.kl klVar = new com.flurry.sdk.kl();
        klVar.f = iiVar2.r;
        klVar.w = 100000;
        if (iiVar2.e.equals(com.flurry.sdk.ip.POST)) {
            klVar.c = new com.flurry.sdk.kv();
            if (iiVar2.j != null) {
                klVar.b = iiVar2.j.getBytes();
            }
            klVar.g = com.flurry.sdk.kn.a.kPost;
        } else {
            klVar.g = com.flurry.sdk.kn.a.kGet;
        }
        klVar.h = iiVar2.h * 1000;
        klVar.i = iiVar2.i * 1000;
        klVar.l = true;
        klVar.r = true;
        klVar.s = (iiVar2.h + iiVar2.i) * 1000;
        java.util.Map<java.lang.String, java.lang.String> map = iiVar2.f;
        if (map != null) {
            for (java.lang.String str : iiVar2.f.keySet()) {
                klVar.a(str, map.get(str));
            }
        }
        klVar.j = false;
        klVar.a = new com.flurry.sdk.kl.a<byte[], java.lang.String>() { // from class: com.flurry.sdk.ih.2
            @Override // com.flurry.sdk.kl.a
            public final /* synthetic */ void a(com.flurry.sdk.kl<byte[], java.lang.String> klVar2, java.lang.String str2) {
                java.lang.String str3 = str2;
                com.flurry.sdk.kf.a(3, com.flurry.sdk.ih.e, "Pulse report to " + iiVar2.k + " for " + iiVar2.m.c + ", HTTP status code is: " + klVar2.p);
                int i = klVar2.p;
                com.flurry.sdk.ij ijVar2 = ijVar;
                int i2 = (int) klVar2.n;
                if (i2 >= 0) {
                    ijVar2.k = i2 + ijVar2.k;
                } else if (ijVar2.k <= 0) {
                    ijVar2.k = 0L;
                }
                ijVar.e = i;
                if (klVar2.c()) {
                    if (i >= 200 && i < 300) {
                        com.flurry.sdk.ih.b(com.flurry.sdk.ih.this, ijVar, iiVar2);
                        return;
                    } else if (i >= 300 && i < 400) {
                        com.flurry.sdk.ih.a(com.flurry.sdk.ih.this, ijVar, iiVar2, klVar2);
                        return;
                    } else {
                        com.flurry.sdk.kf.a(3, com.flurry.sdk.ih.e, iiVar2.m.c + " report failed sending to : " + iiVar2.k);
                        com.flurry.sdk.ih.a(com.flurry.sdk.ih.this, ijVar, iiVar2, str3);
                        return;
                    }
                }
                java.lang.Exception exc = klVar2.o;
                if (klVar2.t || (klVar2.o != null && (klVar2.o instanceof java.net.SocketTimeoutException))) {
                    if (klVar2.e()) {
                        com.flurry.sdk.kf.a(3, com.flurry.sdk.ih.e, "Timeout occured when trying to connect to: " + iiVar2.k + ". Exception: " + klVar2.o.getMessage());
                    } else {
                        com.flurry.sdk.kf.a(3, com.flurry.sdk.ih.e, "Manually managed http request timeout occured for: " + iiVar2.k);
                    }
                    com.flurry.sdk.ih.a(com.flurry.sdk.ih.this, ijVar, iiVar2);
                    return;
                }
                com.flurry.sdk.kf.a(3, com.flurry.sdk.ih.e, "Error occured when trying to connect to: " + iiVar2.k + ". Exception: " + exc.getMessage());
                com.flurry.sdk.ih.a(com.flurry.sdk.ih.this, ijVar, iiVar2, str3);
            }
        };
        com.flurry.sdk.jp.a().a((java.lang.Object) this, (com.flurry.sdk.ih) klVar);
    }

    public ih() {
        com.flurry.sdk.kq.b = 30000L;
        this.d = com.flurry.sdk.kq.b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.kq
    public final com.flurry.sdk.jy<java.util.List<com.flurry.sdk.ii>> a() {
        return new com.flurry.sdk.jy<>(com.flurry.sdk.jr.a().a.getFileStreamPath(".yflurryanpulsecallbackreporter"), ".yflurryanpulsecallbackreporter", 2, new com.flurry.sdk.lc<java.util.List<com.flurry.sdk.ii>>() { // from class: com.flurry.sdk.ih.1
            @Override // com.flurry.sdk.lc
            public final com.flurry.sdk.kz<java.util.List<com.flurry.sdk.ii>> a(int i) {
                return new com.flurry.sdk.ky(new com.flurry.sdk.ii.a());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.kq
    public final synchronized void a(java.util.List<com.flurry.sdk.ii> list) {
        com.flurry.sdk.il.a().d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.kq
    public final synchronized void b(java.util.List<com.flurry.sdk.ii> list) {
        com.flurry.sdk.il.a();
        java.util.List<com.flurry.sdk.im> e2 = com.flurry.sdk.il.e();
        if (e2 != null && e2.size() != 0) {
            com.flurry.sdk.kf.a(3, e, "Restoring " + e2.size() + " from report queue.");
            java.util.Iterator<com.flurry.sdk.im> it = e2.iterator();
            while (it.hasNext()) {
                com.flurry.sdk.il.a().b(it.next());
            }
            com.flurry.sdk.il.a();
            java.util.Iterator<com.flurry.sdk.im> it2 = com.flurry.sdk.il.c().iterator();
            while (it2.hasNext()) {
                for (com.flurry.sdk.ii iiVar : it2.next().a()) {
                    if (!iiVar.l) {
                        com.flurry.sdk.kf.a(3, e, "Callback for " + iiVar.m.c + " to " + iiVar.k + " not completed.  Adding to reporter queue.");
                        list.add(iiVar);
                    }
                }
            }
        }
    }

    static /* synthetic */ void a(com.flurry.sdk.ih ihVar, com.flurry.sdk.ij ijVar, com.flurry.sdk.ii iiVar) {
        com.flurry.sdk.il.a().b(ijVar);
        ihVar.c((com.flurry.sdk.ih) iiVar);
    }

    static /* synthetic */ void a(com.flurry.sdk.ih ihVar, com.flurry.sdk.ij ijVar, com.flurry.sdk.ii iiVar, java.lang.String str) {
        boolean b = com.flurry.sdk.il.a().b(ijVar, str);
        com.flurry.sdk.kf.a(3, e, "Failed report retrying: " + b);
        if (b) {
            ihVar.d(iiVar);
        } else {
            ihVar.c((com.flurry.sdk.ih) iiVar);
        }
    }

    static /* synthetic */ void b(com.flurry.sdk.ih ihVar, com.flurry.sdk.ij ijVar, com.flurry.sdk.ii iiVar) {
        com.flurry.sdk.kf.a(3, e, iiVar.m.c + " report sent successfully to : " + iiVar.k);
        com.flurry.sdk.il.a().a(ijVar);
        ihVar.c((com.flurry.sdk.ih) iiVar);
    }

    static /* synthetic */ void a(com.flurry.sdk.ih ihVar, com.flurry.sdk.ij ijVar, com.flurry.sdk.ii iiVar, com.flurry.sdk.kl klVar) {
        java.lang.String str = null;
        java.util.List<java.lang.String> a2 = klVar.a("Location");
        if (a2 != null && a2.size() > 0) {
            str = com.flurry.sdk.ly.b(a2.get(0), iiVar.q);
        }
        boolean a3 = com.flurry.sdk.il.a().a(ijVar, str);
        if (a3) {
            com.flurry.sdk.kf.a(3, e, "Received redirect url. Retrying: " + str);
        } else {
            com.flurry.sdk.kf.a(3, e, "Received redirect url. Retrying: false");
        }
        if (!a3) {
            ihVar.c((com.flurry.sdk.ih) iiVar);
            return;
        }
        iiVar.r = str;
        klVar.f = str;
        if (klVar.q != null && klVar.q.a.containsKey("Location")) {
            klVar.q.b("Location");
        }
        com.flurry.sdk.jp.a().a((java.lang.Object) ihVar, (com.flurry.sdk.ih) klVar);
    }
}
