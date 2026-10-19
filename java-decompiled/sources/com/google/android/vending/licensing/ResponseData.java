package com.google.android.vending.licensing;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class ResponseData {
    public java.lang.String extra;
    public int nonce;
    public java.lang.String packageName;
    public int responseCode;
    public long timestamp;
    public java.lang.String userId;
    public java.lang.String versionCode;

    public static com.google.android.vending.licensing.ResponseData parse(java.lang.String responseData) {
        java.lang.String mainData;
        java.lang.String extraData;
        int index = responseData.indexOf(58);
        if (-1 == index) {
            mainData = responseData;
            extraData = "";
        } else {
            mainData = responseData.substring(0, index);
            extraData = index >= responseData.length() ? "" : responseData.substring(index + 1);
        }
        java.lang.String[] fields = android.text.TextUtils.split(mainData, java.util.regex.Pattern.quote("|"));
        if (fields.length < 6) {
            throw new java.lang.IllegalArgumentException("Wrong number of fields.");
        }
        com.google.android.vending.licensing.ResponseData data = new com.google.android.vending.licensing.ResponseData();
        data.extra = extraData;
        data.responseCode = java.lang.Integer.parseInt(fields[0]);
        data.nonce = java.lang.Integer.parseInt(fields[1]);
        data.packageName = fields[2];
        data.versionCode = fields[3];
        data.userId = fields[4];
        data.timestamp = java.lang.Long.parseLong(fields[5]);
        return data;
    }

    public java.lang.String toString() {
        return android.text.TextUtils.join("|", new java.lang.Object[]{java.lang.Integer.valueOf(this.responseCode), java.lang.Integer.valueOf(this.nonce), this.packageName, this.versionCode, this.userId, java.lang.Long.valueOf(this.timestamp)});
    }
}
