package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class ko<T> extends java.lang.ref.WeakReference<T> {
    public ko(T t) {
        super(t);
    }

    public final boolean equals(java.lang.Object obj) {
        java.lang.Object obj2 = get();
        return obj instanceof java.lang.ref.Reference ? obj2.equals(((java.lang.ref.Reference) obj).get()) : obj2.equals(obj);
    }

    public final int hashCode() {
        java.lang.Object obj = get();
        return obj == null ? super.hashCode() : obj.hashCode();
    }
}
