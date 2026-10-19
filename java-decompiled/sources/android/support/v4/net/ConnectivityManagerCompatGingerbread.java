package android.support.v4.net;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
class ConnectivityManagerCompatGingerbread {
    ConnectivityManagerCompatGingerbread() {
    }

    public static boolean isActiveNetworkMetered(android.net.ConnectivityManager cm) {
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
