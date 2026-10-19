package com.google.android.vending.licensing;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public interface Obfuscator {
    java.lang.String obfuscate(java.lang.String str, java.lang.String str2);

    java.lang.String unobfuscate(java.lang.String str, java.lang.String str2) throws com.google.android.vending.licensing.ValidationException;
}
