package android.support.v4.content;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class ContextCompat {
    public static boolean startActivities(android.content.Context context, android.content.Intent[] intents) {
        return startActivities(context, intents, null);
    }

    public static boolean startActivities(android.content.Context context, android.content.Intent[] intents, android.os.Bundle options) {
        int version = android.os.Build.VERSION.SDK_INT;
        if (version >= 16) {
            android.support.v4.content.ContextCompatJellybean.startActivities(context, intents, options);
            return true;
        }
        if (version >= 11) {
            android.support.v4.content.ContextCompatHoneycomb.startActivities(context, intents);
            return true;
        }
        return false;
    }
}
