package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class ir implements com.flurry.sdk.kz<com.flurry.sdk.hr> {
    private static final java.lang.String a = com.flurry.sdk.ir.class.getSimpleName();

    @Override // com.flurry.sdk.kz
    public final /* synthetic */ void a(java.io.OutputStream outputStream, com.flurry.sdk.hr hrVar) throws java.io.IOException {
        org.json.JSONObject jSONObject;
        org.json.JSONObject jSONObject2;
        com.flurry.sdk.hr hrVar2 = hrVar;
        if (outputStream != null && hrVar2 != null) {
            java.io.DataOutputStream dataOutputStream = new java.io.DataOutputStream(outputStream) { // from class: com.flurry.sdk.ir.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            org.json.JSONObject jSONObject3 = new org.json.JSONObject();
            try {
                try {
                    a(jSONObject3, "project_key", hrVar2.a);
                    a(jSONObject3, "bundle_id", hrVar2.b);
                    a(jSONObject3, "app_version", hrVar2.c);
                    jSONObject3.put("sdk_version", hrVar2.d);
                    jSONObject3.put("platform", hrVar2.e);
                    a(jSONObject3, "platform_version", hrVar2.f);
                    jSONObject3.put("limit_ad_tracking", hrVar2.g);
                    if (hrVar2.h == null || hrVar2.h.a == null) {
                        jSONObject = null;
                    } else {
                        jSONObject = new org.json.JSONObject();
                        org.json.JSONObject jSONObject4 = new org.json.JSONObject();
                        a(jSONObject4, "model", hrVar2.h.a.a);
                        a(jSONObject4, "brand", hrVar2.h.a.b);
                        a(jSONObject4, "id", hrVar2.h.a.c);
                        a(jSONObject4, "device", hrVar2.h.a.d);
                        a(jSONObject4, "product", hrVar2.h.a.e);
                        a(jSONObject4, "version_release", hrVar2.h.a.f);
                        jSONObject.put("com.flurry.proton.generated.avro.v2.AndroidTags", jSONObject4);
                    }
                    if (jSONObject != null) {
                        jSONObject3.put("device_tags", jSONObject);
                    } else {
                        jSONObject3.put("device_tags", org.json.JSONObject.NULL);
                    }
                    org.json.JSONArray jSONArray = new org.json.JSONArray();
                    for (com.flurry.sdk.ht htVar : hrVar2.i) {
                        org.json.JSONObject jSONObject5 = new org.json.JSONObject();
                        jSONObject5.put("type", htVar.a);
                        a(jSONObject5, "id", htVar.b);
                        jSONArray.put(jSONObject5);
                    }
                    jSONObject3.put("device_ids", jSONArray);
                    if (hrVar2.j == null || hrVar2.j.a == null) {
                        jSONObject2 = null;
                    } else {
                        jSONObject2 = new org.json.JSONObject();
                        org.json.JSONObject jSONObject6 = new org.json.JSONObject();
                        jSONObject6.putOpt("latitude", java.lang.Double.valueOf(hrVar2.j.a.a));
                        jSONObject6.putOpt("longitude", java.lang.Double.valueOf(hrVar2.j.a.b));
                        jSONObject6.putOpt("accuracy", java.lang.Float.valueOf(hrVar2.j.a.c));
                        jSONObject2.put("com.flurry.proton.generated.avro.v2.Geolocation", jSONObject6);
                    }
                    if (jSONObject2 != null) {
                        jSONObject3.put("geo", jSONObject2);
                    } else {
                        jSONObject3.put("geo", org.json.JSONObject.NULL);
                    }
                    org.json.JSONObject jSONObject7 = new org.json.JSONObject();
                    if (hrVar2.k != null) {
                        a(jSONObject7, "string", hrVar2.k.a);
                        jSONObject3.put("publisher_user_id", jSONObject7);
                    } else {
                        jSONObject3.put("publisher_user_id", org.json.JSONObject.NULL);
                    }
                    com.flurry.sdk.kf.a(5, a, "Proton Request String: " + jSONObject3.toString());
                    dataOutputStream.write(jSONObject3.toString().getBytes());
                    dataOutputStream.flush();
                } catch (org.json.JSONException e) {
                    throw new java.io.IOException("Invalid Json", e);
                }
            } finally {
                dataOutputStream.close();
            }
        }
    }

    private static void a(org.json.JSONObject jSONObject, java.lang.String str, java.lang.String str2) throws java.io.IOException, org.json.JSONException {
        if (str2 != null) {
            jSONObject.put(str, str2);
        } else {
            jSONObject.put(str, org.json.JSONObject.NULL);
        }
    }

    @Override // com.flurry.sdk.kz
    public final /* synthetic */ com.flurry.sdk.hr a(java.io.InputStream inputStream) throws java.io.IOException {
        throw new java.io.IOException("Deserialize not supported for request");
    }
}
