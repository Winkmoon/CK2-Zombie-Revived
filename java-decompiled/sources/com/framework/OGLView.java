package com.framework;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class OGLView extends android.opengl.GLSurfaceView {
    public static boolean letterbox;
    private static com.framework.OGLView mainView = null;
    int height;
    private com.framework.OGLRenderer renderer;
    int width;

    private native void nativeSetPath(java.lang.String str);

    public OGLView(android.content.Context context) {
        super(context);
        initView();
    }

    public OGLView(android.content.Context context, android.util.AttributeSet att) {
        super(context, att);
        initView();
    }

    protected void initView() {
        android.util.DisplayMetrics dm = new android.util.DisplayMetrics();
        android.view.WindowManager wm = (android.view.WindowManager) getContext().getSystemService("window");
        wm.getDefaultDisplay().getMetrics(dm);
        this.width = dm.widthPixels;
        this.height = dm.heightPixels;
        this.renderer = new com.framework.OGLRenderer();
        setRenderer(this.renderer);
        requestFocus();
        setFocusableInTouchMode(true);
        mainView = this;
    }

    @Override // android.view.View
    public boolean onTouchEvent(android.view.MotionEvent event) {
        final int pcnt = event.getPointerCount();
        final int[] ids = new int[pcnt];
        final float[] xs = new float[pcnt];
        final float[] ys = new float[pcnt];
        for (int i = 0; i < pcnt; i++) {
            ids[i] = event.getPointerId(i);
            xs[i] = event.getX(i);
            ys[i] = event.getY(i);
        }
        switch (event.getAction() & android.support.v4.view.MotionEventCompat.ACTION_MASK) {
            case 0:
                final int dn = event.getPointerId(0);
                final float xd = xs[0];
                final float yd = ys[0];
                queueEvent(new java.lang.Runnable() { // from class: com.framework.OGLView.2
                    @Override // java.lang.Runnable
                    public void run() {
                        com.framework.OGLView.this.renderer.handleActionDown(dn, xd, yd, pcnt);
                    }
                });
                break;
            case 1:
                final int up = event.getPointerId(0);
                final float xu = xs[0];
                final float yu = ys[0];
                queueEvent(new java.lang.Runnable() { // from class: com.framework.OGLView.4
                    @Override // java.lang.Runnable
                    public void run() {
                        com.framework.OGLView.this.renderer.handleActionUp(up, xu, yu, pcnt);
                    }
                });
                break;
            case 2:
                queueEvent(new java.lang.Runnable() { // from class: com.framework.OGLView.5
                    @Override // java.lang.Runnable
                    public void run() {
                        com.framework.OGLView.this.renderer.handleActionMove(ids, xs, ys, pcnt);
                    }
                });
                break;
            case 3:
                queueEvent(new java.lang.Runnable() { // from class: com.framework.OGLView.6
                    @Override // java.lang.Runnable
                    public void run() {
                        com.framework.OGLView.this.renderer.handleActionCancel(ids, xs, ys, pcnt);
                    }
                });
                break;
            case 5:
                int pdn_idx = event.getAction() >> 8;
                final int pdn = event.getPointerId(pdn_idx);
                final float xdn = event.getX(pdn_idx);
                final float ydn = event.getY(pdn_idx);
                queueEvent(new java.lang.Runnable() { // from class: com.framework.OGLView.1
                    @Override // java.lang.Runnable
                    public void run() {
                        com.framework.OGLView.this.renderer.handleActionDown(pdn, xdn, ydn, pcnt);
                    }
                });
                break;
            case 6:
                int pup_idx = event.getAction() >> 8;
                final int pup = event.getPointerId(pup_idx);
                final float xup = event.getX(pup_idx);
                final float yup = event.getY(pup_idx);
                queueEvent(new java.lang.Runnable() { // from class: com.framework.OGLView.3
                    @Override // java.lang.Runnable
                    public void run() {
                        com.framework.OGLView.this.renderer.handleActionUp(pup, xup, yup, pcnt);
                    }
                });
                break;
        }
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(final int keyCode, android.view.KeyEvent event) {
        if (keyCode != 4) {
            return super.onKeyDown(keyCode, event);
        }
        queueEvent(new java.lang.Runnable() { // from class: com.framework.OGLView.7
            @Override // java.lang.Runnable
            public void run() {
                com.framework.OGLView.this.renderer.handleKeyDown(keyCode);
            }
        });
        return true;
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        this.width = w;
        this.height = h;
        this.renderer.setSize(w, h);
    }

    public void setPath(java.lang.String pname) {
        nativeSetPath(pname);
    }

    @Override // android.opengl.GLSurfaceView
    public void onPause() {
        queueEvent(new java.lang.Runnable() { // from class: com.framework.OGLView.8
            @Override // java.lang.Runnable
            public void run() {
                com.framework.OGLView.this.renderer.handleOnPause();
            }
        });
        super.onPause();
    }

    public void onOGLResume() {
        super.onResume();
        queueEvent(new java.lang.Runnable() { // from class: com.framework.OGLView.9
            @Override // java.lang.Runnable
            public void run() {
                com.framework.OGLView.this.renderer.handleOnResume();
            }
        });
    }
}
