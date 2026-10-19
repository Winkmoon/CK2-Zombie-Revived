package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class ji implements com.flurry.sdk.lj.a {
    private static com.flurry.sdk.ji a;
    private static final java.lang.String b = com.flurry.sdk.ji.class.getSimpleName();
    private boolean g;
    private android.location.Location h;
    private android.location.Location l;
    private final int c = 3;
    private final long d = 10000;
    private final long e = 90000;
    private final long f = 0;
    private long i = 0;
    private boolean m = false;
    private int n = 0;
    private com.flurry.sdk.ka<com.flurry.sdk.ll> o = new com.flurry.sdk.ka<com.flurry.sdk.ll>() { // from class: com.flurry.sdk.ji.1
        @Override // com.flurry.sdk.ka
        public final /* synthetic */ void a(com.flurry.sdk.ll llVar) {
            if (com.flurry.sdk.ji.this.i <= 0 || com.flurry.sdk.ji.this.i >= java.lang.System.currentTimeMillis()) {
                return;
            }
            com.flurry.sdk.kf.a(4, com.flurry.sdk.ji.b, "No location received in 90 seconds , stopping LocationManager");
            com.flurry.sdk.ji.this.g();
        }
    };
    private android.location.LocationManager j = (android.location.LocationManager) com.flurry.sdk.jr.a().a.getSystemService("location");
    private com.flurry.sdk.ji.a k = new com.flurry.sdk.ji.a();

    static /* synthetic */ int c(com.flurry.sdk.ji jiVar) {
        int i = jiVar.n + 1;
        jiVar.n = i;
        return i;
    }

    public static synchronized com.flurry.sdk.ji a() {
        com.flurry.sdk.ji jiVar;
        synchronized (com.flurry.sdk.ji.class) {
            if (a == null) {
                a = new com.flurry.sdk.ji();
            }
            jiVar = a;
        }
        return jiVar;
    }

    public static void b() {
        if (a != null) {
            com.flurry.sdk.li.a().b("ReportLocation", a);
            com.flurry.sdk.li.a().b("ExplicitLocation", a);
        }
        a = null;
    }

    private ji() {
        com.flurry.sdk.li a2 = com.flurry.sdk.li.a();
        this.g = ((java.lang.Boolean) a2.a("ReportLocation")).booleanValue();
        a2.a("ReportLocation", (com.flurry.sdk.lj.a) this);
        com.flurry.sdk.kf.a(4, b, "initSettings, ReportLocation = " + this.g);
        this.h = (android.location.Location) a2.a("ExplicitLocation");
        a2.a("ExplicitLocation", (com.flurry.sdk.lj.a) this);
        com.flurry.sdk.kf.a(4, b, "initSettings, ExplicitLocation = " + this.h);
    }

    public final synchronized void c() {
        com.flurry.sdk.kf.a(4, b, "Location update requested");
        if (this.n < 3 && !this.m && this.g && this.h == null) {
            android.content.Context context = com.flurry.sdk.jr.a().a;
            if (context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0 || context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0) {
                this.n = 0;
                java.lang.String str = null;
                if (!a(context)) {
                    if (b(context)) {
                        str = "network";
                    }
                } else {
                    str = "passive";
                }
                if (!android.text.TextUtils.isEmpty(str)) {
                    this.j.requestLocationUpdates(str, 10000L, 0.0f, this.k, android.os.Looper.getMainLooper());
                }
                this.l = a(str);
                this.i = java.lang.System.currentTimeMillis() + 90000;
                com.flurry.sdk.kf.a(4, b, "Register location timer");
                com.flurry.sdk.lm.a().a(this.o);
                this.m = true;
                com.flurry.sdk.kf.a(4, b, "LocationProvider started");
            }
        }
    }

    public final synchronized void d() {
        com.flurry.sdk.kf.a(4, b, "Stop update location requested");
        g();
    }

    public final android.location.Location e() {
        java.lang.String str;
        android.location.Location location = null;
        if (this.h != null) {
            return this.h;
        }
        if (this.g) {
            android.content.Context context = com.flurry.sdk.jr.a().a;
            if (!a(context) && !b(context)) {
                return null;
            }
            if (a(context)) {
                str = "passive";
            } else {
                str = b(context) ? "network" : null;
            }
            if (str != null) {
                android.location.Location a2 = a(str);
                if (a2 != null) {
                    this.l = a2;
                }
                location = this.l;
            }
        }
        com.flurry.sdk.kf.a(4, b, "getLocation() = " + location);
        return location;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.m) {
            this.j.removeUpdates(this.k);
            this.n = 0;
            this.i = 0L;
            com.flurry.sdk.kf.a(4, b, "Unregister location timer");
            com.flurry.sdk.lm.a().b(this.o);
            this.m = false;
            com.flurry.sdk.kf.a(4, b, "LocationProvider stopped");
        }
    }

    private static boolean a(android.content.Context context) {
        return context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0;
    }

    private static boolean b(android.content.Context context) {
        return context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0;
    }

    private android.location.Location a(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return null;
        }
        return this.j.getLastKnownLocation(str);
    }

    class a implements android.location.LocationListener {
        public a() {
        }

        @Override // android.location.LocationListener
        public final void onStatusChanged(java.lang.String str, int i, android.os.Bundle bundle) {
        }

        @Override // android.location.LocationListener
        public final void onProviderEnabled(java.lang.String str) {
        }

        @Override // android.location.LocationListener
        public final void onProviderDisabled(java.lang.String str) {
        }

        @Override // android.location.LocationListener
        public final void onLocationChanged(android.location.Location location) {
            if (location != null) {
                com.flurry.sdk.ji.this.l = location;
            }
            if (com.flurry.sdk.ji.c(com.flurry.sdk.ji.this) >= 3) {
                com.flurry.sdk.kf.a(4, com.flurry.sdk.ji.b, "Max location reports reached, stopping");
                com.flurry.sdk.ji.this.g();
            }
        }
    }

    @Override // com.flurry.sdk.lj.a
    public final void a(java.lang.String str, java.lang.Object obj) {
        switch (str) {
            case "ReportLocation":
                this.g = ((java.lang.Boolean) obj).booleanValue();
                com.flurry.sdk.kf.a(4, b, "onSettingUpdate, ReportLocation = " + this.g);
                break;
            case "ExplicitLocation":
                this.h = (android.location.Location) obj;
                com.flurry.sdk.kf.a(4, b, "onSettingUpdate, ExplicitLocation = " + this.h);
                break;
            default:
                com.flurry.sdk.kf.a(6, b, "LocationProvider internal error! Had to be LocationCriteria, ReportLocation or ExplicitLocation key.");
                break;
        }
    }
}
