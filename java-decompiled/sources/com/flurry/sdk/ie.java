package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class ie extends com.flurry.sdk.kk {
    private static final java.lang.String a = com.flurry.sdk.ie.class.getSimpleName();

    public final java.lang.String a(java.lang.String str, java.util.Map<java.lang.String, java.lang.String> map) {
        java.lang.String replace;
        java.lang.String a2 = a(str);
        while (a2 != null) {
            if (a("timestamp_epoch_millis", a2)) {
                java.lang.String valueOf = java.lang.String.valueOf(java.lang.System.currentTimeMillis());
                com.flurry.sdk.kf.a(3, a, "Replacing param timestamp_epoch_millis with: " + valueOf);
                replace = str.replace(a2, com.flurry.sdk.lr.c(valueOf));
            } else if (a("session_duration_millis", a2)) {
                com.flurry.sdk.jd.a();
                java.lang.String l = java.lang.Long.toString(com.flurry.sdk.jd.f());
                com.flurry.sdk.kf.a(3, a, "Replacing param session_duration_millis with: " + l);
                replace = str.replace(a2, com.flurry.sdk.lr.c(l));
            } else if (a("fg_timespent_millis", a2)) {
                com.flurry.sdk.jd.a();
                java.lang.String l2 = java.lang.Long.toString(com.flurry.sdk.jd.f());
                com.flurry.sdk.kf.a(3, a, "Replacing param fg_timespent_millis with: " + l2);
                replace = str.replace(a2, com.flurry.sdk.lr.c(l2));
            } else if (a("install_referrer", a2)) {
                java.lang.String b = new com.flurry.sdk.hl().b();
                if (b == null) {
                    b = "";
                }
                com.flurry.sdk.kf.a(3, a, "Replacing param install_referrer with: " + b);
                replace = str.replace(a2, com.flurry.sdk.lr.c(b));
            } else if (a("geo_latitude", a2)) {
                android.location.Location e = com.flurry.sdk.ji.a().e();
                java.lang.String str2 = e != null ? "" + com.flurry.sdk.lr.a(e.getLatitude()) : "";
                com.flurry.sdk.kf.a(3, a, "Replacing param geo_latitude with: " + str2);
                replace = str.replace(a2, com.flurry.sdk.lr.c(str2));
            } else if (a("geo_longitude", a2)) {
                android.location.Location e2 = com.flurry.sdk.ji.a().e();
                java.lang.String str3 = e2 != null ? "" + com.flurry.sdk.lr.a(e2.getLongitude()) : "";
                com.flurry.sdk.kf.a(3, a, "Replacing param geo_longitude with: " + str3);
                replace = str.replace(a2, com.flurry.sdk.lr.c(str3));
            } else if (a("publisher_user_id", a2)) {
                java.lang.String str4 = (java.lang.String) com.flurry.sdk.li.a().a("UserId");
                com.flurry.sdk.kf.a(3, a, "Replacing param publisher_user_id with: " + str4);
                replace = str.replace(a2, com.flurry.sdk.lr.c(str4));
            } else if (a("event_name", a2)) {
                if (map.containsKey("event_name")) {
                    com.flurry.sdk.kf.a(3, a, "Replacing param event_name with: " + map.get("event_name"));
                    replace = str.replace(a2, com.flurry.sdk.lr.c(map.get("event_name")));
                } else {
                    com.flurry.sdk.kf.a(3, a, "Replacing param event_name with empty string");
                    replace = str.replace(a2, "");
                }
            } else if (a("event_time_millis", a2)) {
                if (map.containsKey("event_time_millis")) {
                    com.flurry.sdk.kf.a(3, a, "Replacing param event_time_millis with: " + map.get("event_time_millis"));
                    replace = str.replace(a2, com.flurry.sdk.lr.c(map.get("event_time_millis")));
                } else {
                    com.flurry.sdk.kf.a(3, a, "Replacing param event_time_millis with empty string");
                    replace = str.replace(a2, "");
                }
            } else {
                com.flurry.sdk.kf.a(3, a, "Unknown param: " + a2);
                replace = str.replace(a2, "");
            }
            a2 = a(replace);
            str = replace;
        }
        return str;
    }
}
