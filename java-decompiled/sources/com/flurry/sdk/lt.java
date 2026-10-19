package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class lt {
    public static void a(org.json.JSONObject jSONObject, java.lang.String str, java.lang.Object obj) throws java.lang.NullPointerException, org.json.JSONException {
        if (obj == null) {
            jSONObject.put(str, org.json.JSONObject.NULL);
        } else {
            jSONObject.put(str, obj);
        }
    }

    public static void a(org.json.JSONObject jSONObject, java.lang.String str, java.lang.String str2) throws java.io.IOException, org.json.JSONException {
        if (str2 != null) {
            jSONObject.put(str, str2);
        } else {
            jSONObject.put(str, org.json.JSONObject.NULL);
        }
    }

    public static void a(org.json.JSONObject jSONObject, java.lang.String str, float f) throws java.io.IOException, org.json.JSONException {
        jSONObject.putOpt(str, java.lang.Float.valueOf(f));
    }

    public static java.util.Map<java.lang.String, java.lang.String> a(org.json.JSONObject jSONObject) throws org.json.JSONException {
        java.util.HashMap hashMap = new java.util.HashMap();
        java.util.Iterator<java.lang.String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            java.lang.String next = keys.next();
            if (!(next instanceof java.lang.String)) {
                throw new org.json.JSONException("JSONObject contains unsupported type for key in the map.");
            }
            java.lang.String str = next;
            java.lang.Object obj = jSONObject.get(str);
            if (!(obj instanceof java.lang.String)) {
                throw new org.json.JSONException("JSONObject contains unsupported type for value in the map.");
            }
            hashMap.put(str, (java.lang.String) obj);
        }
        return hashMap;
    }

    public static java.util.List<org.json.JSONObject> a(org.json.JSONArray jSONArray) throws org.json.JSONException {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < jSONArray.length()) {
                java.lang.Object obj = jSONArray.get(i2);
                if (!(obj instanceof org.json.JSONObject)) {
                    throw new org.json.JSONException("Array contains unsupported objects. JSONArray param must contain JSON object.");
                }
                arrayList.add((org.json.JSONObject) obj);
                i = i2 + 1;
            } else {
                return arrayList;
            }
        }
    }

    public static java.util.List<java.lang.String> b(org.json.JSONArray jSONArray) throws org.json.JSONException {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < jSONArray.length()) {
                java.lang.Object obj = jSONArray.get(i2);
                if (!(obj instanceof java.lang.String)) {
                    throw new org.json.JSONException("Array contains unsupported objects. JSONArray param must contain String object.");
                }
                arrayList.add((java.lang.String) obj);
                i = i2 + 1;
            } else {
                return arrayList;
            }
        }
    }
}
