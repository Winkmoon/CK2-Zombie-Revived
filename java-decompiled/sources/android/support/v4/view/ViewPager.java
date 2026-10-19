package android.support.v4.view;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class ViewPager extends android.view.ViewGroup {
    private static final int CLOSE_ENOUGH = 2;
    private static final boolean DEBUG = false;
    private static final int DEFAULT_GUTTER_SIZE = 16;
    private static final int DEFAULT_OFFSCREEN_PAGES = 1;
    private static final int DRAW_ORDER_DEFAULT = 0;
    private static final int DRAW_ORDER_FORWARD = 1;
    private static final int DRAW_ORDER_REVERSE = 2;
    private static final int INVALID_POINTER = -1;
    private static final int MAX_SETTLE_DURATION = 600;
    private static final int MIN_DISTANCE_FOR_FLING = 25;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    private static final java.lang.String TAG = "ViewPager";
    private static final boolean USE_CACHE = false;
    private int mActivePointerId;
    private android.support.v4.view.PagerAdapter mAdapter;
    private android.support.v4.view.ViewPager.OnAdapterChangeListener mAdapterChangeListener;
    private int mBottomPageBounds;
    private boolean mCalledSuper;
    private int mChildHeightMeasureSpec;
    private int mChildWidthMeasureSpec;
    private int mCloseEnough;
    private int mCurItem;
    private int mDecorChildCount;
    private int mDefaultGutterSize;
    private int mDrawingOrder;
    private java.util.ArrayList<android.view.View> mDrawingOrderedChildren;
    private final java.lang.Runnable mEndScrollRunnable;
    private long mFakeDragBeginTime;
    private boolean mFakeDragging;
    private boolean mFirstLayout;
    private float mFirstOffset;
    private int mFlingDistance;
    private int mGutterSize;
    private boolean mIgnoreGutter;
    private boolean mInLayout;
    private float mInitialMotionX;
    private android.support.v4.view.ViewPager.OnPageChangeListener mInternalPageChangeListener;
    private boolean mIsBeingDragged;
    private boolean mIsUnableToDrag;
    private final java.util.ArrayList<android.support.v4.view.ViewPager.ItemInfo> mItems;
    private float mLastMotionX;
    private float mLastMotionY;
    private float mLastOffset;
    private android.support.v4.widget.EdgeEffectCompat mLeftEdge;
    private android.graphics.drawable.Drawable mMarginDrawable;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private boolean mNeedCalculatePageOffsets;
    private android.support.v4.view.ViewPager.PagerObserver mObserver;
    private int mOffscreenPageLimit;
    private android.support.v4.view.ViewPager.OnPageChangeListener mOnPageChangeListener;
    private int mPageMargin;
    private android.support.v4.view.ViewPager.PageTransformer mPageTransformer;
    private boolean mPopulatePending;
    private android.os.Parcelable mRestoredAdapterState;
    private java.lang.ClassLoader mRestoredClassLoader;
    private int mRestoredCurItem;
    private android.support.v4.widget.EdgeEffectCompat mRightEdge;
    private int mScrollState;
    private android.widget.Scroller mScroller;
    private boolean mScrollingCacheEnabled;
    private int mSeenPositionMax;
    private int mSeenPositionMin;
    private java.lang.reflect.Method mSetChildrenDrawingOrderEnabled;
    private final android.support.v4.view.ViewPager.ItemInfo mTempItem;
    private final android.graphics.Rect mTempRect;
    private int mTopPageBounds;
    private int mTouchSlop;
    private android.view.VelocityTracker mVelocityTracker;
    private static final int[] LAYOUT_ATTRS = {android.R.attr.layout_gravity};
    private static final java.util.Comparator<android.support.v4.view.ViewPager.ItemInfo> COMPARATOR = new java.util.Comparator<android.support.v4.view.ViewPager.ItemInfo>() { // from class: android.support.v4.view.ViewPager.1
        @Override // java.util.Comparator
        public int compare(android.support.v4.view.ViewPager.ItemInfo lhs, android.support.v4.view.ViewPager.ItemInfo rhs) {
            return lhs.position - rhs.position;
        }
    };
    private static final android.view.animation.Interpolator sInterpolator = new android.view.animation.Interpolator() { // from class: android.support.v4.view.ViewPager.2
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float t) {
            float t2 = t - 1.0f;
            return (t2 * t2 * t2 * t2 * t2) + 1.0f;
        }
    };
    private static final android.support.v4.view.ViewPager.ViewPositionComparator sPositionComparator = new android.support.v4.view.ViewPager.ViewPositionComparator();

    interface Decor {
    }

    interface OnAdapterChangeListener {
        void onAdapterChanged(android.support.v4.view.PagerAdapter pagerAdapter, android.support.v4.view.PagerAdapter pagerAdapter2);
    }

    public interface OnPageChangeListener {
        void onPageScrollStateChanged(int i);

        void onPageScrolled(int i, float f, int i2);

        void onPageSelected(int i);
    }

    public interface PageTransformer {
        void transformPage(android.view.View view, float f);
    }

    static class ItemInfo {
        java.lang.Object object;
        float offset;
        int position;
        boolean scrolling;
        float widthFactor;

        ItemInfo() {
        }
    }

    public static class SimpleOnPageChangeListener implements android.support.v4.view.ViewPager.OnPageChangeListener {
        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
        }
    }

    public ViewPager(android.content.Context context) {
        super(context);
        this.mItems = new java.util.ArrayList<>();
        this.mTempItem = new android.support.v4.view.ViewPager.ItemInfo();
        this.mTempRect = new android.graphics.Rect();
        this.mRestoredCurItem = -1;
        this.mRestoredAdapterState = null;
        this.mRestoredClassLoader = null;
        this.mFirstOffset = -3.4028235E38f;
        this.mLastOffset = Float.MAX_VALUE;
        this.mOffscreenPageLimit = 1;
        this.mActivePointerId = -1;
        this.mFirstLayout = true;
        this.mNeedCalculatePageOffsets = false;
        this.mEndScrollRunnable = new java.lang.Runnable() { // from class: android.support.v4.view.ViewPager.3
            @Override // java.lang.Runnable
            public void run() {
                android.support.v4.view.ViewPager.this.setScrollState(0);
                android.support.v4.view.ViewPager.this.populate();
            }
        };
        this.mScrollState = 0;
        initViewPager();
    }

    public ViewPager(android.content.Context context, android.util.AttributeSet attrs) {
        super(context, attrs);
        this.mItems = new java.util.ArrayList<>();
        this.mTempItem = new android.support.v4.view.ViewPager.ItemInfo();
        this.mTempRect = new android.graphics.Rect();
        this.mRestoredCurItem = -1;
        this.mRestoredAdapterState = null;
        this.mRestoredClassLoader = null;
        this.mFirstOffset = -3.4028235E38f;
        this.mLastOffset = Float.MAX_VALUE;
        this.mOffscreenPageLimit = 1;
        this.mActivePointerId = -1;
        this.mFirstLayout = true;
        this.mNeedCalculatePageOffsets = false;
        this.mEndScrollRunnable = new java.lang.Runnable() { // from class: android.support.v4.view.ViewPager.3
            @Override // java.lang.Runnable
            public void run() {
                android.support.v4.view.ViewPager.this.setScrollState(0);
                android.support.v4.view.ViewPager.this.populate();
            }
        };
        this.mScrollState = 0;
        initViewPager();
    }

    void initViewPager() {
        setWillNotDraw(false);
        setDescendantFocusability(android.support.v4.view.accessibility.AccessibilityEventCompat.TYPE_GESTURE_DETECTION_START);
        setFocusable(true);
        android.content.Context context = getContext();
        this.mScroller = new android.widget.Scroller(context, sInterpolator);
        android.view.ViewConfiguration configuration = android.view.ViewConfiguration.get(context);
        this.mTouchSlop = android.support.v4.view.ViewConfigurationCompat.getScaledPagingTouchSlop(configuration);
        this.mMinimumVelocity = configuration.getScaledMinimumFlingVelocity();
        this.mMaximumVelocity = configuration.getScaledMaximumFlingVelocity();
        this.mLeftEdge = new android.support.v4.widget.EdgeEffectCompat(context);
        this.mRightEdge = new android.support.v4.widget.EdgeEffectCompat(context);
        float density = context.getResources().getDisplayMetrics().density;
        this.mFlingDistance = (int) (25.0f * density);
        this.mCloseEnough = (int) (2.0f * density);
        this.mDefaultGutterSize = (int) (16.0f * density);
        android.support.v4.view.ViewCompat.setAccessibilityDelegate(this, new android.support.v4.view.ViewPager.MyAccessibilityDelegate());
        if (android.support.v4.view.ViewCompat.getImportantForAccessibility(this) == 0) {
            android.support.v4.view.ViewCompat.setImportantForAccessibility(this, 1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.mEndScrollRunnable);
        super.onDetachedFromWindow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScrollState(int newState) {
        if (this.mScrollState != newState) {
            this.mScrollState = newState;
            if (newState == 1) {
                this.mSeenPositionMax = -1;
                this.mSeenPositionMin = -1;
            }
            if (this.mPageTransformer != null) {
                enableLayers(newState != 0);
            }
            if (this.mOnPageChangeListener != null) {
                this.mOnPageChangeListener.onPageScrollStateChanged(newState);
            }
        }
    }

    public void setAdapter(android.support.v4.view.PagerAdapter adapter) {
        if (this.mAdapter != null) {
            this.mAdapter.unregisterDataSetObserver(this.mObserver);
            this.mAdapter.startUpdate((android.view.ViewGroup) this);
            for (int i = 0; i < this.mItems.size(); i++) {
                android.support.v4.view.ViewPager.ItemInfo ii = this.mItems.get(i);
                this.mAdapter.destroyItem((android.view.ViewGroup) this, ii.position, ii.object);
            }
            this.mAdapter.finishUpdate((android.view.ViewGroup) this);
            this.mItems.clear();
            removeNonDecorViews();
            this.mCurItem = 0;
            scrollTo(0, 0);
        }
        android.support.v4.view.PagerAdapter oldAdapter = this.mAdapter;
        this.mAdapter = adapter;
        if (this.mAdapter != null) {
            if (this.mObserver == null) {
                this.mObserver = new android.support.v4.view.ViewPager.PagerObserver();
            }
            this.mAdapter.registerDataSetObserver(this.mObserver);
            this.mPopulatePending = false;
            this.mFirstLayout = true;
            if (this.mRestoredCurItem >= 0) {
                this.mAdapter.restoreState(this.mRestoredAdapterState, this.mRestoredClassLoader);
                setCurrentItemInternal(this.mRestoredCurItem, false, true);
                this.mRestoredCurItem = -1;
                this.mRestoredAdapterState = null;
                this.mRestoredClassLoader = null;
            } else {
                populate();
            }
        }
        if (this.mAdapterChangeListener != null && oldAdapter != adapter) {
            this.mAdapterChangeListener.onAdapterChanged(oldAdapter, adapter);
        }
    }

    private void removeNonDecorViews() {
        int i = 0;
        while (i < getChildCount()) {
            android.view.View child = getChildAt(i);
            android.support.v4.view.ViewPager.LayoutParams lp = (android.support.v4.view.ViewPager.LayoutParams) child.getLayoutParams();
            if (!lp.isDecor) {
                removeViewAt(i);
                i--;
            }
            i++;
        }
    }

    public android.support.v4.view.PagerAdapter getAdapter() {
        return this.mAdapter;
    }

    void setOnAdapterChangeListener(android.support.v4.view.ViewPager.OnAdapterChangeListener listener) {
        this.mAdapterChangeListener = listener;
    }

    public void setCurrentItem(int item) {
        this.mPopulatePending = false;
        setCurrentItemInternal(item, !this.mFirstLayout, false);
    }

    public void setCurrentItem(int item, boolean smoothScroll) {
        this.mPopulatePending = false;
        setCurrentItemInternal(item, smoothScroll, false);
    }

    public int getCurrentItem() {
        return this.mCurItem;
    }

    void setCurrentItemInternal(int item, boolean smoothScroll, boolean always) {
        setCurrentItemInternal(item, smoothScroll, always, 0);
    }

    void setCurrentItemInternal(int item, boolean smoothScroll, boolean always, int velocity) {
        if (this.mAdapter == null || this.mAdapter.getCount() <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (!always && this.mCurItem == item && this.mItems.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (item < 0) {
            item = 0;
        } else if (item >= this.mAdapter.getCount()) {
            item = this.mAdapter.getCount() - 1;
        }
        int pageLimit = this.mOffscreenPageLimit;
        if (item > this.mCurItem + pageLimit || item < this.mCurItem - pageLimit) {
            for (int i = 0; i < this.mItems.size(); i++) {
                this.mItems.get(i).scrolling = true;
            }
        }
        boolean dispatchSelected = this.mCurItem != item;
        populate(item);
        scrollToItem(item, smoothScroll, velocity, dispatchSelected);
    }

    private void scrollToItem(int item, boolean smoothScroll, int velocity, boolean dispatchSelected) {
        android.support.v4.view.ViewPager.ItemInfo curInfo = infoForPosition(item);
        int destX = 0;
        if (curInfo != null) {
            int width = getWidth();
            destX = (int) (width * java.lang.Math.max(this.mFirstOffset, java.lang.Math.min(curInfo.offset, this.mLastOffset)));
        }
        if (smoothScroll) {
            smoothScrollTo(destX, 0, velocity);
            if (dispatchSelected && this.mOnPageChangeListener != null) {
                this.mOnPageChangeListener.onPageSelected(item);
            }
            if (dispatchSelected && this.mInternalPageChangeListener != null) {
                this.mInternalPageChangeListener.onPageSelected(item);
                return;
            }
            return;
        }
        if (dispatchSelected && this.mOnPageChangeListener != null) {
            this.mOnPageChangeListener.onPageSelected(item);
        }
        if (dispatchSelected && this.mInternalPageChangeListener != null) {
            this.mInternalPageChangeListener.onPageSelected(item);
        }
        completeScroll(false);
        scrollTo(destX, 0);
    }

    public void setOnPageChangeListener(android.support.v4.view.ViewPager.OnPageChangeListener listener) {
        this.mOnPageChangeListener = listener;
    }

    public void setPageTransformer(boolean reverseDrawingOrder, android.support.v4.view.ViewPager.PageTransformer transformer) {
        if (android.os.Build.VERSION.SDK_INT >= 11) {
            boolean hasTransformer = transformer != null;
            boolean needsPopulate = hasTransformer != (this.mPageTransformer != null);
            this.mPageTransformer = transformer;
            setChildrenDrawingOrderEnabledCompat(hasTransformer);
            if (hasTransformer) {
                this.mDrawingOrder = reverseDrawingOrder ? 2 : 1;
            } else {
                this.mDrawingOrder = 0;
            }
            if (needsPopulate) {
                populate();
            }
        }
    }

    void setChildrenDrawingOrderEnabledCompat(boolean enable) {
        if (this.mSetChildrenDrawingOrderEnabled == null) {
            try {
                this.mSetChildrenDrawingOrderEnabled = android.view.ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", java.lang.Boolean.TYPE);
            } catch (java.lang.NoSuchMethodException e) {
                android.util.Log.e(TAG, "Can't find setChildrenDrawingOrderEnabled", e);
            }
        }
        try {
            this.mSetChildrenDrawingOrderEnabled.invoke(this, java.lang.Boolean.valueOf(enable));
        } catch (java.lang.Exception e2) {
            android.util.Log.e(TAG, "Error changing children drawing order", e2);
        }
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int childCount, int i) {
        int index = this.mDrawingOrder == 2 ? (childCount - 1) - i : i;
        int result = ((android.support.v4.view.ViewPager.LayoutParams) this.mDrawingOrderedChildren.get(index).getLayoutParams()).childIndex;
        return result;
    }

    android.support.v4.view.ViewPager.OnPageChangeListener setInternalPageChangeListener(android.support.v4.view.ViewPager.OnPageChangeListener listener) {
        android.support.v4.view.ViewPager.OnPageChangeListener oldListener = this.mInternalPageChangeListener;
        this.mInternalPageChangeListener = listener;
        return oldListener;
    }

    public int getOffscreenPageLimit() {
        return this.mOffscreenPageLimit;
    }

    public void setOffscreenPageLimit(int limit) {
        if (limit < 1) {
            android.util.Log.w(TAG, "Requested offscreen page limit " + limit + " too small; defaulting to 1");
            limit = 1;
        }
        if (limit != this.mOffscreenPageLimit) {
            this.mOffscreenPageLimit = limit;
            populate();
        }
    }

    public void setPageMargin(int marginPixels) {
        int oldMargin = this.mPageMargin;
        this.mPageMargin = marginPixels;
        int width = getWidth();
        recomputeScrollPosition(width, width, marginPixels, oldMargin);
        requestLayout();
    }

    public int getPageMargin() {
        return this.mPageMargin;
    }

    public void setPageMarginDrawable(android.graphics.drawable.Drawable d) {
        this.mMarginDrawable = d;
        if (d != null) {
            refreshDrawableState();
        }
        setWillNotDraw(d == null);
        invalidate();
    }

    public void setPageMarginDrawable(int resId) {
        setPageMarginDrawable(getContext().getResources().getDrawable(resId));
    }

    @Override // android.view.View
    protected boolean verifyDrawable(android.graphics.drawable.Drawable who) {
        return super.verifyDrawable(who) || who == this.mMarginDrawable;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        android.graphics.drawable.Drawable d = this.mMarginDrawable;
        if (d != null && d.isStateful()) {
            d.setState(getDrawableState());
        }
    }

    float distanceInfluenceForSnapDuration(float f) {
        return (float) java.lang.Math.sin((float) ((f - 0.5f) * 0.4712389167638204d));
    }

    void smoothScrollTo(int x, int y) {
        smoothScrollTo(x, y, 0);
    }

    void smoothScrollTo(int x, int y, int velocity) {
        int duration;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        int sx = getScrollX();
        int sy = getScrollY();
        int dx = x - sx;
        int dy = y - sy;
        if (dx == 0 && dy == 0) {
            completeScroll(false);
            populate();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int width = getWidth();
        int halfWidth = width / 2;
        float distanceRatio = java.lang.Math.min(1.0f, (1.0f * java.lang.Math.abs(dx)) / width);
        float distance = halfWidth + (halfWidth * distanceInfluenceForSnapDuration(distanceRatio));
        int velocity2 = java.lang.Math.abs(velocity);
        if (velocity2 > 0) {
            duration = java.lang.Math.round(1000.0f * java.lang.Math.abs(distance / velocity2)) * 4;
        } else {
            float pageWidth = width * this.mAdapter.getPageWidth(this.mCurItem);
            float pageDelta = java.lang.Math.abs(dx) / (this.mPageMargin + pageWidth);
            duration = (int) ((1.0f + pageDelta) * 100.0f);
        }
        this.mScroller.startScroll(sx, sy, dx, dy, java.lang.Math.min(duration, MAX_SETTLE_DURATION));
        android.support.v4.view.ViewCompat.postInvalidateOnAnimation(this);
    }

    android.support.v4.view.ViewPager.ItemInfo addNewItem(int position, int index) {
        android.support.v4.view.ViewPager.ItemInfo ii = new android.support.v4.view.ViewPager.ItemInfo();
        ii.position = position;
        ii.object = this.mAdapter.instantiateItem((android.view.ViewGroup) this, position);
        ii.widthFactor = this.mAdapter.getPageWidth(position);
        if (index < 0 || index >= this.mItems.size()) {
            this.mItems.add(ii);
        } else {
            this.mItems.add(index, ii);
        }
        return ii;
    }

    void dataSetChanged() {
        boolean needPopulate = this.mItems.size() < (this.mOffscreenPageLimit * 2) + 1 && this.mItems.size() < this.mAdapter.getCount();
        int newCurrItem = this.mCurItem;
        boolean isUpdating = false;
        int i = 0;
        while (i < this.mItems.size()) {
            android.support.v4.view.ViewPager.ItemInfo ii = this.mItems.get(i);
            int newPos = this.mAdapter.getItemPosition(ii.object);
            if (newPos != -1) {
                if (newPos == -2) {
                    this.mItems.remove(i);
                    i--;
                    if (!isUpdating) {
                        this.mAdapter.startUpdate((android.view.ViewGroup) this);
                        isUpdating = true;
                    }
                    this.mAdapter.destroyItem((android.view.ViewGroup) this, ii.position, ii.object);
                    needPopulate = true;
                    if (this.mCurItem == ii.position) {
                        newCurrItem = java.lang.Math.max(0, java.lang.Math.min(this.mCurItem, this.mAdapter.getCount() - 1));
                        needPopulate = true;
                    }
                } else if (ii.position != newPos) {
                    if (ii.position == this.mCurItem) {
                        newCurrItem = newPos;
                    }
                    ii.position = newPos;
                    needPopulate = true;
                }
            }
            i++;
        }
        if (isUpdating) {
            this.mAdapter.finishUpdate((android.view.ViewGroup) this);
        }
        java.util.Collections.sort(this.mItems, COMPARATOR);
        if (needPopulate) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                android.view.View child = getChildAt(i2);
                android.support.v4.view.ViewPager.LayoutParams lp = (android.support.v4.view.ViewPager.LayoutParams) child.getLayoutParams();
                if (!lp.isDecor) {
                    lp.widthFactor = 0.0f;
                }
            }
            setCurrentItemInternal(newCurrItem, false, true);
            requestLayout();
        }
    }

    void populate() {
        populate(this.mCurItem);
    }

    void populate(int newCurrentItem) {
        android.support.v4.view.ViewPager.ItemInfo ii;
        android.support.v4.view.ViewPager.ItemInfo oldCurInfo = null;
        if (this.mCurItem != newCurrentItem) {
            oldCurInfo = infoForPosition(this.mCurItem);
            this.mCurItem = newCurrentItem;
        }
        if (this.mAdapter != null && !this.mPopulatePending && getWindowToken() != null) {
            this.mAdapter.startUpdate((android.view.ViewGroup) this);
            int pageLimit = this.mOffscreenPageLimit;
            int startPos = java.lang.Math.max(0, this.mCurItem - pageLimit);
            int N = this.mAdapter.getCount();
            int endPos = java.lang.Math.min(N - 1, this.mCurItem + pageLimit);
            android.support.v4.view.ViewPager.ItemInfo curItem = null;
            int curIndex = 0;
            while (true) {
                if (curIndex >= this.mItems.size()) {
                    break;
                }
                android.support.v4.view.ViewPager.ItemInfo ii2 = this.mItems.get(curIndex);
                if (ii2.position < this.mCurItem) {
                    curIndex++;
                } else if (ii2.position == this.mCurItem) {
                    curItem = ii2;
                }
            }
            if (curItem == null && N > 0) {
                curItem = addNewItem(this.mCurItem, curIndex);
            }
            if (curItem != null) {
                float extraWidthLeft = 0.0f;
                int itemIndex = curIndex - 1;
                android.support.v4.view.ViewPager.ItemInfo ii3 = itemIndex >= 0 ? this.mItems.get(itemIndex) : null;
                float leftWidthNeeded = 2.0f - curItem.widthFactor;
                for (int pos = this.mCurItem - 1; pos >= 0; pos--) {
                    if (extraWidthLeft >= leftWidthNeeded && pos < startPos) {
                        if (ii3 == null) {
                            break;
                        }
                        if (pos == ii3.position && !ii3.scrolling) {
                            this.mItems.remove(itemIndex);
                            this.mAdapter.destroyItem((android.view.ViewGroup) this, pos, ii3.object);
                            itemIndex--;
                            curIndex--;
                            ii3 = itemIndex >= 0 ? this.mItems.get(itemIndex) : null;
                        }
                    } else if (ii3 != null && pos == ii3.position) {
                        extraWidthLeft += ii3.widthFactor;
                        itemIndex--;
                        ii3 = itemIndex >= 0 ? this.mItems.get(itemIndex) : null;
                    } else {
                        extraWidthLeft += addNewItem(pos, itemIndex + 1).widthFactor;
                        curIndex++;
                        ii3 = itemIndex >= 0 ? this.mItems.get(itemIndex) : null;
                    }
                }
                float extraWidthRight = curItem.widthFactor;
                int itemIndex2 = curIndex + 1;
                if (extraWidthRight < 2.0f) {
                    android.support.v4.view.ViewPager.ItemInfo ii4 = itemIndex2 < this.mItems.size() ? this.mItems.get(itemIndex2) : null;
                    for (int pos2 = this.mCurItem + 1; pos2 < N; pos2++) {
                        if (extraWidthRight >= 2.0f && pos2 > endPos) {
                            if (ii4 == null) {
                                break;
                            }
                            if (pos2 == ii4.position && !ii4.scrolling) {
                                this.mItems.remove(itemIndex2);
                                this.mAdapter.destroyItem((android.view.ViewGroup) this, pos2, ii4.object);
                                ii4 = itemIndex2 < this.mItems.size() ? this.mItems.get(itemIndex2) : null;
                            }
                        } else if (ii4 != null && pos2 == ii4.position) {
                            extraWidthRight += ii4.widthFactor;
                            itemIndex2++;
                            ii4 = itemIndex2 < this.mItems.size() ? this.mItems.get(itemIndex2) : null;
                        } else {
                            android.support.v4.view.ViewPager.ItemInfo ii5 = addNewItem(pos2, itemIndex2);
                            itemIndex2++;
                            extraWidthRight += ii5.widthFactor;
                            ii4 = itemIndex2 < this.mItems.size() ? this.mItems.get(itemIndex2) : null;
                        }
                    }
                }
                calculatePageOffsets(curItem, curIndex, oldCurInfo);
            }
            this.mAdapter.setPrimaryItem((android.view.ViewGroup) this, this.mCurItem, curItem != null ? curItem.object : null);
            this.mAdapter.finishUpdate((android.view.ViewGroup) this);
            boolean sort = this.mDrawingOrder != 0;
            if (sort) {
                if (this.mDrawingOrderedChildren == null) {
                    this.mDrawingOrderedChildren = new java.util.ArrayList<>();
                } else {
                    this.mDrawingOrderedChildren.clear();
                }
            }
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                android.view.View child = getChildAt(i);
                android.support.v4.view.ViewPager.LayoutParams lp = (android.support.v4.view.ViewPager.LayoutParams) child.getLayoutParams();
                lp.childIndex = i;
                if (!lp.isDecor && lp.widthFactor == 0.0f && (ii = infoForChild(child)) != null) {
                    lp.widthFactor = ii.widthFactor;
                    lp.position = ii.position;
                }
                if (sort) {
                    this.mDrawingOrderedChildren.add(child);
                }
            }
            if (sort) {
                java.util.Collections.sort(this.mDrawingOrderedChildren, sPositionComparator);
            }
            if (hasFocus()) {
                android.view.View currentFocused = findFocus();
                android.support.v4.view.ViewPager.ItemInfo ii6 = currentFocused != null ? infoForAnyChild(currentFocused) : null;
                if (ii6 == null || ii6.position != this.mCurItem) {
                    for (int i2 = 0; i2 < getChildCount(); i2++) {
                        android.view.View child2 = getChildAt(i2);
                        android.support.v4.view.ViewPager.ItemInfo ii7 = infoForChild(child2);
                        if (ii7 != null && ii7.position == this.mCurItem && child2.requestFocus(2)) {
                            return;
                        }
                    }
                }
            }
        }
    }

    private void calculatePageOffsets(android.support.v4.view.ViewPager.ItemInfo curItem, int curIndex, android.support.v4.view.ViewPager.ItemInfo oldCurInfo) {
        android.support.v4.view.ViewPager.ItemInfo ii;
        android.support.v4.view.ViewPager.ItemInfo ii2;
        int N = this.mAdapter.getCount();
        int width = getWidth();
        float marginOffset = width > 0 ? this.mPageMargin / width : 0.0f;
        if (oldCurInfo != null) {
            int oldCurPosition = oldCurInfo.position;
            if (oldCurPosition < curItem.position) {
                int itemIndex = 0;
                float offset = oldCurInfo.offset + oldCurInfo.widthFactor + marginOffset;
                int pos = oldCurPosition + 1;
                while (pos <= curItem.position && itemIndex < this.mItems.size()) {
                    android.support.v4.view.ViewPager.ItemInfo ii3 = this.mItems.get(itemIndex);
                    while (true) {
                        ii2 = ii3;
                        if (pos <= ii2.position || itemIndex >= this.mItems.size() - 1) {
                            break;
                        }
                        itemIndex++;
                        ii3 = this.mItems.get(itemIndex);
                    }
                    while (pos < ii2.position) {
                        offset += this.mAdapter.getPageWidth(pos) + marginOffset;
                        pos++;
                    }
                    ii2.offset = offset;
                    offset += ii2.widthFactor + marginOffset;
                    pos++;
                }
            } else if (oldCurPosition > curItem.position) {
                int itemIndex2 = this.mItems.size() - 1;
                float offset2 = oldCurInfo.offset;
                int pos2 = oldCurPosition - 1;
                while (pos2 >= curItem.position && itemIndex2 >= 0) {
                    android.support.v4.view.ViewPager.ItemInfo ii4 = this.mItems.get(itemIndex2);
                    while (true) {
                        ii = ii4;
                        if (pos2 >= ii.position || itemIndex2 <= 0) {
                            break;
                        }
                        itemIndex2--;
                        ii4 = this.mItems.get(itemIndex2);
                    }
                    while (pos2 > ii.position) {
                        offset2 -= this.mAdapter.getPageWidth(pos2) + marginOffset;
                        pos2--;
                    }
                    offset2 -= ii.widthFactor + marginOffset;
                    ii.offset = offset2;
                    pos2--;
                }
            }
        }
        int itemCount = this.mItems.size();
        float offset3 = curItem.offset;
        int pos3 = curItem.position - 1;
        this.mFirstOffset = curItem.position == 0 ? curItem.offset : -3.4028235E38f;
        this.mLastOffset = curItem.position == N + (-1) ? (curItem.offset + curItem.widthFactor) - 1.0f : Float.MAX_VALUE;
        int i = curIndex - 1;
        while (i >= 0) {
            android.support.v4.view.ViewPager.ItemInfo ii5 = this.mItems.get(i);
            while (pos3 > ii5.position) {
                offset3 -= this.mAdapter.getPageWidth(pos3) + marginOffset;
                pos3--;
            }
            offset3 -= ii5.widthFactor + marginOffset;
            ii5.offset = offset3;
            if (ii5.position == 0) {
                this.mFirstOffset = offset3;
            }
            i--;
            pos3--;
        }
        float offset4 = curItem.offset + curItem.widthFactor + marginOffset;
        int pos4 = curItem.position + 1;
        int i2 = curIndex + 1;
        while (i2 < itemCount) {
            android.support.v4.view.ViewPager.ItemInfo ii6 = this.mItems.get(i2);
            while (pos4 < ii6.position) {
                offset4 += this.mAdapter.getPageWidth(pos4) + marginOffset;
                pos4++;
            }
            if (ii6.position == N - 1) {
                this.mLastOffset = (ii6.widthFactor + offset4) - 1.0f;
            }
            ii6.offset = offset4;
            offset4 += ii6.widthFactor + marginOffset;
            i2++;
            pos4++;
        }
        this.mNeedCalculatePageOffsets = false;
    }

    public static class SavedState extends android.view.View.BaseSavedState {
        public static final android.os.Parcelable.Creator<android.support.v4.view.ViewPager.SavedState> CREATOR = android.support.v4.os.ParcelableCompat.newCreator(new android.support.v4.os.ParcelableCompatCreatorCallbacks<android.support.v4.view.ViewPager.SavedState>() { // from class: android.support.v4.view.ViewPager.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.support.v4.os.ParcelableCompatCreatorCallbacks
            public android.support.v4.view.ViewPager.SavedState createFromParcel(android.os.Parcel in, java.lang.ClassLoader loader) {
                return new android.support.v4.view.ViewPager.SavedState(in, loader);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.support.v4.os.ParcelableCompatCreatorCallbacks
            public android.support.v4.view.ViewPager.SavedState[] newArray(int size) {
                return new android.support.v4.view.ViewPager.SavedState[size];
            }
        });
        android.os.Parcelable adapterState;
        java.lang.ClassLoader loader;
        int position;

        public SavedState(android.os.Parcelable superState) {
            super(superState);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(android.os.Parcel out, int flags) {
            super.writeToParcel(out, flags);
            out.writeInt(this.position);
            out.writeParcelable(this.adapterState, flags);
        }

        public java.lang.String toString() {
            return "FragmentPager.SavedState{" + java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)) + " position=" + this.position + "}";
        }

        SavedState(android.os.Parcel in, java.lang.ClassLoader loader) {
            super(in);
            loader = loader == null ? getClass().getClassLoader() : loader;
            this.position = in.readInt();
            this.adapterState = in.readParcelable(loader);
            this.loader = loader;
        }
    }

    @Override // android.view.View
    public android.os.Parcelable onSaveInstanceState() {
        android.os.Parcelable superState = super.onSaveInstanceState();
        android.support.v4.view.ViewPager.SavedState ss = new android.support.v4.view.ViewPager.SavedState(superState);
        ss.position = this.mCurItem;
        if (this.mAdapter != null) {
            ss.adapterState = this.mAdapter.saveState();
        }
        return ss;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(android.os.Parcelable state) {
        if (!(state instanceof android.support.v4.view.ViewPager.SavedState)) {
            super.onRestoreInstanceState(state);
            return;
        }
        android.support.v4.view.ViewPager.SavedState ss = (android.support.v4.view.ViewPager.SavedState) state;
        super.onRestoreInstanceState(ss.getSuperState());
        if (this.mAdapter != null) {
            this.mAdapter.restoreState(ss.adapterState, ss.loader);
            setCurrentItemInternal(ss.position, false, true);
        } else {
            this.mRestoredCurItem = ss.position;
            this.mRestoredAdapterState = ss.adapterState;
            this.mRestoredClassLoader = ss.loader;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(android.view.View child, int index, android.view.ViewGroup.LayoutParams params) {
        if (!checkLayoutParams(params)) {
            params = generateLayoutParams(params);
        }
        android.support.v4.view.ViewPager.LayoutParams lp = (android.support.v4.view.ViewPager.LayoutParams) params;
        lp.isDecor |= child instanceof android.support.v4.view.ViewPager.Decor;
        if (this.mInLayout) {
            if (lp != null && lp.isDecor) {
                throw new java.lang.IllegalStateException("Cannot add pager decor view during layout");
            }
            lp.needsMeasure = true;
            addViewInLayout(child, index, params);
            return;
        }
        super.addView(child, index, params);
    }

    android.support.v4.view.ViewPager.ItemInfo infoForChild(android.view.View child) {
        for (int i = 0; i < this.mItems.size(); i++) {
            android.support.v4.view.ViewPager.ItemInfo ii = this.mItems.get(i);
            if (this.mAdapter.isViewFromObject(child, ii.object)) {
                return ii;
            }
        }
        return null;
    }

    android.support.v4.view.ViewPager.ItemInfo infoForAnyChild(android.view.View child) {
        while (true) {
            java.lang.Object parent = child.getParent();
            if (parent != this) {
                if (parent == null || !(parent instanceof android.view.View)) {
                    break;
                }
                child = (android.view.View) parent;
            } else {
                return infoForChild(child);
            }
        }
        return null;
    }

    android.support.v4.view.ViewPager.ItemInfo infoForPosition(int position) {
        for (int i = 0; i < this.mItems.size(); i++) {
            android.support.v4.view.ViewPager.ItemInfo ii = this.mItems.get(i);
            if (ii.position == position) {
                return ii;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        android.support.v4.view.ViewPager.LayoutParams lp;
        android.support.v4.view.ViewPager.LayoutParams lp2;
        setMeasuredDimension(getDefaultSize(0, widthMeasureSpec), getDefaultSize(0, heightMeasureSpec));
        int measuredWidth = getMeasuredWidth();
        int maxGutterSize = measuredWidth / 10;
        this.mGutterSize = java.lang.Math.min(maxGutterSize, this.mDefaultGutterSize);
        int childWidthSize = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int childHeightSize = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int size = getChildCount();
        for (int i = 0; i < size; i++) {
            android.view.View child = getChildAt(i);
            if (child.getVisibility() != 8 && (lp2 = (android.support.v4.view.ViewPager.LayoutParams) child.getLayoutParams()) != null && lp2.isDecor) {
                int hgrav = lp2.gravity & 7;
                int vgrav = lp2.gravity & 112;
                int widthMode = Integer.MIN_VALUE;
                int heightMode = Integer.MIN_VALUE;
                boolean consumeVertical = vgrav == 48 || vgrav == 80;
                boolean consumeHorizontal = hgrav == 3 || hgrav == 5;
                if (consumeVertical) {
                    widthMode = 1073741824;
                } else if (consumeHorizontal) {
                    heightMode = 1073741824;
                }
                int widthSize = childWidthSize;
                int heightSize = childHeightSize;
                if (lp2.width != -2) {
                    widthMode = 1073741824;
                    if (lp2.width != -1) {
                        widthSize = lp2.width;
                    }
                }
                if (lp2.height != -2) {
                    heightMode = 1073741824;
                    if (lp2.height != -1) {
                        heightSize = lp2.height;
                    }
                }
                int widthSpec = android.view.View.MeasureSpec.makeMeasureSpec(widthSize, widthMode);
                int heightSpec = android.view.View.MeasureSpec.makeMeasureSpec(heightSize, heightMode);
                child.measure(widthSpec, heightSpec);
                if (consumeVertical) {
                    childHeightSize -= child.getMeasuredHeight();
                } else if (consumeHorizontal) {
                    childWidthSize -= child.getMeasuredWidth();
                }
            }
        }
        this.mChildWidthMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(childWidthSize, 1073741824);
        this.mChildHeightMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(childHeightSize, 1073741824);
        this.mInLayout = true;
        populate();
        this.mInLayout = false;
        int size2 = getChildCount();
        for (int i2 = 0; i2 < size2; i2++) {
            android.view.View child2 = getChildAt(i2);
            if (child2.getVisibility() != 8 && ((lp = (android.support.v4.view.ViewPager.LayoutParams) child2.getLayoutParams()) == null || !lp.isDecor)) {
                int widthSpec2 = android.view.View.MeasureSpec.makeMeasureSpec((int) (childWidthSize * lp.widthFactor), 1073741824);
                child2.measure(widthSpec2, this.mChildHeightMeasureSpec);
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        if (w != oldw) {
            recomputeScrollPosition(w, oldw, this.mPageMargin, this.mPageMargin);
        }
    }

    private void recomputeScrollPosition(int width, int oldWidth, int margin, int oldMargin) {
        if (oldWidth > 0 && !this.mItems.isEmpty()) {
            int widthWithMargin = width + margin;
            int oldWidthWithMargin = oldWidth + oldMargin;
            int xpos = getScrollX();
            float pageOffset = xpos / oldWidthWithMargin;
            int newOffsetPixels = (int) (widthWithMargin * pageOffset);
            scrollTo(newOffsetPixels, getScrollY());
            if (!this.mScroller.isFinished()) {
                int newDuration = this.mScroller.getDuration() - this.mScroller.timePassed();
                android.support.v4.view.ViewPager.ItemInfo targetInfo = infoForPosition(this.mCurItem);
                this.mScroller.startScroll(newOffsetPixels, 0, (int) (targetInfo.offset * width), 0, newDuration);
                return;
            }
            return;
        }
        android.support.v4.view.ViewPager.ItemInfo ii = infoForPosition(this.mCurItem);
        float scrollOffset = ii != null ? java.lang.Math.min(ii.offset, this.mLastOffset) : 0.0f;
        int scrollPos = (int) (width * scrollOffset);
        if (scrollPos != getScrollX()) {
            completeScroll(false);
            scrollTo(scrollPos, getScrollY());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        android.support.v4.view.ViewPager.ItemInfo ii;
        int childLeft;
        int childTop;
        this.mInLayout = true;
        populate();
        this.mInLayout = false;
        int count = getChildCount();
        int width = r - l;
        int height = b - t;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int decorCount = 0;
        for (int i = 0; i < count; i++) {
            android.view.View child = getChildAt(i);
            if (child.getVisibility() != 8) {
                android.support.v4.view.ViewPager.LayoutParams lp = (android.support.v4.view.ViewPager.LayoutParams) child.getLayoutParams();
                if (lp.isDecor) {
                    int hgrav = lp.gravity & 7;
                    int vgrav = lp.gravity & 112;
                    switch (hgrav) {
                        case 1:
                            childLeft = java.lang.Math.max((width - child.getMeasuredWidth()) / 2, paddingLeft);
                            break;
                        case 2:
                        case 4:
                        default:
                            childLeft = paddingLeft;
                            break;
                        case 3:
                            childLeft = paddingLeft;
                            paddingLeft += child.getMeasuredWidth();
                            break;
                        case 5:
                            childLeft = (width - paddingRight) - child.getMeasuredWidth();
                            paddingRight += child.getMeasuredWidth();
                            break;
                    }
                    switch (vgrav) {
                        case 16:
                            childTop = java.lang.Math.max((height - child.getMeasuredHeight()) / 2, paddingTop);
                            break;
                        case 48:
                            childTop = paddingTop;
                            paddingTop += child.getMeasuredHeight();
                            break;
                        case 80:
                            childTop = (height - paddingBottom) - child.getMeasuredHeight();
                            paddingBottom += child.getMeasuredHeight();
                            break;
                        default:
                            childTop = paddingTop;
                            break;
                    }
                    int childLeft2 = childLeft + scrollX;
                    child.layout(childLeft2, childTop, child.getMeasuredWidth() + childLeft2, child.getMeasuredHeight() + childTop);
                    decorCount++;
                }
            }
        }
        for (int i2 = 0; i2 < count; i2++) {
            android.view.View child2 = getChildAt(i2);
            if (child2.getVisibility() != 8) {
                android.support.v4.view.ViewPager.LayoutParams lp2 = (android.support.v4.view.ViewPager.LayoutParams) child2.getLayoutParams();
                if (!lp2.isDecor && (ii = infoForChild(child2)) != null) {
                    int loff = (int) (width * ii.offset);
                    int childLeft3 = paddingLeft + loff;
                    int childTop2 = paddingTop;
                    if (lp2.needsMeasure) {
                        lp2.needsMeasure = false;
                        int widthSpec = android.view.View.MeasureSpec.makeMeasureSpec((int) (((width - paddingLeft) - paddingRight) * lp2.widthFactor), 1073741824);
                        int heightSpec = android.view.View.MeasureSpec.makeMeasureSpec((height - paddingTop) - paddingBottom, 1073741824);
                        child2.measure(widthSpec, heightSpec);
                    }
                    child2.layout(childLeft3, childTop2, child2.getMeasuredWidth() + childLeft3, child2.getMeasuredHeight() + childTop2);
                }
            }
        }
        this.mTopPageBounds = paddingTop;
        this.mBottomPageBounds = height - paddingBottom;
        this.mDecorChildCount = decorCount;
        this.mFirstLayout = false;
    }

    @Override // android.view.View
    public void computeScroll() {
        if (!this.mScroller.isFinished() && this.mScroller.computeScrollOffset()) {
            int oldX = getScrollX();
            int oldY = getScrollY();
            int x = this.mScroller.getCurrX();
            int y = this.mScroller.getCurrY();
            if (oldX != x || oldY != y) {
                scrollTo(x, y);
                if (!pageScrolled(x)) {
                    this.mScroller.abortAnimation();
                    scrollTo(0, y);
                }
            }
            android.support.v4.view.ViewCompat.postInvalidateOnAnimation(this);
            return;
        }
        completeScroll(true);
    }

    private boolean pageScrolled(int xpos) {
        if (this.mItems.size() == 0) {
            this.mCalledSuper = false;
            onPageScrolled(0, 0.0f, 0);
            if (this.mCalledSuper) {
                return false;
            }
            throw new java.lang.IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        android.support.v4.view.ViewPager.ItemInfo ii = infoForCurrentScrollPosition();
        int width = getWidth();
        int widthWithMargin = width + this.mPageMargin;
        float marginOffset = this.mPageMargin / width;
        int currentPage = ii.position;
        float pageOffset = ((xpos / width) - ii.offset) / (ii.widthFactor + marginOffset);
        int offsetPixels = (int) (widthWithMargin * pageOffset);
        this.mCalledSuper = false;
        onPageScrolled(currentPage, pageOffset, offsetPixels);
        if (!this.mCalledSuper) {
            throw new java.lang.IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        return true;
    }

    protected void onPageScrolled(int position, float offset, int offsetPixels) {
        int childLeft;
        if (this.mDecorChildCount > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                android.view.View child = getChildAt(i);
                android.support.v4.view.ViewPager.LayoutParams lp = (android.support.v4.view.ViewPager.LayoutParams) child.getLayoutParams();
                if (lp.isDecor) {
                    int hgrav = lp.gravity & 7;
                    switch (hgrav) {
                        case 1:
                            childLeft = java.lang.Math.max((width - child.getMeasuredWidth()) / 2, paddingLeft);
                            break;
                        case 2:
                        case 4:
                        default:
                            childLeft = paddingLeft;
                            break;
                        case 3:
                            childLeft = paddingLeft;
                            paddingLeft += child.getWidth();
                            break;
                        case 5:
                            childLeft = (width - paddingRight) - child.getMeasuredWidth();
                            paddingRight += child.getMeasuredWidth();
                            break;
                    }
                    int childOffset = (childLeft + scrollX) - child.getLeft();
                    if (childOffset != 0) {
                        child.offsetLeftAndRight(childOffset);
                    }
                }
            }
        }
        if (this.mSeenPositionMin < 0 || position < this.mSeenPositionMin) {
            this.mSeenPositionMin = position;
        }
        if (this.mSeenPositionMax < 0 || android.util.FloatMath.ceil(position + offset) > this.mSeenPositionMax) {
            this.mSeenPositionMax = position + 1;
        }
        if (this.mOnPageChangeListener != null) {
            this.mOnPageChangeListener.onPageScrolled(position, offset, offsetPixels);
        }
        if (this.mInternalPageChangeListener != null) {
            this.mInternalPageChangeListener.onPageScrolled(position, offset, offsetPixels);
        }
        if (this.mPageTransformer != null) {
            int scrollX2 = getScrollX();
            int childCount2 = getChildCount();
            for (int i2 = 0; i2 < childCount2; i2++) {
                android.view.View child2 = getChildAt(i2);
                if (!((android.support.v4.view.ViewPager.LayoutParams) child2.getLayoutParams()).isDecor) {
                    float transformPos = (child2.getLeft() - scrollX2) / getWidth();
                    this.mPageTransformer.transformPage(child2, transformPos);
                }
            }
        }
        this.mCalledSuper = true;
    }

    private void completeScroll(boolean postEvents) {
        boolean needPopulate = this.mScrollState == 2;
        if (needPopulate) {
            setScrollingCacheEnabled(false);
            this.mScroller.abortAnimation();
            int oldX = getScrollX();
            int oldY = getScrollY();
            int x = this.mScroller.getCurrX();
            int y = this.mScroller.getCurrY();
            if (oldX != x || oldY != y) {
                scrollTo(x, y);
            }
        }
        this.mPopulatePending = false;
        for (int i = 0; i < this.mItems.size(); i++) {
            android.support.v4.view.ViewPager.ItemInfo ii = this.mItems.get(i);
            if (ii.scrolling) {
                needPopulate = true;
                ii.scrolling = false;
            }
        }
        if (needPopulate) {
            if (postEvents) {
                android.support.v4.view.ViewCompat.postOnAnimation(this, this.mEndScrollRunnable);
            } else {
                this.mEndScrollRunnable.run();
            }
        }
    }

    private boolean isGutterDrag(float x, float dx) {
        return (x < ((float) this.mGutterSize) && dx > 0.0f) || (x > ((float) (getWidth() - this.mGutterSize)) && dx < 0.0f);
    }

    private void enableLayers(boolean enable) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            int layerType = enable ? 2 : 0;
            android.support.v4.view.ViewCompat.setLayerType(getChildAt(i), layerType, null);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(android.view.MotionEvent ev) {
        int action = ev.getAction() & android.support.v4.view.MotionEventCompat.ACTION_MASK;
        if (action == 3 || action == 1) {
            this.mIsBeingDragged = false;
            this.mIsUnableToDrag = false;
            this.mActivePointerId = -1;
            if (this.mVelocityTracker != null) {
                this.mVelocityTracker.recycle();
                this.mVelocityTracker = null;
            }
            return false;
        }
        if (action != 0) {
            if (this.mIsBeingDragged) {
                return true;
            }
            if (this.mIsUnableToDrag) {
                return false;
            }
        }
        switch (action) {
            case 0:
                float x = ev.getX();
                this.mInitialMotionX = x;
                this.mLastMotionX = x;
                this.mLastMotionY = ev.getY();
                this.mActivePointerId = android.support.v4.view.MotionEventCompat.getPointerId(ev, 0);
                this.mIsUnableToDrag = false;
                this.mScroller.computeScrollOffset();
                if (this.mScrollState == 2 && java.lang.Math.abs(this.mScroller.getFinalX() - this.mScroller.getCurrX()) > this.mCloseEnough) {
                    this.mScroller.abortAnimation();
                    this.mPopulatePending = false;
                    populate();
                    this.mIsBeingDragged = true;
                    setScrollState(1);
                    break;
                } else {
                    completeScroll(false);
                    this.mIsBeingDragged = false;
                    break;
                }
            case 2:
                int activePointerId = this.mActivePointerId;
                if (activePointerId != -1) {
                    int pointerIndex = android.support.v4.view.MotionEventCompat.findPointerIndex(ev, activePointerId);
                    float x2 = android.support.v4.view.MotionEventCompat.getX(ev, pointerIndex);
                    float dx = x2 - this.mLastMotionX;
                    float xDiff = java.lang.Math.abs(dx);
                    float y = android.support.v4.view.MotionEventCompat.getY(ev, pointerIndex);
                    float yDiff = java.lang.Math.abs(y - this.mLastMotionY);
                    if (dx != 0.0f && !isGutterDrag(this.mLastMotionX, dx) && canScroll(this, false, (int) dx, (int) x2, (int) y)) {
                        this.mLastMotionX = x2;
                        this.mInitialMotionX = x2;
                        this.mLastMotionY = y;
                        this.mIsUnableToDrag = true;
                        return false;
                    }
                    if (xDiff > this.mTouchSlop && xDiff > yDiff) {
                        this.mIsBeingDragged = true;
                        setScrollState(1);
                        this.mLastMotionX = dx > 0.0f ? this.mInitialMotionX + this.mTouchSlop : this.mInitialMotionX - this.mTouchSlop;
                        setScrollingCacheEnabled(true);
                    } else if (yDiff > this.mTouchSlop) {
                        this.mIsUnableToDrag = true;
                    }
                    if (this.mIsBeingDragged && performDrag(x2)) {
                        android.support.v4.view.ViewCompat.postInvalidateOnAnimation(this);
                        break;
                    }
                }
                break;
            case 6:
                onSecondaryPointerUp(ev);
                break;
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = android.view.VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(ev);
        return this.mIsBeingDragged;
    }

    @Override // android.view.View
    public boolean onTouchEvent(android.view.MotionEvent ev) {
        if (this.mFakeDragging) {
            return true;
        }
        if ((ev.getAction() == 0 && ev.getEdgeFlags() != 0) || this.mAdapter == null || this.mAdapter.getCount() == 0) {
            return false;
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = android.view.VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(ev);
        int action = ev.getAction();
        boolean needsInvalidate = false;
        switch (action & android.support.v4.view.MotionEventCompat.ACTION_MASK) {
            case 0:
                this.mScroller.abortAnimation();
                this.mPopulatePending = false;
                populate();
                this.mIsBeingDragged = true;
                setScrollState(1);
                float x = ev.getX();
                this.mInitialMotionX = x;
                this.mLastMotionX = x;
                this.mActivePointerId = android.support.v4.view.MotionEventCompat.getPointerId(ev, 0);
                break;
            case 1:
                if (this.mIsBeingDragged) {
                    android.view.VelocityTracker velocityTracker = this.mVelocityTracker;
                    velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
                    int initialVelocity = (int) android.support.v4.view.VelocityTrackerCompat.getXVelocity(velocityTracker, this.mActivePointerId);
                    this.mPopulatePending = true;
                    int width = getWidth();
                    int scrollX = getScrollX();
                    android.support.v4.view.ViewPager.ItemInfo ii = infoForCurrentScrollPosition();
                    int currentPage = ii.position;
                    float pageOffset = ((scrollX / width) - ii.offset) / ii.widthFactor;
                    int activePointerIndex = android.support.v4.view.MotionEventCompat.findPointerIndex(ev, this.mActivePointerId);
                    float x2 = android.support.v4.view.MotionEventCompat.getX(ev, activePointerIndex);
                    int totalDelta = (int) (x2 - this.mInitialMotionX);
                    int nextPage = determineTargetPage(currentPage, pageOffset, initialVelocity, totalDelta);
                    setCurrentItemInternal(nextPage, true, true, initialVelocity);
                    this.mActivePointerId = -1;
                    endDrag();
                    needsInvalidate = this.mLeftEdge.onRelease() | this.mRightEdge.onRelease();
                    break;
                }
                break;
            case 2:
                if (!this.mIsBeingDragged) {
                    int pointerIndex = android.support.v4.view.MotionEventCompat.findPointerIndex(ev, this.mActivePointerId);
                    float x3 = android.support.v4.view.MotionEventCompat.getX(ev, pointerIndex);
                    float xDiff = java.lang.Math.abs(x3 - this.mLastMotionX);
                    float y = android.support.v4.view.MotionEventCompat.getY(ev, pointerIndex);
                    float yDiff = java.lang.Math.abs(y - this.mLastMotionY);
                    if (xDiff > this.mTouchSlop && xDiff > yDiff) {
                        this.mIsBeingDragged = true;
                        this.mLastMotionX = x3 - this.mInitialMotionX > 0.0f ? this.mInitialMotionX + this.mTouchSlop : this.mInitialMotionX - this.mTouchSlop;
                        setScrollState(1);
                        setScrollingCacheEnabled(true);
                    }
                }
                if (this.mIsBeingDragged) {
                    int activePointerIndex2 = android.support.v4.view.MotionEventCompat.findPointerIndex(ev, this.mActivePointerId);
                    float x4 = android.support.v4.view.MotionEventCompat.getX(ev, activePointerIndex2);
                    needsInvalidate = false | performDrag(x4);
                    break;
                }
                break;
            case 3:
                if (this.mIsBeingDragged) {
                    scrollToItem(this.mCurItem, true, 0, false);
                    this.mActivePointerId = -1;
                    endDrag();
                    needsInvalidate = this.mLeftEdge.onRelease() | this.mRightEdge.onRelease();
                    break;
                }
                break;
            case 5:
                int index = android.support.v4.view.MotionEventCompat.getActionIndex(ev);
                float x5 = android.support.v4.view.MotionEventCompat.getX(ev, index);
                this.mLastMotionX = x5;
                this.mActivePointerId = android.support.v4.view.MotionEventCompat.getPointerId(ev, index);
                break;
            case 6:
                onSecondaryPointerUp(ev);
                this.mLastMotionX = android.support.v4.view.MotionEventCompat.getX(ev, android.support.v4.view.MotionEventCompat.findPointerIndex(ev, this.mActivePointerId));
                break;
        }
        if (needsInvalidate) {
            android.support.v4.view.ViewCompat.postInvalidateOnAnimation(this);
        }
        return true;
    }

    private boolean performDrag(float x) {
        boolean needsInvalidate = false;
        float deltaX = this.mLastMotionX - x;
        this.mLastMotionX = x;
        float oldScrollX = getScrollX();
        float scrollX = oldScrollX + deltaX;
        int width = getWidth();
        float leftBound = width * this.mFirstOffset;
        float rightBound = width * this.mLastOffset;
        boolean leftAbsolute = true;
        boolean rightAbsolute = true;
        android.support.v4.view.ViewPager.ItemInfo firstItem = this.mItems.get(0);
        android.support.v4.view.ViewPager.ItemInfo lastItem = this.mItems.get(this.mItems.size() - 1);
        if (firstItem.position != 0) {
            leftAbsolute = false;
            leftBound = firstItem.offset * width;
        }
        if (lastItem.position != this.mAdapter.getCount() - 1) {
            rightAbsolute = false;
            rightBound = lastItem.offset * width;
        }
        if (scrollX < leftBound) {
            if (leftAbsolute) {
                float over = leftBound - scrollX;
                needsInvalidate = this.mLeftEdge.onPull(java.lang.Math.abs(over) / width);
            }
            scrollX = leftBound;
        } else if (scrollX > rightBound) {
            if (rightAbsolute) {
                float over2 = scrollX - rightBound;
                needsInvalidate = this.mRightEdge.onPull(java.lang.Math.abs(over2) / width);
            }
            scrollX = rightBound;
        }
        this.mLastMotionX += scrollX - ((int) scrollX);
        scrollTo((int) scrollX, getScrollY());
        pageScrolled((int) scrollX);
        return needsInvalidate;
    }

    private android.support.v4.view.ViewPager.ItemInfo infoForCurrentScrollPosition() {
        int width = getWidth();
        float scrollOffset = width > 0 ? getScrollX() / width : 0.0f;
        float marginOffset = width > 0 ? this.mPageMargin / width : 0.0f;
        int lastPos = -1;
        float lastOffset = 0.0f;
        float lastWidth = 0.0f;
        boolean first = true;
        android.support.v4.view.ViewPager.ItemInfo lastItem = null;
        int i = 0;
        while (i < this.mItems.size()) {
            android.support.v4.view.ViewPager.ItemInfo ii = this.mItems.get(i);
            if (!first && ii.position != lastPos + 1) {
                ii = this.mTempItem;
                ii.offset = lastOffset + lastWidth + marginOffset;
                ii.position = lastPos + 1;
                ii.widthFactor = this.mAdapter.getPageWidth(ii.position);
                i--;
            }
            float offset = ii.offset;
            float rightBound = ii.widthFactor + offset + marginOffset;
            if (!first && scrollOffset < offset) {
                return lastItem;
            }
            if (scrollOffset >= rightBound && i != this.mItems.size() - 1) {
                first = false;
                lastPos = ii.position;
                lastOffset = offset;
                lastWidth = ii.widthFactor;
                lastItem = ii;
                i++;
            } else {
                android.support.v4.view.ViewPager.ItemInfo lastItem2 = ii;
                return lastItem2;
            }
        }
        return lastItem;
    }

    private int determineTargetPage(int currentPage, float pageOffset, int velocity, int deltaX) {
        int targetPage;
        if (java.lang.Math.abs(deltaX) > this.mFlingDistance && java.lang.Math.abs(velocity) > this.mMinimumVelocity) {
            targetPage = velocity > 0 ? currentPage : currentPage + 1;
        } else if (this.mSeenPositionMin >= 0 && this.mSeenPositionMin < currentPage && pageOffset < 0.5f) {
            targetPage = currentPage + 1;
        } else if (this.mSeenPositionMax >= 0 && this.mSeenPositionMax > currentPage + 1 && pageOffset >= 0.5f) {
            targetPage = currentPage - 1;
        } else {
            targetPage = (int) (currentPage + pageOffset + 0.5f);
        }
        if (this.mItems.size() > 0) {
            android.support.v4.view.ViewPager.ItemInfo firstItem = this.mItems.get(0);
            android.support.v4.view.ViewPager.ItemInfo lastItem = this.mItems.get(this.mItems.size() - 1);
            return java.lang.Math.max(firstItem.position, java.lang.Math.min(targetPage, lastItem.position));
        }
        return targetPage;
    }

    @Override // android.view.View
    public void draw(android.graphics.Canvas canvas) {
        super.draw(canvas);
        boolean needsInvalidate = false;
        int overScrollMode = android.support.v4.view.ViewCompat.getOverScrollMode(this);
        if (overScrollMode == 0 || (overScrollMode == 1 && this.mAdapter != null && this.mAdapter.getCount() > 1)) {
            if (!this.mLeftEdge.isFinished()) {
                int restoreCount = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.mFirstOffset * width);
                this.mLeftEdge.setSize(height, width);
                needsInvalidate = false | this.mLeftEdge.draw(canvas);
                canvas.restoreToCount(restoreCount);
            }
            if (!this.mRightEdge.isFinished()) {
                int restoreCount2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.mLastOffset + 1.0f)) * width2);
                this.mRightEdge.setSize(height2, width2);
                needsInvalidate |= this.mRightEdge.draw(canvas);
                canvas.restoreToCount(restoreCount2);
            }
        } else {
            this.mLeftEdge.finish();
            this.mRightEdge.finish();
        }
        if (needsInvalidate) {
            android.support.v4.view.ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    @Override // android.view.View
    protected void onDraw(android.graphics.Canvas canvas) {
        float drawAt;
        super.onDraw(canvas);
        if (this.mPageMargin > 0 && this.mMarginDrawable != null && this.mItems.size() > 0 && this.mAdapter != null) {
            int scrollX = getScrollX();
            int width = getWidth();
            float marginOffset = this.mPageMargin / width;
            int itemIndex = 0;
            android.support.v4.view.ViewPager.ItemInfo ii = this.mItems.get(0);
            float offset = ii.offset;
            int itemCount = this.mItems.size();
            int firstPos = ii.position;
            int lastPos = this.mItems.get(itemCount - 1).position;
            for (int pos = firstPos; pos < lastPos; pos++) {
                while (pos > ii.position && itemIndex < itemCount) {
                    itemIndex++;
                    ii = this.mItems.get(itemIndex);
                }
                if (pos == ii.position) {
                    drawAt = (ii.offset + ii.widthFactor) * width;
                    offset = ii.offset + ii.widthFactor + marginOffset;
                } else {
                    float widthFactor = this.mAdapter.getPageWidth(pos);
                    drawAt = (offset + widthFactor) * width;
                    offset += widthFactor + marginOffset;
                }
                if (this.mPageMargin + drawAt > scrollX) {
                    this.mMarginDrawable.setBounds((int) drawAt, this.mTopPageBounds, (int) (this.mPageMargin + drawAt + 0.5f), this.mBottomPageBounds);
                    this.mMarginDrawable.draw(canvas);
                }
                if (drawAt > scrollX + width) {
                    return;
                }
            }
        }
    }

    public boolean beginFakeDrag() {
        if (this.mIsBeingDragged) {
            return false;
        }
        this.mFakeDragging = true;
        setScrollState(1);
        this.mLastMotionX = 0.0f;
        this.mInitialMotionX = 0.0f;
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = android.view.VelocityTracker.obtain();
        } else {
            this.mVelocityTracker.clear();
        }
        long time = android.os.SystemClock.uptimeMillis();
        android.view.MotionEvent ev = android.view.MotionEvent.obtain(time, time, 0, 0.0f, 0.0f, 0);
        this.mVelocityTracker.addMovement(ev);
        ev.recycle();
        this.mFakeDragBeginTime = time;
        return true;
    }

    public void endFakeDrag() {
        if (!this.mFakeDragging) {
            throw new java.lang.IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        }
        android.view.VelocityTracker velocityTracker = this.mVelocityTracker;
        velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
        int initialVelocity = (int) android.support.v4.view.VelocityTrackerCompat.getXVelocity(velocityTracker, this.mActivePointerId);
        this.mPopulatePending = true;
        int width = getWidth();
        int scrollX = getScrollX();
        android.support.v4.view.ViewPager.ItemInfo ii = infoForCurrentScrollPosition();
        int currentPage = ii.position;
        float pageOffset = ((scrollX / width) - ii.offset) / ii.widthFactor;
        int totalDelta = (int) (this.mLastMotionX - this.mInitialMotionX);
        int nextPage = determineTargetPage(currentPage, pageOffset, initialVelocity, totalDelta);
        setCurrentItemInternal(nextPage, true, true, initialVelocity);
        endDrag();
        this.mFakeDragging = false;
    }

    public void fakeDragBy(float xOffset) {
        if (!this.mFakeDragging) {
            throw new java.lang.IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        }
        this.mLastMotionX += xOffset;
        float oldScrollX = getScrollX();
        float scrollX = oldScrollX - xOffset;
        int width = getWidth();
        float leftBound = width * this.mFirstOffset;
        float rightBound = width * this.mLastOffset;
        android.support.v4.view.ViewPager.ItemInfo firstItem = this.mItems.get(0);
        android.support.v4.view.ViewPager.ItemInfo lastItem = this.mItems.get(this.mItems.size() - 1);
        if (firstItem.position != 0) {
            leftBound = firstItem.offset * width;
        }
        if (lastItem.position != this.mAdapter.getCount() - 1) {
            rightBound = lastItem.offset * width;
        }
        if (scrollX < leftBound) {
            scrollX = leftBound;
        } else if (scrollX > rightBound) {
            scrollX = rightBound;
        }
        this.mLastMotionX += scrollX - ((int) scrollX);
        scrollTo((int) scrollX, getScrollY());
        pageScrolled((int) scrollX);
        long time = android.os.SystemClock.uptimeMillis();
        android.view.MotionEvent ev = android.view.MotionEvent.obtain(this.mFakeDragBeginTime, time, 2, this.mLastMotionX, 0.0f, 0);
        this.mVelocityTracker.addMovement(ev);
        ev.recycle();
    }

    public boolean isFakeDragging() {
        return this.mFakeDragging;
    }

    private void onSecondaryPointerUp(android.view.MotionEvent ev) {
        int pointerIndex = android.support.v4.view.MotionEventCompat.getActionIndex(ev);
        int pointerId = android.support.v4.view.MotionEventCompat.getPointerId(ev, pointerIndex);
        if (pointerId == this.mActivePointerId) {
            int newPointerIndex = pointerIndex == 0 ? 1 : 0;
            this.mLastMotionX = android.support.v4.view.MotionEventCompat.getX(ev, newPointerIndex);
            this.mActivePointerId = android.support.v4.view.MotionEventCompat.getPointerId(ev, newPointerIndex);
            if (this.mVelocityTracker != null) {
                this.mVelocityTracker.clear();
            }
        }
    }

    private void endDrag() {
        this.mIsBeingDragged = false;
        this.mIsUnableToDrag = false;
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private void setScrollingCacheEnabled(boolean enabled) {
        if (this.mScrollingCacheEnabled != enabled) {
            this.mScrollingCacheEnabled = enabled;
        }
    }

    protected boolean canScroll(android.view.View v, boolean checkV, int dx, int x, int y) {
        if (v instanceof android.view.ViewGroup) {
            android.view.ViewGroup group = (android.view.ViewGroup) v;
            int scrollX = v.getScrollX();
            int scrollY = v.getScrollY();
            int count = group.getChildCount();
            for (int i = count - 1; i >= 0; i--) {
                android.view.View child = group.getChildAt(i);
                if (x + scrollX >= child.getLeft() && x + scrollX < child.getRight() && y + scrollY >= child.getTop() && y + scrollY < child.getBottom() && canScroll(child, true, dx, (x + scrollX) - child.getLeft(), (y + scrollY) - child.getTop())) {
                    return true;
                }
            }
        }
        return checkV && android.support.v4.view.ViewCompat.canScrollHorizontally(v, -dx);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(android.view.KeyEvent event) {
        return super.dispatchKeyEvent(event) || executeKeyEvent(event);
    }

    public boolean executeKeyEvent(android.view.KeyEvent event) {
        if (event.getAction() != 0) {
            return false;
        }
        switch (event.getKeyCode()) {
            case 21:
                boolean handled = arrowScroll(17);
                break;
            case 22:
                boolean handled2 = arrowScroll(66);
                break;
            case 61:
                if (android.os.Build.VERSION.SDK_INT >= 11) {
                    if (android.support.v4.view.KeyEventCompat.hasNoModifiers(event)) {
                        boolean handled3 = arrowScroll(2);
                        break;
                    } else if (android.support.v4.view.KeyEventCompat.hasModifiers(event, 1)) {
                        boolean handled4 = arrowScroll(1);
                        break;
                    }
                }
                break;
        }
        return false;
    }

    public boolean arrowScroll(int direction) {
        android.view.View currentFocused = findFocus();
        if (currentFocused == this) {
            currentFocused = null;
        }
        boolean handled = false;
        android.view.View nextFocused = android.view.FocusFinder.getInstance().findNextFocus(this, currentFocused, direction);
        if (nextFocused != null && nextFocused != currentFocused) {
            if (direction == 17) {
                int nextLeft = getChildRectInPagerCoordinates(this.mTempRect, nextFocused).left;
                int currLeft = getChildRectInPagerCoordinates(this.mTempRect, currentFocused).left;
                handled = (currentFocused == null || nextLeft < currLeft) ? nextFocused.requestFocus() : pageLeft();
            } else if (direction == 66) {
                int nextLeft2 = getChildRectInPagerCoordinates(this.mTempRect, nextFocused).left;
                int currLeft2 = getChildRectInPagerCoordinates(this.mTempRect, currentFocused).left;
                handled = (currentFocused == null || nextLeft2 > currLeft2) ? nextFocused.requestFocus() : pageRight();
            }
        } else if (direction == 17 || direction == 1) {
            handled = pageLeft();
        } else if (direction == 66 || direction == 2) {
            handled = pageRight();
        }
        if (handled) {
            playSoundEffect(android.view.SoundEffectConstants.getContantForFocusDirection(direction));
        }
        return handled;
    }

    private android.graphics.Rect getChildRectInPagerCoordinates(android.graphics.Rect outRect, android.view.View child) {
        if (outRect == null) {
            outRect = new android.graphics.Rect();
        }
        if (child == null) {
            outRect.set(0, 0, 0, 0);
        } else {
            outRect.left = child.getLeft();
            outRect.right = child.getRight();
            outRect.top = child.getTop();
            outRect.bottom = child.getBottom();
            android.view.ViewParent parent = child.getParent();
            while ((parent instanceof android.view.ViewGroup) && parent != this) {
                android.view.ViewGroup group = (android.view.ViewGroup) parent;
                outRect.left += group.getLeft();
                outRect.right += group.getRight();
                outRect.top += group.getTop();
                outRect.bottom += group.getBottom();
                parent = group.getParent();
            }
        }
        return outRect;
    }

    boolean pageLeft() {
        if (this.mCurItem <= 0) {
            return false;
        }
        setCurrentItem(this.mCurItem - 1, true);
        return true;
    }

    boolean pageRight() {
        if (this.mAdapter == null || this.mCurItem >= this.mAdapter.getCount() - 1) {
            return false;
        }
        setCurrentItem(this.mCurItem + 1, true);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(java.util.ArrayList<android.view.View> views, int direction, int focusableMode) {
        android.support.v4.view.ViewPager.ItemInfo ii;
        int focusableCount = views.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i = 0; i < getChildCount(); i++) {
                android.view.View child = getChildAt(i);
                if (child.getVisibility() == 0 && (ii = infoForChild(child)) != null && ii.position == this.mCurItem) {
                    child.addFocusables(views, direction, focusableMode);
                }
            }
        }
        if ((descendantFocusability != 262144 || focusableCount == views.size()) && isFocusable()) {
            if (((focusableMode & 1) != 1 || !isInTouchMode() || isFocusableInTouchMode()) && views != null) {
                views.add(this);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(java.util.ArrayList<android.view.View> views) {
        android.support.v4.view.ViewPager.ItemInfo ii;
        for (int i = 0; i < getChildCount(); i++) {
            android.view.View child = getChildAt(i);
            if (child.getVisibility() == 0 && (ii = infoForChild(child)) != null && ii.position == this.mCurItem) {
                child.addTouchables(views);
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int direction, android.graphics.Rect previouslyFocusedRect) {
        int index;
        int increment;
        int end;
        android.support.v4.view.ViewPager.ItemInfo ii;
        int count = getChildCount();
        if ((direction & 2) != 0) {
            index = 0;
            increment = 1;
            end = count;
        } else {
            index = count - 1;
            increment = -1;
            end = -1;
        }
        for (int i = index; i != end; i += increment) {
            android.view.View child = getChildAt(i);
            if (child.getVisibility() == 0 && (ii = infoForChild(child)) != null && ii.position == this.mCurItem && child.requestFocus(direction, previouslyFocusedRect)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(android.view.accessibility.AccessibilityEvent event) {
        android.support.v4.view.ViewPager.ItemInfo ii;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            android.view.View child = getChildAt(i);
            if (child.getVisibility() == 0 && (ii = infoForChild(child)) != null && ii.position == this.mCurItem && child.dispatchPopulateAccessibilityEvent(event)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new android.support.v4.view.ViewPager.LayoutParams();
    }

    @Override // android.view.ViewGroup
    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams p) {
        return generateDefaultLayoutParams();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams p) {
        return (p instanceof android.support.v4.view.ViewPager.LayoutParams) && super.checkLayoutParams(p);
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.util.AttributeSet attrs) {
        return new android.support.v4.view.ViewPager.LayoutParams(getContext(), attrs);
    }

    class MyAccessibilityDelegate extends android.support.v4.view.AccessibilityDelegateCompat {
        MyAccessibilityDelegate() {
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(android.view.View host, android.view.accessibility.AccessibilityEvent event) {
            super.onInitializeAccessibilityEvent(host, event);
            event.setClassName(android.support.v4.view.ViewPager.class.getName());
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(android.view.View host, android.support.v4.view.accessibility.AccessibilityNodeInfoCompat info) {
            super.onInitializeAccessibilityNodeInfo(host, info);
            info.setClassName(android.support.v4.view.ViewPager.class.getName());
            info.setScrollable(android.support.v4.view.ViewPager.this.mAdapter != null && android.support.v4.view.ViewPager.this.mAdapter.getCount() > 1);
            if (android.support.v4.view.ViewPager.this.mAdapter != null && android.support.v4.view.ViewPager.this.mCurItem >= 0 && android.support.v4.view.ViewPager.this.mCurItem < android.support.v4.view.ViewPager.this.mAdapter.getCount() - 1) {
                info.addAction(4096);
            }
            if (android.support.v4.view.ViewPager.this.mAdapter != null && android.support.v4.view.ViewPager.this.mCurItem > 0 && android.support.v4.view.ViewPager.this.mCurItem < android.support.v4.view.ViewPager.this.mAdapter.getCount()) {
                info.addAction(8192);
            }
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(android.view.View host, int action, android.os.Bundle args) {
            if (super.performAccessibilityAction(host, action, args)) {
                return true;
            }
            switch (action) {
                case 4096:
                    if (android.support.v4.view.ViewPager.this.mAdapter == null || android.support.v4.view.ViewPager.this.mCurItem < 0 || android.support.v4.view.ViewPager.this.mCurItem >= android.support.v4.view.ViewPager.this.mAdapter.getCount() - 1) {
                        return false;
                    }
                    android.support.v4.view.ViewPager.this.setCurrentItem(android.support.v4.view.ViewPager.this.mCurItem + 1);
                    return true;
                case 8192:
                    if (android.support.v4.view.ViewPager.this.mAdapter == null || android.support.v4.view.ViewPager.this.mCurItem <= 0 || android.support.v4.view.ViewPager.this.mCurItem >= android.support.v4.view.ViewPager.this.mAdapter.getCount()) {
                        return false;
                    }
                    android.support.v4.view.ViewPager.this.setCurrentItem(android.support.v4.view.ViewPager.this.mCurItem - 1);
                    return true;
                default:
                    return false;
            }
        }
    }

    private class PagerObserver extends android.database.DataSetObserver {
        private PagerObserver() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            android.support.v4.view.ViewPager.this.dataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            android.support.v4.view.ViewPager.this.dataSetChanged();
        }
    }

    public static class LayoutParams extends android.view.ViewGroup.LayoutParams {
        int childIndex;
        public int gravity;
        public boolean isDecor;
        boolean needsMeasure;
        int position;
        float widthFactor;

        public LayoutParams() {
            super(-1, -1);
            this.widthFactor = 0.0f;
        }

        public LayoutParams(android.content.Context context, android.util.AttributeSet attrs) {
            super(context, attrs);
            this.widthFactor = 0.0f;
            android.content.res.TypedArray a = context.obtainStyledAttributes(attrs, android.support.v4.view.ViewPager.LAYOUT_ATTRS);
            this.gravity = a.getInteger(0, 48);
            a.recycle();
        }
    }

    static class ViewPositionComparator implements java.util.Comparator<android.view.View> {
        ViewPositionComparator() {
        }

        @Override // java.util.Comparator
        public int compare(android.view.View lhs, android.view.View rhs) {
            android.support.v4.view.ViewPager.LayoutParams llp = (android.support.v4.view.ViewPager.LayoutParams) lhs.getLayoutParams();
            android.support.v4.view.ViewPager.LayoutParams rlp = (android.support.v4.view.ViewPager.LayoutParams) rhs.getLayoutParams();
            if (llp.isDecor != rlp.isDecor) {
                return llp.isDecor ? 1 : -1;
            }
            return llp.position - rlp.position;
        }
    }
}
