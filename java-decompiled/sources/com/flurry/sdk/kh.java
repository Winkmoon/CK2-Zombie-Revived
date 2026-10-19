package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class kh {
    private static final java.lang.String a = com.flurry.sdk.kh.class.getSimpleName();
    private static final java.util.Map<java.lang.Class<? extends com.flurry.sdk.ki>, com.flurry.sdk.kg> b = new java.util.LinkedHashMap();
    private final java.util.Map<java.lang.Class<? extends com.flurry.sdk.ki>, com.flurry.sdk.ki> c = new java.util.LinkedHashMap();

    public static void a(java.lang.Class<? extends com.flurry.sdk.ki> cls) {
        if (cls != null) {
            synchronized (b) {
                b.put(cls, new com.flurry.sdk.kg(cls));
            }
        }
    }

    public final synchronized void a(android.content.Context context) {
        java.util.ArrayList<com.flurry.sdk.kg> arrayList;
        if (context == null) {
            com.flurry.sdk.kf.a(5, a, "Null context.");
        } else {
            synchronized (b) {
                arrayList = new java.util.ArrayList(b.values());
            }
            for (com.flurry.sdk.kg kgVar : arrayList) {
                try {
                    if (kgVar.a != null && android.os.Build.VERSION.SDK_INT >= kgVar.b) {
                        com.flurry.sdk.ki newInstance = kgVar.a.newInstance();
                        newInstance.a(context);
                        this.c.put(kgVar.a, newInstance);
                    }
                } catch (java.lang.Exception e) {
                    com.flurry.sdk.kf.a(5, a, "Flurry Module for class " + kgVar.a + " is not available:", e);
                }
            }
            com.flurry.sdk.lf.a().a(context);
            com.flurry.sdk.jv.a();
        }
    }

    public final synchronized void a() {
        com.flurry.sdk.jv.b();
        com.flurry.sdk.lf.b();
        java.util.List<com.flurry.sdk.ki> b2 = b();
        for (int size = b2.size() - 1; size >= 0; size--) {
            try {
                this.c.remove(b2.get(size).getClass()).b();
            } catch (java.lang.Exception e) {
                com.flurry.sdk.kf.a(5, a, "Error destroying module:", e);
            }
        }
    }

    public final com.flurry.sdk.ki b(java.lang.Class<? extends com.flurry.sdk.ki> cls) {
        com.flurry.sdk.ki kiVar;
        if (cls == null) {
            return null;
        }
        synchronized (this.c) {
            kiVar = this.c.get(cls);
        }
        if (kiVar == null) {
            throw new java.lang.IllegalStateException("Module was not registered/initialized. " + cls);
        }
        return kiVar;
    }

    private java.util.List<com.flurry.sdk.ki> b() {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        synchronized (this.c) {
            arrayList.addAll(this.c.values());
        }
        return arrayList;
    }
}
