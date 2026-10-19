package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class lp {
    public static boolean a() {
        return ((android.app.KeyguardManager) com.flurry.sdk.jr.a().a.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
    }

    @android.annotation.SuppressLint({"NewApi"})
    public static android.graphics.Point b() {
        android.view.Display defaultDisplay = ((android.view.WindowManager) com.flurry.sdk.jr.a().a.getSystemService("window")).getDefaultDisplay();
        android.graphics.Point point = new android.graphics.Point();
        if (android.os.Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealSize(point);
        } else if (android.os.Build.VERSION.SDK_INT >= 14) {
            try {
                java.lang.reflect.Method method = android.view.Display.class.getMethod("getRawHeight", new java.lang.Class[0]);
                point.x = ((java.lang.Integer) android.view.Display.class.getMethod("getRawWidth", new java.lang.Class[0]).invoke(defaultDisplay, new java.lang.Object[0])).intValue();
                point.y = ((java.lang.Integer) method.invoke(defaultDisplay, new java.lang.Object[0])).intValue();
            } catch (java.lang.Throwable th) {
                defaultDisplay.getSize(point);
            }
        } else if (android.os.Build.VERSION.SDK_INT >= 13) {
            defaultDisplay.getSize(point);
        } else {
            point.x = defaultDisplay.getWidth();
            point.y = defaultDisplay.getHeight();
        }
        return point;
    }

    public static android.util.DisplayMetrics c() {
        android.view.Display defaultDisplay = ((android.view.WindowManager) com.flurry.sdk.jr.a().a.getSystemService("window")).getDefaultDisplay();
        android.util.DisplayMetrics displayMetrics = new android.util.DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics;
    }

    @android.annotation.SuppressLint({"NewApi"})
    public static android.util.DisplayMetrics d() {
        android.view.Display defaultDisplay = ((android.view.WindowManager) com.flurry.sdk.jr.a().a.getSystemService("window")).getDefaultDisplay();
        if (android.os.Build.VERSION.SDK_INT >= 17) {
            android.util.DisplayMetrics displayMetrics = new android.util.DisplayMetrics();
            defaultDisplay.getRealMetrics(displayMetrics);
            return displayMetrics;
        }
        if (android.os.Build.VERSION.SDK_INT >= 14) {
            try {
                android.util.DisplayMetrics displayMetrics2 = new android.util.DisplayMetrics();
                android.view.Display.class.getMethod("getRealMetrics", new java.lang.Class[0]).invoke(defaultDisplay, displayMetrics2);
                return displayMetrics2;
            } catch (java.lang.Exception e) {
            }
        }
        return c();
    }

    public static int a(int i) {
        return java.lang.Math.round(i / d().density);
    }

    public static int b(int i) {
        return java.lang.Math.round(d().density * i);
    }

    public static int e() {
        android.graphics.Point b = b();
        if (b.x == b.y) {
            return 3;
        }
        if (b.x < b.y) {
            return 1;
        }
        return 2;
    }
}
