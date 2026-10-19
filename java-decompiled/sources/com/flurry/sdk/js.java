package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class js {
    private static final java.lang.String a = com.flurry.sdk.js.class.getSimpleName();

    public static int a() {
        int intValue = ((java.lang.Integer) com.flurry.sdk.li.a().a("AgentVersion")).intValue();
        com.flurry.sdk.kf.a(4, a, "getAgentVersion() = " + intValue);
        return intValue;
    }

    private static java.lang.String c() {
        return (java.lang.String) com.flurry.sdk.li.a().a("ReleaseBetaVersion");
    }

    public static java.lang.String b() {
        java.lang.Object obj;
        if (c().length() > 0) {
            obj = ".";
        } else {
            obj = "";
        }
        return java.lang.String.format(java.util.Locale.getDefault(), "Flurry_Android_%d_%d.%d.%d%s%s", java.lang.Integer.valueOf(a()), java.lang.Integer.valueOf(((java.lang.Integer) com.flurry.sdk.li.a().a("ReleaseMajorVersion")).intValue()), java.lang.Integer.valueOf(((java.lang.Integer) com.flurry.sdk.li.a().a("ReleaseMinorVersion")).intValue()), java.lang.Integer.valueOf(((java.lang.Integer) com.flurry.sdk.li.a().a("ReleasePatchVersion")).intValue()), obj, c());
    }
}
