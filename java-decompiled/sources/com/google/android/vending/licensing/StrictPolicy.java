package com.google.android.vending.licensing;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class StrictPolicy implements com.google.android.vending.licensing.Policy {
    private int mLastResponse = com.google.android.vending.licensing.Policy.RETRY;

    @Override // com.google.android.vending.licensing.Policy
    public void processServerResponse(int response, com.google.android.vending.licensing.ResponseData rawData) {
        this.mLastResponse = response;
    }

    @Override // com.google.android.vending.licensing.Policy
    public boolean allowAccess() {
        return this.mLastResponse == 256;
    }
}
