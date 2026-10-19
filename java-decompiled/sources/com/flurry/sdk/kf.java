package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class kf {
    private static boolean a = false;
    private static int b = 5;
    private static boolean c = false;

    public static void a() {
        a = true;
    }

    public static void b() {
        a = false;
    }

    public static int c() {
        return b;
    }

    public static boolean d() {
        return c;
    }

    public static void a(int i) {
        b = i;
    }

    public static void a(boolean z) {
        c = z;
    }

    public static void a(java.lang.String str, java.lang.String str2) {
        b(3, str, str2);
    }

    public static void b(java.lang.String str, java.lang.String str2) {
        b(6, str, str2);
    }

    public static void c(java.lang.String str, java.lang.String str2) {
        b(4, str, str2);
    }

    public static void d(java.lang.String str, java.lang.String str2) {
        b(2, str, str2);
    }

    public static void e(java.lang.String str, java.lang.String str2) {
        b(5, str, str2);
    }

    public static void a(int i, java.lang.String str, java.lang.String str2) {
        c(i, str, str2);
    }

    private static void b(int i, java.lang.String str, java.lang.String str2) {
        if (!a && b <= i) {
            d(i, str, str2);
        }
    }

    private static void c(int i, java.lang.String str, java.lang.String str2) {
        if (c) {
            d(i, str, str2);
        }
    }

    private static void d(int i, java.lang.String str, java.lang.String str2) {
        if (!c) {
            str = "FlurryAgent";
        }
        int length = android.text.TextUtils.isEmpty(str2) ? 0 : str2.length();
        int i2 = 0;
        while (i2 < length) {
            int i3 = 4000 > length - i2 ? length : i2 + 4000;
            if (android.util.Log.println(i, str, str2.substring(i2, i3)) <= 0) {
                return;
            } else {
                i2 = i3;
            }
        }
    }

    public static void a(java.lang.String str, java.lang.String str2, java.lang.Throwable th) {
        b(6, str, str2 + '\n' + android.util.Log.getStackTraceString(th));
    }

    public static void a(int i, java.lang.String str, java.lang.String str2, java.lang.Throwable th) {
        c(i, str, str2 + '\n' + android.util.Log.getStackTraceString(th));
    }
}
