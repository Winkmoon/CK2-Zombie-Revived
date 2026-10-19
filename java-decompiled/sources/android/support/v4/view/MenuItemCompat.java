package android.support.v4.view;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class MenuItemCompat {
    static final android.support.v4.view.MenuItemCompat.MenuVersionImpl IMPL;
    public static final int SHOW_AS_ACTION_ALWAYS = 2;
    public static final int SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW = 8;
    public static final int SHOW_AS_ACTION_IF_ROOM = 1;
    public static final int SHOW_AS_ACTION_NEVER = 0;
    public static final int SHOW_AS_ACTION_WITH_TEXT = 4;

    interface MenuVersionImpl {
        android.view.MenuItem setActionView(android.view.MenuItem menuItem, android.view.View view);

        boolean setShowAsAction(android.view.MenuItem menuItem, int i);
    }

    static class BaseMenuVersionImpl implements android.support.v4.view.MenuItemCompat.MenuVersionImpl {
        BaseMenuVersionImpl() {
        }

        @Override // android.support.v4.view.MenuItemCompat.MenuVersionImpl
        public boolean setShowAsAction(android.view.MenuItem item, int actionEnum) {
            return false;
        }

        @Override // android.support.v4.view.MenuItemCompat.MenuVersionImpl
        public android.view.MenuItem setActionView(android.view.MenuItem item, android.view.View view) {
            return item;
        }
    }

    static class HoneycombMenuVersionImpl implements android.support.v4.view.MenuItemCompat.MenuVersionImpl {
        HoneycombMenuVersionImpl() {
        }

        @Override // android.support.v4.view.MenuItemCompat.MenuVersionImpl
        public boolean setShowAsAction(android.view.MenuItem item, int actionEnum) {
            android.support.v4.view.MenuItemCompatHoneycomb.setShowAsAction(item, actionEnum);
            return true;
        }

        @Override // android.support.v4.view.MenuItemCompat.MenuVersionImpl
        public android.view.MenuItem setActionView(android.view.MenuItem item, android.view.View view) {
            return android.support.v4.view.MenuItemCompatHoneycomb.setActionView(item, view);
        }
    }

    static {
        if (android.os.Build.VERSION.SDK_INT >= 11) {
            IMPL = new android.support.v4.view.MenuItemCompat.HoneycombMenuVersionImpl();
        } else {
            IMPL = new android.support.v4.view.MenuItemCompat.BaseMenuVersionImpl();
        }
    }

    public static boolean setShowAsAction(android.view.MenuItem item, int actionEnum) {
        return IMPL.setShowAsAction(item, actionEnum);
    }

    public static android.view.MenuItem setActionView(android.view.MenuItem item, android.view.View view) {
        return IMPL.setActionView(item, view);
    }
}
