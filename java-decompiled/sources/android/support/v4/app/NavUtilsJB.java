package android.support.v4.app;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
class NavUtilsJB {
    NavUtilsJB() {
    }

    public static android.content.Intent getParentActivityIntent(android.app.Activity activity) {
        return activity.getParentActivityIntent();
    }

    public static boolean shouldUpRecreateTask(android.app.Activity activity, android.content.Intent targetIntent) {
        return activity.shouldUpRecreateTask(targetIntent);
    }

    public static void navigateUpTo(android.app.Activity activity, android.content.Intent upIntent) {
        activity.navigateUpTo(upIntent);
    }

    public static java.lang.String getParentActivityName(android.content.pm.ActivityInfo info) {
        return info.parentActivityName;
    }
}
