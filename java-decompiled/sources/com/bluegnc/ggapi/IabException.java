package com.bluegnc.ggapi;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class IabException extends java.lang.Exception {
    com.bluegnc.ggapi.IabResult mResult;

    public IabException(com.bluegnc.ggapi.IabResult r) {
        this(r, (java.lang.Exception) null);
    }

    public IabException(int response, java.lang.String message) {
        this(new com.bluegnc.ggapi.IabResult(response, message));
    }

    public IabException(com.bluegnc.ggapi.IabResult r, java.lang.Exception cause) {
        super(r.getMessage(), cause);
        this.mResult = r;
    }

    public IabException(int response, java.lang.String message, java.lang.Exception cause) {
        this(new com.bluegnc.ggapi.IabResult(response, message), cause);
    }

    public com.bluegnc.ggapi.IabResult getResult() {
        return this.mResult;
    }
}
