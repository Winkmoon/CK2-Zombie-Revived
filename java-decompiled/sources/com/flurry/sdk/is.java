package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class is implements com.flurry.sdk.kz<com.flurry.sdk.hs> {
    private static final java.lang.String a = com.flurry.sdk.is.class.getSimpleName();

    @Override // com.flurry.sdk.kz
    public final /* synthetic */ com.flurry.sdk.hs a(java.io.InputStream inputStream) throws java.io.IOException {
        return b(inputStream);
    }

    private static com.flurry.sdk.hs b(java.io.InputStream inputStream) throws java.io.IOException {
        if (inputStream == null) {
            return null;
        }
        java.lang.String str = new java.lang.String(com.flurry.sdk.lr.a(inputStream));
        com.flurry.sdk.kf.a(5, a, "Proton response string: " + str);
        com.flurry.sdk.hs hsVar = new com.flurry.sdk.hs();
        try {
            org.json.JSONObject jSONObject = new org.json.JSONObject(str);
            hsVar.a = jSONObject.optLong("issued_at", -1L);
            hsVar.b = jSONObject.optLong("refresh_ttl", 3600L);
            hsVar.c = jSONObject.optLong("expiration_ttl", 86400L);
            org.json.JSONObject optJSONObject = jSONObject.optJSONObject("global_settings");
            hsVar.d = new com.flurry.sdk.hz();
            if (optJSONObject != null) {
                hsVar.d.a = b(optJSONObject.optString("log_level"));
            }
            org.json.JSONObject optJSONObject2 = jSONObject.optJSONObject("pulse");
            com.flurry.sdk.hq hqVar = new com.flurry.sdk.hq();
            if (optJSONObject2 != null) {
                a(hqVar, optJSONObject2.optJSONArray("callbacks"));
                hqVar.b = optJSONObject2.optInt("max_callback_retries", 3);
                hqVar.c = optJSONObject2.optInt("max_callback_attempts_per_report", 15);
                hqVar.d = optJSONObject2.optInt("max_report_delay_seconds", 600);
                hqVar.e = optJSONObject2.optString("agent_report_url", "");
            }
            hsVar.e = hqVar;
            org.json.JSONObject optJSONObject3 = jSONObject.optJSONObject("analytics");
            hsVar.f = new com.flurry.sdk.ic();
            if (optJSONObject3 == null) {
                return hsVar;
            }
            hsVar.f.b = optJSONObject3.optBoolean("analytics_enabled", true);
            hsVar.f.a = optJSONObject3.optInt("max_session_properties", 10);
            return hsVar;
        } catch (org.json.JSONException e) {
            throw new java.io.IOException("Exception while deserialize: ", e);
        }
    }

    private static void a(com.flurry.sdk.hq hqVar, org.json.JSONArray jSONArray) throws org.json.JSONException {
        org.json.JSONObject optJSONObject;
        if (jSONArray != null) {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                org.json.JSONObject optJSONObject2 = jSONArray.optJSONObject(i);
                if (optJSONObject2 != null) {
                    com.flurry.sdk.hp hpVar = new com.flurry.sdk.hp();
                    hpVar.b = optJSONObject2.optString("partner", "");
                    a(hpVar, optJSONObject2.optJSONArray("events"));
                    hpVar.d = a(optJSONObject2.optString("method"));
                    hpVar.e = optJSONObject2.optString("uri_template", "");
                    org.json.JSONObject optJSONObject3 = optJSONObject2.optJSONObject("body_template");
                    if (optJSONObject3 != null) {
                        java.lang.String optString = optJSONObject3.optString("string", "null");
                        if (!optString.equals("null")) {
                            hpVar.f = optString;
                        }
                    }
                    hpVar.g = optJSONObject2.optInt("max_redirects", 5);
                    hpVar.h = optJSONObject2.optInt("connect_timeout", 20);
                    hpVar.i = optJSONObject2.optInt("request_timeout", 20);
                    hpVar.a = optJSONObject2.optLong("callback_id", -1L);
                    org.json.JSONObject optJSONObject4 = optJSONObject2.optJSONObject("headers");
                    if (optJSONObject4 != null && (optJSONObject = optJSONObject4.optJSONObject("map")) != null) {
                        hpVar.j = com.flurry.sdk.lt.a(optJSONObject);
                    }
                    arrayList.add(hpVar);
                }
            }
            hqVar.a = arrayList;
        }
    }

    private static void a(com.flurry.sdk.hp hpVar, org.json.JSONArray jSONArray) {
        java.lang.String[] strArr;
        if (jSONArray != null) {
            java.util.ArrayList arrayList = null;
            for (int i = 0; i < jSONArray.length(); i++) {
                org.json.JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    if (optJSONObject.has("string")) {
                        if (arrayList == null) {
                            arrayList = new java.util.ArrayList();
                        }
                        com.flurry.sdk.hv hvVar = new com.flurry.sdk.hv();
                        hvVar.a = optJSONObject.optString("string", "");
                        arrayList.add(hvVar);
                    } else if (optJSONObject.has("com.flurry.proton.generated.avro.v2.EventParameterCallbackTrigger")) {
                        if (arrayList == null) {
                            arrayList = new java.util.ArrayList();
                        }
                        org.json.JSONObject optJSONObject2 = optJSONObject.optJSONObject("com.flurry.proton.generated.avro.v2.EventParameterCallbackTrigger");
                        if (optJSONObject2 != null) {
                            com.flurry.sdk.hw hwVar = new com.flurry.sdk.hw();
                            hwVar.a = optJSONObject2.optString("event_name", "");
                            hwVar.c = optJSONObject2.optString("event_parameter_name", "");
                            org.json.JSONArray optJSONArray = optJSONObject2.optJSONArray("event_parameter_values");
                            if (optJSONArray != null) {
                                java.lang.String[] strArr2 = new java.lang.String[optJSONArray.length()];
                                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                                    strArr2[i2] = optJSONArray.optString(i2, "");
                                }
                                strArr = strArr2;
                            } else {
                                strArr = new java.lang.String[0];
                            }
                            hwVar.d = strArr;
                            arrayList.add(hwVar);
                        }
                    }
                }
            }
            hpVar.c = arrayList;
        }
    }

    private static com.flurry.sdk.ip a(java.lang.String str) {
        com.flurry.sdk.ip ipVar = com.flurry.sdk.ip.GET;
        try {
            if (!android.text.TextUtils.isEmpty(str)) {
                return (com.flurry.sdk.ip) java.lang.Enum.valueOf(com.flurry.sdk.ip.class, str);
            }
        } catch (java.lang.Exception e) {
        }
        return ipVar;
    }

    private static com.flurry.sdk.ia b(java.lang.String str) {
        com.flurry.sdk.ia iaVar = com.flurry.sdk.ia.OFF;
        try {
            if (!android.text.TextUtils.isEmpty(str)) {
                return (com.flurry.sdk.ia) java.lang.Enum.valueOf(com.flurry.sdk.ia.class, str);
            }
        } catch (java.lang.Exception e) {
        }
        return iaVar;
    }

    @Override // com.flurry.sdk.kz
    public final /* synthetic */ void a(java.io.OutputStream outputStream, com.flurry.sdk.hs hsVar) throws java.io.IOException {
        throw new java.io.IOException("Serialize not supported for response");
    }
}
