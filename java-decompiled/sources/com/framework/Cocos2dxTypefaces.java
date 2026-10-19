package com.framework;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class Cocos2dxTypefaces {
    private static final java.util.Hashtable<java.lang.String, android.graphics.Typeface> cache = new java.util.Hashtable<>();

    public static android.graphics.Typeface get(android.content.Context context, java.lang.String name) {
        android.graphics.Typeface typeface;
        synchronized (cache) {
            if (!cache.containsKey(name)) {
                android.graphics.Typeface t = android.graphics.Typeface.createFromAsset(context.getAssets(), name);
                cache.put(name, t);
            }
            typeface = cache.get(name);
        }
        return typeface;
    }
}
