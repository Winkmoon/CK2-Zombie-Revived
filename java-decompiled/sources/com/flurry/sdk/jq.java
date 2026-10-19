package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class jq {
    static final java.lang.String a = com.flurry.sdk.jq.class.getSimpleName();
    java.lang.ref.WeakReference<com.flurry.sdk.ld> b;
    private java.lang.String i;
    private java.lang.String j;
    private java.util.Map<java.lang.String, java.lang.String> k;
    private final com.flurry.sdk.ka<com.flurry.sdk.le> g = new com.flurry.sdk.ka<com.flurry.sdk.le>() { // from class: com.flurry.sdk.jq.1
        @Override // com.flurry.sdk.ka
        public final /* synthetic */ void a(com.flurry.sdk.le leVar) {
            com.flurry.sdk.le leVar2 = leVar;
            if (com.flurry.sdk.jq.this.b == null || leVar2.b == com.flurry.sdk.jq.this.b.get()) {
                switch (com.flurry.sdk.jq.AnonymousClass4.a[leVar2.c - 1]) {
                    case 1:
                        final com.flurry.sdk.jq jqVar = com.flurry.sdk.jq.this;
                        com.flurry.sdk.ld ldVar = leVar2.b;
                        android.content.Context context = leVar2.a.get();
                        jqVar.b = new java.lang.ref.WeakReference<>(ldVar);
                        jqVar.c = java.lang.System.currentTimeMillis();
                        jqVar.d = android.os.SystemClock.elapsedRealtime();
                        if (ldVar == null || context == null) {
                            com.flurry.sdk.kf.a(3, com.flurry.sdk.jq.a, "Flurry session id cannot be created.");
                        } else {
                            com.flurry.sdk.kf.a(3, com.flurry.sdk.jq.a, "Flurry session id started:" + jqVar.c);
                            com.flurry.sdk.le leVar3 = new com.flurry.sdk.le();
                            leVar3.a = new java.lang.ref.WeakReference<>(context);
                            leVar3.b = ldVar;
                            leVar3.c = com.flurry.sdk.le.a.b;
                            leVar3.b();
                        }
                        com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.jq.3
                            @Override // com.flurry.sdk.lw
                            public final void a() {
                                com.flurry.sdk.ji.a().c();
                            }
                        });
                        break;
                    case 2:
                        com.flurry.sdk.jq jqVar2 = com.flurry.sdk.jq.this;
                        leVar2.a.get();
                        jqVar2.a();
                        break;
                    case 3:
                        com.flurry.sdk.jq jqVar3 = com.flurry.sdk.jq.this;
                        leVar2.a.get();
                        jqVar3.e = android.os.SystemClock.elapsedRealtime() - jqVar3.d;
                        break;
                    case 4:
                        com.flurry.sdk.kb.a().b("com.flurry.android.sdk.FlurrySessionEvent", com.flurry.sdk.jq.this.g);
                        com.flurry.sdk.jq.b();
                        break;
                }
            }
        }
    };
    public volatile long c = 0;
    public volatile long d = 0;
    public volatile long e = -1;
    public volatile long f = 0;
    private volatile long h = 0;

    /* renamed from: com.flurry.sdk.jq$4, reason: invalid class name */
    static /* synthetic */ class AnonymousClass4 {
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

    public jq() {
        com.flurry.sdk.kb.a().a("com.flurry.android.sdk.FlurrySessionEvent", this.g);
        this.k = new java.util.LinkedHashMap<java.lang.String, java.lang.String>() { // from class: com.flurry.sdk.jq.2
            @Override // java.util.LinkedHashMap
            protected final boolean removeEldestEntry(java.util.Map.Entry<java.lang.String, java.lang.String> entry) {
                return size() > 10;
            }
        };
    }

    public final synchronized void a() {
        long j = com.flurry.sdk.lf.a().a;
        if (j > 0) {
            this.f = (java.lang.System.currentTimeMillis() - j) + this.f;
        }
    }

    public static void b() {
    }

    public final synchronized long c() {
        long elapsedRealtime = android.os.SystemClock.elapsedRealtime() - this.d;
        if (elapsedRealtime <= this.h) {
            elapsedRealtime = this.h + 1;
            this.h = elapsedRealtime;
        }
        this.h = elapsedRealtime;
        return this.h;
    }

    public final synchronized void a(java.lang.String str) {
        this.i = str;
    }

    public final synchronized void b(java.lang.String str) {
        this.j = str;
    }

    public final synchronized java.lang.String d() {
        return this.i;
    }

    public final synchronized java.lang.String e() {
        return this.j;
    }

    public final synchronized void a(java.lang.String str, java.lang.String str2) {
        this.k.put(str, str2);
    }

    public final synchronized java.util.Map<java.lang.String, java.lang.String> f() {
        return this.k;
    }
}
