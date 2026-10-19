package com.bluegnc.chickenrevolution2;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class DrmActivity extends com.bluegnc.ggapi.LVL {
    @Override // com.bluegnc.ggapi.LVL, android.app.Activity
    public void onCreate(android.os.Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override // com.bluegnc.ggapi.LVL
    protected void startGameActivity() {
        android.content.Intent intent = new android.content.Intent(this, (java.lang.Class<?>) com.bluegnc.chickenrevolution2.MainActivity.class);
        startActivity(intent);
    }

    @Override // com.bluegnc.ggapi.LVL
    protected void showActMsg(int no) {
    }
}
