package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class kk {
    private final java.util.regex.Pattern a = java.util.regex.Pattern.compile(".*?(%\\{\\w+\\}).*?");

    public final java.lang.String a(java.lang.String str) {
        java.util.regex.Matcher matcher = this.a.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        return null;
    }

    public static boolean a(java.lang.String str, java.lang.String str2) {
        if (android.text.TextUtils.isEmpty(str2)) {
            return false;
        }
        return str2.equals("%{" + str + "}");
    }
}
