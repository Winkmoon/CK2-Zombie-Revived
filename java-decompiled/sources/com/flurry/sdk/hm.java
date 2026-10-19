package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class hm {
    private static final java.lang.String a = com.flurry.sdk.hm.class.getSimpleName();

    public static java.util.Map<java.lang.String, java.util.List<java.lang.String>> a(java.lang.String str) {
        com.flurry.sdk.kf.a(3, a, "Parsing referrer map");
        if (str == null) {
            return java.util.Collections.emptyMap();
        }
        java.util.HashMap hashMap = new java.util.HashMap();
        for (java.lang.String str2 : str.split("&")) {
            java.lang.String[] split = str2.split("=");
            if (split.length != 2) {
                com.flurry.sdk.kf.a(5, a, "Invalid referrer Element: " + str2 + " in referrer tag " + str);
            } else {
                java.lang.String decode = java.net.URLDecoder.decode(split[0]);
                java.lang.String decode2 = java.net.URLDecoder.decode(split[1]);
                if (hashMap.get(decode) == null) {
                    hashMap.put(decode, new java.util.ArrayList());
                }
                ((java.util.List) hashMap.get(decode)).add(decode2);
            }
        }
        for (java.util.Map.Entry entry : hashMap.entrySet()) {
            com.flurry.sdk.kf.a(3, a, "entry: " + ((java.lang.String) entry.getKey()) + "=" + entry.getValue());
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        if (hashMap.get("utm_source") == null) {
            sb.append("Campaign Source is missing.\n");
        }
        if (hashMap.get("utm_medium") == null) {
            sb.append("Campaign Medium is missing.\n");
        }
        if (hashMap.get("utm_campaign") == null) {
            sb.append("Campaign Name is missing.\n");
        }
        if (sb.length() > 0) {
            com.flurry.sdk.kf.a(5, a, "Detected missing referrer keys : " + sb.toString());
        }
        return hashMap;
    }
}
