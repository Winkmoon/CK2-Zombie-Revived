package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class kc implements java.util.Comparator<java.lang.Runnable> {
    private static final java.lang.String a = com.flurry.sdk.kc.class.getSimpleName();

    @Override // java.util.Comparator
    public /* synthetic */ int compare(java.lang.Runnable runnable, java.lang.Runnable runnable2) {
        int a2 = a(runnable);
        int a3 = a(runnable2);
        if (a2 < a3) {
            return -1;
        }
        if (a2 > a3) {
            return 1;
        }
        return 0;
    }

    private static int a(java.lang.Runnable runnable) {
        int i;
        if (runnable == null) {
            return Integer.MAX_VALUE;
        }
        if (runnable instanceof com.flurry.sdk.kd) {
            com.flurry.sdk.lx lxVar = (com.flurry.sdk.lx) ((com.flurry.sdk.kd) runnable).a();
            if (lxVar == null) {
                i = Integer.MAX_VALUE;
            } else {
                i = lxVar.w;
            }
            return i;
        }
        if (!(runnable instanceof com.flurry.sdk.lx)) {
            com.flurry.sdk.kf.a(6, a, "Unknown runnable class: " + runnable.getClass().getName());
            return Integer.MAX_VALUE;
        }
        return ((com.flurry.sdk.lx) runnable).w;
    }
}
