package android.support.v4.widget;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
class ScrollerCompat {
    android.widget.Scroller mScroller;

    static class ScrollerCompatImplIcs extends android.support.v4.widget.ScrollerCompat {
        public ScrollerCompatImplIcs(android.content.Context context) {
            super(context);
        }

        @Override // android.support.v4.widget.ScrollerCompat
        public float getCurrVelocity() {
            return android.support.v4.widget.ScrollerCompatIcs.getCurrVelocity(this.mScroller);
        }
    }

    public static android.support.v4.widget.ScrollerCompat from(android.content.Context context) {
        return android.os.Build.VERSION.SDK_INT >= 14 ? new android.support.v4.widget.ScrollerCompat.ScrollerCompatImplIcs(context) : new android.support.v4.widget.ScrollerCompat(context);
    }

    ScrollerCompat(android.content.Context context) {
        this.mScroller = new android.widget.Scroller(context);
    }

    public boolean isFinished() {
        return this.mScroller.isFinished();
    }

    public int getDuration() {
        return this.mScroller.getDuration();
    }

    public int getCurrX() {
        return this.mScroller.getCurrX();
    }

    public int getCurrY() {
        return this.mScroller.getCurrY();
    }

    public float getCurrVelocity() {
        return 0.0f;
    }

    public boolean computeScrollOffset() {
        return this.mScroller.computeScrollOffset();
    }

    public void startScroll(int startX, int startY, int dx, int dy) {
        this.mScroller.startScroll(startX, startY, dx, dy);
    }

    public void startScroll(int startX, int startY, int dx, int dy, int duration) {
        this.mScroller.startScroll(startX, startY, dx, dy, duration);
    }

    public void fling(int startX, int startY, int velocityX, int velocityY, int minX, int maxX, int minY, int maxY) {
        this.mScroller.fling(startX, startY, velocityX, velocityY, minX, maxX, minY, maxY);
    }

    public void abortAnimation() {
        this.mScroller.abortAnimation();
    }
}
