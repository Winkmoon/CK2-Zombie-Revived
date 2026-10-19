package android.support.v4.view;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
class ViewGroupCompatIcs {
    ViewGroupCompatIcs() {
    }

    public static boolean onRequestSendAccessibilityEvent(android.view.ViewGroup group, android.view.View child, android.view.accessibility.AccessibilityEvent event) {
        return group.onRequestSendAccessibilityEvent(child, event);
    }
}
