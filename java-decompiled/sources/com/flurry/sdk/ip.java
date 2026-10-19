package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public enum ip {
    GET("GET", 0),
    PUT("PUT", 1),
    POST("POST", 2);

    java.lang.String d;
    int e;

    ip(java.lang.String str, int i) {
        this.d = str;
        this.e = i;
    }

    public static com.flurry.sdk.ip a(int i) {
        switch (i) {
            case 0:
                return GET;
            case 1:
                return PUT;
            case 2:
                return POST;
            default:
                return null;
        }
    }
}
