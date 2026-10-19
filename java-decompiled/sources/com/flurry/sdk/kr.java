package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public abstract class kr {
    public final java.lang.String b;
    public com.flurry.sdk.kt d;
    public java.util.Set<java.lang.String> c = new java.util.HashSet();
    public java.lang.String e = "defaultDataKey_";
    private com.flurry.sdk.ka<com.flurry.sdk.jj> a = new com.flurry.sdk.ka<com.flurry.sdk.jj>() { // from class: com.flurry.sdk.kr.1
        @Override // com.flurry.sdk.ka
        public final /* synthetic */ void a(com.flurry.sdk.jj jjVar) {
            com.flurry.sdk.jj jjVar2 = jjVar;
            com.flurry.sdk.kf.a(4, com.flurry.sdk.kr.this.b, "onNetworkStateChanged : isNetworkEnable = " + jjVar2.a);
            if (!jjVar2.a) {
                return;
            }
            com.flurry.sdk.kr.this.b();
        }
    };

    public interface a {
    }

    public abstract void a(byte[] bArr, java.lang.String str, java.lang.String str2);

    public kr(final java.lang.String str, java.lang.String str2) {
        this.b = str2;
        com.flurry.sdk.kb.a().a("com.flurry.android.sdk.NetworkStateEvent", this.a);
        com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.kr.2
            @Override // com.flurry.sdk.lw
            public final void a() {
                com.flurry.sdk.kr.this.d = new com.flurry.sdk.kt(str);
            }
        });
    }

    public final void b() {
        com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.kr.4
            final /* synthetic */ com.flurry.sdk.kr.a a = null;

            @Override // com.flurry.sdk.lw
            public final void a() {
                final com.flurry.sdk.kr krVar = com.flurry.sdk.kr.this;
                if (!com.flurry.sdk.jk.a().b) {
                    com.flurry.sdk.kf.a(5, krVar.b, "Reports were not sent! No Internet connection!");
                    return;
                }
                java.util.ArrayList<java.lang.String> arrayList = new java.util.ArrayList(krVar.d.c.keySet());
                if (arrayList.isEmpty()) {
                    com.flurry.sdk.kf.a(4, krVar.b, "No more reports to send.");
                    return;
                }
                for (java.lang.String str : arrayList) {
                    if (!krVar.c()) {
                        return;
                    }
                    java.util.List<java.lang.String> a2 = krVar.d.a(str);
                    com.flurry.sdk.kf.a(4, krVar.b, "Number of not sent blocks = " + a2.size());
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 < a2.size()) {
                            java.lang.String str2 = a2.get(i2);
                            if (!krVar.c.contains(str2)) {
                                if (krVar.c()) {
                                    com.flurry.sdk.ks ksVar = (com.flurry.sdk.ks) new com.flurry.sdk.jy(com.flurry.sdk.jr.a().a.getFileStreamPath(com.flurry.sdk.ks.a(str2)), ".yflurrydatasenderblock.", 1, new com.flurry.sdk.lc<com.flurry.sdk.ks>() { // from class: com.flurry.sdk.kr.6
                                        @Override // com.flurry.sdk.lc
                                        public final com.flurry.sdk.kz<com.flurry.sdk.ks> a(int i3) {
                                            return new com.flurry.sdk.ks.a();
                                        }
                                    }).a();
                                    if (ksVar == null) {
                                        com.flurry.sdk.kf.a(6, krVar.b, "Internal ERROR! Cannot read!");
                                        krVar.d.a(str2, str);
                                    } else {
                                        byte[] bArr = ksVar.b;
                                        if (bArr == null || bArr.length == 0) {
                                            com.flurry.sdk.kf.a(6, krVar.b, "Internal ERROR! Report is empty!");
                                            krVar.d.a(str2, str);
                                        } else {
                                            com.flurry.sdk.kf.a(5, krVar.b, "Reading block info " + str2);
                                            krVar.c.add(str2);
                                            krVar.a(bArr, str2, str);
                                        }
                                    }
                                }
                            }
                            i = i2 + 1;
                        }
                    }
                }
            }
        });
    }

    public void a(final java.lang.String str, final java.lang.String str2, int i) {
        com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.kr.7
            @Override // com.flurry.sdk.lw
            public final void a() {
                if (!com.flurry.sdk.kr.this.d.a(str, str2)) {
                    com.flurry.sdk.kf.a(6, com.flurry.sdk.kr.this.b, "Internal error. Block wasn't deleted with id = " + str);
                }
                if (!com.flurry.sdk.kr.this.c.remove(str)) {
                    com.flurry.sdk.kf.a(6, com.flurry.sdk.kr.this.b, "Internal error. Block with id = " + str + " was not in progress state");
                }
            }
        });
    }

    public final void a(final java.lang.String str) {
        com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.kr.8
            @Override // com.flurry.sdk.lw
            public final void a() {
                if (!com.flurry.sdk.kr.this.c.remove(str)) {
                    com.flurry.sdk.kf.a(6, com.flurry.sdk.kr.this.b, "Internal error. Block with id = " + str + " was not in progress state");
                }
            }
        });
    }

    public final void b(final byte[] bArr, final java.lang.String str, final java.lang.String str2) {
        if (bArr == null || bArr.length == 0) {
            com.flurry.sdk.kf.a(6, this.b, "Report that has to be sent is EMPTY or NULL");
            return;
        }
        com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.kr.3
            @Override // com.flurry.sdk.lw
            public final void a() {
                final com.flurry.sdk.kr krVar = com.flurry.sdk.kr.this;
                byte[] bArr2 = bArr;
                java.lang.String str3 = krVar.e + str + "_" + str2;
                com.flurry.sdk.ks ksVar = new com.flurry.sdk.ks(bArr2);
                java.lang.String str4 = ksVar.a;
                new com.flurry.sdk.jy(com.flurry.sdk.jr.a().a.getFileStreamPath(com.flurry.sdk.ks.a(str4)), ".yflurrydatasenderblock.", 1, new com.flurry.sdk.lc<com.flurry.sdk.ks>() { // from class: com.flurry.sdk.kr.5
                    @Override // com.flurry.sdk.lc
                    public final com.flurry.sdk.kz<com.flurry.sdk.ks> a(int i) {
                        return new com.flurry.sdk.ks.a();
                    }
                }).a(ksVar);
                com.flurry.sdk.kf.a(5, krVar.b, "Saving Block File " + str4 + " at " + com.flurry.sdk.jr.a().a.getFileStreamPath(com.flurry.sdk.ks.a(str4)));
                krVar.d.a(ksVar, str3);
            }
        });
        b();
    }

    final boolean c() {
        return this.c.size() <= 5;
    }
}
