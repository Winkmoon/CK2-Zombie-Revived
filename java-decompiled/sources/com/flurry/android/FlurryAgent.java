package com.flurry.android;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class FlurryAgent {
    private static final java.lang.String a = com.flurry.android.FlurryAgent.class.getSimpleName();
    private static final com.flurry.sdk.ka<com.flurry.sdk.le> b = new com.flurry.sdk.ka<com.flurry.sdk.le>() { // from class: com.flurry.android.FlurryAgent.1
        @Override // com.flurry.sdk.ka
        public final /* synthetic */ void a(com.flurry.sdk.le leVar) {
            final com.flurry.sdk.le leVar2 = leVar;
            com.flurry.sdk.jr.a().a(new java.lang.Runnable() { // from class: com.flurry.android.FlurryAgent.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    switch (com.flurry.android.FlurryAgent.AnonymousClass2.a[leVar2.c - 1]) {
                        case 1:
                            if (com.flurry.android.FlurryAgent.c != null) {
                                com.flurry.android.FlurryAgent.c.onSessionStarted();
                                break;
                            }
                            break;
                    }
                }
            });
        }
    };
    private static com.flurry.android.FlurryAgentListener c = null;
    private static boolean d = false;
    private static int e = 5;
    private static long f = 10000;
    private static boolean g = true;
    private static boolean h = false;
    private static java.lang.String i = null;

    /* renamed from: com.flurry.android.FlurryAgent$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] a = new int[com.flurry.sdk.le.a.a().length];

        static {
            try {
                a[com.flurry.sdk.le.a.b - 1] = 1;
            } catch (java.lang.NoSuchFieldError e) {
            }
        }
    }

    private FlurryAgent() {
    }

    @java.lang.Deprecated
    public static synchronized void init(android.content.Context context, java.lang.String str) {
        synchronized (com.flurry.android.FlurryAgent.class) {
            if (android.os.Build.VERSION.SDK_INT < 10) {
                com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
            } else {
                if (context == null) {
                    throw new java.lang.NullPointerException("Null context");
                }
                if (android.text.TextUtils.isEmpty(str)) {
                    throw new java.lang.IllegalArgumentException("API key not specified");
                }
                if (com.flurry.sdk.jr.a() != null) {
                    com.flurry.sdk.kf.e(a, "Flurry is already initialized");
                }
                try {
                    com.flurry.sdk.mb.a();
                    com.flurry.sdk.jr.a(context, str);
                } catch (java.lang.Throwable th) {
                    com.flurry.sdk.kf.a(a, "", th);
                }
                com.flurry.sdk.kf.e(a, "'init' method is deprecated.");
            }
        }
    }

    public static int getAgentVersion() {
        return com.flurry.sdk.js.a();
    }

    public static java.lang.String getReleaseVersion() {
        return com.flurry.sdk.js.b();
    }

    @java.lang.Deprecated
    public static void setFlurryAgentListener(com.flurry.android.FlurryAgentListener flurryAgentListener) {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
            return;
        }
        if (flurryAgentListener == null) {
            com.flurry.sdk.kf.b(a, "Listener cannot be null");
            com.flurry.sdk.kb.a().b("com.flurry.android.sdk.FlurrySessionEvent", b);
        } else {
            c = flurryAgentListener;
            com.flurry.sdk.kb.a().a("com.flurry.android.sdk.FlurrySessionEvent", b);
            com.flurry.sdk.kf.e(a, "'setFlurryAgentListener' method is deprecated.");
        }
    }

    @java.lang.Deprecated
    public static void setLogEnabled(boolean z) {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
            return;
        }
        if (z) {
            com.flurry.sdk.kf.b();
        } else {
            com.flurry.sdk.kf.a();
        }
        com.flurry.sdk.kf.e(a, "'setLogEnabled' method is deprecated.");
    }

    @java.lang.Deprecated
    public static void setLogLevel(int i2) {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
        } else {
            com.flurry.sdk.kf.a(i2);
            com.flurry.sdk.kf.e(a, "'setLogLevel' method is deprecated.");
        }
    }

    public static void setVersionName(java.lang.String str) {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
        } else if (str == null) {
            com.flurry.sdk.kf.b(a, "String versionName passed to setVersionName was null.");
        } else {
            com.flurry.sdk.li.a().a("VersionName", str);
        }
    }

    public static void setReportLocation(boolean z) {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
        } else {
            com.flurry.sdk.li.a().a("ReportLocation", java.lang.Boolean.valueOf(z));
        }
    }

    public static void setLocation(float f2, float f3) {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
            return;
        }
        android.location.Location location = new android.location.Location("Explicit");
        location.setLatitude(f2);
        location.setLongitude(f3);
        com.flurry.sdk.li.a().a("ExplicitLocation", location);
    }

    public static void clearLocation() {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
        } else {
            com.flurry.sdk.li.a().a("ExplicitLocation", (java.lang.Object) null);
        }
    }

    @java.lang.Deprecated
    public static void setContinueSessionMillis(long j) {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
        } else if (j < 5000) {
            com.flurry.sdk.kf.b(a, "Invalid time set for session resumption: " + j);
        } else {
            com.flurry.sdk.li.a().a("ContinueSessionMillis", java.lang.Long.valueOf(j));
            com.flurry.sdk.kf.e(a, "'setContinueSessionMillis' method is deprecated.");
        }
    }

    public static void setLogEvents(boolean z) {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
        } else {
            com.flurry.sdk.li.a().a("LogEvents", java.lang.Boolean.valueOf(z));
        }
    }

    @java.lang.Deprecated
    public static void setCaptureUncaughtExceptions(boolean z) {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
        } else {
            com.flurry.sdk.li.a().a("CaptureUncaughtExceptions", java.lang.Boolean.valueOf(z));
            com.flurry.sdk.kf.e(a, "'setCaptureUncaughtExceptions' method is deprecated.");
        }
    }

    public static void addOrigin(java.lang.String str, java.lang.String str2) {
        addOrigin(str, str2, null);
    }

    public static void addOrigin(java.lang.String str, java.lang.String str2, java.util.Map<java.lang.String, java.lang.String> map) {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
            return;
        }
        if (android.text.TextUtils.isEmpty(str)) {
            throw new java.lang.IllegalArgumentException("originName not specified");
        }
        if (android.text.TextUtils.isEmpty(str2)) {
            throw new java.lang.IllegalArgumentException("originVersion not specified");
        }
        try {
            com.flurry.sdk.jt.a().a(str, str2, map);
        } catch (java.lang.Throwable th) {
            com.flurry.sdk.kf.a(a, "", th);
        }
    }

    @java.lang.Deprecated
    public static void setPulseEnabled(boolean z) {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
            return;
        }
        com.flurry.sdk.li.a().a("ProtonEnabled", java.lang.Boolean.valueOf(z));
        if (!z) {
            com.flurry.sdk.li.a().a("analyticsEnabled", (java.lang.Object) true);
        }
        com.flurry.sdk.kf.e(a, "'setPulseEnabled' method is deprecated.");
    }

    @java.lang.Deprecated
    public static void onStartSession(android.content.Context context, java.lang.String str) {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
            return;
        }
        if (context == null) {
            throw new java.lang.NullPointerException("Null context");
        }
        if (android.text.TextUtils.isEmpty(str)) {
            throw new java.lang.IllegalArgumentException("Api key not specified");
        }
        if (com.flurry.sdk.jr.a() == null) {
            throw new java.lang.IllegalStateException("Flurry SDK must be initialized before starting a session");
        }
        try {
            com.flurry.sdk.lf.a().b(context);
        } catch (java.lang.Throwable th) {
            com.flurry.sdk.kf.a(a, "", th);
        }
        com.flurry.sdk.kf.e(a, "'onStartSession' method is deprecated.");
    }

    public static void onStartSession(android.content.Context context) {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
            return;
        }
        if (context == null) {
            throw new java.lang.NullPointerException("Null context");
        }
        if (com.flurry.sdk.jr.a() == null) {
            throw new java.lang.IllegalStateException("Flurry SDK must be initialized before starting a session");
        }
        try {
            com.flurry.sdk.lf.a().b(context);
        } catch (java.lang.Throwable th) {
            com.flurry.sdk.kf.a(a, "", th);
        }
    }

    public static void onEndSession(android.content.Context context) {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
            return;
        }
        if (context == null) {
            throw new java.lang.NullPointerException("Null context");
        }
        if (com.flurry.sdk.jr.a() == null) {
            throw new java.lang.IllegalStateException("Flurry SDK must be initialized before ending a session");
        }
        try {
            com.flurry.sdk.lf.a().c(context);
        } catch (java.lang.Throwable th) {
            com.flurry.sdk.kf.a(a, "", th);
        }
    }

    public static boolean isSessionActive() {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
            return false;
        }
        try {
            return com.flurry.sdk.lf.a().d();
        } catch (java.lang.Throwable th) {
            com.flurry.sdk.kf.a(a, "", th);
            return false;
        }
    }

    public static java.lang.String getSessionId() {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
            return null;
        }
        if (com.flurry.sdk.jr.a() == null) {
            throw new java.lang.IllegalStateException("Flurry SDK must be initialized before starting a session");
        }
        try {
            com.flurry.sdk.jd.a();
            return com.flurry.sdk.jd.c();
        } catch (java.lang.Throwable th) {
            com.flurry.sdk.kf.a(a, "", th);
            return null;
        }
    }

    public static com.flurry.android.FlurryEventRecordStatus logEvent(java.lang.String str) {
        com.flurry.android.FlurryEventRecordStatus flurryEventRecordStatus;
        com.flurry.android.FlurryEventRecordStatus flurryEventRecordStatus2 = com.flurry.android.FlurryEventRecordStatus.kFlurryEventFailed;
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
            return flurryEventRecordStatus2;
        }
        if (str == null) {
            com.flurry.sdk.kf.b(a, "String eventId passed to logEvent was null.");
            return flurryEventRecordStatus2;
        }
        try {
            com.flurry.sdk.hk.a();
            com.flurry.sdk.ja c2 = com.flurry.sdk.hk.c();
            flurryEventRecordStatus = com.flurry.android.FlurryEventRecordStatus.kFlurryEventFailed;
            if (c2 != null) {
                flurryEventRecordStatus = c2.a(str, (java.util.Map<java.lang.String, java.lang.String>) null, false);
            }
        } catch (java.lang.Throwable th) {
            com.flurry.sdk.kf.a(a, "Failed to log event: " + str, th);
            flurryEventRecordStatus = flurryEventRecordStatus2;
        }
        return flurryEventRecordStatus;
    }

    public static com.flurry.android.FlurryEventRecordStatus logEvent(java.lang.String str, java.util.Map<java.lang.String, java.lang.String> map) {
        com.flurry.android.FlurryEventRecordStatus flurryEventRecordStatus;
        com.flurry.android.FlurryEventRecordStatus flurryEventRecordStatus2 = com.flurry.android.FlurryEventRecordStatus.kFlurryEventFailed;
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
            return flurryEventRecordStatus2;
        }
        if (str == null) {
            com.flurry.sdk.kf.b(a, "String eventId passed to logEvent was null.");
            return flurryEventRecordStatus2;
        }
        if (map == null) {
            com.flurry.sdk.kf.b(a, "String parameters passed to logEvent was null.");
            return flurryEventRecordStatus2;
        }
        try {
            com.flurry.sdk.hk.a();
            com.flurry.sdk.ja c2 = com.flurry.sdk.hk.c();
            flurryEventRecordStatus = com.flurry.android.FlurryEventRecordStatus.kFlurryEventFailed;
            if (c2 != null) {
                flurryEventRecordStatus = c2.a(str, map, false);
            }
        } catch (java.lang.Throwable th) {
            com.flurry.sdk.kf.a(a, "Failed to log event: " + str, th);
            flurryEventRecordStatus = flurryEventRecordStatus2;
        }
        return flurryEventRecordStatus;
    }

    public static com.flurry.android.FlurryEventRecordStatus logEvent(com.flurry.android.FlurrySyndicationEventName flurrySyndicationEventName, java.lang.String str, java.util.Map<java.lang.String, java.lang.String> map) {
        com.flurry.android.FlurryEventRecordStatus flurryEventRecordStatus;
        com.flurry.android.FlurryEventRecordStatus flurryEventRecordStatus2 = com.flurry.android.FlurryEventRecordStatus.kFlurryEventFailed;
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
            return flurryEventRecordStatus2;
        }
        if (flurrySyndicationEventName == null) {
            com.flurry.sdk.kf.b(a, "String eventName passed to logEvent was null.");
            return flurryEventRecordStatus2;
        }
        if (android.text.TextUtils.isEmpty(str)) {
            com.flurry.sdk.kf.b(a, "String syndicationId passed to logEvent was null or empty.");
            return flurryEventRecordStatus2;
        }
        if (map == null) {
            com.flurry.sdk.kf.b(a, "String parameters passed to logEvent was null.");
            return flurryEventRecordStatus2;
        }
        try {
            com.flurry.sdk.hk.a();
            java.lang.String flurrySyndicationEventName2 = flurrySyndicationEventName.toString();
            com.flurry.sdk.ja c2 = com.flurry.sdk.hk.c();
            flurryEventRecordStatus = com.flurry.android.FlurryEventRecordStatus.kFlurryEventFailed;
            if (c2 != null) {
                flurryEventRecordStatus = c2.a(flurrySyndicationEventName2, str, map);
            }
        } catch (java.lang.Throwable th) {
            com.flurry.sdk.kf.a(a, "Failed to log event: " + flurrySyndicationEventName.toString(), th);
            flurryEventRecordStatus = flurryEventRecordStatus2;
        }
        return flurryEventRecordStatus;
    }

    public static com.flurry.android.FlurryEventRecordStatus logEvent(java.lang.String str, boolean z) {
        com.flurry.android.FlurryEventRecordStatus flurryEventRecordStatus;
        com.flurry.android.FlurryEventRecordStatus flurryEventRecordStatus2 = com.flurry.android.FlurryEventRecordStatus.kFlurryEventFailed;
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
            return flurryEventRecordStatus2;
        }
        if (str == null) {
            com.flurry.sdk.kf.b(a, "String eventId passed to logEvent was null.");
            return flurryEventRecordStatus2;
        }
        try {
            com.flurry.sdk.hk.a();
            com.flurry.sdk.ja c2 = com.flurry.sdk.hk.c();
            flurryEventRecordStatus = com.flurry.android.FlurryEventRecordStatus.kFlurryEventFailed;
            if (c2 != null) {
                flurryEventRecordStatus = c2.a(str, (java.util.Map<java.lang.String, java.lang.String>) null, z);
            }
        } catch (java.lang.Throwable th) {
            com.flurry.sdk.kf.a(a, "Failed to log event: " + str, th);
            flurryEventRecordStatus = flurryEventRecordStatus2;
        }
        return flurryEventRecordStatus;
    }

    public static com.flurry.android.FlurryEventRecordStatus logEvent(java.lang.String str, java.util.Map<java.lang.String, java.lang.String> map, boolean z) {
        com.flurry.android.FlurryEventRecordStatus flurryEventRecordStatus;
        com.flurry.android.FlurryEventRecordStatus flurryEventRecordStatus2 = com.flurry.android.FlurryEventRecordStatus.kFlurryEventFailed;
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
            return flurryEventRecordStatus2;
        }
        if (str == null) {
            com.flurry.sdk.kf.b(a, "String eventId passed to logEvent was null.");
            return flurryEventRecordStatus2;
        }
        if (map == null) {
            com.flurry.sdk.kf.b(a, "String parameters passed to logEvent was null.");
            return flurryEventRecordStatus2;
        }
        try {
            com.flurry.sdk.hk.a();
            com.flurry.sdk.ja c2 = com.flurry.sdk.hk.c();
            flurryEventRecordStatus = com.flurry.android.FlurryEventRecordStatus.kFlurryEventFailed;
            if (c2 != null) {
                flurryEventRecordStatus = c2.a(str, map, z);
            }
        } catch (java.lang.Throwable th) {
            com.flurry.sdk.kf.a(a, "Failed to log event: " + str, th);
            flurryEventRecordStatus = flurryEventRecordStatus2;
        }
        return flurryEventRecordStatus;
    }

    public static void endTimedEvent(java.lang.String str) {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
            return;
        }
        if (str == null) {
            com.flurry.sdk.kf.b(a, "String eventId passed to endTimedEvent was null.");
            return;
        }
        try {
            com.flurry.sdk.hk.a();
            com.flurry.sdk.ja c2 = com.flurry.sdk.hk.c();
            if (c2 == null) {
                return;
            }
            c2.a(str, (java.util.Map<java.lang.String, java.lang.String>) null);
        } catch (java.lang.Throwable th) {
            com.flurry.sdk.kf.a(a, "Failed to signify the end of event: " + str, th);
        }
    }

    public static void endTimedEvent(java.lang.String str, java.util.Map<java.lang.String, java.lang.String> map) {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
            return;
        }
        if (str == null) {
            com.flurry.sdk.kf.b(a, "String eventId passed to endTimedEvent was null.");
            return;
        }
        if (map == null) {
            com.flurry.sdk.kf.b(a, "String eventId passed to endTimedEvent was null.");
            return;
        }
        try {
            com.flurry.sdk.hk.a();
            com.flurry.sdk.ja c2 = com.flurry.sdk.hk.c();
            if (c2 == null) {
                return;
            }
            c2.a(str, map);
        } catch (java.lang.Throwable th) {
            com.flurry.sdk.kf.a(a, "Failed to signify the end of event: " + str, th);
        }
    }

    @java.lang.Deprecated
    public static void onError(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        java.lang.StackTraceElement[] stackTraceElementArr;
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
            return;
        }
        if (str == null) {
            com.flurry.sdk.kf.b(a, "String errorId passed to onError was null.");
            return;
        }
        if (str2 == null) {
            com.flurry.sdk.kf.b(a, "String message passed to onError was null.");
            return;
        }
        if (str3 == null) {
            com.flurry.sdk.kf.b(a, "String errorClass passed to onError was null.");
            return;
        }
        try {
            com.flurry.sdk.hk.a();
            java.lang.StackTraceElement[] stackTrace = java.lang.Thread.currentThread().getStackTrace();
            if (stackTrace == null || stackTrace.length <= 2) {
                stackTraceElementArr = stackTrace;
            } else {
                stackTraceElementArr = new java.lang.StackTraceElement[stackTrace.length - 2];
                java.lang.System.arraycopy(stackTrace, 2, stackTraceElementArr, 0, stackTraceElementArr.length);
            }
            java.lang.Throwable th = new java.lang.Throwable(str2);
            th.setStackTrace(stackTraceElementArr);
            com.flurry.sdk.ja c2 = com.flurry.sdk.hk.c();
            if (c2 != null) {
                c2.a(str, str2, str3, th);
            }
        } catch (java.lang.Throwable th2) {
            com.flurry.sdk.kf.a(a, "", th2);
        }
        com.flurry.sdk.kf.e(a, "'onError' method is deprecated.");
    }

    public static void onError(java.lang.String str, java.lang.String str2, java.lang.Throwable th) {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
            return;
        }
        if (str == null) {
            com.flurry.sdk.kf.b(a, "String errorId passed to onError was null.");
            return;
        }
        if (str2 == null) {
            com.flurry.sdk.kf.b(a, "String message passed to onError was null.");
            return;
        }
        if (th == null) {
            com.flurry.sdk.kf.b(a, "Throwable passed to onError was null.");
            return;
        }
        try {
            com.flurry.sdk.hk.a();
            com.flurry.sdk.hk.a(str, str2, th);
        } catch (java.lang.Throwable th2) {
            com.flurry.sdk.kf.a(a, "", th2);
        }
    }

    @java.lang.Deprecated
    public static void onEvent(java.lang.String str) {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
            return;
        }
        if (str == null) {
            com.flurry.sdk.kf.b(a, "String eventId passed to onEvent was null.");
            return;
        }
        try {
            com.flurry.sdk.hk.a();
            com.flurry.sdk.ja c2 = com.flurry.sdk.hk.c();
            if (c2 != null) {
                c2.a(str, (java.util.Map<java.lang.String, java.lang.String>) null, false);
            }
        } catch (java.lang.Throwable th) {
            com.flurry.sdk.kf.a(a, "", th);
        }
        com.flurry.sdk.kf.e(a, "'onEvent' method is deprecated.");
    }

    @java.lang.Deprecated
    public static void onEvent(java.lang.String str, java.util.Map<java.lang.String, java.lang.String> map) {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
            return;
        }
        if (str == null) {
            com.flurry.sdk.kf.b(a, "String eventId passed to onEvent was null.");
            return;
        }
        if (map == null) {
            com.flurry.sdk.kf.b(a, "Parameters Map passed to onEvent was null.");
            return;
        }
        try {
            com.flurry.sdk.hk.a();
            com.flurry.sdk.ja c2 = com.flurry.sdk.hk.c();
            if (c2 != null) {
                c2.a(str, map, false);
            }
        } catch (java.lang.Throwable th) {
            com.flurry.sdk.kf.a(a, "", th);
        }
        com.flurry.sdk.kf.e(a, "'onEvent' method is deprecated.");
    }

    public static void onPageView() {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
            return;
        }
        try {
            com.flurry.sdk.hk.a();
            com.flurry.sdk.ja c2 = com.flurry.sdk.hk.c();
            if (c2 == null) {
                return;
            }
            c2.c();
        } catch (java.lang.Throwable th) {
            com.flurry.sdk.kf.a(a, "", th);
        }
    }

    @java.lang.Deprecated
    public static void setLocationCriteria(android.location.Criteria criteria) {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
        }
        com.flurry.sdk.kf.e(a, "'setLocationCriteria' method is deprecated.");
    }

    public static void setAge(int i2) {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
        } else if (i2 > 0 && i2 < 110) {
            com.flurry.sdk.li.a().a("Age", java.lang.Long.valueOf(new java.util.Date(new java.util.Date(java.lang.System.currentTimeMillis() - (i2 * 31449600000L)).getYear(), 1, 1).getTime()));
        }
    }

    public static void setGender(byte b2) {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
        }
        switch (b2) {
            case 0:
            case 1:
                com.flurry.sdk.li.a().a("Gender", java.lang.Byte.valueOf(b2));
                break;
            default:
                com.flurry.sdk.li.a().a("Gender", (java.lang.Object) (byte) -1);
                break;
        }
    }

    public static void setUserId(java.lang.String str) {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
        } else if (str == null) {
            com.flurry.sdk.kf.b(a, "String userId passed to setUserId was null.");
        } else {
            com.flurry.sdk.li.a().a("UserId", com.flurry.sdk.lr.b(str));
        }
    }

    public static void setSessionOrigin(java.lang.String str, java.lang.String str2) {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
            return;
        }
        if (android.text.TextUtils.isEmpty(str)) {
            com.flurry.sdk.kf.b(a, "String originName passed to setSessionOrigin was null or empty.");
            return;
        }
        if (com.flurry.sdk.jr.a() == null) {
            throw new java.lang.IllegalStateException("Flurry SDK must be initialized before starting a session");
        }
        com.flurry.sdk.jd.a();
        com.flurry.sdk.jq i2 = com.flurry.sdk.jd.i();
        if (i2 != null) {
            i2.a(str);
        }
        com.flurry.sdk.jd.a();
        com.flurry.sdk.jq i3 = com.flurry.sdk.jd.i();
        if (i3 == null) {
            return;
        }
        i3.b(str2);
    }

    public static void addSessionProperty(java.lang.String str, java.lang.String str2) {
        if (android.os.Build.VERSION.SDK_INT < 10) {
            com.flurry.sdk.kf.b(a, "Device SDK Version older than 10");
            return;
        }
        if (android.text.TextUtils.isEmpty(str) || android.text.TextUtils.isEmpty(str2)) {
            com.flurry.sdk.kf.b(a, "String name or value passed to addSessionProperty was null or empty.");
            return;
        }
        if (com.flurry.sdk.jr.a() == null) {
            throw new java.lang.IllegalStateException("Flurry SDK must be initialized before starting a session");
        }
        com.flurry.sdk.jd.a();
        com.flurry.sdk.jq i2 = com.flurry.sdk.jd.i();
        if (i2 == null) {
            return;
        }
        i2.a(str, str2);
    }

    public static class Builder {
        private static com.flurry.android.FlurryAgentListener a = null;
        private boolean b = false;
        private int c = 5;
        private long d = 10000;
        private boolean e = true;
        private boolean f = false;

        public com.flurry.android.FlurryAgent.Builder withListener(com.flurry.android.FlurryAgentListener flurryAgentListener) {
            a = flurryAgentListener;
            return this;
        }

        public com.flurry.android.FlurryAgent.Builder withLogEnabled(boolean z) {
            this.b = z;
            return this;
        }

        public com.flurry.android.FlurryAgent.Builder withLogLevel(int i) {
            this.c = i;
            return this;
        }

        public com.flurry.android.FlurryAgent.Builder withContinueSessionMillis(long j) {
            this.d = j;
            return this;
        }

        public com.flurry.android.FlurryAgent.Builder withCaptureUncaughtExceptions(boolean z) {
            this.e = z;
            return this;
        }

        public com.flurry.android.FlurryAgent.Builder withPulseEnabled(boolean z) {
            this.f = z;
            return this;
        }

        public void build(android.content.Context context, java.lang.String str) {
            com.flurry.android.FlurryAgent.a(a, this.b, this.c, this.d, this.e, this.f, context, str);
        }
    }

    static /* synthetic */ void a(com.flurry.android.FlurryAgentListener flurryAgentListener, boolean z, int i2, long j, boolean z2, boolean z3, android.content.Context context, java.lang.String str) {
        c = flurryAgentListener;
        setFlurryAgentListener(flurryAgentListener);
        d = z;
        setLogEnabled(z);
        e = i2;
        setLogLevel(i2);
        f = j;
        setContinueSessionMillis(j);
        g = z2;
        setCaptureUncaughtExceptions(z2);
        h = z3;
        setPulseEnabled(z3);
        i = str;
        init(context, i);
    }
}
