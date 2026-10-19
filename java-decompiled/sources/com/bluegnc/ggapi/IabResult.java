package com.bluegnc.ggapi;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class IabResult {
    java.lang.String mMessage;
    int mResponse;

    public IabResult(int response, java.lang.String message) {
        this.mResponse = response;
        if (message == null || message.trim().length() == 0) {
            this.mMessage = com.bluegnc.ggapi.IabHelper.getResponseDesc(response);
        } else {
            this.mMessage = java.lang.String.valueOf(message) + " (response: " + com.bluegnc.ggapi.IabHelper.getResponseDesc(response) + ")";
        }
    }

    public int getResponse() {
        return this.mResponse;
    }

    public java.lang.String getMessage() {
        return this.mMessage;
    }

    public boolean isSuccess() {
        return this.mResponse == 0;
    }

    public boolean isFailure() {
        return !isSuccess();
    }

    public java.lang.String toString() {
        return "IabResult: " + getMessage();
    }
}
