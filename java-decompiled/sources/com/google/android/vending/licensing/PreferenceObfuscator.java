package com.google.android.vending.licensing;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class PreferenceObfuscator {
    private static final java.lang.String TAG = "PreferenceObfuscator";
    private android.content.SharedPreferences.Editor mEditor = null;
    private final com.google.android.vending.licensing.Obfuscator mObfuscator;
    private final android.content.SharedPreferences mPreferences;

    public PreferenceObfuscator(android.content.SharedPreferences sp, com.google.android.vending.licensing.Obfuscator o) {
        this.mPreferences = sp;
        this.mObfuscator = o;
    }

    public void putString(java.lang.String key, java.lang.String value) {
        if (this.mEditor == null) {
            this.mEditor = this.mPreferences.edit();
        }
        java.lang.String obfuscatedValue = this.mObfuscator.obfuscate(value, key);
        this.mEditor.putString(key, obfuscatedValue);
    }

    public java.lang.String getString(java.lang.String key, java.lang.String defValue) {
        java.lang.String value = this.mPreferences.getString(key, null);
        if (value != null) {
            try {
                java.lang.String result = this.mObfuscator.unobfuscate(value, key);
                return result;
            } catch (com.google.android.vending.licensing.ValidationException e) {
                android.util.Log.w(TAG, "Validation error while reading preference: " + key);
                return defValue;
            }
        }
        return defValue;
    }

    public void commit() {
        if (this.mEditor != null) {
            this.mEditor.commit();
            this.mEditor = null;
        }
    }
}
