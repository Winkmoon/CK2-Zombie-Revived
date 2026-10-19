package android.support.v4.view;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
class MenuItemCompatHoneycomb {
    MenuItemCompatHoneycomb() {
    }

    public static void setShowAsAction(android.view.MenuItem item, int actionEnum) {
        item.setShowAsAction(actionEnum);
    }

    public static android.view.MenuItem setActionView(android.view.MenuItem item, android.view.View view) {
        return item.setActionView(view);
    }
}
