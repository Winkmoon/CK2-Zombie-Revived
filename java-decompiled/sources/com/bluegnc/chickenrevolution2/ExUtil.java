package com.bluegnc.chickenrevolution2;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class ExUtil {
    android.content.Context context;
    boolean isFin;

    public ExUtil(android.content.Context cont) {
        this.context = cont;
    }

    public void chkList() {
        this.isFin = isDebugMode();
        this.isFin = !isNetwork();
        if (this.isFin) {
            showMsgBox(this.context.getString(com.bluegnc.chickenrevolution2.R.string.err_netavail));
            return;
        }
        this.isFin = isCheatApp();
        if (this.isFin) {
            showMsgBox(this.context.getString(com.bluegnc.chickenrevolution2.R.string.err_cheatapp));
        }
    }

    public boolean isFinish() {
        return this.isFin;
    }

    public boolean isDebugMode() {
        return (this.context.getApplicationInfo().flags & 2) != 0;
    }

    public boolean isNetwork() {
        android.net.ConnectivityManager cm = (android.net.ConnectivityManager) this.context.getSystemService("connectivity");
        android.net.NetworkInfo wifi = cm.getNetworkInfo(1);
        android.net.NetworkInfo mobile = cm.getNetworkInfo(0);
        boolean isWifi = false;
        boolean isMobile = false;
        if (wifi != null) {
            isWifi = wifi.isAvailable();
        }
        if (mobile != null) {
            isMobile = mobile.isAvailable();
        }
        return isWifi || isMobile;
    }

    public boolean isCheatApp() {
        java.lang.String res = httpPost("http://bluegnc2.cafe24.com/an_common/gncGame.php", "type=0&game_id=hungryMole&phone_id=061deedcffc05bcea4b9ed2b6ecc386d00000000&info1=16&info2=5&info3=0&info4=0&info5=0&ver=v111&osver=6.0&diver=x86_64&pre_uid=no");
        java.lang.String[] token = res.split("\\^");
        for (int i = 0; i < token.length; i++) {
            java.lang.System.out.println("token[" + i + "]=" + token[i]);
        }
        return chkInstallApp(token);
    }

    public boolean chkInstallApp(java.lang.String[] list) {
        android.content.pm.PackageManager pm = this.context.getPackageManager();
        java.util.List<android.content.pm.ApplicationInfo> appList = pm.getInstalledApplications(0);
        boolean find = false;
        int size = appList.size();
        for (int i = 0; i < size && !find; i++) {
            java.lang.String app = appList.get(i).packageName;
            java.lang.System.out.println("ins_app[" + i + "]=" + app);
            int j = 0;
            while (true) {
                if (j < list.length - 1) {
                    if (app.indexOf(list[j]) == -1) {
                        j++;
                    } else {
                        find = true;
                        java.lang.System.out.println("find!");
                        break;
                    }
                }
            }
        }
        return find;
    }

    public boolean chkRunningApp(java.lang.String[] list) {
        android.app.ActivityManager am = (android.app.ActivityManager) this.context.getSystemService("activity");
        java.util.List<android.app.ActivityManager.RunningAppProcessInfo> appList = am.getRunningAppProcesses();
        boolean find = false;
        int size = appList.size();
        for (int i = 0; i < size && !find; i++) {
            java.lang.String app = appList.get(i).processName;
            java.lang.System.out.println("run_app[" + i + "]=" + app);
            int j = 0;
            while (true) {
                if (j < list.length - 1) {
                    if (app.indexOf(list[j]) == -1) {
                        j++;
                    } else {
                        find = true;
                        java.lang.System.out.println("find!");
                        break;
                    }
                }
            }
        }
        return find;
    }

    public java.lang.String httpPost(java.lang.String strUrl, java.lang.String strField) {
        java.lang.String res = "";
        long stime = java.lang.System.currentTimeMillis();
        java.lang.System.out.println("http=" + strUrl);
        try {
            java.net.URL url = new java.net.URL(strUrl);
            java.net.HttpURLConnection http = (java.net.HttpURLConnection) url.openConnection();
            http.setUseCaches(false);
            http.setDoInput(true);
            http.setDoOutput(true);
            http.setRequestMethod("POST");
            http.setRequestProperty("content-type", "application/x-www-form-urlencoded");
            http.setDefaultUseCaches(false);
            java.io.PrintWriter out = new java.io.PrintWriter(http.getOutputStream());
            out.write(strField);
            out.flush();
            out.close();
            java.io.BufferedReader in = new java.io.BufferedReader(new java.io.InputStreamReader(http.getInputStream(), "UTF-8"));
            while (true) {
                java.lang.String line = in.readLine();
                if (line == null) {
                    break;
                }
                res = java.lang.String.valueOf(res) + line;
            }
            int delay = (int) (java.lang.System.currentTimeMillis() - stime);
            java.lang.System.out.println("res=" + res + "(" + delay + ")");
            in.close();
        } catch (java.lang.Exception e) {
            java.lang.System.out.println("e=" + e);
        }
        return res;
    }

    public void showMsgBox(java.lang.String msg) {
        android.app.AlertDialog.Builder dlg = new android.app.AlertDialog.Builder(this.context);
        dlg.setMessage(msg).setCancelable(false).setPositiveButton(android.R.string.ok, new android.content.DialogInterface.OnClickListener() { // from class: com.bluegnc.chickenrevolution2.ExUtil.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(android.content.DialogInterface dialog, int which) {
                android.os.Process.killProcess(android.os.Process.myPid());
            }
        });
        android.app.AlertDialog alert = dlg.create();
        alert.show();
    }
}
