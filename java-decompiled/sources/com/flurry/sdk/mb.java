package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class mb {
    private static final java.lang.String a = com.flurry.sdk.mb.class.getSimpleName();
    private static boolean b;

    public static synchronized void a() {
        synchronized (com.flurry.sdk.mb.class) {
            if (!b) {
                com.flurry.sdk.kh.a((java.lang.Class<? extends com.flurry.sdk.ki>) com.flurry.sdk.jd.class);
                try {
                    com.flurry.sdk.kh.a((java.lang.Class<? extends com.flurry.sdk.ki>) com.flurry.sdk.hk.class);
                } catch (java.lang.NoClassDefFoundError e) {
                    com.flurry.sdk.kf.a(3, a, "Analytics module not available");
                }
                try {
                    com.flurry.sdk.kh.a((java.lang.Class<? extends com.flurry.sdk.ki>) com.flurry.sdk.lz.class);
                } catch (java.lang.NoClassDefFoundError e2) {
                    com.flurry.sdk.kf.a(3, a, "Crash module not available");
                }
                try {
                    com.flurry.sdk.kh.a((java.lang.Class<? extends com.flurry.sdk.ki>) java.lang.Class.forName("com.flurry.sdk.i"));
                } catch (java.lang.ClassNotFoundException | java.lang.NoClassDefFoundError e3) {
                    com.flurry.sdk.kf.a(3, a, "Ads module not available");
                }
                b = true;
            }
        }
    }
}
