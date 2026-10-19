package com.bluegnc.chickenrevolution2;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class SettingsHelper {
    private static final java.lang.String KEY_LETTERBOX = "letterbox";
    private static final java.lang.String PREF = "ck2_settings";

    private SettingsHelper() {
    }

    public static boolean isLetterbox(android.content.Context context) {
        return context.getSharedPreferences(PREF, 0).getBoolean(KEY_LETTERBOX, false);
    }

    public static void setLetterbox(android.content.Context context, boolean z) {
        context.getSharedPreferences(PREF, 0).edit().putBoolean(KEY_LETTERBOX, z).commit();
    }

    public static void applyFullscreen(android.app.Activity activity) {
        android.view.Window window = activity.getWindow();
        window.addFlags(128);
        window.setFlags(1024, 1024);
        if (android.os.Build.VERSION.SDK_INT >= 28) {
            android.view.WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            window.setAttributes(attributes);
        }
        android.view.View decorView = window.getDecorView();
        if (android.os.Build.VERSION.SDK_INT >= 30) {
            window.setDecorFitsSystemWindows(false);
            android.view.WindowInsetsController windowInsetsController = decorView.getWindowInsetsController();
            if (windowInsetsController != null) {
                windowInsetsController.hide(android.view.WindowInsets.Type.systemBars());
                windowInsetsController.setSystemBarsBehavior(2);
                return;
            }
            return;
        }
        decorView.setSystemUiVisibility(5894);
    }

    public static void applyLetterbox(android.app.Activity activity, android.view.View view, boolean z) {
        android.widget.FrameLayout.LayoutParams layoutParams;
        if (z) {
            int[] fitSize = fitSize(activity);
            layoutParams = new android.widget.FrameLayout.LayoutParams(fitSize[0], fitSize[1]);
            layoutParams.gravity = 17;
        } else {
            layoutParams = new android.widget.FrameLayout.LayoutParams(-1, -1);
        }
        view.setLayoutParams(layoutParams);
    }

    private static int[] fitSize(android.app.Activity activity) {
        android.view.WindowManager windowManager = activity.getWindowManager();
        android.util.DisplayMetrics displayMetrics = new android.util.DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        int i3 = i * 2;
        int i4 = i2 * 3;
        if (i3 > i4) {
            return new int[]{i4 / 2, i2};
        }
        return new int[]{i, i3 / 3};
    }

    public static void addSettingsButton(final android.app.Activity activity) {
        android.view.View findViewById = activity.findViewById(android.R.id.content);
        if (!(findViewById instanceof android.widget.FrameLayout)) {
            return;
        }
        android.widget.FrameLayout frameLayout = (android.widget.FrameLayout) findViewById;
        android.widget.TextView textView = new android.widget.TextView(activity);
        textView.setText("设置");
        textView.setTextColor(-855638017);
        textView.setTextSize(12.0f);
        textView.setGravity(17);
        int dp = dp(activity, 7);
        int dp2 = dp(activity, 3);
        textView.setPadding(dp, dp2, dp, dp2);
        textView.setBackgroundColor(855638016);
        textView.setAlpha(0.35f);
        if (android.os.Build.VERSION.SDK_INT >= 11) {
            textView.setTranslationY(-dp(activity, 22));
        }
        android.widget.FrameLayout.LayoutParams layoutParams = new android.widget.FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 19;
        layoutParams.leftMargin = dp(activity, 2);
        frameLayout.addView(textView, layoutParams);
        textView.setOnClickListener(new android.view.View.OnClickListener() { // from class: com.bluegnc.chickenrevolution2.SettingsHelper.1
            @Override // android.view.View.OnClickListener
            public void onClick(android.view.View view) {
                com.bluegnc.chickenrevolution2.SettingsHelper.showSettingsDialog(activity);
            }
        });
    }

    private static int dp(android.app.Activity activity, int i) {
        return (int) ((i * activity.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static void showSettingsDialog(final android.app.Activity activity) {
        final android.widget.CheckBox checkBox = new android.widget.CheckBox(activity);
        checkBox.setText("保持原比例（两侧黑边）");
        checkBox.setTextColor(-16777216);
        checkBox.setChecked(isLetterbox(activity));
        android.widget.TextView textView = new android.widget.TextView(activity);
        textView.setText("关闭时为全屏拉伸（默认）");
        textView.setTextColor(-12303292);
        textView.setTextSize(12.0f);
        textView.setPadding(dp(activity, 28), 0, 0, 0);
        android.widget.LinearLayout linearLayout = new android.widget.LinearLayout(activity);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(-1);
        int dp = dp(activity, 16);
        linearLayout.setPadding(dp, dp, dp, dp);
        linearLayout.addView(checkBox);
        linearLayout.addView(textView);
        new android.app.AlertDialog.Builder(activity).setTitle("显示设置").setView(linearLayout).setPositiveButton("确定", new android.content.DialogInterface.OnClickListener() { // from class: com.bluegnc.chickenrevolution2.SettingsHelper.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(android.content.DialogInterface dialogInterface, int i) {
                com.bluegnc.chickenrevolution2.SettingsHelper.setLetterbox(activity, checkBox.isChecked());
                int i2 = android.os.Build.VERSION.SDK_INT;
                android.app.Activity activity2 = activity;
                if (i2 >= 11) {
                    activity2.recreate();
                } else {
                    activity2.finish();
                    activity.startActivity(activity.getIntent());
                }
            }
        }).setNegativeButton("取消", new android.content.DialogInterface.OnClickListener() { // from class: com.bluegnc.chickenrevolution2.SettingsHelper.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(android.content.DialogInterface dialogInterface, int i) {
                com.bluegnc.chickenrevolution2.SettingsHelper.applyFullscreen(activity);
            }
        }).create().show();
    }
}
