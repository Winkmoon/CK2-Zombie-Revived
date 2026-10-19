package android.support.v4.view;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
class VelocityTrackerCompatHoneycomb {
    VelocityTrackerCompatHoneycomb() {
    }

    public static float getXVelocity(android.view.VelocityTracker tracker, int pointerId) {
        return tracker.getXVelocity(pointerId);
    }

    public static float getYVelocity(android.view.VelocityTracker tracker, int pointerId) {
        return tracker.getYVelocity(pointerId);
    }
}
