package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public abstract class jz {
    protected java.lang.String g;

    public jz(java.lang.String str) {
        this.g = "com.flurry.android.sdk.ReplaceMeWithAProperEventName";
        if (android.text.TextUtils.isEmpty(str)) {
            throw new java.lang.IllegalArgumentException("Event must have a name!");
        }
        this.g = str;
    }

    public final java.lang.String a() {
        return this.g;
    }

    public final void b() {
        com.flurry.sdk.kb.a().a(this);
    }
}
