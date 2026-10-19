package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class ix extends com.flurry.sdk.kr implements com.flurry.sdk.lj.a {
    private static final java.lang.String a = com.flurry.sdk.ix.class.getSimpleName();
    private static java.lang.String f = "http://data.flurry.com/aap.do";
    private static java.lang.String g = "https://data.flurry.com/aap.do";
    private java.lang.String h;
    private boolean i;

    public ix() {
        this((byte) 0);
    }

    private ix(byte b) {
        super("Analytics", com.flurry.sdk.ix.class.getSimpleName());
        this.e = "AnalyticsData_";
        com.flurry.sdk.li a2 = com.flurry.sdk.li.a();
        this.i = ((java.lang.Boolean) a2.a("UseHttps")).booleanValue();
        a2.a("UseHttps", (com.flurry.sdk.lj.a) this);
        com.flurry.sdk.kf.a(4, a, "initSettings, UseHttps = " + this.i);
        java.lang.String str = (java.lang.String) a2.a("ReportUrl");
        a2.a("ReportUrl", (com.flurry.sdk.lj.a) this);
        b(str);
        com.flurry.sdk.kf.a(4, a, "initSettings, ReportUrl = " + str);
        b();
    }

    @Override // com.flurry.sdk.lj.a
    public final void a(java.lang.String str, java.lang.Object obj) {
        switch (str) {
            case "UseHttps":
                this.i = ((java.lang.Boolean) obj).booleanValue();
                com.flurry.sdk.kf.a(4, a, "onSettingUpdate, UseHttps = " + this.i);
                break;
            case "ReportUrl":
                java.lang.String str2 = (java.lang.String) obj;
                b(str2);
                com.flurry.sdk.kf.a(4, a, "onSettingUpdate, ReportUrl = " + str2);
                break;
            default:
                com.flurry.sdk.kf.a(6, a, "onSettingUpdate internal error!");
                break;
        }
    }

    private void b(java.lang.String str) {
        if (str != null && !str.endsWith(".do")) {
            com.flurry.sdk.kf.a(5, a, "overriding analytics agent report URL without an endpoint, are you sure?");
        }
        this.h = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.kr
    public final void a(java.lang.String str, java.lang.String str2, final int i) {
        com.flurry.sdk.jr.a().b(new com.flurry.sdk.lw() { // from class: com.flurry.sdk.ix.2
            @Override // com.flurry.sdk.lw
            public final void a() {
                if (i == 200) {
                    com.flurry.sdk.hk.a();
                    com.flurry.sdk.ja c = com.flurry.sdk.hk.c();
                    if (c == null) {
                        return;
                    }
                    c.j = true;
                }
            }
        });
        super.a(str, str2, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.flurry.sdk.kr
    public final void a(byte[] bArr, final java.lang.String str, final java.lang.String str2) {
        java.lang.String str3;
        if (this.h != null) {
            str3 = this.h;
        } else if (this.i) {
            str3 = g;
        } else {
            str3 = f;
        }
        com.flurry.sdk.kf.a(4, a, "FlurryDataSender: start upload data " + java.util.Arrays.toString(bArr) + " with id = " + str + " to " + str3);
        com.flurry.sdk.kl klVar = new com.flurry.sdk.kl();
        klVar.f = str3;
        klVar.w = 100000;
        klVar.g = com.flurry.sdk.kn.a.kPost;
        klVar.a("Content-Type", "application/octet-stream");
        klVar.c = new com.flurry.sdk.kv();
        klVar.b = bArr;
        klVar.a = new com.flurry.sdk.kl.a<byte[], java.lang.Void>() { // from class: com.flurry.sdk.ix.1
            @Override // com.flurry.sdk.kl.a
            public final /* synthetic */ void a(com.flurry.sdk.kl<byte[], java.lang.Void> klVar2, java.lang.Void r7) {
                final int i = klVar2.p;
                if (i > 0) {
                    com.flurry.sdk.kf.e(com.flurry.sdk.ix.a, "Analytics report sent.");
                    com.flurry.sdk.kf.a(3, com.flurry.sdk.ix.a, "FlurryDataSender: report " + str + " sent. HTTP response: " + i);
                    if (com.flurry.sdk.kf.c() <= 3 && com.flurry.sdk.kf.d()) {
                        com.flurry.sdk.jr.a().a(new java.lang.Runnable() { // from class: com.flurry.sdk.ix.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                android.widget.Toast.makeText(com.flurry.sdk.jr.a().a, "SD HTTP Response Code: " + i, 0).show();
                            }
                        });
                    }
                    com.flurry.sdk.ix.this.a(str, str2, i);
                    com.flurry.sdk.ix.this.b();
                    return;
                }
                com.flurry.sdk.ix.this.a(str);
            }
        };
        com.flurry.sdk.jp.a().a((java.lang.Object) this, (com.flurry.sdk.ix) klVar);
    }
}
