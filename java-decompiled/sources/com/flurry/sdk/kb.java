package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class kb {
    private static com.flurry.sdk.kb a = null;
    private final com.flurry.sdk.jw<java.lang.String, com.flurry.sdk.ko<com.flurry.sdk.ka<?>>> b = new com.flurry.sdk.jw<>();
    private final com.flurry.sdk.jw<com.flurry.sdk.ko<com.flurry.sdk.ka<?>>, java.lang.String> c = new com.flurry.sdk.jw<>();

    public static synchronized com.flurry.sdk.kb a() {
        com.flurry.sdk.kb kbVar;
        synchronized (com.flurry.sdk.kb.class) {
            if (a == null) {
                a = new com.flurry.sdk.kb();
            }
            kbVar = a;
        }
        return kbVar;
    }

    public static synchronized void b() {
        synchronized (com.flurry.sdk.kb.class) {
            if (a != null) {
                a.c();
                a = null;
            }
        }
    }

    private kb() {
    }

    public final synchronized void a(java.lang.String str, com.flurry.sdk.ka<?> kaVar) {
        synchronized (this) {
            if (!android.text.TextUtils.isEmpty(str) && kaVar != null) {
                com.flurry.sdk.ko<com.flurry.sdk.ka<?>> koVar = new com.flurry.sdk.ko<>(kaVar);
                java.util.List<com.flurry.sdk.ko<com.flurry.sdk.ka<?>>> a2 = this.b.a((com.flurry.sdk.jw<java.lang.String, com.flurry.sdk.ko<com.flurry.sdk.ka<?>>>) str, false);
                if (!(a2 != null ? a2.contains(koVar) : false)) {
                    this.b.a((com.flurry.sdk.jw<java.lang.String, com.flurry.sdk.ko<com.flurry.sdk.ka<?>>>) str, (java.lang.String) koVar);
                    this.c.a((com.flurry.sdk.jw<com.flurry.sdk.ko<com.flurry.sdk.ka<?>>, java.lang.String>) koVar, (com.flurry.sdk.ko<com.flurry.sdk.ka<?>>) str);
                }
            }
        }
    }

    public final synchronized void b(java.lang.String str, com.flurry.sdk.ka<?> kaVar) {
        if (!android.text.TextUtils.isEmpty(str)) {
            com.flurry.sdk.ko<com.flurry.sdk.ka<?>> koVar = new com.flurry.sdk.ko<>(kaVar);
            this.b.b(str, koVar);
            this.c.b(koVar, str);
        }
    }

    public final synchronized void a(java.lang.String str) {
        if (!android.text.TextUtils.isEmpty(str)) {
            java.util.Iterator<com.flurry.sdk.ko<com.flurry.sdk.ka<?>>> it = this.b.a((com.flurry.sdk.jw<java.lang.String, com.flurry.sdk.ko<com.flurry.sdk.ka<?>>>) str).iterator();
            while (it.hasNext()) {
                this.c.b(it.next(), str);
            }
            this.b.b(str);
        }
    }

    public final synchronized void a(com.flurry.sdk.ka<?> kaVar) {
        if (kaVar != null) {
            com.flurry.sdk.ko<com.flurry.sdk.ka<?>> koVar = new com.flurry.sdk.ko<>(kaVar);
            java.util.Iterator<java.lang.String> it = this.c.a((com.flurry.sdk.jw<com.flurry.sdk.ko<com.flurry.sdk.ka<?>>, java.lang.String>) koVar).iterator();
            while (it.hasNext()) {
                this.b.b(it.next(), koVar);
            }
            this.c.b(koVar);
        }
    }

    private synchronized void c() {
        this.b.a();
        this.c.a();
    }

    public final synchronized int b(java.lang.String str) {
        return android.text.TextUtils.isEmpty(str) ? 0 : this.b.a((com.flurry.sdk.jw<java.lang.String, com.flurry.sdk.ko<com.flurry.sdk.ka<?>>>) str).size();
    }

    private synchronized java.util.List<com.flurry.sdk.ka<?>> c(java.lang.String str) {
        java.util.List<com.flurry.sdk.ka<?>> list;
        if (android.text.TextUtils.isEmpty(str)) {
            list = java.util.Collections.emptyList();
        } else {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            java.util.Iterator<com.flurry.sdk.ko<com.flurry.sdk.ka<?>>> it = this.b.a((com.flurry.sdk.jw<java.lang.String, com.flurry.sdk.ko<com.flurry.sdk.ka<?>>>) str).iterator();
            while (it.hasNext()) {
                com.flurry.sdk.ka kaVar = (com.flurry.sdk.ka) it.next().get();
                if (kaVar == null) {
                    it.remove();
                } else {
                    arrayList.add(kaVar);
                }
            }
            list = arrayList;
        }
        return list;
    }

    public final void a(final com.flurry.sdk.jz jzVar) {
        if (jzVar != null) {
            for (final com.flurry.sdk.ka<?> kaVar : c(jzVar.a())) {
                com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.kb.1
                    @Override // com.flurry.sdk.lw
                    public final void a() {
                        kaVar.a(jzVar);
                    }
                });
            }
        }
    }
}
