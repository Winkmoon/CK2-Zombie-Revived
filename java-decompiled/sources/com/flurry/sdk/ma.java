package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class ma {
    private static com.flurry.sdk.ma c;
    final java.util.Map<java.lang.Thread.UncaughtExceptionHandler, java.lang.Void> b = new java.util.WeakHashMap();
    final java.lang.Thread.UncaughtExceptionHandler a = java.lang.Thread.getDefaultUncaughtExceptionHandler();

    public static synchronized com.flurry.sdk.ma a() {
        com.flurry.sdk.ma maVar;
        synchronized (com.flurry.sdk.ma.class) {
            if (c == null) {
                c = new com.flurry.sdk.ma();
            }
            maVar = c;
        }
        return maVar;
    }

    public static synchronized void b() {
        synchronized (com.flurry.sdk.ma.class) {
            if (c != null) {
                java.lang.Thread.setDefaultUncaughtExceptionHandler(c.a);
            }
            c = null;
        }
    }

    final java.util.Set<java.lang.Thread.UncaughtExceptionHandler> c() {
        java.util.Set<java.lang.Thread.UncaughtExceptionHandler> keySet;
        synchronized (this.b) {
            keySet = this.b.keySet();
        }
        return keySet;
    }

    private ma() {
        java.lang.Thread.setDefaultUncaughtExceptionHandler(new com.flurry.sdk.ma.a(this, (byte) 0));
    }

    final class a implements java.lang.Thread.UncaughtExceptionHandler {
        private a() {
        }

        /* synthetic */ a(com.flurry.sdk.ma maVar, byte b) {
            this();
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public final void uncaughtException(java.lang.Thread thread, java.lang.Throwable th) {
            java.util.Iterator<java.lang.Thread.UncaughtExceptionHandler> it = com.flurry.sdk.ma.this.c().iterator();
            while (it.hasNext()) {
                try {
                    it.next().uncaughtException(thread, th);
                } catch (java.lang.Throwable th2) {
                }
            }
            com.flurry.sdk.ma maVar = com.flurry.sdk.ma.this;
            if (maVar.a != null) {
                try {
                    maVar.a.uncaughtException(thread, th);
                } catch (java.lang.Throwable th3) {
                }
            }
        }
    }
}
