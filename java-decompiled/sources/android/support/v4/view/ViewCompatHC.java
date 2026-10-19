package android.support.v4.view;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
class ViewCompatHC {
    ViewCompatHC() {
    }

    static long getFrameTime() {
        return android.animation.ValueAnimator.getFrameDelay();
    }

    public static void setLayerType(android.view.View view, int layerType, android.graphics.Paint paint) {
        view.setLayerType(layerType, paint);
    }

    public static int getLayerType(android.view.View view) {
        return view.getLayerType();
    }
}
