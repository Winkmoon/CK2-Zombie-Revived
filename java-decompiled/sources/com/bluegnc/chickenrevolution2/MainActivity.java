package com.bluegnc.chickenrevolution2;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class MainActivity extends com.framework.OGLActivity {
    public static final java.lang.String flurryKey = "SSRSHQG9Z2PNPB6VYKYH";
    com.bluegnc.chickenrevolution2.ExUtil ex;
    private com.framework.OGLView mView;

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        com.bluegnc.chickenrevolution2.SettingsHelper.applyFullscreen(this);
    }

    @Override // com.framework.OGLActivity, com.bluegnc.ggapi.INAPP, android.app.Activity
    protected void onCreate(android.os.Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        com.framework.OGLView.letterbox = com.bluegnc.chickenrevolution2.SettingsHelper.isLetterbox(this);
        com.bluegnc.chickenrevolution2.SettingsHelper.applyFullscreen(this);
        setContentView(com.bluegnc.chickenrevolution2.R.layout.activity_main);
        com.bluegnc.chickenrevolution2.SettingsHelper.applyFullscreen(this);
        this.mView = (com.framework.OGLView) findViewById(com.bluegnc.chickenrevolution2.R.id.main_view);
        com.bluegnc.chickenrevolution2.SettingsHelper.applyLetterbox(this, this.mView, com.framework.OGLView.letterbox);
        com.bluegnc.chickenrevolution2.SettingsHelper.addSettingsButton(this);
        this.mView.setPath(java.lang.String.valueOf(getDir("", 0).getParent()) + java.io.File.separator);
    }

    @Override // com.framework.OGLActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mView.onPause();
    }

    @Override // com.framework.OGLActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        com.bluegnc.chickenrevolution2.SettingsHelper.applyFullscreen(this);
        this.mView.onResume();
    }

    @Override // com.framework.OGLActivity
    protected void onOGLResume() {
        super.onOGLResume();
        this.mView.onOGLResume();
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    @Override // com.framework.OGLActivity, com.bluegnc.ggapi.INAPP, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    static {
        java.lang.System.loadLibrary("testgl-jni");
    }
}
