package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class lq {
    private static java.lang.String a = com.flurry.sdk.lq.class.getSimpleName();

    public static java.io.File a() {
        java.io.File file = null;
        android.content.Context context = com.flurry.sdk.jr.a().a;
        if ("mounted".equals(android.os.Environment.getExternalStorageState()) && (android.os.Build.VERSION.SDK_INT >= 19 || context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0)) {
            file = context.getExternalFilesDir(null);
        }
        if (file == null) {
            return context.getFilesDir();
        }
        return file;
    }

    public static java.io.File b() {
        android.content.Context context = com.flurry.sdk.jr.a().a;
        java.io.File file = null;
        if ("mounted".equals(android.os.Environment.getExternalStorageState()) && (android.os.Build.VERSION.SDK_INT >= 19 || context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0)) {
            file = context.getExternalCacheDir();
        }
        if (file == null) {
            return context.getCacheDir();
        }
        return file;
    }

    public static boolean a(java.io.File file) {
        if (file == null || file.getAbsoluteFile() == null) {
            return false;
        }
        java.io.File parentFile = file.getParentFile();
        if (parentFile == null) {
            return true;
        }
        if (parentFile.mkdirs() || parentFile.isDirectory()) {
            return true;
        }
        com.flurry.sdk.kf.a(6, a, "Unable to create persistent dir: " + parentFile);
        return false;
    }

    public static boolean b(java.io.File file) {
        if (file != null && file.isDirectory()) {
            for (java.lang.String str : file.list()) {
                if (!b(new java.io.File(file, str))) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.Closeable] */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String c(java.io.File r7) {
        /*
            r4 = 4
            r0 = 0
            if (r7 == 0) goto La
            boolean r1 = r7.exists()
            if (r1 != 0) goto L12
        La:
            java.lang.String r1 = com.flurry.sdk.lq.a
            java.lang.String r2 = "Persistent file doesn't exist."
            com.flurry.sdk.kf.a(r4, r1, r2)
        L11:
            return r0
        L12:
            java.lang.String r1 = com.flurry.sdk.lq.a
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Loading persistent data: "
            r2.<init>(r3)
            java.lang.String r3 = r7.getAbsolutePath()
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            com.flurry.sdk.kf.a(r4, r1, r2)
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L60 java.lang.Throwable -> L69
            r2.<init>(r7)     // Catch: java.lang.Throwable -> L60 java.lang.Throwable -> L69
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L67
            r1.<init>()     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L67
            r3 = 1024(0x400, float:1.435E-42)
            byte[] r3 = new byte[r3]     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L67
        L38:
            int r4 = r2.read(r3)     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L67
            if (r4 <= 0) goto L5c
            java.lang.String r5 = new java.lang.String     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L67
            r6 = 0
            r5.<init>(r3, r6, r4)     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L67
            r1.append(r5)     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L67
            goto L38
        L48:
            r1 = move-exception
        L49:
            r3 = 6
            java.lang.String r4 = com.flurry.sdk.lq.a     // Catch: java.lang.Throwable -> L67
            java.lang.String r5 = "Error when loading persistent file"
            com.flurry.sdk.kf.a(r3, r4, r5, r1)     // Catch: java.lang.Throwable -> L67
            com.flurry.sdk.lr.a(r2)
            r1 = r0
        L55:
            if (r1 == 0) goto L11
            java.lang.String r0 = r1.toString()
            goto L11
        L5c:
            com.flurry.sdk.lr.a(r2)
            goto L55
        L60:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L63:
            com.flurry.sdk.lr.a(r2)
            throw r0
        L67:
            r0 = move-exception
            goto L63
        L69:
            r1 = move-exception
            r2 = r0
            goto L49
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.lq.c(java.io.File):java.lang.String");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v8 */
    @java.lang.Deprecated
    public static void a(java.io.File file, java.lang.String str) {
        java.io.FileOutputStream fileOutputStream;
        if (file == null) {
            com.flurry.sdk.kf.a(4, a, "No persistent file specified.");
            return;
        }
        if (str == null) {
            com.flurry.sdk.kf.a(4, a, "No data specified; deleting persistent file: " + file.getAbsolutePath());
            file.delete();
            return;
        }
        java.lang.String str2 = a;
        ?? r1 = "Writing persistent data: " + file.getAbsolutePath();
        com.flurry.sdk.kf.a(4, str2, (java.lang.String) r1);
        try {
            try {
                fileOutputStream = new java.io.FileOutputStream(file);
                try {
                    fileOutputStream.write(str.getBytes());
                    com.flurry.sdk.lr.a(fileOutputStream);
                    r1 = fileOutputStream;
                } catch (java.lang.Throwable th) {
                    th = th;
                    com.flurry.sdk.kf.a(6, a, "Error writing persistent file", th);
                    com.flurry.sdk.lr.a(fileOutputStream);
                    r1 = fileOutputStream;
                }
            } catch (java.lang.Throwable th2) {
                th = th2;
                com.flurry.sdk.lr.a((java.io.Closeable) r1);
                throw th;
            }
        } catch (java.lang.Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }
}
