package android.support.v4.net;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class ConnectivityManagerCompat {
    private static final android.support.v4.net.ConnectivityManagerCompat.ConnectivityManagerCompatImpl IMPL;

    interface ConnectivityManagerCompatImpl {
        boolean isActiveNetworkMetered(android.net.ConnectivityManager connectivityManager);
    }

    static class BaseConnectivityManagerCompatImpl implements android.support.v4.net.ConnectivityManagerCompat.ConnectivityManagerCompatImpl {
        BaseConnectivityManagerCompatImpl() {
        }

        @Override // android.support.v4.net.ConnectivityManagerCompat.ConnectivityManagerCompatImpl
        public boolean isActiveNetworkMetered(android.net.ConnectivityManager cm) {
            android.net.NetworkInfo info = cm.getActiveNetworkInfo();
            if (info == null) {
                return true;
            }
            int type = info.getType();
            switch (type) {
            }
            return true;
        }
    }

    static class GingerbreadConnectivityManagerCompatImpl implements android.support.v4.net.ConnectivityManagerCompat.ConnectivityManagerCompatImpl {
        GingerbreadConnectivityManagerCompatImpl() {
        }

        @Override // android.support.v4.net.ConnectivityManagerCompat.ConnectivityManagerCompatImpl
        public boolean isActiveNetworkMetered(android.net.ConnectivityManager cm) {
            return android.support.v4.net.ConnectivityManagerCompatGingerbread.isActiveNetworkMetered(cm);
        }
    }

    static class HoneycombMR2ConnectivityManagerCompatImpl implements android.support.v4.net.ConnectivityManagerCompat.ConnectivityManagerCompatImpl {
        HoneycombMR2ConnectivityManagerCompatImpl() {
        }

        @Override // android.support.v4.net.ConnectivityManagerCompat.ConnectivityManagerCompatImpl
        public boolean isActiveNetworkMetered(android.net.ConnectivityManager cm) {
            return android.support.v4.net.ConnectivityManagerCompatHoneycombMR2.isActiveNetworkMetered(cm);
        }
    }

    static class JellyBeanConnectivityManagerCompatImpl implements android.support.v4.net.ConnectivityManagerCompat.ConnectivityManagerCompatImpl {
        JellyBeanConnectivityManagerCompatImpl() {
        }

        @Override // android.support.v4.net.ConnectivityManagerCompat.ConnectivityManagerCompatImpl
        public boolean isActiveNetworkMetered(android.net.ConnectivityManager cm) {
            return android.support.v4.net.ConnectivityManagerCompatJellyBean.isActiveNetworkMetered(cm);
        }
    }

    static {
        if (android.os.Build.VERSION.SDK_INT >= 16) {
            IMPL = new android.support.v4.net.ConnectivityManagerCompat.JellyBeanConnectivityManagerCompatImpl();
            return;
        }
        if (android.os.Build.VERSION.SDK_INT >= 13) {
            IMPL = new android.support.v4.net.ConnectivityManagerCompat.HoneycombMR2ConnectivityManagerCompatImpl();
        } else if (android.os.Build.VERSION.SDK_INT >= 8) {
            IMPL = new android.support.v4.net.ConnectivityManagerCompat.GingerbreadConnectivityManagerCompatImpl();
        } else {
            IMPL = new android.support.v4.net.ConnectivityManagerCompat.BaseConnectivityManagerCompatImpl();
        }
    }

    public static boolean isActiveNetworkMetered(android.net.ConnectivityManager cm) {
        return IMPL.isActiveNetworkMetered(cm);
    }

    public static android.net.NetworkInfo getNetworkInfoFromBroadcast(android.net.ConnectivityManager cm, android.content.Intent intent) {
        android.net.NetworkInfo info = (android.net.NetworkInfo) intent.getParcelableExtra("networkInfo");
        return cm.getNetworkInfo(info.getType());
    }
}
