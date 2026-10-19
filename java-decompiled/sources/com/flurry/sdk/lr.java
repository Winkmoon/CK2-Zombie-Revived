package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class lr {
    private static final java.lang.String a = com.flurry.sdk.lr.class.getSimpleName();

    public static void a() {
        if (android.os.Looper.getMainLooper().getThread() != java.lang.Thread.currentThread()) {
            throw new java.lang.IllegalStateException("Must be called from the main thread!");
        }
    }

    public static void b() {
        if (android.os.Looper.getMainLooper().getThread() == java.lang.Thread.currentThread()) {
            throw new java.lang.IllegalStateException("Must be called from a background thread!");
        }
    }

    public static java.lang.String a(java.lang.String str) {
        android.net.Uri parse;
        if (!android.text.TextUtils.isEmpty(str) && (parse = android.net.Uri.parse(str)) != null && parse.getScheme() == null) {
            return "http://" + str;
        }
        return str;
    }

    public static java.lang.String c(java.lang.String str) {
        try {
            return java.net.URLEncoder.encode(str, "UTF-8");
        } catch (java.io.UnsupportedEncodingException e) {
            com.flurry.sdk.kf.a(5, a, "Cannot encode '" + str + "'");
            return "";
        }
    }

    public static java.lang.String d(java.lang.String str) {
        try {
            return java.net.URLDecoder.decode(str, "UTF-8");
        } catch (java.io.UnsupportedEncodingException e) {
            com.flurry.sdk.kf.a(5, a, "Cannot decode '" + str + "'");
            return "";
        }
    }

    public static void a(java.io.Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (java.lang.Throwable th) {
            }
        }
    }

    public static byte[] e(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return str.getBytes("UTF-8");
        } catch (java.io.UnsupportedEncodingException e) {
            com.flurry.sdk.kf.a(5, a, "Unsupported UTF-8: " + e.getMessage());
            return null;
        }
    }

    public static byte[] f(java.lang.String str) {
        try {
            java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance("SHA-1");
            messageDigest.update(str.getBytes(), 0, str.length());
            return messageDigest.digest();
        } catch (java.security.NoSuchAlgorithmException e) {
            com.flurry.sdk.kf.a(6, a, "Unsupported SHA1: " + e.getMessage());
            return null;
        }
    }

    public static java.lang.String a(byte[] bArr) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(bArr.length * 2);
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        for (byte b : bArr) {
            sb.append(cArr[(byte) ((b & 240) >> 4)]);
            sb.append(cArr[(byte) (b & 15)]);
        }
        return sb.toString();
    }

    public static java.lang.String b(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            return new java.lang.String(bArr, "ISO-8859-1");
        } catch (java.io.UnsupportedEncodingException e) {
            com.flurry.sdk.kf.a(5, a, "Unsupported ISO-8859-1:" + e.getMessage());
            return null;
        }
    }

    public static boolean a(long j) {
        if (j != 0 && java.lang.System.currentTimeMillis() > j) {
            return false;
        }
        return true;
    }

    public static boolean a(android.content.Intent intent) {
        return com.flurry.sdk.jr.a().a.getPackageManager().queryIntentActivities(intent, android.support.v4.view.accessibility.AccessibilityEventCompat.TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED).size() > 0;
    }

    public static java.lang.String g(java.lang.String str) {
        return str.replace("\\b", "").replace("\\n", "").replace("\\r", "").replace("\\t", "").replace("\\", "\\\\").replace("'", "\\'").replace("\"", "\\\"");
    }

    public static java.util.Map<java.lang.String, java.lang.String> h(java.lang.String str) {
        java.util.HashMap hashMap = new java.util.HashMap();
        if (!android.text.TextUtils.isEmpty(str)) {
            for (java.lang.String str2 : str.split("&")) {
                java.lang.String[] split = str2.split("=");
                if (!split[0].equals("event")) {
                    hashMap.put(d(split[0]), d(split[1]));
                }
            }
        }
        return hashMap;
    }

    public static long i(java.lang.String str) {
        if (str == null) {
            return 0L;
        }
        long j = 1125899906842597L;
        int i = 0;
        while (i < str.length()) {
            long charAt = str.charAt(i) + (j * 31);
            i++;
            j = charAt;
        }
        return j;
    }

    public static long a(java.io.InputStream inputStream, java.io.OutputStream outputStream) throws java.io.IOException {
        byte[] bArr = new byte[1024];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read >= 0) {
                outputStream.write(bArr, 0, read);
                j += read;
            } else {
                return j;
            }
        }
    }

    public static byte[] a(java.io.InputStream inputStream) throws java.io.IOException {
        if (inputStream == null) {
            return null;
        }
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        a(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static double a(double d) {
        return java.lang.Math.round(java.lang.Math.pow(10.0d, 3.0d) * d) / java.lang.Math.pow(10.0d, 3.0d);
    }

    public static boolean a(android.content.Context context, java.lang.String str) {
        if (context == null || android.text.TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
        } catch (java.lang.Exception e) {
            com.flurry.sdk.kf.a(6, a, "Error occured when checking if app has permission.  Error: " + e.getMessage());
            return false;
        }
    }

    public static java.lang.String b(java.lang.String str) {
        if (str == null) {
            return "";
        }
        if (str.length() <= 255) {
            return str;
        }
        return str.substring(0, android.support.v4.view.MotionEventCompat.ACTION_MASK);
    }
}
