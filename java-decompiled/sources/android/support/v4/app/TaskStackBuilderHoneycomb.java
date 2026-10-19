package android.support.v4.app;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class TaskStackBuilderHoneycomb {
    public static android.app.PendingIntent getActivitiesPendingIntent(android.content.Context context, int requestCode, android.content.Intent[] intents, int flags) {
        return android.app.PendingIntent.getActivities(context, requestCode, intents, flags);
    }
}
