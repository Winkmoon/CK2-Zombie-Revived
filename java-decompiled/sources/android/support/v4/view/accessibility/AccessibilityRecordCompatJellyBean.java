package android.support.v4.view.accessibility;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
class AccessibilityRecordCompatJellyBean {
    AccessibilityRecordCompatJellyBean() {
    }

    public static void setSource(java.lang.Object record, android.view.View root, int virtualDescendantId) {
        ((android.view.accessibility.AccessibilityRecord) record).setSource(root, virtualDescendantId);
    }
}
