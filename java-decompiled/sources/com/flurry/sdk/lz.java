package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class lz implements com.flurry.sdk.ki, com.flurry.sdk.lj.a, java.lang.Thread.UncaughtExceptionHandler {
    private static final java.lang.String a = com.flurry.sdk.lz.class.getSimpleName();
    private boolean b;

    @Override // com.flurry.sdk.ki
    public final void a(android.content.Context context) {
        com.flurry.sdk.li a2 = com.flurry.sdk.li.a();
        this.b = ((java.lang.Boolean) a2.a("CaptureUncaughtExceptions")).booleanValue();
        a2.a("CaptureUncaughtExceptions", (com.flurry.sdk.lj.a) this);
        com.flurry.sdk.kf.a(4, a, "initSettings, CrashReportingEnabled = " + this.b);
        com.flurry.sdk.ma a3 = com.flurry.sdk.ma.a();
        synchronized (a3.b) {
            a3.b.put(this, null);
        }
    }

    @Override // com.flurry.sdk.ki
    public final void b() {
        com.flurry.sdk.ma.b();
        com.flurry.sdk.li.a().b("CaptureUncaughtExceptions", this);
    }

    @Override // com.flurry.sdk.lj.a
    public final void a(java.lang.String str, java.lang.Object obj) {
        if (str.equals("CaptureUncaughtExceptions")) {
            this.b = ((java.lang.Boolean) obj).booleanValue();
            com.flurry.sdk.kf.a(4, a, "onSettingUpdate, CrashReportingEnabled = " + this.b);
        } else {
            com.flurry.sdk.kf.a(6, a, "onSettingUpdate internal error!");
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(java.lang.Thread thread, java.lang.Throwable th) {
        th.printStackTrace();
        if (this.b) {
            java.lang.String str = "";
            java.lang.StackTraceElement[] stackTrace = th.getStackTrace();
            if (stackTrace != null && stackTrace.length > 0) {
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                if (th.getMessage() != null) {
                    sb.append(" (" + th.getMessage() + ")\n");
                }
                str = sb.toString();
            } else if (th.getMessage() != null) {
                str = th.getMessage();
            }
            com.flurry.sdk.hk.a();
            com.flurry.sdk.hk.a("uncaught", str, th);
        }
        com.flurry.sdk.lf.a().e();
        com.flurry.sdk.ji.a().d();
    }
}
