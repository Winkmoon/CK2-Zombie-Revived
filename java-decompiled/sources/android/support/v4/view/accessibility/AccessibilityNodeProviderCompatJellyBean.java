package android.support.v4.view.accessibility;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
class AccessibilityNodeProviderCompatJellyBean {

    interface AccessibilityNodeInfoBridge {
        java.lang.Object createAccessibilityNodeInfo(int i);

        java.util.List<java.lang.Object> findAccessibilityNodeInfosByText(java.lang.String str, int i);

        boolean performAction(int i, int i2, android.os.Bundle bundle);
    }

    AccessibilityNodeProviderCompatJellyBean() {
    }

    public static java.lang.Object newAccessibilityNodeProviderBridge(final android.support.v4.view.accessibility.AccessibilityNodeProviderCompatJellyBean.AccessibilityNodeInfoBridge bridge) {
        return new android.view.accessibility.AccessibilityNodeProvider() { // from class: android.support.v4.view.accessibility.AccessibilityNodeProviderCompatJellyBean.1
            @Override // android.view.accessibility.AccessibilityNodeProvider
            public android.view.accessibility.AccessibilityNodeInfo createAccessibilityNodeInfo(int virtualViewId) {
                return (android.view.accessibility.AccessibilityNodeInfo) android.support.v4.view.accessibility.AccessibilityNodeProviderCompatJellyBean.AccessibilityNodeInfoBridge.this.createAccessibilityNodeInfo(virtualViewId);
            }

            @Override // android.view.accessibility.AccessibilityNodeProvider
            public java.util.List<android.view.accessibility.AccessibilityNodeInfo> findAccessibilityNodeInfosByText(java.lang.String text, int virtualViewId) {
                return android.support.v4.view.accessibility.AccessibilityNodeProviderCompatJellyBean.AccessibilityNodeInfoBridge.this.findAccessibilityNodeInfosByText(text, virtualViewId);
            }

            @Override // android.view.accessibility.AccessibilityNodeProvider
            public boolean performAction(int virtualViewId, int action, android.os.Bundle arguments) {
                return android.support.v4.view.accessibility.AccessibilityNodeProviderCompatJellyBean.AccessibilityNodeInfoBridge.this.performAction(virtualViewId, action, arguments);
            }
        };
    }
}
