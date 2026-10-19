package com.framework;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class OGLRenderer implements android.opengl.GLSurfaceView.Renderer {
    int height;
    long last;
    long stime;
    int width;
    static long NANOS = 1000000000;
    static long NANOM = 1000000;
    static long ainterval = (long) (0.03333333333333333d * NANOS);

    private native void nativeDraw();

    private native void nativeInit(int i, int i2);

    private native void nativeKeyDown(int i);

    private native void nativePause();

    private native void nativeResume();

    private native void nativeTouchBegin(int i, float f, float f2, int i2);

    private native void nativeTouchCancel(int[] iArr, float[] fArr, float[] fArr2, int i);

    private native void nativeTouchEnd(int i, float f, float f2, int i2);

    private native void nativeTouchMove(int[] iArr, float[] fArr, float[] fArr2, int i);

    public void setSize(int wid, int hei) {
        this.width = wid;
        this.height = hei;
        this.last = java.lang.System.nanoTime();
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(javax.microedition.khronos.opengles.GL10 gl, javax.microedition.khronos.egl.EGLConfig config) {
        nativeInit(this.width, this.height);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(javax.microedition.khronos.opengles.GL10 gl, int w, int h) {
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(javax.microedition.khronos.opengles.GL10 gl) {
        long now = java.lang.System.nanoTime();
        long inter = now - this.last;
        nativeDraw();
        if (inter < ainterval) {
            try {
                java.lang.Thread.sleep(((ainterval - inter) * 2) / NANOM);
            } catch (java.lang.Exception e) {
            }
        }
        this.last = now;
    }

    public static void setInterval(double inter) {
        ainterval = (long) (NANOS * inter);
    }

    public void handleActionDown(int id, float x, float y, int cnt) {
        nativeTouchBegin(id, x, y, cnt);
    }

    public void handleActionUp(int id, float x, float y, int cnt) {
        nativeTouchEnd(id, x, y, cnt);
    }

    public void handleActionMove(int[] id, float[] x, float[] y, int cnt) {
        nativeTouchMove(id, x, y, cnt);
    }

    public void handleActionCancel(int[] id, float[] x, float[] y, int cnt) {
        nativeTouchCancel(id, x, y, cnt);
    }

    public void handleKeyDown(int keyCode) {
        nativeKeyDown(keyCode);
    }

    public void handleOnPause() {
        java.lang.System.out.println("----- handleOnPause() -----");
        nativePause();
    }

    public void handleOnResume() {
        java.lang.System.out.println("----- handleOnResume() -----");
        nativeResume();
    }
}
