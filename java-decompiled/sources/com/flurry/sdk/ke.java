package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class ke<T extends com.flurry.sdk.lx> {
    private static final java.lang.String a = com.flurry.sdk.ke.class.getSimpleName();
    private final com.flurry.sdk.jw<java.lang.Object, T> b = new com.flurry.sdk.jw<>();
    private final java.util.HashMap<T, java.lang.Object> c = new java.util.HashMap<>();
    private final java.util.HashMap<T, java.util.concurrent.Future<?>> d = new java.util.HashMap<>();
    private final java.util.concurrent.ThreadPoolExecutor e;

    public ke(java.lang.String str, java.util.concurrent.TimeUnit timeUnit, java.util.concurrent.BlockingQueue<java.lang.Runnable> blockingQueue) {
        this.e = new java.util.concurrent.ThreadPoolExecutor(timeUnit, blockingQueue) { // from class: com.flurry.sdk.ke.1
            @Override // java.util.concurrent.ThreadPoolExecutor
            protected final void beforeExecute(java.lang.Thread thread, java.lang.Runnable runnable) {
                super.beforeExecute(thread, runnable);
                final com.flurry.sdk.lx a2 = com.flurry.sdk.ke.a(runnable);
                if (a2 != null) {
                    new com.flurry.sdk.lw() { // from class: com.flurry.sdk.ke.1.1
                        @Override // com.flurry.sdk.lw
                        public final void a() {
                        }
                    }.run();
                }
            }

            @Override // java.util.concurrent.ThreadPoolExecutor
            protected final void afterExecute(java.lang.Runnable runnable, java.lang.Throwable th) {
                super.afterExecute(runnable, th);
                final com.flurry.sdk.lx a2 = com.flurry.sdk.ke.a(runnable);
                if (a2 != null) {
                    synchronized (com.flurry.sdk.ke.this.d) {
                        com.flurry.sdk.ke.this.d.remove(a2);
                    }
                    com.flurry.sdk.ke.this.b((com.flurry.sdk.ke) a2);
                    new com.flurry.sdk.lw() { // from class: com.flurry.sdk.ke.1.2
                        @Override // com.flurry.sdk.lw
                        public final void a() {
                        }
                    }.run();
                }
            }

            @Override // java.util.concurrent.AbstractExecutorService
            protected final <V> java.util.concurrent.RunnableFuture<V> newTaskFor(java.util.concurrent.Callable<V> callable) {
                throw new java.lang.UnsupportedOperationException("Callable not supported");
            }

            @Override // java.util.concurrent.AbstractExecutorService
            protected final <V> java.util.concurrent.RunnableFuture<V> newTaskFor(java.lang.Runnable runnable, V v) {
                com.flurry.sdk.kd kdVar = new com.flurry.sdk.kd(runnable, v);
                synchronized (com.flurry.sdk.ke.this.d) {
                    com.flurry.sdk.ke.this.d.put((com.flurry.sdk.lx) runnable, kdVar);
                }
                return kdVar;
            }
        };
        this.e.setRejectedExecutionHandler(new java.util.concurrent.ThreadPoolExecutor.DiscardPolicy() { // from class: com.flurry.sdk.ke.2
            @Override // java.util.concurrent.ThreadPoolExecutor.DiscardPolicy, java.util.concurrent.RejectedExecutionHandler
            public final void rejectedExecution(java.lang.Runnable runnable, java.util.concurrent.ThreadPoolExecutor threadPoolExecutor) {
                super.rejectedExecution(runnable, threadPoolExecutor);
                final com.flurry.sdk.lx a2 = com.flurry.sdk.ke.a(runnable);
                if (a2 != null) {
                    synchronized (com.flurry.sdk.ke.this.d) {
                        com.flurry.sdk.ke.this.d.remove(a2);
                    }
                    com.flurry.sdk.ke.this.b((com.flurry.sdk.ke) a2);
                    new com.flurry.sdk.lw() { // from class: com.flurry.sdk.ke.2.1
                        @Override // com.flurry.sdk.lw
                        public final void a() {
                        }
                    }.run();
                }
            }
        });
        this.e.setThreadFactory(new com.flurry.sdk.lk(str));
    }

    public final synchronized void a(java.lang.Object obj, T t) {
        if (obj != null && t != null) {
            b(obj, t);
            this.e.submit(t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final synchronized void a(java.lang.Object obj) {
        if (obj != null) {
            java.util.HashSet hashSet = new java.util.HashSet();
            hashSet.addAll(this.b.a((com.flurry.sdk.jw<java.lang.Object, T>) obj));
            java.util.Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                a((com.flurry.sdk.ke<T>) it.next());
            }
        }
    }

    private synchronized void a(final T t) {
        java.util.concurrent.Future<?> remove;
        if (t != null) {
            synchronized (this.d) {
                remove = this.d.remove(t);
            }
            b((com.flurry.sdk.ke<T>) t);
            if (remove != null) {
                remove.cancel(true);
            }
            new com.flurry.sdk.lw() { // from class: com.flurry.sdk.ke.3
                @Override // com.flurry.sdk.lw
                public final void a() {
                    t.g();
                }
            }.run();
        }
    }

    public final synchronized void c() {
        java.util.HashSet hashSet = new java.util.HashSet();
        hashSet.addAll(this.b.a.keySet());
        java.util.Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }

    public final synchronized long b(java.lang.Object obj) {
        return obj == null ? 0L : this.b.a((com.flurry.sdk.jw<java.lang.Object, T>) obj).size();
    }

    private synchronized void b(java.lang.Object obj, T t) {
        this.b.a((com.flurry.sdk.jw<java.lang.Object, T>) obj, t);
        this.c.put(t, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(T t) {
        c(this.c.get(t), t);
    }

    private synchronized void c(java.lang.Object obj, T t) {
        this.b.b(obj, t);
        this.c.remove(t);
    }

    static /* synthetic */ com.flurry.sdk.lx a(java.lang.Runnable runnable) {
        if (runnable instanceof com.flurry.sdk.kd) {
            return (com.flurry.sdk.lx) ((com.flurry.sdk.kd) runnable).a();
        }
        if (runnable instanceof com.flurry.sdk.lx) {
            return (com.flurry.sdk.lx) runnable;
        }
        com.flurry.sdk.kf.a(6, a, "Unknown runnable class: " + runnable.getClass().getName());
        return null;
    }
}
