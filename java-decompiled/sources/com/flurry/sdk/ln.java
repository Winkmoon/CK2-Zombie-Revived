package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class ln {
    private static final java.lang.String c = com.flurry.sdk.ln.class.getSimpleName();
    long a = 1000;
    boolean b = true;
    private boolean d = false;
    private com.flurry.sdk.lw e = new com.flurry.sdk.lw() { // from class: com.flurry.sdk.ln.1
        @Override // com.flurry.sdk.lw
        public final void a() {
            com.flurry.sdk.kb.a().a(new com.flurry.sdk.ll());
            if (com.flurry.sdk.ln.this.b && com.flurry.sdk.ln.this.d) {
                com.flurry.sdk.jr.a().a(com.flurry.sdk.ln.this.e, com.flurry.sdk.ln.this.a);
            }
        }
    };

    public final synchronized void a() {
        if (!this.d) {
            com.flurry.sdk.jr.a().a(this.e, this.a);
            this.d = true;
        }
    }

    public final synchronized void b() {
        if (this.d) {
            com.flurry.sdk.jr.a().c(this.e);
            this.d = false;
        }
    }
}
