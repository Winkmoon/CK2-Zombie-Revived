package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class kw<ObjectType> implements com.flurry.sdk.kz<ObjectType> {
    protected final com.flurry.sdk.kz<ObjectType> a;

    public kw(com.flurry.sdk.kz<ObjectType> kzVar) {
        this.a = kzVar;
    }

    @Override // com.flurry.sdk.kz
    public void a(java.io.OutputStream outputStream, ObjectType objecttype) throws java.io.IOException {
        if (this.a != null && outputStream != null && objecttype != null) {
            this.a.a(outputStream, objecttype);
        }
    }

    @Override // com.flurry.sdk.kz
    public ObjectType a(java.io.InputStream inputStream) throws java.io.IOException {
        if (this.a == null || inputStream == null) {
            return null;
        }
        return this.a.a(inputStream);
    }
}
