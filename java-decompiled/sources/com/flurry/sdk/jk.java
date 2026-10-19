package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class jk extends android.content.BroadcastReceiver {
    private static com.flurry.sdk.jk c;
    boolean a;
    public boolean b;
    private boolean d;

    public static synchronized com.flurry.sdk.jk a() {
        com.flurry.sdk.jk jkVar;
        synchronized (com.flurry.sdk.jk.class) {
            if (c == null) {
                c = new com.flurry.sdk.jk();
            }
            jkVar = c;
        }
        return jkVar;
    }

    public static synchronized void b() {
        synchronized (com.flurry.sdk.jk.class) {
            if (c != null) {
                c.e();
            }
            c = null;
        }
    }

    public enum a {
        NONE_OR_UNKNOWN(0),
        NETWORK_AVAILABLE(1),
        WIFI(2),
        CELL(3);

        public int e;

        a(int i) {
            this.e = i;
        }
    }

    private jk() {
        this.d = false;
        android.content.Context context = com.flurry.sdk.jr.a().a;
        this.d = context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0;
        this.b = a(context);
        if (this.d) {
            d();
        }
    }

    private synchronized void d() {
        if (!this.a) {
            android.content.Context context = com.flurry.sdk.jr.a().a;
            this.b = a(context);
            context.registerReceiver(this, new android.content.IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.a = true;
        }
    }

    private synchronized void e() {
        if (this.a) {
            com.flurry.sdk.jr.a().a.unregisterReceiver(this);
            this.a = false;
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(android.content.Context context, android.content.Intent intent) {
        boolean a2 = a(context);
        if (this.b != a2) {
            this.b = a2;
            com.flurry.sdk.jj jjVar = new com.flurry.sdk.jj();
            jjVar.a = a2;
            jjVar.b = c();
            com.flurry.sdk.kb.a().a(jjVar);
        }
    }

    private boolean a(android.content.Context context) {
        if (!this.d || context == null) {
            return true;
        }
        android.net.NetworkInfo activeNetworkInfo = f().getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public final com.flurry.sdk.jk.a c() {
        if (!this.d) {
            return com.flurry.sdk.jk.a.NONE_OR_UNKNOWN;
        }
        android.net.NetworkInfo activeNetworkInfo = f().getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return com.flurry.sdk.jk.a.NONE_OR_UNKNOWN;
        }
        switch (activeNetworkInfo.getType()) {
            case 0:
            case 2:
            case 3:
            case 4:
            case 5:
                break;
            case 1:
                break;
            case 6:
            case 7:
            default:
                if (!activeNetworkInfo.isConnected()) {
                    break;
                } else {
                    break;
                }
            case 8:
                break;
        }
        return com.flurry.sdk.jk.a.NONE_OR_UNKNOWN;
    }

    private static android.net.ConnectivityManager f() {
        return (android.net.ConnectivityManager) com.flurry.sdk.jr.a().a.getSystemService("connectivity");
    }
}
