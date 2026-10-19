package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class ls {
    private static final java.lang.String a = com.flurry.sdk.ls.class.getSimpleName();
    private static java.lang.String b = "com.google.android.gms.common.GoogleApiAvailability";
    private static java.lang.String c = "com.google.android.gms.common.GooglePlayServicesUtil";
    private static java.lang.String d = "com.google.android.gms.ads.identifier.AdvertisingIdClient";

    public static boolean a(android.content.Context context) {
        try {
            return a(context, b);
        } catch (java.lang.Exception e) {
            try {
                return a(context, c);
            } catch (java.lang.Exception e2) {
                com.flurry.sdk.kf.b(a, "GOOGLE PLAY SERVICES EXCEPTION: " + e2.getMessage());
                com.flurry.sdk.kf.b(a, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising.");
                return false;
            }
        }
    }

    private static boolean a(android.content.Context context, java.lang.String str) throws java.lang.Exception {
        java.lang.Object a2 = com.flurry.sdk.lu.a(null, "isGooglePlayServicesAvailable").a(java.lang.Class.forName(str)).a(android.content.Context.class, context).a();
        return a2 != null && ((java.lang.Integer) a2).intValue() == 0;
    }

    public static com.flurry.sdk.jo b(android.content.Context context) {
        if (context == null) {
            return null;
        }
        try {
            java.lang.Object a2 = com.flurry.sdk.lu.a(null, "getAdvertisingIdInfo").a(java.lang.Class.forName(d)).a(android.content.Context.class, context).a();
            return new com.flurry.sdk.jo(a(a2), b(a2));
        } catch (java.lang.Exception e) {
            com.flurry.sdk.kf.b(a, "GOOGLE PLAY SERVICES ERROR: " + e.getMessage());
            com.flurry.sdk.kf.b(a, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising.");
            return null;
        }
    }

    private static java.lang.String a(java.lang.Object obj) {
        try {
            return (java.lang.String) com.flurry.sdk.lu.a(obj, "getId").a();
        } catch (java.lang.Exception e) {
            com.flurry.sdk.kf.b(a, "GOOGLE PLAY SERVICES ERROR: " + e.getMessage());
            com.flurry.sdk.kf.b(a, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising.");
            return null;
        }
    }

    private static boolean b(java.lang.Object obj) {
        try {
            java.lang.Boolean bool = (java.lang.Boolean) com.flurry.sdk.lu.a(obj, "isLimitAdTrackingEnabled").a();
            if (bool != null) {
                return bool.booleanValue();
            }
            return false;
        } catch (java.lang.Exception e) {
            com.flurry.sdk.kf.b(a, "GOOGLE PLAY SERVICES ERROR: " + e.getMessage());
            com.flurry.sdk.kf.b(a, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising.");
            return false;
        }
    }
}
