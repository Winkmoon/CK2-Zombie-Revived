package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class lo {
    private static final java.lang.String a = com.flurry.sdk.lo.class.getSimpleName();

    private static android.content.pm.PackageInfo d(android.content.Context context) {
        if (context == null) {
            return null;
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 20815);
        } catch (android.content.pm.PackageManager.NameNotFoundException e) {
            com.flurry.sdk.kf.a(a, "Cannot find package info for package: " + context.getPackageName());
            return null;
        }
    }

    private static android.content.pm.ApplicationInfo e(android.content.Context context) {
        if (context == null) {
            return null;
        }
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        } catch (android.content.pm.PackageManager.NameNotFoundException e) {
            com.flurry.sdk.kf.a(a, "Cannot find application info for package: " + context.getPackageName());
            return null;
        }
    }

    public static java.lang.String a(android.content.Context context) {
        android.content.pm.PackageInfo d = d(context);
        return (d == null || d.packageName == null) ? "" : d.packageName;
    }

    public static java.lang.String b(android.content.Context context) {
        android.content.pm.PackageInfo d = d(context);
        return (d == null || d.versionName == null) ? "" : d.versionName;
    }

    public static android.os.Bundle c(android.content.Context context) {
        android.content.pm.ApplicationInfo e = e(context);
        return (e == null || e.metaData == null) ? android.os.Bundle.EMPTY : e.metaData;
    }
}
