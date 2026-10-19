package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class jt {
    private static com.flurry.sdk.jt a;
    private static final java.lang.String b = com.flurry.sdk.jt.class.getSimpleName();
    private static final java.util.HashMap<java.lang.String, java.util.Map<java.lang.String, java.lang.String>> c = new java.util.HashMap<>();

    public static synchronized com.flurry.sdk.jt a() {
        com.flurry.sdk.jt jtVar;
        synchronized (com.flurry.sdk.jt.class) {
            if (a == null) {
                a = new com.flurry.sdk.jt();
            }
            jtVar = a;
        }
        return jtVar;
    }

    public static synchronized void b() {
        synchronized (com.flurry.sdk.jt.class) {
            a = null;
        }
    }

    public final synchronized void a(java.lang.String str, java.lang.String str2, java.util.Map<java.lang.String, java.lang.String> map) {
        if (map == null) {
            map = new java.util.HashMap<>();
        }
        if (map.size() >= 10) {
            com.flurry.sdk.kf.e(b, "MaxOriginParams exceeded: " + map.size());
        } else {
            map.put("flurryOriginVersion", str2);
            synchronized (c) {
                if (c.size() >= 10 && !c.containsKey(str)) {
                    com.flurry.sdk.kf.e(b, "MaxOrigins exceeded: " + c.size());
                } else {
                    c.put(str, map);
                }
            }
        }
    }

    public final synchronized java.util.HashMap<java.lang.String, java.util.Map<java.lang.String, java.lang.String>> c() {
        java.util.HashMap<java.lang.String, java.util.Map<java.lang.String, java.lang.String>> hashMap;
        synchronized (c) {
            hashMap = new java.util.HashMap<>(c);
        }
        return hashMap;
    }
}
