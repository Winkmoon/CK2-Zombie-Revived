package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class jl {
    private static com.flurry.sdk.jl a;
    private static final java.lang.String b = com.flurry.sdk.jl.class.getSimpleName();

    public static synchronized com.flurry.sdk.jl a() {
        com.flurry.sdk.jl jlVar;
        synchronized (com.flurry.sdk.jl.class) {
            if (a == null) {
                a = new com.flurry.sdk.jl();
            }
            jlVar = a;
        }
        return jlVar;
    }

    public static void b() {
        a = null;
    }

    private jl() {
    }

    public static java.lang.String c() {
        android.telephony.TelephonyManager telephonyManager = (android.telephony.TelephonyManager) com.flurry.sdk.jr.a().a.getSystemService("phone");
        if (telephonyManager == null) {
            return null;
        }
        return telephonyManager.getNetworkOperatorName();
    }

    public static java.lang.String d() {
        android.telephony.TelephonyManager telephonyManager = (android.telephony.TelephonyManager) com.flurry.sdk.jr.a().a.getSystemService("phone");
        if (telephonyManager == null) {
            return null;
        }
        return telephonyManager.getNetworkOperator();
    }
}
