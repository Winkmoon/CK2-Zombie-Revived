package com.google.android.vending.licensing;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public interface Policy {
    public static final int LICENSED = 256;
    public static final int NOT_LICENSED = 561;
    public static final int RETRY = 291;

    boolean allowAccess();

    void processServerResponse(int i, com.google.android.vending.licensing.ResponseData responseData);
}
