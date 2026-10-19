package android.support.v4.app;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class ActivityCompat extends android.support.v4.content.ContextCompat {
    public static boolean invalidateOptionsMenu(android.app.Activity activity) {
        if (android.os.Build.VERSION.SDK_INT < 11) {
            return false;
        }
        android.support.v4.app.ActivityCompatHoneycomb.invalidateOptionsMenu(activity);
        return true;
    }
}
