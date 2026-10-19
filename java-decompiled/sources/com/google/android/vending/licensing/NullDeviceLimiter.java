package com.google.android.vending.licensing;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class NullDeviceLimiter implements com.google.android.vending.licensing.DeviceLimiter {
    @Override // com.google.android.vending.licensing.DeviceLimiter
    public int isDeviceAllowed(java.lang.String userId) {
        return 256;
    }
}
