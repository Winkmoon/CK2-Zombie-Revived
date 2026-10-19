package com.framework;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class Sound {
    public static final boolean MP_ONE = true;
    android.content.Context context;
    java.util.HashMap<java.lang.String, java.lang.Object> mBgmList;
    java.util.HashMap<java.lang.String, java.lang.Integer> mSndList;
    android.media.MediaPlayer m_bgm;
    android.media.SoundPool m_spool;
    android.os.Vibrator m_vib;

    public Sound(android.content.Context context) {
        this.context = context;
        init();
    }

    public void init() {
        this.m_spool = new android.media.SoundPool(5, 3, 0);
        this.m_bgm = null;
        this.m_vib = (android.os.Vibrator) this.context.getSystemService("vibrator");
        this.mSndList = new java.util.HashMap<>();
        this.mBgmList = new java.util.HashMap<>();
    }

    public void startVib(int val) {
        this.m_vib.vibrate(val);
    }

    public int loadSnd(java.lang.String file, boolean amode) {
        int id = -1;
        java.lang.Integer val = this.mSndList.get(file);
        if (val == null) {
            if (!amode) {
                return -1;
            }
            try {
                id = this.m_spool.load(this.context.getAssets().openFd(file), 0);
                this.mSndList.put(file, java.lang.Integer.valueOf(id));
                return id;
            } catch (java.lang.Exception e) {
                java.lang.System.out.println("e loadSnd(" + file + ")=" + e);
                return id;
            }
        }
        int id2 = val.intValue();
        return id2;
    }

    public void playSnd(java.lang.String file, int cnt) {
        int id = loadSnd(file, true);
        if (id != -1) {
            this.m_spool.play(id, 1.0f, 1.0f, 0, cnt, 1.0f);
        }
    }

    public void stopSnd(java.lang.String file) {
        int id = loadSnd(file, false);
        if (id != -1) {
            this.m_spool.stop(id);
        }
    }

    public void stopSndAll() {
        for (java.util.Map.Entry<java.lang.String, java.lang.Integer> entry : this.mSndList.entrySet()) {
            int id = entry.getValue().intValue();
            this.m_spool.stop(id);
        }
    }

    public void clearSnd(java.lang.String file) {
        java.lang.Integer val = this.mSndList.get(file);
        if (val != null) {
            int id = val.intValue();
            this.m_spool.unload(id);
            this.mSndList.remove(file);
        }
    }

    public void clearSndAll() {
        for (java.util.Map.Entry<java.lang.String, java.lang.Integer> entry : this.mSndList.entrySet()) {
            int id = entry.getValue().intValue();
            this.m_spool.unload(id);
        }
        this.mSndList.clear();
    }

    public android.media.MediaPlayer loadBgm(java.lang.String file, boolean amode, boolean resume) {
        clearBgmAll();
        android.media.MediaPlayer val = new android.media.MediaPlayer();
        this.m_bgm = val;
        try {
            android.content.res.AssetFileDescriptor asset = this.context.getAssets().openFd(file);
            val.setDataSource(asset.getFileDescriptor(), asset.getStartOffset(), asset.getLength());
            val.prepare();
        } catch (java.lang.Exception e) {
            java.lang.System.out.println("e loadBgm(" + file + ")=" + e);
        }
        return val;
    }

    public void playBgm(java.lang.String file, boolean loop, boolean resume) {
        android.media.MediaPlayer mp = loadBgm(file, true, resume);
        if (mp != null) {
            mp.setLooping(loop);
            mp.start();
        }
    }

    public void stopBgm(java.lang.String file) {
        stopBgmAll();
    }

    public void stopBgmAll() {
        if (this.m_bgm != null) {
            this.m_bgm.pause();
        }
    }

    public void clearBgm(java.lang.String file) {
        clearBgmAll();
    }

    public void clearBgmAll() {
        if (this.m_bgm != null) {
            this.m_bgm.stop();
            this.m_bgm.release();
            this.m_bgm = null;
        }
    }
}
