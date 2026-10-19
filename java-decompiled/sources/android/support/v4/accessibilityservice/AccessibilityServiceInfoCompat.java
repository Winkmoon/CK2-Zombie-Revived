package android.support.v4.accessibilityservice;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class AccessibilityServiceInfoCompat {
    public static final int FEEDBACK_ALL_MASK = -1;
    private static final android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.AccessibilityServiceInfoVersionImpl IMPL;

    interface AccessibilityServiceInfoVersionImpl {
        boolean getCanRetrieveWindowContent(android.accessibilityservice.AccessibilityServiceInfo accessibilityServiceInfo);

        java.lang.String getDescription(android.accessibilityservice.AccessibilityServiceInfo accessibilityServiceInfo);

        java.lang.String getId(android.accessibilityservice.AccessibilityServiceInfo accessibilityServiceInfo);

        android.content.pm.ResolveInfo getResolveInfo(android.accessibilityservice.AccessibilityServiceInfo accessibilityServiceInfo);

        java.lang.String getSettingsActivityName(android.accessibilityservice.AccessibilityServiceInfo accessibilityServiceInfo);
    }

    static class AccessibilityServiceInfoStubImpl implements android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.AccessibilityServiceInfoVersionImpl {
        AccessibilityServiceInfoStubImpl() {
        }

        @Override // android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.AccessibilityServiceInfoVersionImpl
        public boolean getCanRetrieveWindowContent(android.accessibilityservice.AccessibilityServiceInfo info) {
            return false;
        }

        @Override // android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.AccessibilityServiceInfoVersionImpl
        public java.lang.String getDescription(android.accessibilityservice.AccessibilityServiceInfo info) {
            return null;
        }

        @Override // android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.AccessibilityServiceInfoVersionImpl
        public java.lang.String getId(android.accessibilityservice.AccessibilityServiceInfo info) {
            return null;
        }

        @Override // android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.AccessibilityServiceInfoVersionImpl
        public android.content.pm.ResolveInfo getResolveInfo(android.accessibilityservice.AccessibilityServiceInfo info) {
            return null;
        }

        @Override // android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.AccessibilityServiceInfoVersionImpl
        public java.lang.String getSettingsActivityName(android.accessibilityservice.AccessibilityServiceInfo info) {
            return null;
        }
    }

    static class AccessibilityServiceInfoIcsImpl extends android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.AccessibilityServiceInfoStubImpl {
        AccessibilityServiceInfoIcsImpl() {
        }

        @Override // android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.AccessibilityServiceInfoStubImpl, android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.AccessibilityServiceInfoVersionImpl
        public boolean getCanRetrieveWindowContent(android.accessibilityservice.AccessibilityServiceInfo info) {
            return android.support.v4.accessibilityservice.AccessibilityServiceInfoCompatIcs.getCanRetrieveWindowContent(info);
        }

        @Override // android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.AccessibilityServiceInfoStubImpl, android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.AccessibilityServiceInfoVersionImpl
        public java.lang.String getDescription(android.accessibilityservice.AccessibilityServiceInfo info) {
            return android.support.v4.accessibilityservice.AccessibilityServiceInfoCompatIcs.getDescription(info);
        }

        @Override // android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.AccessibilityServiceInfoStubImpl, android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.AccessibilityServiceInfoVersionImpl
        public java.lang.String getId(android.accessibilityservice.AccessibilityServiceInfo info) {
            return android.support.v4.accessibilityservice.AccessibilityServiceInfoCompatIcs.getId(info);
        }

        @Override // android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.AccessibilityServiceInfoStubImpl, android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.AccessibilityServiceInfoVersionImpl
        public android.content.pm.ResolveInfo getResolveInfo(android.accessibilityservice.AccessibilityServiceInfo info) {
            return android.support.v4.accessibilityservice.AccessibilityServiceInfoCompatIcs.getResolveInfo(info);
        }

        @Override // android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.AccessibilityServiceInfoStubImpl, android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.AccessibilityServiceInfoVersionImpl
        public java.lang.String getSettingsActivityName(android.accessibilityservice.AccessibilityServiceInfo info) {
            return android.support.v4.accessibilityservice.AccessibilityServiceInfoCompatIcs.getSettingsActivityName(info);
        }
    }

    static {
        if (android.os.Build.VERSION.SDK_INT >= 14) {
            IMPL = new android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.AccessibilityServiceInfoIcsImpl();
        } else {
            IMPL = new android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.AccessibilityServiceInfoStubImpl();
        }
    }

    private AccessibilityServiceInfoCompat() {
    }

    public static java.lang.String getId(android.accessibilityservice.AccessibilityServiceInfo info) {
        return IMPL.getId(info);
    }

    public static android.content.pm.ResolveInfo getResolveInfo(android.accessibilityservice.AccessibilityServiceInfo info) {
        return IMPL.getResolveInfo(info);
    }

    public static java.lang.String getSettingsActivityName(android.accessibilityservice.AccessibilityServiceInfo info) {
        return IMPL.getSettingsActivityName(info);
    }

    public static boolean getCanRetrieveWindowContent(android.accessibilityservice.AccessibilityServiceInfo info) {
        return IMPL.getCanRetrieveWindowContent(info);
    }

    public static java.lang.String getDescription(android.accessibilityservice.AccessibilityServiceInfo info) {
        return IMPL.getDescription(info);
    }

    public static java.lang.String feedbackTypeToString(int feedbackType) {
        java.lang.StringBuilder builder = new java.lang.StringBuilder();
        builder.append("[");
        while (feedbackType > 0) {
            int feedbackTypeFlag = 1 << java.lang.Integer.numberOfTrailingZeros(feedbackType);
            feedbackType &= feedbackTypeFlag ^ (-1);
            if (builder.length() > 1) {
                builder.append(", ");
            }
            switch (feedbackTypeFlag) {
                case 1:
                    builder.append("FEEDBACK_SPOKEN");
                    break;
                case 2:
                    builder.append("FEEDBACK_HAPTIC");
                    break;
                case 4:
                    builder.append("FEEDBACK_AUDIBLE");
                    break;
                case 8:
                    builder.append("FEEDBACK_VISUAL");
                    break;
                case 16:
                    builder.append("FEEDBACK_GENERIC");
                    break;
            }
        }
        builder.append("]");
        return builder.toString();
    }

    public static java.lang.String flagToString(int flag) {
        switch (flag) {
            case 1:
                return "DEFAULT";
            default:
                return null;
        }
    }
}
