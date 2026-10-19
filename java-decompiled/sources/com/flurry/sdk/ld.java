package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class ld {
    private static final java.util.List<java.lang.Class<?>> b = new java.util.ArrayList();
    private final java.lang.String a = com.flurry.sdk.ld.class.getSimpleName();
    private final java.util.Map<java.lang.Class<?>, java.lang.Object> c = new java.util.LinkedHashMap();

    public static void a(java.lang.Class<?> cls) {
        synchronized (b) {
            b.add(cls);
        }
    }

    public static void b(java.lang.Class<?> cls) {
        synchronized (b) {
            b.remove(cls);
        }
    }

    public ld() {
        java.util.ArrayList<java.lang.Class<?>> arrayList;
        synchronized (b) {
            arrayList = new java.util.ArrayList(b);
        }
        for (java.lang.Class<?> cls : arrayList) {
            try {
                java.lang.Object newInstance = cls.newInstance();
                synchronized (this.c) {
                    this.c.put(cls, newInstance);
                }
            } catch (java.lang.Exception e) {
                com.flurry.sdk.kf.a(5, this.a, "Module data " + cls + " is not available:", e);
            }
        }
    }

    public final java.lang.Object c(java.lang.Class<?> cls) {
        java.lang.Object obj;
        synchronized (this.c) {
            obj = this.c.get(cls);
        }
        return obj;
    }
}
