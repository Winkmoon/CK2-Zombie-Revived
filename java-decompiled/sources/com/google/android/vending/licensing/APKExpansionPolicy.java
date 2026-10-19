package com.google.android.vending.licensing;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class APKExpansionPolicy implements com.google.android.vending.licensing.Policy {
    private static final java.lang.String DEFAULT_MAX_RETRIES = "0";
    private static final java.lang.String DEFAULT_RETRY_COUNT = "0";
    private static final java.lang.String DEFAULT_RETRY_UNTIL = "0";
    private static final java.lang.String DEFAULT_VALIDITY_TIMESTAMP = "0";
    public static final int MAIN_FILE_URL_INDEX = 0;
    private static final long MILLIS_PER_MINUTE = 60000;
    public static final int PATCH_FILE_URL_INDEX = 1;
    private static final java.lang.String PREFS_FILE = "com.android.vending.licensing.APKExpansionPolicy";
    private static final java.lang.String PREF_LAST_RESPONSE = "lastResponse";
    private static final java.lang.String PREF_MAX_RETRIES = "maxRetries";
    private static final java.lang.String PREF_RETRY_COUNT = "retryCount";
    private static final java.lang.String PREF_RETRY_UNTIL = "retryUntil";
    private static final java.lang.String PREF_VALIDITY_TIMESTAMP = "validityTimestamp";
    private static final java.lang.String TAG = "APKExpansionPolicy";
    private int mLastResponse;
    private long mMaxRetries;
    private com.google.android.vending.licensing.PreferenceObfuscator mPreferences;
    private long mRetryCount;
    private long mRetryUntil;
    private long mValidityTimestamp;
    private long mLastResponseTime = 0;
    private java.util.Vector<java.lang.String> mExpansionURLs = new java.util.Vector<>();
    private java.util.Vector<java.lang.String> mExpansionFileNames = new java.util.Vector<>();
    private java.util.Vector<java.lang.Long> mExpansionFileSizes = new java.util.Vector<>();

    public APKExpansionPolicy(android.content.Context context, com.google.android.vending.licensing.Obfuscator obfuscator) {
        android.content.SharedPreferences sp = context.getSharedPreferences(PREFS_FILE, 0);
        this.mPreferences = new com.google.android.vending.licensing.PreferenceObfuscator(sp, obfuscator);
        this.mLastResponse = java.lang.Integer.parseInt(this.mPreferences.getString(PREF_LAST_RESPONSE, java.lang.Integer.toString(com.google.android.vending.licensing.Policy.RETRY)));
        this.mValidityTimestamp = java.lang.Long.parseLong(this.mPreferences.getString(PREF_VALIDITY_TIMESTAMP, "0"));
        this.mRetryUntil = java.lang.Long.parseLong(this.mPreferences.getString(PREF_RETRY_UNTIL, "0"));
        this.mMaxRetries = java.lang.Long.parseLong(this.mPreferences.getString(PREF_MAX_RETRIES, "0"));
        this.mRetryCount = java.lang.Long.parseLong(this.mPreferences.getString(PREF_RETRY_COUNT, "0"));
    }

    public void resetPolicy() {
        this.mPreferences.putString(PREF_LAST_RESPONSE, java.lang.Integer.toString(com.google.android.vending.licensing.Policy.RETRY));
        setRetryUntil("0");
        setMaxRetries("0");
        setRetryCount(java.lang.Long.parseLong("0"));
        setValidityTimestamp("0");
        this.mPreferences.commit();
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
            setValidityTimestamp(java.lang.Long.toString(java.lang.System.currentTimeMillis() + MILLIS_PER_MINUTE));
            java.util.Set<java.lang.String> keys = extras.keySet();
            for (java.lang.String key : keys) {
                if (key.equals("VT")) {
                    setValidityTimestamp(extras.get(key));
                } else if (key.equals("GT")) {
                    setRetryUntil(extras.get(key));
                } else if (key.equals("GR")) {
                    setMaxRetries(extras.get(key));
                } else if (key.startsWith("FILE_URL")) {
                    int index = java.lang.Integer.parseInt(key.substring("FILE_URL".length())) - 1;
                    setExpansionURL(index, extras.get(key));
                } else if (key.startsWith("FILE_NAME")) {
                    int index2 = java.lang.Integer.parseInt(key.substring("FILE_NAME".length())) - 1;
                    setExpansionFileName(index2, extras.get(key));
                } else if (key.startsWith("FILE_SIZE")) {
                    int index3 = java.lang.Integer.parseInt(key.substring("FILE_SIZE".length())) - 1;
                    setExpansionFileSize(index3, java.lang.Long.parseLong(extras.get(key)));
                }
            }
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

    public int getExpansionURLCount() {
        return this.mExpansionURLs.size();
    }

    public java.lang.String getExpansionURL(int index) {
        if (index < this.mExpansionURLs.size()) {
            return this.mExpansionURLs.elementAt(index);
        }
        return null;
    }

    public void setExpansionURL(int index, java.lang.String URL) {
        if (index >= this.mExpansionURLs.size()) {
            this.mExpansionURLs.setSize(index + 1);
        }
        this.mExpansionURLs.set(index, URL);
    }

    public java.lang.String getExpansionFileName(int index) {
        if (index < this.mExpansionFileNames.size()) {
            return this.mExpansionFileNames.elementAt(index);
        }
        return null;
    }

    public void setExpansionFileName(int index, java.lang.String name) {
        if (index >= this.mExpansionFileNames.size()) {
            this.mExpansionFileNames.setSize(index + 1);
        }
        this.mExpansionFileNames.set(index, name);
    }

    public long getExpansionFileSize(int index) {
        if (index < this.mExpansionFileSizes.size()) {
            return this.mExpansionFileSizes.elementAt(index).longValue();
        }
        return -1L;
    }

    public void setExpansionFileSize(int index, long size) {
        if (index >= this.mExpansionFileSizes.size()) {
            this.mExpansionFileSizes.setSize(index + 1);
        }
        this.mExpansionFileSizes.set(index, java.lang.Long.valueOf(size));
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
                java.lang.String name = item.getName();
                int i = 0;
                while (results.containsKey(name)) {
                    i++;
                    name = java.lang.String.valueOf(item.getName()) + i;
                }
                results.put(name, item.getValue());
            }
        } catch (java.net.URISyntaxException e) {
            android.util.Log.w(TAG, "Invalid syntax error while decoding extras data from server.");
        }
        return results;
    }
}
