package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class jw<K, V> {
    public final java.util.Map<K, java.util.List<V>> a;
    private int b;

    public jw() {
        this.a = new java.util.HashMap();
    }

    public jw(java.util.Map<K, java.util.List<V>> map) {
        this.a = map;
    }

    public final void a() {
        this.a.clear();
    }

    public final java.util.List<V> a(K k) {
        if (k == null) {
            return java.util.Collections.emptyList();
        }
        java.util.List<V> a = a((com.flurry.sdk.jw<K, V>) k, false);
        if (a == null) {
            return java.util.Collections.emptyList();
        }
        return a;
    }

    public final void a(K k, V v) {
        if (k != null) {
            a((com.flurry.sdk.jw<K, V>) k, true).add(v);
        }
    }

    public final void a(com.flurry.sdk.jw<K, V> jwVar) {
        if (jwVar != null) {
            for (java.util.Map.Entry<K, java.util.List<V>> entry : jwVar.a.entrySet()) {
                a((com.flurry.sdk.jw<K, V>) entry.getKey(), true).addAll(entry.getValue());
            }
        }
    }

    public final boolean b(K k, V v) {
        java.util.List<V> a;
        boolean z = false;
        if (k != null && (a = a((com.flurry.sdk.jw<K, V>) k, false)) != null) {
            z = a.remove(v);
            if (a.size() == 0) {
                this.a.remove(k);
            }
        }
        return z;
    }

    public final boolean b(K k) {
        return (k == null || this.a.remove(k) == null) ? false : true;
    }

    public final java.util.Collection<java.util.Map.Entry<K, V>> b() {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (java.util.Map.Entry<K, java.util.List<V>> entry : this.a.entrySet()) {
            java.util.Iterator<V> it = entry.getValue().iterator();
            while (it.hasNext()) {
                arrayList.add(new java.util.AbstractMap.SimpleImmutableEntry(entry.getKey(), it.next()));
            }
        }
        return arrayList;
    }

    public final java.util.Collection<V> c() {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.Iterator<java.util.Map.Entry<K, java.util.List<V>>> it = this.a.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next().getValue());
        }
        return arrayList;
    }

    public final java.util.List<V> a(K k, boolean z) {
        java.util.List<V> list = this.a.get(k);
        if (z && list == null) {
            if (this.b > 0) {
                list = new java.util.ArrayList<>(this.b);
            } else {
                list = new java.util.ArrayList<>();
            }
            this.a.put(k, list);
        }
        return list;
    }
}
