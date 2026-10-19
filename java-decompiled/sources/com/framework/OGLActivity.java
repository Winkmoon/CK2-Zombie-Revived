package com.framework;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class OGLActivity extends com.bluegnc.ggapi.INAPP implements com.framework.JConst {
    private static com.framework.Cocos2dxAccelerometer accel;
    public static boolean bEnableAccel = false;
    private static android.content.Context context;
    private static android.os.Handler handler;
    private static int noti_state_;
    private static com.framework.Sound sound;
    private com.framework.OGLActivity.UnlockReceiver unlockReceiver;
    android.content.DialogInterface.OnClickListener btnOk = new android.content.DialogInterface.OnClickListener() { // from class: com.framework.OGLActivity.1
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(android.content.DialogInterface dialog, int which) {
            com.framework.OGLActivity.this.resMsg(1);
            dialog.cancel();
        }
    };
    android.content.DialogInterface.OnClickListener btnClr = new android.content.DialogInterface.OnClickListener() { // from class: com.framework.OGLActivity.2
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(android.content.DialogInterface dialog, int which) {
            com.framework.OGLActivity.this.resMsg(2);
            dialog.cancel();
        }
    };

    public static void flurryEvt(java.lang.String evt, java.lang.String pname, java.lang.String pval) {
    }

    public static void flurryEvt(java.lang.String evt, java.lang.String[] info, int length) {
    }

    public native void nativeMsg(int i);

    public native java.lang.String nativeStr(int i);

    @Override // com.bluegnc.ggapi.INAPP, android.app.Activity
    protected void onCreate(android.os.Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        context = this;
        com.framework.Cocos2dxBitmap.setContext(this);
        sound = new com.framework.Sound(this);
        accel = new com.framework.Cocos2dxAccelerometer(this);
        handler = new android.os.Handler() { // from class: com.framework.OGLActivity.3
            @Override // android.os.Handler
            public void handleMessage(android.os.Message msg) {
                switch (msg.what) {
                    case 1:
                        com.framework.OGLActivity.this.showMsgBox(((com.framework.MsgBox) msg.obj).title, ((com.framework.MsgBox) msg.obj).cont, ((com.framework.MsgBox) msg.obj).type);
                        break;
                    case 2:
                        com.framework.OGLActivity.this.openUrl(((com.framework.MsgBox) msg.obj).cont);
                        break;
                    case 3:
                        com.framework.OGLActivity.this.chkItem(((com.framework.MsgBox) msg.obj).cont);
                        break;
                    case 4:
                        android.os.Process.killProcess(android.os.Process.myPid());
                        break;
                }
            }
        };
    }

    public static void handleMsg(java.lang.String title, java.lang.String cont, int type) {
        android.os.Message msg = new android.os.Message();
        switch (type) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                msg.what = 1;
                break;
            case 6:
                msg.what = 2;
                break;
            case 7:
                msg.what = 3;
                break;
            case 8:
                msg.what = 4;
                break;
        }
        msg.obj = new com.framework.MsgBox(title, cont, type);
        handler.sendMessage(msg);
    }

    public void showMsgBox(java.lang.String title, java.lang.String msg, int type) {
        android.app.AlertDialog.Builder dlg = new android.app.AlertDialog.Builder(this);
        switch (type) {
            case 0:
                dlg.setMessage(msg).setCancelable(false).setPositiveButton(android.R.string.ok, this.btnOk);
                break;
            case 1:
                dlg.setMessage(msg).setCancelable(false).setPositiveButton(android.R.string.yes, this.btnOk).setNegativeButton(android.R.string.no, this.btnClr);
                break;
            case 2:
                dlg.setMessage(msg).setPositiveButton(android.R.string.yes, this.btnOk).setNegativeButton(android.R.string.no, this.btnClr);
                break;
            case 3:
                dlg.setMessage(msg).setCancelable(false).setPositiveButton(android.R.string.yes, new android.content.DialogInterface.OnClickListener() { // from class: com.framework.OGLActivity.4
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(android.content.DialogInterface dialog, int which) {
                        com.framework.OGLActivity.SetNotification("", 0, 3000);
                        android.os.Process.killProcess(android.os.Process.myPid());
                    }
                }).setNegativeButton(android.R.string.no, this.btnClr);
                break;
            case 4:
                dlg.setMessage(msg).setCancelable(false).setPositiveButton(android.R.string.ok, new android.content.DialogInterface.OnClickListener() { // from class: com.framework.OGLActivity.5
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(android.content.DialogInterface dialog, int which) {
                        android.os.Process.killProcess(android.os.Process.myPid());
                    }
                });
                break;
            case 5:
                dlg.setMessage(msg).setCancelable(false).setPositiveButton(android.R.string.yes, new android.content.DialogInterface.OnClickListener() { // from class: com.framework.OGLActivity.6
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(android.content.DialogInterface dialog, int which) {
                        com.framework.OGLActivity.this.resMsg(100);
                        dialog.cancel();
                    }
                }).setNegativeButton(android.R.string.no, new android.content.DialogInterface.OnClickListener() { // from class: com.framework.OGLActivity.7
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(android.content.DialogInterface dialog, int which) {
                        com.framework.OGLActivity.this.resMsg(com.bluegnc.ggapi.GConst.DIALOGSEL_BUYNO);
                        dialog.cancel();
                    }
                });
                break;
        }
        android.app.AlertDialog alert = dlg.create();
        alert.setTitle(title);
        alert.show();
    }

    public void openUrl(java.lang.String url) {
        android.content.Intent intent = new android.content.Intent("android.intent.action.VIEW", android.net.Uri.parse(url));
        startActivity(intent);
    }

    public static java.lang.String getDvInfo(int type) {
        switch (type) {
            case 0:
                java.lang.String str = context.getResources().getConfiguration().locale.getLanguage();
                return str;
            case 1:
                java.lang.String str2 = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
                return str2;
            case 2:
            default:
                return "";
            case 3:
                java.lang.String str3 = android.os.Build.MODEL;
                return str3;
            case 4:
                java.lang.String str4 = android.os.Build.VERSION.RELEASE;
                return str4;
            case 5:
                java.lang.String str5 = context.getResources().getConfiguration().locale.getCountry();
                return str5;
        }
    }

    public static long getDateInfo(int type) {
        switch (type) {
            case 0:
                java.util.Date cur = new java.util.Date();
                long result = cur.getTime() / 1000;
                return result;
            default:
                return 0L;
        }
    }

    public static void SetNotification(java.lang.String msg, int type, int interval) {
        android.content.Intent temp_alarm = new android.content.Intent(context, (java.lang.Class<?>) com.framework.Notice1.class);
        if (type == 2) {
            temp_alarm = new android.content.Intent(context, (java.lang.Class<?>) com.framework.Notice2.class);
            com.framework.Notice2.ChangeMsg(msg);
        } else {
            com.framework.Notice1.ChangeMsg(msg);
        }
        android.app.PendingIntent pendingIntent = android.app.PendingIntent.getService(context, interval, temp_alarm, 1073741824);
        android.app.AlarmManager alarm = (android.app.AlarmManager) context.getSystemService("alarm");
        alarm.set(0, java.lang.System.currentTimeMillis() + (interval * 1000), pendingIntent);
    }

    public static void NotificationSetting(int state) {
        noti_state_ = state;
        java.lang.System.out.println("save noti state" + state);
    }

    public static void ClearNotification(int type, int interval) {
        android.content.Intent temp_alarm = new android.content.Intent(context, (java.lang.Class<?>) com.framework.Notice1.class);
        if (type == 2) {
            temp_alarm = new android.content.Intent(context, (java.lang.Class<?>) com.framework.Notice2.class);
        }
        android.app.PendingIntent pendingIntent = android.app.PendingIntent.getService(context, interval, temp_alarm, 1073741824);
        android.app.AlarmManager alarm = (android.app.AlarmManager) context.getSystemService("alarm");
        alarm.cancel(pendingIntent);
    }

    public static int getNetworkStatus() {
        android.net.ConnectivityManager netMgr = (android.net.ConnectivityManager) context.getSystemService("connectivity");
        android.net.NetworkInfo netMobile = netMgr.getNetworkInfo(0);
        android.net.NetworkInfo netWifi = netMgr.getNetworkInfo(1);
        if (netMobile != null && netMobile.isConnectedOrConnecting()) {
            java.lang.System.out.println("NET => MOBILE");
            return 1;
        }
        if (netWifi != null && netWifi.isConnectedOrConnecting()) {
            java.lang.System.out.println("NET => WIFI");
            return 2;
        }
        android.net.NetworkInfo netInfo = netMgr.getActiveNetworkInfo();
        if (netInfo != null && netInfo.isConnectedOrConnecting()) {
            java.lang.System.out.println("NET => CONNECT");
            return 3;
        }
        java.lang.System.out.println("NET => NONE");
        return 0;
    }

    public static byte[] getResFile(java.lang.String path) {
        byte[] dat = null;
        int size = 0;
        try {
            java.io.InputStream is = context.getAssets().open(path);
            size = is.available();
            dat = new byte[size];
            is.read(dat, 0, dat.length);
            is.close();
            return dat;
        } catch (java.lang.Exception e) {
            java.lang.System.out.println("e getRes(" + path + ")" + size);
            return dat;
        }
    }

    public static void startVib(int val) {
        sound.startVib(val);
    }

    public static void loadSnd(java.lang.String file) {
        sound.loadSnd(file, true);
    }

    public static void playSnd(java.lang.String file, int cnt) {
        sound.playSnd(file, cnt);
    }

    public static void stopSnd(java.lang.String file) {
        sound.stopSnd(file);
    }

    public static void stopSndAll() {
        sound.stopSndAll();
    }

    public static void clearSnd(java.lang.String file) {
        sound.clearSnd(file);
    }

    public static void clearSndAll() {
        sound.clearSndAll();
    }

    public static void loadBgm(java.lang.String file) {
        sound.loadBgm(file, true, false);
    }

    public static void playBgm(java.lang.String file, boolean loop, boolean resume) {
        sound.playBgm(file, loop, resume);
    }

    public static void stopBgm(java.lang.String file) {
        sound.stopBgm(file);
    }

    public static void stopAll() {
        sound.stopBgmAll();
    }

    public static void clearBgm(java.lang.String file) {
        sound.clearBgm(file);
    }

    public static void clearBgmAll() {
        sound.clearBgmAll();
    }

    public static void setAccel(boolean flag) {
        if (flag) {
            bEnableAccel = true;
            accel.enable();
        } else {
            bEnableAccel = false;
            accel.disable();
        }
    }

    public static void setAccelInterval(double inter) {
        accel.interval(inter);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        if (bEnableAccel) {
            accel.disable();
        }
    }

    protected void onOGLResume() {
        if (bEnableAccel) {
            accel.enable();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        android.app.KeyguardManager kgm = (android.app.KeyguardManager) getSystemService("keyguard");
        if (kgm.inKeyguardRestrictedInputMode()) {
            android.content.IntentFilter filter = new android.content.IntentFilter("android.intent.action.USER_PRESENT");
            this.unlockReceiver = new com.framework.OGLActivity.UnlockReceiver(this, null);
            registerReceiver(this.unlockReceiver, filter);
            return;
        }
        onOGLResume();
    }

    private class UnlockReceiver extends android.content.BroadcastReceiver {
        private UnlockReceiver() {
        }

        /* synthetic */ UnlockReceiver(com.framework.OGLActivity oGLActivity, com.framework.OGLActivity.UnlockReceiver unlockReceiver) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            java.lang.String action = intent.getAction();
            if (action.equals("android.intent.action.USER_PRESENT")) {
                com.framework.OGLActivity.this.onOGLResume();
                if (com.framework.OGLActivity.this.unlockReceiver != null) {
                    com.framework.OGLActivity.this.unregisterReceiver(com.framework.OGLActivity.this.unlockReceiver);
                    com.framework.OGLActivity.this.unlockReceiver = null;
                }
            }
        }
    }

    @Override // com.bluegnc.ggapi.INAPP, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    public static int getInstalledApp(java.lang.String packagename) {
        android.content.pm.PackageManager pm = context.getPackageManager();
        java.util.List<android.content.pm.ApplicationInfo> packages = pm.getInstalledApplications(128);
        for (android.content.pm.ApplicationInfo packageInfo : packages) {
            if (packageInfo.packageName.equals(packagename)) {
                return 1;
            }
        }
        return 0;
    }

    public static void startselectApp(java.lang.String packagename) {
        android.content.pm.PackageManager pm = context.getPackageManager();
        android.content.Intent launchIntent = pm.getLaunchIntentForPackage(packagename);
        context.startActivity(launchIntent);
    }

    @Override // com.bluegnc.ggapi.INAPP
    public void resMsg(int res) {
        nativeMsg(res);
    }

    @Override // com.bluegnc.ggapi.INAPP
    public java.lang.String getStr(int type) {
        return nativeStr(type);
    }
}
