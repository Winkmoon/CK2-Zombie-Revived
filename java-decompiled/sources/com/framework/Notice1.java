package com.framework;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class Notice1 extends android.app.Service {
    public static java.lang.String m_msg;

    @Override // android.app.Service
    public int onStartCommand(android.content.Intent intent, int flags, int startId) {
        makeNotice();
        return 2;
    }

    public static void ChangeMsg(java.lang.String msg) {
        m_msg = msg;
    }

    public void makeNotice() {
        java.lang.String msg;
        java.lang.String str = getResources().getConfiguration().locale.getLanguage();
        java.lang.String str2 = m_msg;
        if (str.equals("ko")) {
            msg = "무기가 충전되었습니다! 좀비 놈들을 박살내러 와주세요! 빨리요!";
        } else {
            msg = "Weapons were charged! Come here to destroy zombies, please! Hurry up!";
        }
        android.app.NotificationManager nMgr = (android.app.NotificationManager) getSystemService("notification");
        android.content.Intent main = new android.content.Intent(getApplicationContext(), (java.lang.Class<?>) com.bluegnc.chickenrevolution2.MainActivity.class);
        android.app.PendingIntent mPendingIntent = android.app.PendingIntent.getActivity(getApplicationContext(), 0, main, 1073741824);
        android.app.Notification noti = new android.support.v4.app.NotificationCompat.Builder(getApplicationContext()).setContentTitle("ChickenZombie2").setContentText(msg).setSmallIcon(com.bluegnc.chickenrevolution2.R.drawable.ic_launcher).setTicker(msg).setAutoCancel(true).setContentIntent(mPendingIntent).setOnlyAlertOnce(true).build();
        noti.defaults |= 1;
        noti.defaults |= 2;
        int _id = (int) java.lang.System.currentTimeMillis();
        nMgr.notify(_id, noti);
    }

    @Override // android.app.Service
    public android.os.IBinder onBind(android.content.Intent intent) {
        return null;
    }
}
