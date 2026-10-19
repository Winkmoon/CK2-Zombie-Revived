package android.support.v4.app;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
class ActivityCompatHoneycomb {
    ActivityCompatHoneycomb() {
    }

    static void invalidateOptionsMenu(android.app.Activity activity) {
        activity.invalidateOptionsMenu();
    }

    static void dump(android.app.Activity activity, java.lang.String prefix, java.io.FileDescriptor fd, java.io.PrintWriter writer, java.lang.String[] args) {
        activity.dump(prefix, fd, writer, args);
    }
}
