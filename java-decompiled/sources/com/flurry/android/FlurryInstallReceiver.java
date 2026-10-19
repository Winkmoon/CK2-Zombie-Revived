package com.flurry.android;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class FlurryInstallReceiver extends android.content.BroadcastReceiver {
    static final java.lang.String a = com.flurry.android.FlurryInstallReceiver.class.getSimpleName();

    @Override // android.content.BroadcastReceiver
    public final void onReceive(android.content.Context context, android.content.Intent intent) {
        com.flurry.sdk.kf.a(4, a, "Received an Install nofication of " + intent.getAction());
        java.lang.String string = intent.getExtras().getString("referrer");
        com.flurry.sdk.kf.a(4, a, "Received an Install referrer of " + string);
        if (string == null || !"com.android.vending.INSTALL_REFERRER".equals(intent.getAction())) {
            com.flurry.sdk.kf.a(5, a, "referrer is null");
            return;
        }
        if (!string.contains("=")) {
            com.flurry.sdk.kf.a(4, a, "referrer is before decoding: " + string);
            string = com.flurry.sdk.lr.d(string);
            com.flurry.sdk.kf.a(4, a, "referrer is: " + string);
        }
        new com.flurry.sdk.hl(context).a(string);
    }
}
