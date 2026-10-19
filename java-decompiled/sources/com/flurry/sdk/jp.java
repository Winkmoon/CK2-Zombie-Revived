package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class jp extends com.flurry.sdk.ke<com.flurry.sdk.kn> {
    private static com.flurry.sdk.jp a = null;

    public static synchronized com.flurry.sdk.jp a() {
        com.flurry.sdk.jp jpVar;
        synchronized (com.flurry.sdk.jp.class) {
            if (a == null) {
                a = new com.flurry.sdk.jp();
            }
            jpVar = a;
        }
        return jpVar;
    }

    public static synchronized void b() {
        synchronized (com.flurry.sdk.jp.class) {
            if (a != null) {
                a.c();
            }
            a = null;
        }
    }

    protected jp() {
        super(com.flurry.sdk.jp.class.getName(), java.util.concurrent.TimeUnit.MILLISECONDS, new java.util.concurrent.PriorityBlockingQueue(11, new com.flurry.sdk.kc()));
    }
}
