package com.framework;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class Cocos2dxAccelerometer implements android.hardware.SensorEventListener {
    private static final java.lang.String TAG = "Cocos2dxAccelerometer";
    long last;
    private android.hardware.Sensor mAccelerometer;
    private android.content.Context mContext;
    private int mNaturalOrientation;
    private android.hardware.SensorManager mSensorManager;
    static long NANOS = 1000000000;
    static long NANOM = 1000000;
    static long interval = (long) (0.016666666666666666d * NANOS);

    private static native void onSensorChanged(float f, float f2, float f3, long j);

    public Cocos2dxAccelerometer(android.content.Context context) {
        this.mContext = context;
        this.mSensorManager = (android.hardware.SensorManager) this.mContext.getSystemService("sensor");
        this.mAccelerometer = this.mSensorManager.getDefaultSensor(1);
        android.view.Display display = ((android.view.WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay();
        this.mNaturalOrientation = display.getOrientation();
    }

    public void enable() {
        this.mSensorManager.registerListener(this, this.mAccelerometer, 1);
        this.last = java.lang.System.nanoTime();
    }

    public void disable() {
        this.mSensorManager.unregisterListener(this);
    }

    public void interval(double inter) {
        interval = (long) (NANOS * inter);
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(android.hardware.SensorEvent event) {
        if (event.sensor.getType() == 1) {
            long now = java.lang.System.nanoTime();
            long inter = now - this.last;
            if (inter >= interval) {
                float x = event.values[0];
                float y = event.values[1];
                float z = event.values[2];
                int orientation = this.mContext.getResources().getConfiguration().orientation;
                if (orientation == 2 && this.mNaturalOrientation != 0) {
                    x = -y;
                    y = x;
                } else if (orientation == 1 && this.mNaturalOrientation != 0) {
                    x = y;
                    y = -x;
                }
                onSensorChanged(x, y, z, event.timestamp);
                this.last = now;
            }
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(android.hardware.Sensor sensor, int accuracy) {
    }
}
