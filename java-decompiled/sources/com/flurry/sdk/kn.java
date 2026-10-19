package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class kn extends com.flurry.sdk.lx {
    static final java.lang.String e = com.flurry.sdk.kn.class.getSimpleName();
    private int a;
    private int b;
    private java.net.HttpURLConnection d;
    public java.lang.String f;
    public com.flurry.sdk.kn.a g;
    public com.flurry.sdk.kn.c k;
    public boolean l;
    public java.lang.Exception o;
    public boolean r;
    public boolean t;
    private boolean x;
    private boolean y;
    public int h = 10000;
    public int i = 15000;
    public boolean j = true;
    private final com.flurry.sdk.jw<java.lang.String, java.lang.String> c = new com.flurry.sdk.jw<>();
    long m = -1;
    public long n = -1;
    public int p = -1;
    public final com.flurry.sdk.jw<java.lang.String, java.lang.String> q = new com.flurry.sdk.jw<>();
    private final java.lang.Object z = new java.lang.Object();
    public int s = 25000;
    private com.flurry.sdk.km A = new com.flurry.sdk.km(this);

    public interface c {
        void a(com.flurry.sdk.kn knVar);

        void a(com.flurry.sdk.kn knVar, java.io.InputStream inputStream) throws java.lang.Exception;

        void a(java.io.OutputStream outputStream) throws java.lang.Exception;
    }

    public static class b implements com.flurry.sdk.kn.c {
        @Override // com.flurry.sdk.kn.c
        public final void a(java.io.OutputStream outputStream) throws java.lang.Exception {
        }

        @Override // com.flurry.sdk.kn.c
        public void a(com.flurry.sdk.kn knVar, java.io.InputStream inputStream) throws java.lang.Exception {
        }

        @Override // com.flurry.sdk.kn.c
        public void a(com.flurry.sdk.kn knVar) {
        }
    }

    public enum a {
        kUnknown,
        kGet,
        kPost,
        kPut,
        kDelete,
        kHead;

        @Override // java.lang.Enum
        public final java.lang.String toString() {
            switch (this) {
                case kPost:
                    return "POST";
                case kPut:
                    return "PUT";
                case kDelete:
                    return "DELETE";
                case kHead:
                    return "HEAD";
                case kGet:
                    return "GET";
                default:
                    return null;
            }
        }
    }

    public final void a(java.lang.String str, java.lang.String str2) {
        this.c.a((com.flurry.sdk.jw<java.lang.String, java.lang.String>) str, str2);
    }

    public final boolean b() {
        boolean z;
        synchronized (this.z) {
            z = this.y;
        }
        return z;
    }

    public final boolean c() {
        return !e() && d();
    }

    public final boolean d() {
        return this.p >= 200 && this.p < 400 && !this.t;
    }

    public final boolean e() {
        return this.o != null;
    }

    public final java.util.List<java.lang.String> a(java.lang.String str) {
        return this.q.a((com.flurry.sdk.jw<java.lang.String, java.lang.String>) str);
    }

    public final void f() {
        com.flurry.sdk.kf.a(3, e, "Cancelling http request: " + this.f);
        synchronized (this.z) {
            this.y = true;
        }
        if (this.x) {
            return;
        }
        this.x = true;
        if (this.d == null) {
            return;
        }
        new java.lang.Thread() { // from class: com.flurry.sdk.kn.1
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                try {
                    if (com.flurry.sdk.kn.this.d != null) {
                        com.flurry.sdk.kn.this.d.disconnect();
                    }
                } catch (java.lang.Throwable th) {
                }
            }
        }.start();
    }

    @Override // com.flurry.sdk.lw
    public void a() {
        try {
            if (this.f == null) {
                return;
            }
            if (!com.flurry.sdk.jk.a().b) {
                com.flurry.sdk.kf.a(3, e, "Network not available, aborting http request: " + this.f);
                return;
            }
            if (this.g == null || com.flurry.sdk.kn.a.kUnknown.equals(this.g)) {
                this.g = com.flurry.sdk.kn.a.kGet;
            }
            i();
            com.flurry.sdk.kf.a(4, e, "HTTP status: " + this.p + " for url: " + this.f);
        } catch (java.lang.Exception e2) {
            com.flurry.sdk.kf.a(4, e, "HTTP status: " + this.p + " for url: " + this.f);
            com.flurry.sdk.kf.a(3, e, "Exception during http request: " + this.f, e2);
            this.b = this.d.getReadTimeout();
            this.a = this.d.getConnectTimeout();
            this.o = e2;
        } finally {
            this.A.a();
            h();
        }
    }

    @Override // com.flurry.sdk.lx
    public final void g() {
        f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void i() throws java.lang.Exception {
        java.io.BufferedOutputStream bufferedOutputStream;
        java.io.BufferedInputStream bufferedInputStream;
        java.io.BufferedInputStream bufferedInputStream2;
        java.io.OutputStream outputStream = null;
        if (this.y) {
            return;
        }
        this.f = com.flurry.sdk.lr.a(this.f);
        try {
            this.d = (java.net.HttpURLConnection) new java.net.URL(this.f).openConnection();
            this.d.setConnectTimeout(this.h);
            this.d.setReadTimeout(this.i);
            this.d.setRequestMethod(this.g.toString());
            this.d.setInstanceFollowRedirects(this.j);
            this.d.setDoOutput(com.flurry.sdk.kn.a.kPost.equals(this.g));
            this.d.setDoInput(true);
            for (java.util.Map.Entry<java.lang.String, java.lang.String> entry : this.c.b()) {
                this.d.addRequestProperty(entry.getKey(), entry.getValue());
            }
            if (!com.flurry.sdk.kn.a.kGet.equals(this.g) && !com.flurry.sdk.kn.a.kPost.equals(this.g)) {
                this.d.setRequestProperty("Accept-Encoding", "");
            }
            if (this.y) {
                return;
            }
            if (com.flurry.sdk.kn.a.kPost.equals(this.g)) {
                try {
                    java.io.OutputStream outputStream2 = this.d.getOutputStream();
                    try {
                        bufferedOutputStream = new java.io.BufferedOutputStream(outputStream2);
                    } catch (java.lang.Throwable th) {
                        th = th;
                        bufferedOutputStream = null;
                        outputStream = outputStream2;
                    }
                    try {
                        if (this.k != null && !b()) {
                            this.k.a(bufferedOutputStream);
                        }
                        com.flurry.sdk.lr.a(bufferedOutputStream);
                        com.flurry.sdk.lr.a(outputStream2);
                    } catch (java.lang.Throwable th2) {
                        th = th2;
                        outputStream = outputStream2;
                        com.flurry.sdk.lr.a(bufferedOutputStream);
                        com.flurry.sdk.lr.a(outputStream);
                        throw th;
                    }
                } catch (java.lang.Throwable th3) {
                    th = th3;
                    bufferedOutputStream = null;
                }
            }
            if (this.l) {
                this.m = java.lang.System.currentTimeMillis();
            }
            if (this.r) {
                this.A.a(this.s);
            }
            this.p = this.d.getResponseCode();
            if (this.l && this.m != -1) {
                this.n = java.lang.System.currentTimeMillis() - this.m;
            }
            this.A.a();
            for (java.util.Map.Entry<java.lang.String, java.util.List<java.lang.String>> entry2 : this.d.getHeaderFields().entrySet()) {
                java.util.Iterator<java.lang.String> it = entry2.getValue().iterator();
                while (it.hasNext()) {
                    this.q.a((com.flurry.sdk.jw<java.lang.String, java.lang.String>) entry2.getKey(), it.next());
                }
            }
            if (!com.flurry.sdk.kn.a.kGet.equals(this.g) && !com.flurry.sdk.kn.a.kPost.equals(this.g)) {
                return;
            }
            if (this.y) {
                return;
            }
            try {
                java.io.InputStream inputStream = this.d.getInputStream();
                try {
                    bufferedInputStream2 = new java.io.BufferedInputStream(inputStream);
                } catch (java.lang.Throwable th4) {
                    th = th4;
                    bufferedInputStream = null;
                    outputStream = inputStream;
                }
                try {
                    if (this.k != null && !b()) {
                        this.k.a(this, bufferedInputStream2);
                    }
                    com.flurry.sdk.lr.a((java.io.Closeable) bufferedInputStream2);
                    com.flurry.sdk.lr.a((java.io.Closeable) inputStream);
                } catch (java.lang.Throwable th5) {
                    th = th5;
                    outputStream = inputStream;
                    bufferedInputStream = bufferedInputStream2;
                    com.flurry.sdk.lr.a((java.io.Closeable) bufferedInputStream);
                    com.flurry.sdk.lr.a(outputStream);
                    throw th;
                }
            } catch (java.lang.Throwable th6) {
                th = th6;
                bufferedInputStream = null;
            }
        } finally {
            j();
        }
    }

    final void h() {
        if (this.k != null && !b()) {
            this.k.a(this);
        }
    }

    private void j() {
        if (!this.x) {
            this.x = true;
            if (this.d != null) {
                this.d.disconnect();
            }
        }
    }
}
