package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class lv {

    public static class a {
        private final java.lang.Object a;
        private final java.lang.String b;
        private java.lang.Class<?> c;
        private java.util.List<java.lang.Class<?>> d = new java.util.ArrayList();
        private java.util.List<java.lang.Object> e = new java.util.ArrayList();
        private boolean f;
        private boolean g;

        public a(java.lang.Object obj, java.lang.String str) {
            this.a = obj;
            this.b = str;
            this.c = obj != null ? obj.getClass() : null;
        }

        public final <T> com.flurry.sdk.lv.a a(java.lang.Class<T> cls, T t) {
            this.d.add(cls);
            this.e.add(t);
            return this;
        }

        public final com.flurry.sdk.lv.a a(java.lang.Class<?> cls) {
            this.g = true;
            this.c = cls;
            return this;
        }

        public final java.lang.Object a() throws java.lang.Exception {
            java.lang.reflect.Method a = com.flurry.sdk.lv.a(this.c, this.b, (java.lang.Class[]) this.d.toArray(new java.lang.Class[this.d.size()]));
            if (this.f) {
                a.setAccessible(true);
            }
            java.lang.Object[] array = this.e.toArray();
            return this.g ? a.invoke(null, array) : a.invoke(this.a, array);
        }
    }

    public static java.lang.reflect.Method a(java.lang.Class<?> cls, java.lang.String str, java.lang.Class<?>... clsArr) throws java.lang.NoSuchMethodException {
        while (cls != null) {
            try {
                return cls.getDeclaredMethod(str, clsArr);
            } catch (java.lang.NoSuchMethodException e) {
                cls = cls.getSuperclass();
            }
        }
        throw new java.lang.NoSuchMethodException();
    }
}
