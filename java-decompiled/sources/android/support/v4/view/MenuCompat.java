package android.support.v4.view;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class MenuCompat {
    static final android.support.v4.view.MenuCompat.MenuVersionImpl IMPL;

    interface MenuVersionImpl {
        boolean setShowAsAction(android.view.MenuItem menuItem, int i);
    }

    static class BaseMenuVersionImpl implements android.support.v4.view.MenuCompat.MenuVersionImpl {
        BaseMenuVersionImpl() {
        }

        @Override // android.support.v4.view.MenuCompat.MenuVersionImpl
        public boolean setShowAsAction(android.view.MenuItem item, int actionEnum) {
            return false;
        }
    }

    static class HoneycombMenuVersionImpl implements android.support.v4.view.MenuCompat.MenuVersionImpl {
        HoneycombMenuVersionImpl() {
        }

        @Override // android.support.v4.view.MenuCompat.MenuVersionImpl
        public boolean setShowAsAction(android.view.MenuItem item, int actionEnum) {
            android.support.v4.view.MenuItemCompatHoneycomb.setShowAsAction(item, actionEnum);
            return true;
        }
    }

    static {
        if (android.os.Build.VERSION.SDK_INT >= 11) {
            IMPL = new android.support.v4.view.MenuCompat.HoneycombMenuVersionImpl();
        } else {
            IMPL = new android.support.v4.view.MenuCompat.BaseMenuVersionImpl();
        }
    }

    public static boolean setShowAsAction(android.view.MenuItem item, int actionEnum) {
        return IMPL.setShowAsAction(item, actionEnum);
    }
}
