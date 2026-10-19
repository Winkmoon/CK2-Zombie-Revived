package android.support.v4.view;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class ViewCompat {
    private static final long FAKE_FRAME_TIME = 10;
    static final android.support.v4.view.ViewCompat.ViewCompatImpl IMPL;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_AUTO = 0;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO = 2;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_YES = 1;
    public static final int LAYER_TYPE_HARDWARE = 2;
    public static final int LAYER_TYPE_NONE = 0;
    public static final int LAYER_TYPE_SOFTWARE = 1;
    public static final int OVER_SCROLL_ALWAYS = 0;
    public static final int OVER_SCROLL_IF_CONTENT_SCROLLS = 1;
    public static final int OVER_SCROLL_NEVER = 2;

    interface ViewCompatImpl {
        boolean canScrollHorizontally(android.view.View view, int i);

        boolean canScrollVertically(android.view.View view, int i);

        android.support.v4.view.accessibility.AccessibilityNodeProviderCompat getAccessibilityNodeProvider(android.view.View view);

        int getImportantForAccessibility(android.view.View view);

        int getLabelFor(android.view.View view);

        int getLayerType(android.view.View view);

        int getOverScrollMode(android.view.View view);

        boolean hasTransientState(android.view.View view);

        void onInitializeAccessibilityEvent(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent);

        void onInitializeAccessibilityNodeInfo(android.view.View view, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat accessibilityNodeInfoCompat);

        void onPopulateAccessibilityEvent(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent);

        boolean performAccessibilityAction(android.view.View view, int i, android.os.Bundle bundle);

        void postInvalidateOnAnimation(android.view.View view);

        void postInvalidateOnAnimation(android.view.View view, int i, int i2, int i3, int i4);

        void postOnAnimation(android.view.View view, java.lang.Runnable runnable);

        void postOnAnimationDelayed(android.view.View view, java.lang.Runnable runnable, long j);

        void setAccessibilityDelegate(android.view.View view, android.support.v4.view.AccessibilityDelegateCompat accessibilityDelegateCompat);

        void setHasTransientState(android.view.View view, boolean z);

        void setImportantForAccessibility(android.view.View view, int i);

        void setLabelFor(android.view.View view, int i);

        void setLayerType(android.view.View view, int i, android.graphics.Paint paint);

        void setOverScrollMode(android.view.View view, int i);
    }

    static class BaseViewCompatImpl implements android.support.v4.view.ViewCompat.ViewCompatImpl {
        BaseViewCompatImpl() {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public boolean canScrollHorizontally(android.view.View v, int direction) {
            return false;
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public boolean canScrollVertically(android.view.View v, int direction) {
            return false;
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public int getOverScrollMode(android.view.View v) {
            return 2;
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void setOverScrollMode(android.view.View v, int mode) {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void setAccessibilityDelegate(android.view.View v, android.support.v4.view.AccessibilityDelegateCompat delegate) {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void onPopulateAccessibilityEvent(android.view.View v, android.view.accessibility.AccessibilityEvent event) {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void onInitializeAccessibilityEvent(android.view.View v, android.view.accessibility.AccessibilityEvent event) {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void onInitializeAccessibilityNodeInfo(android.view.View v, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat info) {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public boolean hasTransientState(android.view.View view) {
            return false;
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void setHasTransientState(android.view.View view, boolean hasTransientState) {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void postInvalidateOnAnimation(android.view.View view) {
            view.postInvalidateDelayed(getFrameTime());
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void postInvalidateOnAnimation(android.view.View view, int left, int top, int right, int bottom) {
            view.postInvalidateDelayed(getFrameTime(), left, top, right, bottom);
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void postOnAnimation(android.view.View view, java.lang.Runnable action) {
            view.postDelayed(action, getFrameTime());
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void postOnAnimationDelayed(android.view.View view, java.lang.Runnable action, long delayMillis) {
            view.postDelayed(action, getFrameTime() + delayMillis);
        }

        long getFrameTime() {
            return android.support.v4.view.ViewCompat.FAKE_FRAME_TIME;
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public int getImportantForAccessibility(android.view.View view) {
            return 0;
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void setImportantForAccessibility(android.view.View view, int mode) {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public boolean performAccessibilityAction(android.view.View view, int action, android.os.Bundle arguments) {
            return false;
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public android.support.v4.view.accessibility.AccessibilityNodeProviderCompat getAccessibilityNodeProvider(android.view.View view) {
            return null;
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void setLayerType(android.view.View view, int layerType, android.graphics.Paint paint) {
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public int getLayerType(android.view.View view) {
            return 0;
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public int getLabelFor(android.view.View view) {
            return 0;
        }

        @Override // android.support.v4.view.ViewCompat.ViewCompatImpl
        public void setLabelFor(android.view.View view, int id) {
        }
    }

    static class GBViewCompatImpl extends android.support.v4.view.ViewCompat.BaseViewCompatImpl {
        GBViewCompatImpl() {
        }

        @Override // android.support.v4.view.ViewCompat.BaseViewCompatImpl, android.support.v4.view.ViewCompat.ViewCompatImpl
        public int getOverScrollMode(android.view.View v) {
            return android.support.v4.view.ViewCompatGingerbread.getOverScrollMode(v);
        }

        @Override // android.support.v4.view.ViewCompat.BaseViewCompatImpl, android.support.v4.view.ViewCompat.ViewCompatImpl
        public void setOverScrollMode(android.view.View v, int mode) {
            android.support.v4.view.ViewCompatGingerbread.setOverScrollMode(v, mode);
        }
    }

    static class HCViewCompatImpl extends android.support.v4.view.ViewCompat.GBViewCompatImpl {
        HCViewCompatImpl() {
        }

        @Override // android.support.v4.view.ViewCompat.BaseViewCompatImpl
        long getFrameTime() {
            return android.support.v4.view.ViewCompatHC.getFrameTime();
        }

        @Override // android.support.v4.view.ViewCompat.BaseViewCompatImpl, android.support.v4.view.ViewCompat.ViewCompatImpl
        public void setLayerType(android.view.View view, int layerType, android.graphics.Paint paint) {
            android.support.v4.view.ViewCompatHC.setLayerType(view, layerType, paint);
        }

        @Override // android.support.v4.view.ViewCompat.BaseViewCompatImpl, android.support.v4.view.ViewCompat.ViewCompatImpl
        public int getLayerType(android.view.View view) {
            return android.support.v4.view.ViewCompatHC.getLayerType(view);
        }
    }

    static class ICSViewCompatImpl extends android.support.v4.view.ViewCompat.HCViewCompatImpl {
        ICSViewCompatImpl() {
        }

        @Override // android.support.v4.view.ViewCompat.BaseViewCompatImpl, android.support.v4.view.ViewCompat.ViewCompatImpl
        public boolean canScrollHorizontally(android.view.View v, int direction) {
            return android.support.v4.view.ViewCompatICS.canScrollHorizontally(v, direction);
        }

        @Override // android.support.v4.view.ViewCompat.BaseViewCompatImpl, android.support.v4.view.ViewCompat.ViewCompatImpl
        public boolean canScrollVertically(android.view.View v, int direction) {
            return android.support.v4.view.ViewCompatICS.canScrollVertically(v, direction);
        }

        @Override // android.support.v4.view.ViewCompat.BaseViewCompatImpl, android.support.v4.view.ViewCompat.ViewCompatImpl
        public void onPopulateAccessibilityEvent(android.view.View v, android.view.accessibility.AccessibilityEvent event) {
            android.support.v4.view.ViewCompatICS.onPopulateAccessibilityEvent(v, event);
        }

        @Override // android.support.v4.view.ViewCompat.BaseViewCompatImpl, android.support.v4.view.ViewCompat.ViewCompatImpl
        public void onInitializeAccessibilityEvent(android.view.View v, android.view.accessibility.AccessibilityEvent event) {
            android.support.v4.view.ViewCompatICS.onInitializeAccessibilityEvent(v, event);
        }

        @Override // android.support.v4.view.ViewCompat.BaseViewCompatImpl, android.support.v4.view.ViewCompat.ViewCompatImpl
        public void onInitializeAccessibilityNodeInfo(android.view.View v, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat info) {
            android.support.v4.view.ViewCompatICS.onInitializeAccessibilityNodeInfo(v, info.getInfo());
        }

        @Override // android.support.v4.view.ViewCompat.BaseViewCompatImpl, android.support.v4.view.ViewCompat.ViewCompatImpl
        public void setAccessibilityDelegate(android.view.View v, android.support.v4.view.AccessibilityDelegateCompat delegate) {
            android.support.v4.view.ViewCompatICS.setAccessibilityDelegate(v, delegate.getBridge());
        }
    }

    static class JBViewCompatImpl extends android.support.v4.view.ViewCompat.ICSViewCompatImpl {
        JBViewCompatImpl() {
        }

        @Override // android.support.v4.view.ViewCompat.BaseViewCompatImpl, android.support.v4.view.ViewCompat.ViewCompatImpl
        public boolean hasTransientState(android.view.View view) {
            return android.support.v4.view.ViewCompatJB.hasTransientState(view);
        }

        @Override // android.support.v4.view.ViewCompat.BaseViewCompatImpl, android.support.v4.view.ViewCompat.ViewCompatImpl
        public void setHasTransientState(android.view.View view, boolean hasTransientState) {
            android.support.v4.view.ViewCompatJB.setHasTransientState(view, hasTransientState);
        }

        @Override // android.support.v4.view.ViewCompat.BaseViewCompatImpl, android.support.v4.view.ViewCompat.ViewCompatImpl
        public void postInvalidateOnAnimation(android.view.View view) {
            android.support.v4.view.ViewCompatJB.postInvalidateOnAnimation(view);
        }

        @Override // android.support.v4.view.ViewCompat.BaseViewCompatImpl, android.support.v4.view.ViewCompat.ViewCompatImpl
        public void postInvalidateOnAnimation(android.view.View view, int left, int top, int right, int bottom) {
            android.support.v4.view.ViewCompatJB.postInvalidateOnAnimation(view, left, top, right, bottom);
        }

        @Override // android.support.v4.view.ViewCompat.BaseViewCompatImpl, android.support.v4.view.ViewCompat.ViewCompatImpl
        public void postOnAnimation(android.view.View view, java.lang.Runnable action) {
            android.support.v4.view.ViewCompatJB.postOnAnimation(view, action);
        }

        @Override // android.support.v4.view.ViewCompat.BaseViewCompatImpl, android.support.v4.view.ViewCompat.ViewCompatImpl
        public void postOnAnimationDelayed(android.view.View view, java.lang.Runnable action, long delayMillis) {
            android.support.v4.view.ViewCompatJB.postOnAnimationDelayed(view, action, delayMillis);
        }

        @Override // android.support.v4.view.ViewCompat.BaseViewCompatImpl, android.support.v4.view.ViewCompat.ViewCompatImpl
        public int getImportantForAccessibility(android.view.View view) {
            return android.support.v4.view.ViewCompatJB.getImportantForAccessibility(view);
        }

        @Override // android.support.v4.view.ViewCompat.BaseViewCompatImpl, android.support.v4.view.ViewCompat.ViewCompatImpl
        public void setImportantForAccessibility(android.view.View view, int mode) {
            android.support.v4.view.ViewCompatJB.setImportantForAccessibility(view, mode);
        }

        @Override // android.support.v4.view.ViewCompat.BaseViewCompatImpl, android.support.v4.view.ViewCompat.ViewCompatImpl
        public boolean performAccessibilityAction(android.view.View view, int action, android.os.Bundle arguments) {
            return android.support.v4.view.ViewCompatJB.performAccessibilityAction(view, action, arguments);
        }

        @Override // android.support.v4.view.ViewCompat.BaseViewCompatImpl, android.support.v4.view.ViewCompat.ViewCompatImpl
        public android.support.v4.view.accessibility.AccessibilityNodeProviderCompat getAccessibilityNodeProvider(android.view.View view) {
            java.lang.Object compat = android.support.v4.view.ViewCompatJB.getAccessibilityNodeProvider(view);
            if (compat != null) {
                return new android.support.v4.view.accessibility.AccessibilityNodeProviderCompat(compat);
            }
            return null;
        }
    }

    static class JbMr1ViewCompatImpl extends android.support.v4.view.ViewCompat.JBViewCompatImpl {
        JbMr1ViewCompatImpl() {
        }

        @Override // android.support.v4.view.ViewCompat.BaseViewCompatImpl, android.support.v4.view.ViewCompat.ViewCompatImpl
        public int getLabelFor(android.view.View view) {
            return android.support.v4.view.ViewCompatJellybeanMr1.getLabelFor(view);
        }

        @Override // android.support.v4.view.ViewCompat.BaseViewCompatImpl, android.support.v4.view.ViewCompat.ViewCompatImpl
        public void setLabelFor(android.view.View view, int id) {
            android.support.v4.view.ViewCompatJellybeanMr1.setLabelFor(view, id);
        }
    }

    static {
        int version = android.os.Build.VERSION.SDK_INT;
        if (version >= 17) {
            IMPL = new android.support.v4.view.ViewCompat.JbMr1ViewCompatImpl();
            return;
        }
        if (version >= 16) {
            IMPL = new android.support.v4.view.ViewCompat.JBViewCompatImpl();
            return;
        }
        if (version >= 14) {
            IMPL = new android.support.v4.view.ViewCompat.ICSViewCompatImpl();
            return;
        }
        if (version >= 11) {
            IMPL = new android.support.v4.view.ViewCompat.HCViewCompatImpl();
        } else if (version >= 9) {
            IMPL = new android.support.v4.view.ViewCompat.GBViewCompatImpl();
        } else {
            IMPL = new android.support.v4.view.ViewCompat.BaseViewCompatImpl();
        }
    }

    public static boolean canScrollHorizontally(android.view.View v, int direction) {
        return IMPL.canScrollHorizontally(v, direction);
    }

    public static boolean canScrollVertically(android.view.View v, int direction) {
        return IMPL.canScrollVertically(v, direction);
    }

    public static int getOverScrollMode(android.view.View v) {
        return IMPL.getOverScrollMode(v);
    }

    public static void setOverScrollMode(android.view.View v, int overScrollMode) {
        IMPL.setOverScrollMode(v, overScrollMode);
    }

    public static void onPopulateAccessibilityEvent(android.view.View v, android.view.accessibility.AccessibilityEvent event) {
        IMPL.onPopulateAccessibilityEvent(v, event);
    }

    public static void onInitializeAccessibilityEvent(android.view.View v, android.view.accessibility.AccessibilityEvent event) {
        IMPL.onInitializeAccessibilityEvent(v, event);
    }

    public static void onInitializeAccessibilityNodeInfo(android.view.View v, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat info) {
        IMPL.onInitializeAccessibilityNodeInfo(v, info);
    }

    public static void setAccessibilityDelegate(android.view.View v, android.support.v4.view.AccessibilityDelegateCompat delegate) {
        IMPL.setAccessibilityDelegate(v, delegate);
    }

    public static boolean hasTransientState(android.view.View view) {
        return IMPL.hasTransientState(view);
    }

    public static void setHasTransientState(android.view.View view, boolean hasTransientState) {
        IMPL.setHasTransientState(view, hasTransientState);
    }

    public static void postInvalidateOnAnimation(android.view.View view) {
        IMPL.postInvalidateOnAnimation(view);
    }

    public static void postInvalidateOnAnimation(android.view.View view, int left, int top, int right, int bottom) {
        IMPL.postInvalidateOnAnimation(view, left, top, right, bottom);
    }

    public static void postOnAnimation(android.view.View view, java.lang.Runnable action) {
        IMPL.postOnAnimation(view, action);
    }

    public static void postOnAnimationDelayed(android.view.View view, java.lang.Runnable action, long delayMillis) {
        IMPL.postOnAnimationDelayed(view, action, delayMillis);
    }

    public static int getImportantForAccessibility(android.view.View view) {
        return IMPL.getImportantForAccessibility(view);
    }

    public static void setImportantForAccessibility(android.view.View view, int mode) {
        IMPL.setImportantForAccessibility(view, mode);
    }

    public static boolean performAccessibilityAction(android.view.View view, int action, android.os.Bundle arguments) {
        return IMPL.performAccessibilityAction(view, action, arguments);
    }

    public static android.support.v4.view.accessibility.AccessibilityNodeProviderCompat getAccessibilityNodeProvider(android.view.View view) {
        return IMPL.getAccessibilityNodeProvider(view);
    }

    public static void setLayerType(android.view.View view, int layerType, android.graphics.Paint paint) {
        IMPL.setLayerType(view, layerType, paint);
    }

    public static int getLayerType(android.view.View view) {
        return IMPL.getLayerType(view);
    }

    public static int getLabelFor(android.view.View view) {
        return IMPL.getLabelFor(view);
    }

    public static void setLabelFor(android.view.View view, int labeledId) {
        IMPL.setLabelFor(view, labeledId);
    }
}
