package com.flurry.android;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public enum FlurrySyndicationEventName {
    REBLOG("Reblog"),
    FAST_REBLOG("FastReblog"),
    SOURCE_LINK("SourceClick"),
    LIKE("Like");

    private java.lang.String a;

    FlurrySyndicationEventName(java.lang.String str) {
        this.a = str;
    }

    @Override // java.lang.Enum
    public final java.lang.String toString() {
        return this.a;
    }
}
