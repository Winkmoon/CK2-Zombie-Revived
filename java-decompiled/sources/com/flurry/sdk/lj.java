package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class lj {
    private java.util.Map<java.lang.String, java.lang.Object> a = new java.util.HashMap();
    private java.util.Map<java.lang.String, java.util.List<com.flurry.sdk.lj.a>> b = new java.util.HashMap();

    public interface a {
        void a(java.lang.String str, java.lang.Object obj);
    }

    public final synchronized void a(java.lang.String str, java.lang.Object obj) {
        if (!android.text.TextUtils.isEmpty(str)) {
            java.lang.Object obj2 = this.a.get(str);
            if (!(obj == obj2 || (obj != null && obj.equals(obj2)))) {
                if (obj == null) {
                    this.a.remove(str);
                } else {
                    this.a.put(str, obj);
                }
                if (this.b.get(str) != null) {
                    java.util.Iterator<com.flurry.sdk.lj.a> it = this.b.get(str).iterator();
                    while (it.hasNext()) {
                        it.next().a(str, obj);
                    }
                }
            }
        }
    }

    public final synchronized java.lang.Object a(java.lang.String str) {
        return this.a.get(str);
    }

    public final synchronized void a(java.lang.String str, com.flurry.sdk.lj.a aVar) {
        if (!android.text.TextUtils.isEmpty(str) && aVar != null) {
            java.util.List<com.flurry.sdk.lj.a> list = this.b.get(str);
            if (list == null) {
                list = new java.util.LinkedList<>();
            }
            list.add(aVar);
            this.b.put(str, list);
        }
    }

    public final synchronized boolean b(java.lang.String str, com.flurry.sdk.lj.a aVar) {
        boolean remove;
        if (android.text.TextUtils.isEmpty(str)) {
            remove = false;
        } else if (aVar == null) {
            remove = false;
        } else {
            java.util.List<com.flurry.sdk.lj.a> list = this.b.get(str);
            remove = list == null ? false : list.remove(aVar);
        }
        return remove;
    }

    public final synchronized void c() {
        this.b.clear();
    }
}
