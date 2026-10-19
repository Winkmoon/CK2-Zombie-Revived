package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class kl<RequestObjectType, ResponseObjectType> extends com.flurry.sdk.kn {
    public com.flurry.sdk.kl.a<RequestObjectType, ResponseObjectType> a;
    public RequestObjectType b;
    public com.flurry.sdk.kz<RequestObjectType> c;
    public com.flurry.sdk.kz<ResponseObjectType> d;
    private ResponseObjectType x;

    public interface a<RequestObjectType, ResponseObjectType> {
        void a(com.flurry.sdk.kl<RequestObjectType, ResponseObjectType> klVar, ResponseObjectType responseobjecttype);
    }

    @Override // com.flurry.sdk.kn, com.flurry.sdk.lw
    public final void a() {
        this.k = new com.flurry.sdk.kn.c() { // from class: com.flurry.sdk.kl.1
            @Override // com.flurry.sdk.kn.c
            public final void a(java.io.OutputStream outputStream) throws java.lang.Exception {
                if (com.flurry.sdk.kl.this.b != null && com.flurry.sdk.kl.this.c != null) {
                    com.flurry.sdk.kl.this.c.a(outputStream, com.flurry.sdk.kl.this.b);
                }
            }

            @Override // com.flurry.sdk.kn.c
            public final void a(com.flurry.sdk.kn knVar, java.io.InputStream inputStream) throws java.lang.Exception {
                if (knVar.d() && com.flurry.sdk.kl.this.d != null) {
                    com.flurry.sdk.kl.this.x = com.flurry.sdk.kl.this.d.a(inputStream);
                }
            }

            @Override // com.flurry.sdk.kn.c
            public final void a(com.flurry.sdk.kn knVar) {
                com.flurry.sdk.kl.d(com.flurry.sdk.kl.this);
            }
        };
        super.a();
    }

    static /* synthetic */ void d(com.flurry.sdk.kl klVar) {
        if (klVar.a == null || klVar.b()) {
            return;
        }
        klVar.a.a(klVar, klVar.x);
    }
}
