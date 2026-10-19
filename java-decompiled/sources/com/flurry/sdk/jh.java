package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class jh {
    public static com.flurry.sdk.jh a;

    public static synchronized com.flurry.sdk.jh a() {
        com.flurry.sdk.jh jhVar;
        synchronized (com.flurry.sdk.jh.class) {
            if (a == null) {
                a = new com.flurry.sdk.jh();
            }
            jhVar = a;
        }
        return jhVar;
    }

    private jh() {
    }

    public static java.lang.String b() {
        return java.util.Locale.getDefault().getLanguage() + "_" + java.util.Locale.getDefault().getCountry();
    }
}
