package android.support.v4.view;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class ViewGroupCompat {
    static final android.support.v4.view.ViewGroupCompat.ViewGroupCompatImpl IMPL;

    interface ViewGroupCompatImpl {
        boolean onRequestSendAccessibilityEvent(android.view.ViewGroup viewGroup, android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent);
    }

    static class ViewGroupCompatStubImpl implements android.support.v4.view.ViewGroupCompat.ViewGroupCompatImpl {
        ViewGroupCompatStubImpl() {
        }

        @Override // android.support.v4.view.ViewGroupCompat.ViewGroupCompatImpl
        public boolean onRequestSendAccessibilityEvent(android.view.ViewGroup group, android.view.View child, android.view.accessibility.AccessibilityEvent event) {
            return true;
        }
    }

    static class ViewGroupCompatIcsImpl extends android.support.v4.view.ViewGroupCompat.ViewGroupCompatStubImpl {
        ViewGroupCompatIcsImpl() {
        }

        @Override // android.support.v4.view.ViewGroupCompat.ViewGroupCompatStubImpl, android.support.v4.view.ViewGroupCompat.ViewGroupCompatImpl
        public boolean onRequestSendAccessibilityEvent(android.view.ViewGroup group, android.view.View child, android.view.accessibility.AccessibilityEvent event) {
            return android.support.v4.view.ViewGroupCompatIcs.onRequestSendAccessibilityEvent(group, child, event);
        }
    }

    static {
        if (android.os.Build.VERSION.SDK_INT >= 14) {
            IMPL = new android.support.v4.view.ViewGroupCompat.ViewGroupCompatIcsImpl();
        } else {
            IMPL = new android.support.v4.view.ViewGroupCompat.ViewGroupCompatStubImpl();
        }
    }

    private ViewGroupCompat() {
    }

    public static boolean onRequestSendAccessibilityEvent(android.view.ViewGroup group, android.view.View child, android.view.accessibility.AccessibilityEvent event) {
        return IMPL.onRequestSendAccessibilityEvent(group, child, event);
    }
}
