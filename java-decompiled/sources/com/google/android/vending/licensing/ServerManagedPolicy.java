package com.google.android.vending.licensing;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class ServerManagedPolicy implements com.google.android.vending.licensing.Policy {
    private static final java.lang.String DEFAULT_MAX_RETRIES = "0";
    private static final java.lang.String DEFAULT_RETRY_COUNT = "0";
    private static final java.lang.String DEFAULT_RETRY_UNTIL = "0";
    private static final java.lang.String DEFAULT_VALIDITY_TIMESTAMP = "0";
    private static final long MILLIS_PER_MINUTE = 60000;
    private static final java.lang.String PREFS_FILE = "com.android.vending.licensing.ServerManagedPolicy";
    private static final java.lang.String PREF_LAST_RESPONSE = "lastResponse";
    private static final java.lang.String PREF_MAX_RETRIES = "maxRetries";
    private static final java.lang.String PREF_RETRY_COUNT = "retryCount";
    private static final java.lang.String PREF_RETRY_UNTIL = "retryUntil";
    private static final java.lang.String PREF_VALIDITY_TIMESTAMP = "validityTimestamp";
    private static final java.lang.String TAG = "ServerManagedPolicy";
    private int mLastResponse;
    private long mLastResponseTime = 0;
    private long mMaxRetries;
    private com.google.android.vending.licensing.PreferenceObfuscator mPreferences;
    private long mRetryCount;
    private long mRetryUntil;
    private long mValidityTimestamp;

    public ServerManagedPolicy(android.content.Context context, com.google.android.vending.licensing.Obfuscator obfuscator) {
        android.content.SharedPreferences sp = context.getSharedPreferences(PREFS_FILE, 0);
        this.mPreferences = new com.google.android.vending.licensing.PreferenceObfuscator(sp, obfuscator);
        this.mLastResponse = java.lang.Integer.parseInt(this.mPreferences.getString(PREF_LAST_RESPONSE, java.lang.Integer.toString(com.google.android.vending.licensing.Policy.RETRY)));
        this.mValidityTimestamp = java.lang.Long.parseLong(this.mPreferences.getString(PREF_VALIDITY_TIMESTAMP, "0"));
        this.mRetryUntil = java.lang.Long.parseLong(this.mPreferences.getString(PREF_RETRY_UNTIL, "0"));
        this.mMaxRetries = java.lang.Long.parseLong(this.mPreferences.getString(PREF_MAX_RETRIES, "0"));
        this.mRetryCount = java.lang.Long.parseLong(this.mPreferences.getString(PREF_RETRY_COUNT, "0"));
    }

    @Override // com.google.android.vending.licensing.Policy
    public void processServerResponse(int response, com.google.android.vending.licensing.ResponseData rawData) {
        if (response != 291) {
            setRetryCount(0L);
        } else {
            setRetryCount(this.mRetryCount + 1);
        }
        if (response == 256) {
            java.util.Map<java.lang.String, java.lang.String> extras = decodeExtras(rawData.extra);
            this.mLastResponse = response;
            setValidityTimestamp(extras.get("VT"));
            setRetryUntil(extras.get("GT"));
            setMaxRetries(extras.get("GR"));
        } else if (response == 561) {
            setValidityTimestamp("0");
            setRetryUntil("0");
            setMaxRetries("0");
        }
        setLastResponse(response);
        this.mPreferences.commit();
    }

    private void setLastResponse(int l) {
        this.mLastResponseTime = java.lang.System.currentTimeMillis();
        this.mLastResponse = l;
        this.mPreferences.putString(PREF_LAST_RESPONSE, java.lang.Integer.toString(l));
    }

    private void setRetryCount(long c) {
        this.mRetryCount = c;
        this.mPreferences.putString(PREF_RETRY_COUNT, java.lang.Long.toString(c));
    }

    public long getRetryCount() {
        return this.mRetryCount;
    }

    private void setValidityTimestamp(java.lang.String validityTimestamp) {
        java.lang.Long lValidityTimestamp;
        try {
            lValidityTimestamp = java.lang.Long.valueOf(java.lang.Long.parseLong(validityTimestamp));
        } catch (java.lang.NumberFormatException e) {
            android.util.Log.w(TAG, "License validity timestamp (VT) missing, caching for a minute");
            lValidityTimestamp = java.lang.Long.valueOf(java.lang.System.currentTimeMillis() + MILLIS_PER_MINUTE);
            validityTimestamp = java.lang.Long.toString(lValidityTimestamp.longValue());
        }
        this.mValidityTimestamp = lValidityTimestamp.longValue();
        this.mPreferences.putString(PREF_VALIDITY_TIMESTAMP, validityTimestamp);
    }

    public long getValidityTimestamp() {
        return this.mValidityTimestamp;
    }

    private void setRetryUntil(java.lang.String retryUntil) {
        java.lang.Long lRetryUntil;
        try {
            lRetryUntil = java.lang.Long.valueOf(java.lang.Long.parseLong(retryUntil));
        } catch (java.lang.NumberFormatException e) {
            android.util.Log.w(TAG, "License retry timestamp (GT) missing, grace period disabled");
            retryUntil = "0";
            lRetryUntil = 0L;
        }
        this.mRetryUntil = lRetryUntil.longValue();
        this.mPreferences.putString(PREF_RETRY_UNTIL, retryUntil);
    }

    public long getRetryUntil() {
        return this.mRetryUntil;
    }

    private void setMaxRetries(java.lang.String maxRetries) {
        java.lang.Long lMaxRetries;
        try {
            lMaxRetries = java.lang.Long.valueOf(java.lang.Long.parseLong(maxRetries));
        } catch (java.lang.NumberFormatException e) {
            android.util.Log.w(TAG, "Licence retry count (GR) missing, grace period disabled");
            maxRetries = "0";
            lMaxRetries = 0L;
        }
        this.mMaxRetries = lMaxRetries.longValue();
        this.mPreferences.putString(PREF_MAX_RETRIES, maxRetries);
    }

    public long getMaxRetries() {
        return this.mMaxRetries;
    }

    @Override // com.google.android.vending.licensing.Policy
    public boolean allowAccess() {
        long ts = java.lang.System.currentTimeMillis();
        if (this.mLastResponse == 256) {
            if (ts <= this.mValidityTimestamp) {
                return true;
            }
        } else if (this.mLastResponse == 291 && ts < this.mLastResponseTime + MILLIS_PER_MINUTE) {
            return ts <= this.mRetryUntil || this.mRetryCount <= this.mMaxRetries;
        }
        return false;
    }

    private java.util.Map<java.lang.String, java.lang.String> decodeExtras(java.lang.String extras) {
        java.util.Map<java.lang.String, java.lang.String> results = new java.util.HashMap<>();
        try {
            java.net.URI rawExtras = new java.net.URI("?" + extras);
            java.util.List<org.apache.http.NameValuePair> extraList = org.apache.http.client.utils.URLEncodedUtils.parse(rawExtras, "UTF-8");
            for (org.apache.http.NameValuePair item : extraList) {
                results.put(item.getName(), item.getValue());
            }
        } catch (java.net.URISyntaxException e) {
            android.util.Log.w(TAG, "Invalid syntax error while decoding extras data from server.");
        }
        return results;
    }
}
