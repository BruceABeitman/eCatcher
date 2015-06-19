.class public Landroid/support/v4/view/DraftViewPager;
.super Landroid/view/ViewGroup;
.source "DraftViewPager.java"
.field private static final COMPARATOR:Ljava/util/Comparator; = null
.field private static final DEBUG:Z = false
.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1
.field private static final INVALID_POINTER:I = -0x1
.field private static final LAYOUT_ATTRS:[I = null
.field private static final MAX_SETTLE_DURATION:I = 0x258
.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19
.field public static final SCROLL_STATE_DRAGGING:I = 0x1
.field public static final SCROLL_STATE_IDLE:I = 0x0
.field public static final SCROLL_STATE_SETTLING:I = 0x2
.field private static final TAG:Ljava/lang/String; = "ViewPager"
.field private static final USE_CACHE:Z
.field private static final sInterpolator:Landroid/view/animation/Interpolator;
.field private mActivePointerId:I
.field private mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
.field private mAdapterChangeListener:Landroid/support/v4/view/DraftViewPager$OnAdapterChangeListener;
.field private mBottomPageBounds:I
.field private mCalledSuper:Z
.field private mChildHeightMeasureSpec:I
.field private mChildWidthMeasureSpec:I
.field private mCurItem:I
.field private mDecorChildCount:I
.field private mDraftMargin:I
.field private mFakeDragBeginTime:J
.field private mFakeDragging:Z
.field private mFirstLayout:Z
.field private mFlingDistance:I
.field private mInLayout:Z
.field private mInitialMotionX:F
.field private mInternalPageChangeListener:Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;
.field private mIsBeingDragged:Z
.field private mIsUnableToDrag:Z
.field private final mItems:Ljava/util/ArrayList;
.field private mLastMotionX:F
.field private mLastMotionY:F
.field private mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;
.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;
.field private mMaximumVelocity:I
.field private mMinimumVelocity:I
.field private mObserver:Landroid/support/v4/view/DraftViewPager$PagerObserver;
.field private mOffscreenPageLimit:I
.field private mOnPageChangeListener:Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;
.field private mPageMargin:I
.field private mPopulatePending:Z
.field private mPreviewRatio:F
.field private mRestoredAdapterState:Landroid/os/Parcelable;
.field private mRestoredClassLoader:Ljava/lang/ClassLoader;
.field private mRestoredCurItem:I
.field private mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;
.field private mScrollState:I
.field private mScroller:Landroid/widget/Scroller;
.field private mScrolling:Z
.field private mScrollingCacheEnabled:Z
.field private mTopPageBounds:I
.field private mTouchSlop:I
.field private mVelocityTracker:Landroid/view/VelocityTracker;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [I
const/4 v1, 0x0
const v2, 0x10100b3
aput v2, v0, v1
sput-object v0, Landroid/support/v4/view/DraftViewPager;->LAYOUT_ATTRS:[I
new-instance v0, Landroid/support/v4/view/DraftViewPager$1;
invoke-direct {v0}, Landroid/support/v4/view/DraftViewPager$1;-><init>()V
sput-object v0, Landroid/support/v4/view/DraftViewPager;->COMPARATOR:Ljava/util/Comparator;
new-instance v0, Landroid/support/v4/view/DraftViewPager$2;
invoke-direct {v0}, Landroid/support/v4/view/DraftViewPager$2;-><init>()V
sput-object v0, Landroid/support/v4/view/DraftViewPager;->sInterpolator:Landroid/view/animation/Interpolator;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v4/view/DraftViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 8
const/4 v4, 0x0
const/4 v3, 0x1
const/4 v2, -0x1
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
iput v2, p0, Landroid/support/v4/view/DraftViewPager;->mRestoredCurItem:I
iput-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;
iput-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;
iput v3, p0, Landroid/support/v4/view/DraftViewPager;->mOffscreenPageLimit:I
iput v2, p0, Landroid/support/v4/view/DraftViewPager;->mActivePointerId:I
iput-boolean v3, p0, Landroid/support/v4/view/DraftViewPager;->mFirstLayout:Z
const/4 v1, 0x0
iput v1, p0, Landroid/support/v4/view/DraftViewPager;->mScrollState:I
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0c0003
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I
move-result v1
int-to-float v1, v1
const/high16 v2, 0x42c8
div-float/2addr v1, v2
iput v1, p0, Landroid/support/v4/view/DraftViewPager;->mPreviewRatio:F
const v1, 0x7f0b0036
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v1
iput v1, p0, Landroid/support/v4/view/DraftViewPager;->mDraftMargin:I
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->initViewPager()V
return-void
.end method
.method static synthetic access$100()[I
.registers 1
sget-object v0, Landroid/support/v4/view/DraftViewPager;->LAYOUT_ATTRS:[I
return-object v0
.end method
.method private completeScroll()V
.registers 10
const/4 v8, 0x0
iget-boolean v2, p0, Landroid/support/v4/view/DraftViewPager;->mScrolling:Z
if-eqz v2, :cond_2b
invoke-direct {p0, v8}, Landroid/support/v4/view/DraftViewPager;->setScrollingCacheEnabled(Z)V
iget-object v7, p0, Landroid/support/v4/view/DraftViewPager;->mScroller:Landroid/widget/Scroller;
invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getScrollX()I
move-result v3
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getScrollY()I
move-result v4
iget-object v7, p0, Landroid/support/v4/view/DraftViewPager;->mScroller:Landroid/widget/Scroller;
invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I
move-result v5
iget-object v7, p0, Landroid/support/v4/view/DraftViewPager;->mScroller:Landroid/widget/Scroller;
invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I
move-result v6
if-ne v3, v5, :cond_25
if-eq v4, v6, :cond_28
:cond_25
invoke-virtual {p0, v5, v6}, Landroid/support/v4/view/DraftViewPager;->scrollTo(II)V
:cond_28
invoke-direct {p0, v8}, Landroid/support/v4/view/DraftViewPager;->setScrollState(I)V
:cond_2b
iput-boolean v8, p0, Landroid/support/v4/view/DraftViewPager;->mPopulatePending:Z
iput-boolean v8, p0, Landroid/support/v4/view/DraftViewPager;->mScrolling:Z
const/4 v0, 0x0
:goto_30
iget-object v7, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
move-result v7
if-ge v0, v7, :cond_4a
iget-object v7, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/view/DraftViewPager$ItemInfo;
iget-boolean v7, v1, Landroid/support/v4/view/DraftViewPager$ItemInfo;->scrolling:Z
if-eqz v7, :cond_47
const/4 v2, 0x1
iput-boolean v8, v1, Landroid/support/v4/view/DraftViewPager$ItemInfo;->scrolling:Z
:cond_47
add-int/lit8 v0, v0, 0x1
goto :goto_30
:cond_4a
if-eqz v2, :cond_4f
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->populate()V
:cond_4f
return-void
.end method
.method private determineTargetPage(IFII)I
.registers 8
invoke-static {p4}, Ljava/lang/Math;->abs(I)I
move-result v1
iget v2, p0, Landroid/support/v4/view/DraftViewPager;->mFlingDistance:I
if-le v1, v2, :cond_17
invoke-static {p3}, Ljava/lang/Math;->abs(I)I
move-result v1
iget v2, p0, Landroid/support/v4/view/DraftViewPager;->mMinimumVelocity:I
if-le v1, v2, :cond_17
if-lez p3, :cond_14
move v0, p1
:goto_13
return v0
:cond_14
add-int/lit8 v0, p1, 0x1
goto :goto_13
:cond_17
int-to-float v1, p1
add-float/2addr v1, p2
const/high16 v2, 0x3f00
add-float/2addr v1, v2
float-to-int v0, v1
goto :goto_13
.end method
.method private endDrag()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/view/DraftViewPager;->mIsBeingDragged:Z
iput-boolean v0, p0, Landroid/support/v4/view/DraftViewPager;->mIsUnableToDrag:Z
iget-object v0, p0, Landroid/support/v4/view/DraftViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;
if-eqz v0, :cond_11
iget-object v0, p0, Landroid/support/v4/view/DraftViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;
invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/view/DraftViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;
:cond_11
return-void
.end method
.method private getAdjustedXDestination(I)I
.registers 5
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getWidth()I
move-result v1
int-to-float v1, v1
iget v2, p0, Landroid/support/v4/view/DraftViewPager;->mPreviewRatio:F
mul-float/2addr v1, v2
float-to-int v1, v1
iget v2, p0, Landroid/support/v4/view/DraftViewPager;->mDraftMargin:I
mul-int/lit8 v2, v2, 0x2
add-int v0, v1, v2
mul-int v1, v0, p1
return v1
.end method
.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
.registers 6
invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I
move-result v2
invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I
move-result v1
iget v3, p0, Landroid/support/v4/view/DraftViewPager;->mActivePointerId:I
if-ne v1, v3, :cond_24
if-nez v2, :cond_25
const/4 v0, 0x1
:goto_f
invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F
move-result v3
iput v3, p0, Landroid/support/v4/view/DraftViewPager;->mLastMotionX:F
invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I
move-result v3
iput v3, p0, Landroid/support/v4/view/DraftViewPager;->mActivePointerId:I
iget-object v3, p0, Landroid/support/v4/view/DraftViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;
if-eqz v3, :cond_24
iget-object v3, p0, Landroid/support/v4/view/DraftViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;
invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V
:cond_24
return-void
:cond_25
const/4 v0, 0x0
goto :goto_f
.end method
.method private pageScrolled(I)V
.registers 8
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getWidth()I
move-result v4
iget v5, p0, Landroid/support/v4/view/DraftViewPager;->mPageMargin:I
add-int v3, v4, v5
div-int v2, p1, v3
rem-int v1, p1, v3
int-to-float v4, v1
int-to-float v5, v3
div-float v0, v4, v5
const/4 v4, 0x0
iput-boolean v4, p0, Landroid/support/v4/view/DraftViewPager;->mCalledSuper:Z
invoke-virtual {p0, v2, v0, v1}, Landroid/support/v4/view/DraftViewPager;->onPageScrolled(IFI)V
iget-boolean v4, p0, Landroid/support/v4/view/DraftViewPager;->mCalledSuper:Z
if-nez v4, :cond_22
new-instance v4, Ljava/lang/IllegalStateException;
const-string v5, "onPageScrolled did not call superclass implementation"
invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v4
:cond_22
return-void
.end method
.method private recomputeScrollPosition(IIII)V
.registers 16
const/4 v2, 0x0
add-int v10, p1, p3
if-lez p2, :cond_3f
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getScrollX()I
move-result v7
add-int v8, p2, p4
div-int v6, v7, v8
rem-int v0, v7, v8
int-to-float v0, v0
int-to-float v3, v8
div-float v9, v0, v3
int-to-float v0, v6
add-float/2addr v0, v9
int-to-float v3, v10
mul-float/2addr v0, v3
float-to-int v1, v0
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getScrollY()I
move-result v0
invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/DraftViewPager;->scrollTo(II)V
iget-object v0, p0, Landroid/support/v4/view/DraftViewPager;->mScroller:Landroid/widget/Scroller;
invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z
move-result v0
if-nez v0, :cond_3e
iget-object v0, p0, Landroid/support/v4/view/DraftViewPager;->mScroller:Landroid/widget/Scroller;
invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I
move-result v0
iget-object v3, p0, Landroid/support/v4/view/DraftViewPager;->mScroller:Landroid/widget/Scroller;
invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I
move-result v3
sub-int v5, v0, v3
iget-object v0, p0, Landroid/support/v4/view/DraftViewPager;->mScroller:Landroid/widget/Scroller;
iget v3, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
mul-int/2addr v3, v10
move v4, v2
invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V
:cond_3e
:goto_3e
return-void
:cond_3f
iget v0, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
mul-int v1, v0, v10
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getScrollX()I
move-result v0
if-eq v1, v0, :cond_3e
invoke-direct {p0}, Landroid/support/v4/view/DraftViewPager;->completeScroll()V
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getScrollY()I
move-result v0
invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/DraftViewPager;->scrollTo(II)V
goto :goto_3e
.end method
.method private removeNonDecorViews()V
.registers 5
const/4 v1, 0x0
:goto_1
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getChildCount()I
move-result v3
if-ge v1, v3, :cond_1d
invoke-virtual {p0, v1}, Landroid/support/v4/view/DraftViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
check-cast v2, Landroid/support/v4/view/DraftViewPager$LayoutParams;
iget-boolean v3, v2, Landroid/support/v4/view/DraftViewPager$LayoutParams;->isDecor:Z
if-nez v3, :cond_1a
invoke-virtual {p0, v1}, Landroid/support/v4/view/DraftViewPager;->removeViewAt(I)V
add-int/lit8 v1, v1, -0x1
:cond_1a
add-int/lit8 v1, v1, 0x1
goto :goto_1
:cond_1d
return-void
.end method
.method private setScrollState(I)V
.registers 3
iget v0, p0, Landroid/support/v4/view/DraftViewPager;->mScrollState:I
if-ne v0, p1, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iput p1, p0, Landroid/support/v4/view/DraftViewPager;->mScrollState:I
iget-object v0, p0, Landroid/support/v4/view/DraftViewPager;->mOnPageChangeListener:Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;
if-eqz v0, :cond_4
iget-object v0, p0, Landroid/support/v4/view/DraftViewPager;->mOnPageChangeListener:Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;
invoke-interface {v0, p1}, Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V
goto :goto_4
.end method
.method private setScrollingCacheEnabled(Z)V
.registers 3
iget-boolean v0, p0, Landroid/support/v4/view/DraftViewPager;->mScrollingCacheEnabled:Z
if-eq v0, p1, :cond_6
iput-boolean p1, p0, Landroid/support/v4/view/DraftViewPager;->mScrollingCacheEnabled:Z
:cond_6
return-void
.end method
.method public addFocusables(Ljava/util/ArrayList;II)V
.registers 11
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
move-result v2
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getDescendantFocusability()I
move-result v1
const/high16 v5, 0x6
if-eq v1, v5, :cond_2f
const/4 v3, 0x0
:goto_d
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getChildCount()I
move-result v5
if-ge v3, v5, :cond_2f
invoke-virtual {p0, v3}, Landroid/support/v4/view/DraftViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v5
if-nez v5, :cond_2c
invoke-virtual {p0, v0}, Landroid/support/v4/view/DraftViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/DraftViewPager$ItemInfo;
move-result-object v4
if-eqz v4, :cond_2c
iget v5, v4, Landroid/support/v4/view/DraftViewPager$ItemInfo;->position:I
iget v6, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
if-ne v5, v6, :cond_2c
invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V
:cond_2c
add-int/lit8 v3, v3, 0x1
goto :goto_d
:cond_2f
const/high16 v5, 0x4
if-ne v1, v5, :cond_39
invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
move-result v5
if-ne v2, v5, :cond_3f
:cond_39
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->isFocusable()Z
move-result v5
if-nez v5, :cond_40
:goto_3f
:cond_3f
return-void
:cond_40
and-int/lit8 v5, p3, 0x1
const/4 v6, 0x1
if-ne v5, v6, :cond_51
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->isInTouchMode()Z
move-result v5
if-eqz v5, :cond_51
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->isFocusableInTouchMode()Z
move-result v5
if-eqz v5, :cond_3f
:cond_51
if-eqz p1, :cond_3f
invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_3f
.end method
.method  addNewItem(II)V
.registers 5
new-instance v0, Landroid/support/v4/view/DraftViewPager$ItemInfo;
invoke-direct {v0}, Landroid/support/v4/view/DraftViewPager$ItemInfo;-><init>()V
iput p1, v0, Landroid/support/v4/view/DraftViewPager$ItemInfo;->position:I
iget-object v1, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/DraftPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
move-result-object v1
iput-object v1, v0, Landroid/support/v4/view/DraftViewPager$ItemInfo;->object:Ljava/lang/Object;
if-gez p2, :cond_17
iget-object v1, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_16
return-void
:cond_17
iget-object v1, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
goto :goto_16
.end method
.method public addTouchables(Ljava/util/ArrayList;)V
.registers 7
.parameter
.end parameter
const/4 v1, 0x0
:goto_1
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getChildCount()I
move-result v3
if-ge v1, v3, :cond_23
invoke-virtual {p0, v1}, Landroid/support/v4/view/DraftViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v3
if-nez v3, :cond_20
invoke-virtual {p0, v0}, Landroid/support/v4/view/DraftViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/DraftViewPager$ItemInfo;
move-result-object v2
if-eqz v2, :cond_20
iget v3, v2, Landroid/support/v4/view/DraftViewPager$ItemInfo;->position:I
iget v4, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
if-ne v3, v4, :cond_20
invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V
:cond_20
add-int/lit8 v1, v1, 0x1
goto :goto_1
:cond_23
return-void
.end method
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.registers 7
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-virtual {p0, p3}, Landroid/support/v4/view/DraftViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
move-result v1
if-nez v1, :cond_a
invoke-virtual {p0, p3}, Landroid/support/v4/view/DraftViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
move-result-object p3
:cond_a
move-object v0, p3
check-cast v0, Landroid/support/v4/view/DraftViewPager$LayoutParams;
iget-boolean v1, v0, Landroid/support/v4/view/DraftViewPager$LayoutParams;->isDecor:Z
instance-of v2, p1, Landroid/support/v4/view/DraftViewPager$Decor;
or-int/2addr v1, v2
iput-boolean v1, v0, Landroid/support/v4/view/DraftViewPager$LayoutParams;->isDecor:Z
iget-boolean v1, p0, Landroid/support/v4/view/DraftViewPager;->mInLayout:Z
if-eqz v1, :cond_31
if-eqz v0, :cond_26
iget-boolean v1, v0, Landroid/support/v4/view/DraftViewPager$LayoutParams;->isDecor:Z
if-eqz v1, :cond_26
new-instance v1, Ljava/lang/IllegalStateException;
const-string v2, "Cannot add pager decor view during layout"
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_26
invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/DraftViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
iget v1, p0, Landroid/support/v4/view/DraftViewPager;->mChildWidthMeasureSpec:I
iget v2, p0, Landroid/support/v4/view/DraftViewPager;->mChildHeightMeasureSpec:I
invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V
:goto_30
return-void
:cond_31
invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
goto :goto_30
.end method
.method public arrowScroll(I)Z
.registers 8
const/16 v5, 0x42
const/16 v4, 0x11
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->findFocus()Landroid/view/View;
move-result-object v0
if-ne v0, p0, :cond_b
const/4 v0, 0x0
:cond_b
const/4 v1, 0x0
invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;
move-result-object v3
invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
move-result-object v2
if-eqz v2, :cond_51
if-eq v2, v0, :cond_51
if-ne p1, v4, :cond_39
if-eqz v0, :cond_34
invoke-virtual {v2}, Landroid/view/View;->getLeft()I
move-result v3
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v4
if-lt v3, v4, :cond_34
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->pageLeft()Z
move-result v1
:goto_2a
:cond_2a
if-eqz v1, :cond_33
invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I
move-result v3
invoke-virtual {p0, v3}, Landroid/support/v4/view/DraftViewPager;->playSoundEffect(I)V
:cond_33
return v1
:cond_34
invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z
move-result v1
goto :goto_2a
:cond_39
if-ne p1, v5, :cond_2a
if-eqz v0, :cond_4c
invoke-virtual {v2}, Landroid/view/View;->getLeft()I
move-result v3
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v4
if-gt v3, v4, :cond_4c
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->pageRight()Z
move-result v1
goto :goto_2a
:cond_4c
invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z
move-result v1
goto :goto_2a
:cond_51
if-eq p1, v4, :cond_56
const/4 v3, 0x1
if-ne p1, v3, :cond_5b
:cond_56
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->pageLeft()Z
move-result v1
goto :goto_2a
:cond_5b
if-eq p1, v5, :cond_60
const/4 v3, 0x2
if-ne p1, v3, :cond_2a
:cond_60
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->pageRight()Z
move-result v1
goto :goto_2a
.end method
.method public beginFakeDrag()Z
.registers 11
const/4 v9, 0x1
const/4 v4, 0x0
const/4 v5, 0x0
iget-boolean v2, p0, Landroid/support/v4/view/DraftViewPager;->mIsBeingDragged:Z
if-eqz v2, :cond_8
:goto_7
return v4
:cond_8
iput-boolean v9, p0, Landroid/support/v4/view/DraftViewPager;->mFakeDragging:Z
invoke-direct {p0, v9}, Landroid/support/v4/view/DraftViewPager;->setScrollState(I)V
iput v5, p0, Landroid/support/v4/view/DraftViewPager;->mLastMotionX:F
iput v5, p0, Landroid/support/v4/view/DraftViewPager;->mInitialMotionX:F
iget-object v2, p0, Landroid/support/v4/view/DraftViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;
if-nez v2, :cond_32
invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
move-result-object v2
iput-object v2, p0, Landroid/support/v4/view/DraftViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;
:goto_1b
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
move-wide v2, v0
move v6, v5
move v7, v4
invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;
move-result-object v8
iget-object v2, p0, Landroid/support/v4/view/DraftViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;
invoke-virtual {v2, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V
iput-wide v0, p0, Landroid/support/v4/view/DraftViewPager;->mFakeDragBeginTime:J
move v4, v9
goto :goto_7
:cond_32
iget-object v2, p0, Landroid/support/v4/view/DraftViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;
invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V
goto :goto_1b
.end method
.method protected canScroll(Landroid/view/View;ZIII)Z
.registers 17
instance-of v0, p1, Landroid/view/ViewGroup;
if-eqz v0, :cond_59
move-object v7, p1
check-cast v7, Landroid/view/ViewGroup;
invoke-virtual {p1}, Landroid/view/View;->getScrollX()I
move-result v9
invoke-virtual {p1}, Landroid/view/View;->getScrollY()I
move-result v10
invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I
move-result v6
add-int/lit8 v8, v6, -0x1
:goto_15
if-ltz v8, :cond_59
invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v1
add-int v0, p4, v9
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v2
if-lt v0, v2, :cond_56
add-int v0, p4, v9
invoke-virtual {v1}, Landroid/view/View;->getRight()I
move-result v2
if-ge v0, v2, :cond_56
add-int v0, p5, v10
invoke-virtual {v1}, Landroid/view/View;->getTop()I
move-result v2
if-lt v0, v2, :cond_56
add-int v0, p5, v10
invoke-virtual {v1}, Landroid/view/View;->getBottom()I
move-result v2
if-ge v0, v2, :cond_56
const/4 v2, 0x1
add-int v0, p4, v9
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v3
sub-int v4, v0, v3
add-int v0, p5, v10
invoke-virtual {v1}, Landroid/view/View;->getTop()I
move-result v3
sub-int v5, v0, v3
move-object v0, p0
move v3, p3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/DraftViewPager;->canScroll(Landroid/view/View;ZIII)Z
move-result v0
if-eqz v0, :cond_56
const/4 v0, 0x1
:goto_55
return v0
:cond_56
add-int/lit8 v8, v8, -0x1
goto :goto_15
:cond_59
if-eqz p2, :cond_64
neg-int v0, p3
invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z
move-result v0
if-eqz v0, :cond_64
const/4 v0, 0x1
goto :goto_55
:cond_64
const/4 v0, 0x0
goto :goto_55
.end method
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
.registers 3
instance-of v0, p1, Landroid/support/v4/view/DraftViewPager$LayoutParams;
if-eqz v0, :cond_c
invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
move-result v0
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public computeScroll()V
.registers 6
iget-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mScroller:Landroid/widget/Scroller;
invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z
move-result v4
if-nez v4, :cond_32
iget-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mScroller:Landroid/widget/Scroller;
invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z
move-result v4
if-eqz v4, :cond_32
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getScrollX()I
move-result v0
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getScrollY()I
move-result v1
iget-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mScroller:Landroid/widget/Scroller;
invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I
move-result v2
iget-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mScroller:Landroid/widget/Scroller;
invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I
move-result v3
if-ne v0, v2, :cond_28
if-eq v1, v3, :cond_2e
:cond_28
invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/DraftViewPager;->scrollTo(II)V
invoke-direct {p0, v2}, Landroid/support/v4/view/DraftViewPager;->pageScrolled(I)V
:cond_2e
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->invalidate()V
:goto_31
return-void
:cond_32
invoke-direct {p0}, Landroid/support/v4/view/DraftViewPager;->completeScroll()V
goto :goto_31
.end method
.method  dataSetChanged()V
.registers 12
const/4 v6, 0x1
const/4 v7, 0x0
iget-object v8, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
move-result v8
const/4 v9, 0x3
if-ge v8, v9, :cond_3b
iget-object v8, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
move-result v8
iget-object v9, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
invoke-virtual {v9}, Landroid/support/v4/view/DraftPagerAdapter;->getCount()I
move-result v9
if-ge v8, v9, :cond_3b
move v3, v6
:goto_1a
const/4 v4, -0x1
const/4 v2, 0x0
const/4 v0, 0x0
:goto_1d
iget-object v8, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
move-result v8
if-ge v0, v8, :cond_81
iget-object v8, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/view/DraftViewPager$ItemInfo;
iget-object v8, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
iget-object v9, v1, Landroid/support/v4/view/DraftViewPager$ItemInfo;->object:Ljava/lang/Object;
invoke-virtual {v8, v9}, Landroid/support/v4/view/DraftPagerAdapter;->getItemPosition(Ljava/lang/Object;)I
move-result v5
const/4 v8, -0x1
if-ne v5, v8, :cond_3d
:cond_38
:goto_38
add-int/lit8 v0, v0, 0x1
goto :goto_1d
:cond_3b
move v3, v7
goto :goto_1a
:cond_3d
const/4 v8, -0x2
if-ne v5, v8, :cond_72
iget-object v8, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
add-int/lit8 v0, v0, -0x1
if-nez v2, :cond_4f
iget-object v8, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
invoke-virtual {v8, p0}, Landroid/support/v4/view/DraftPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V
const/4 v2, 0x1
:cond_4f
iget-object v8, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
iget v9, v1, Landroid/support/v4/view/DraftViewPager$ItemInfo;->position:I
iget-object v10, v1, Landroid/support/v4/view/DraftViewPager$ItemInfo;->object:Ljava/lang/Object;
invoke-virtual {v8, p0, v9, v10}, Landroid/support/v4/view/DraftPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
const/4 v3, 0x1
iget v8, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
iget v9, v1, Landroid/support/v4/view/DraftViewPager$ItemInfo;->position:I
if-ne v8, v9, :cond_38
iget v8, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
iget-object v9, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
invoke-virtual {v9}, Landroid/support/v4/view/DraftPagerAdapter;->getCount()I
move-result v9
add-int/lit8 v9, v9, -0x1
invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I
move-result v8
invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I
move-result v4
goto :goto_38
:cond_72
iget v8, v1, Landroid/support/v4/view/DraftViewPager$ItemInfo;->position:I
if-eq v8, v5, :cond_38
iget v8, v1, Landroid/support/v4/view/DraftViewPager$ItemInfo;->position:I
iget v9, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
if-ne v8, v9, :cond_7d
move v4, v5
:cond_7d
iput v5, v1, Landroid/support/v4/view/DraftViewPager$ItemInfo;->position:I
const/4 v3, 0x1
goto :goto_38
:cond_81
if-eqz v2, :cond_88
iget-object v8, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
invoke-virtual {v8, p0}, Landroid/support/v4/view/DraftPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V
:cond_88
iget-object v8, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
sget-object v9, Landroid/support/v4/view/DraftViewPager;->COMPARATOR:Ljava/util/Comparator;
invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
if-ltz v4, :cond_95
invoke-virtual {p0, v4, v7, v6}, Landroid/support/v4/view/DraftViewPager;->setCurrentItemInternal(IZZ)V
const/4 v3, 0x1
:cond_95
if-eqz v3, :cond_9d
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->populate()V
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->requestLayout()V
:cond_9d
return-void
.end method
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.registers 3
.parameter
.end parameter
invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
move-result v0
if-nez v0, :cond_c
invoke-virtual {p0, p1}, Landroid/support/v4/view/DraftViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z
move-result v0
if-eqz v0, :cond_e
:cond_c
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
.registers 8
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getChildCount()I
move-result v1
const/4 v2, 0x0
:goto_5
if-ge v2, v1, :cond_28
invoke-virtual {p0, v2}, Landroid/support/v4/view/DraftViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v4
if-nez v4, :cond_25
invoke-virtual {p0, v0}, Landroid/support/v4/view/DraftViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/DraftViewPager$ItemInfo;
move-result-object v3
if-eqz v3, :cond_25
iget v4, v3, Landroid/support/v4/view/DraftViewPager$ItemInfo;->position:I
iget v5, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
if-ne v4, v5, :cond_25
invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
move-result v4
if-eqz v4, :cond_25
const/4 v4, 0x1
:goto_24
return v4
:cond_25
add-int/lit8 v2, v2, 0x1
goto :goto_5
:cond_28
const/4 v4, 0x0
goto :goto_24
.end method
.method  distanceInfluenceForSnapDuration(F)F
.registers 6
const/high16 v0, 0x3f00
sub-float/2addr p1, v0
float-to-double v0, p1
const-wide v2, 0x3fde28c7460698c7L
mul-double/2addr v0, v2
double-to-float p1, v0
float-to-double v0, p1
invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D
move-result-wide v0
double-to-float v0, v0
return v0
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 11
.parameter
.end parameter
const/4 v1, 0x1
invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V
const/4 v2, 0x0
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I
move-result v3
if-eqz v3, :cond_19
if-ne v3, v1, :cond_ac
iget-object v6, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
if-eqz v6, :cond_ac
iget-object v6, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
invoke-virtual {v6}, Landroid/support/v4/view/DraftPagerAdapter;->getCount()I
move-result v6
if-le v6, v1, :cond_ac
:cond_19
iget-object v6, p0, Landroid/support/v4/view/DraftViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;
invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z
move-result v6
if-nez v6, :cond_57
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
move-result v4
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getHeight()I
move-result v6
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getPaddingTop()I
move-result v7
sub-int/2addr v6, v7
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getPaddingBottom()I
move-result v7
sub-int v0, v6, v7
const/high16 v6, 0x4387
invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V
neg-int v6, v0
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getPaddingTop()I
move-result v7
add-int/2addr v6, v7
int-to-float v6, v6
const/4 v7, 0x0
invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V
iget-object v6, p0, Landroid/support/v4/view/DraftViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getWidth()I
move-result v7
invoke-virtual {v6, v0, v7}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V
iget-object v6, p0, Landroid/support/v4/view/DraftViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;
invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z
move-result v6
or-int/2addr v2, v6
invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V
:cond_57
iget-object v6, p0, Landroid/support/v4/view/DraftViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;
invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z
move-result v6
if-nez v6, :cond_a6
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
move-result v4
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getWidth()I
move-result v5
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getHeight()I
move-result v6
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getPaddingTop()I
move-result v7
sub-int/2addr v6, v7
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getPaddingBottom()I
move-result v7
sub-int v0, v6, v7
iget-object v6, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
if-eqz v6, :cond_80
iget-object v6, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
invoke-virtual {v6}, Landroid/support/v4/view/DraftPagerAdapter;->getCount()I
move-result v1
:cond_80
const/high16 v6, 0x42b4
invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getPaddingTop()I
move-result v6
neg-int v6, v6
int-to-float v6, v6
neg-int v7, v1
iget v8, p0, Landroid/support/v4/view/DraftViewPager;->mPageMargin:I
add-int/2addr v8, v5
mul-int/2addr v7, v8
iget v8, p0, Landroid/support/v4/view/DraftViewPager;->mPageMargin:I
add-int/2addr v7, v8
int-to-float v7, v7
invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V
iget-object v6, p0, Landroid/support/v4/view/DraftViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;
invoke-virtual {v6, v0, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V
iget-object v6, p0, Landroid/support/v4/view/DraftViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;
invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z
move-result v6
or-int/2addr v2, v6
invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V
:goto_a6
:cond_a6
if-eqz v2, :cond_ab
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->invalidate()V
:cond_ab
return-void
:cond_ac
iget-object v6, p0, Landroid/support/v4/view/DraftViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;
invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V
iget-object v6, p0, Landroid/support/v4/view/DraftViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;
invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V
goto :goto_a6
.end method
.method protected drawableStateChanged()V
.registers 3
invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V
iget-object v0, p0, Landroid/support/v4/view/DraftViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_14
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v1
if-eqz v1, :cond_14
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getDrawableState()[I
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z
:cond_14
return-void
.end method
.method public endFakeDrag()V
.registers 12
const/4 v10, 0x1
iget-boolean v8, p0, Landroid/support/v4/view/DraftViewPager;->mFakeDragging:Z
if-nez v8, :cond_d
new-instance v8, Ljava/lang/IllegalStateException;
const-string v9, "No fake drag in progress. Call beginFakeDrag first."
invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v8
:cond_d
iget-object v6, p0, Landroid/support/v4/view/DraftViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;
const/16 v8, 0x3e8
iget v9, p0, Landroid/support/v4/view/DraftViewPager;->mMaximumVelocity:I
int-to-float v9, v9
invoke-virtual {v6, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V
iget v8, p0, Landroid/support/v4/view/DraftViewPager;->mActivePointerId:I
invoke-static {v6, v8}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F
move-result v8
float-to-int v1, v8
iput-boolean v10, p0, Landroid/support/v4/view/DraftViewPager;->mPopulatePending:Z
iget v8, p0, Landroid/support/v4/view/DraftViewPager;->mLastMotionX:F
iget v9, p0, Landroid/support/v4/view/DraftViewPager;->mInitialMotionX:F
sub-float/2addr v8, v9
float-to-int v5, v8
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getScrollX()I
move-result v4
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getWidth()I
move-result v8
iget v9, p0, Landroid/support/v4/view/DraftViewPager;->mPageMargin:I
add-int v7, v8, v9
div-int v0, v4, v7
rem-int v8, v4, v7
int-to-float v8, v8
int-to-float v9, v7
div-float v3, v8, v9
invoke-direct {p0, v0, v3, v1, v5}, Landroid/support/v4/view/DraftViewPager;->determineTargetPage(IFII)I
move-result v2
invoke-virtual {p0, v2, v10, v10, v1}, Landroid/support/v4/view/DraftViewPager;->setCurrentItemInternal(IZZI)V
invoke-direct {p0}, Landroid/support/v4/view/DraftViewPager;->endDrag()V
const/4 v8, 0x0
iput-boolean v8, p0, Landroid/support/v4/view/DraftViewPager;->mFakeDragging:Z
return-void
.end method
.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
.registers 6
const/4 v3, 0x1
const/4 v0, 0x0
invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I
move-result v1
if-nez v1, :cond_f
invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v1
sparse-switch v1, :sswitch_data_3c
:cond_f
:goto_f
return v0
:sswitch_10
const/16 v1, 0x11
invoke-virtual {p0, v1}, Landroid/support/v4/view/DraftViewPager;->arrowScroll(I)Z
move-result v0
goto :goto_f
:sswitch_17
const/16 v1, 0x42
invoke-virtual {p0, v1}, Landroid/support/v4/view/DraftViewPager;->arrowScroll(I)Z
move-result v0
goto :goto_f
:sswitch_1e
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xb
if-lt v1, v2, :cond_f
invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z
move-result v1
if-eqz v1, :cond_30
const/4 v1, 0x2
invoke-virtual {p0, v1}, Landroid/support/v4/view/DraftViewPager;->arrowScroll(I)Z
move-result v0
goto :goto_f
:cond_30
invoke-static {p1, v3}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z
move-result v1
if-eqz v1, :cond_f
invoke-virtual {p0, v3}, Landroid/support/v4/view/DraftViewPager;->arrowScroll(I)Z
move-result v0
goto :goto_f
nop
:sswitch_data_3c
.sparse-switch
0x15 -> :sswitch_10
0x16 -> :sswitch_17
0x3d -> :sswitch_1e
.end sparse-switch
.end method
.method public fakeDragBy(F)V
.registers 16
const/4 v7, 0x0
iget-boolean v0, p0, Landroid/support/v4/view/DraftViewPager;->mFakeDragging:Z
if-nez v0, :cond_d
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No fake drag in progress. Call beginFakeDrag first."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iget v0, p0, Landroid/support/v4/view/DraftViewPager;->mLastMotionX:F
add-float/2addr v0, p1
iput v0, p0, Landroid/support/v4/view/DraftViewPager;->mLastMotionX:F
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getScrollX()I
move-result v0
int-to-float v0, v0
sub-float v11, v0, p1
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getWidth()I
move-result v12
iget v0, p0, Landroid/support/v4/view/DraftViewPager;->mPageMargin:I
add-int v13, v12, v0
iget v0, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
add-int/lit8 v0, v0, -0x1
mul-int/2addr v0, v13
invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I
move-result v0
int-to-float v9, v0
iget v0, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
add-int/lit8 v0, v0, 0x1
iget-object v1, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
invoke-virtual {v1}, Landroid/support/v4/view/DraftPagerAdapter;->getCount()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
mul-int/2addr v0, v13
int-to-float v10, v0
cmpg-float v0, v11, v9
if-gez v0, :cond_6e
move v11, v9
:goto_42
:cond_42
iget v0, p0, Landroid/support/v4/view/DraftViewPager;->mLastMotionX:F
float-to-int v1, v11
int-to-float v1, v1
sub-float v1, v11, v1
add-float/2addr v0, v1
iput v0, p0, Landroid/support/v4/view/DraftViewPager;->mLastMotionX:F
float-to-int v0, v11
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getScrollY()I
move-result v1
invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/DraftViewPager;->scrollTo(II)V
float-to-int v0, v11
invoke-direct {p0, v0}, Landroid/support/v4/view/DraftViewPager;->pageScrolled(I)V
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v2
iget-wide v0, p0, Landroid/support/v4/view/DraftViewPager;->mFakeDragBeginTime:J
const/4 v4, 0x2
iget v5, p0, Landroid/support/v4/view/DraftViewPager;->mLastMotionX:F
const/4 v6, 0x0
invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;
move-result-object v8
iget-object v0, p0, Landroid/support/v4/view/DraftViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;
invoke-virtual {v0, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V
return-void
:cond_6e
cmpl-float v0, v11, v10
if-lez v0, :cond_42
move v11, v10
goto :goto_42
.end method
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.registers 2
new-instance v0, Landroid/support/v4/view/DraftViewPager$LayoutParams;
invoke-direct {v0}, Landroid/support/v4/view/DraftViewPager$LayoutParams;-><init>()V
return-object v0
.end method
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
.registers 4
new-instance v0, Landroid/support/v4/view/DraftViewPager$LayoutParams;
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p1}, Landroid/support/v4/view/DraftViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-object v0
.end method
.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
.registers 3
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
return-object v0
.end method
.method public getAdapter()Landroid/support/v4/view/DraftPagerAdapter;
.registers 2
iget-object v0, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
return-object v0
.end method
.method public getCurrentItem()I
.registers 2
iget v0, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
return v0
.end method
.method public getLeftOfSelectedFragment()I
.registers 5
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getWidth()I
move-result v0
int-to-float v1, v0
int-to-float v2, v0
iget v3, p0, Landroid/support/v4/view/DraftViewPager;->mPreviewRatio:F
mul-float/2addr v2, v3
sub-float/2addr v1, v2
float-to-int v1, v1
div-int/lit8 v1, v1, 0x2
return v1
.end method
.method public getOffscreenPageLimit()I
.registers 2
iget v0, p0, Landroid/support/v4/view/DraftViewPager;->mOffscreenPageLimit:I
return v0
.end method
.method public getPageMargin()I
.registers 2
iget v0, p0, Landroid/support/v4/view/DraftViewPager;->mPageMargin:I
return v0
.end method
.method  infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/DraftViewPager$ItemInfo;
.registers 4
:goto_0
invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-eq v0, p0, :cond_12
if-eqz v0, :cond_c
instance-of v1, v0, Landroid/view/View;
if-nez v1, :cond_e
:cond_c
const/4 v1, 0x0
:goto_d
return-object v1
:cond_e
move-object p1, v0
check-cast p1, Landroid/view/View;
goto :goto_0
:cond_12
invoke-virtual {p0, p1}, Landroid/support/v4/view/DraftViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/DraftViewPager$ItemInfo;
move-result-object v1
goto :goto_d
.end method
.method  infoForChild(Landroid/view/View;)Landroid/support/v4/view/DraftViewPager$ItemInfo;
.registers 6
const/4 v0, 0x0
:goto_1
iget-object v2, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v0, v2, :cond_1f
iget-object v2, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/view/DraftViewPager$ItemInfo;
iget-object v2, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
iget-object v3, v1, Landroid/support/v4/view/DraftViewPager$ItemInfo;->object:Ljava/lang/Object;
invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/DraftPagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1c
:goto_1b
return-object v1
:cond_1c
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_1f
const/4 v1, 0x0
goto :goto_1b
.end method
.method  initViewPager()V
.registers 6
const/4 v3, 0x0
invoke-virtual {p0, v3}, Landroid/support/v4/view/DraftViewPager;->setWillNotDraw(Z)V
const/high16 v3, 0x4
invoke-virtual {p0, v3}, Landroid/support/v4/view/DraftViewPager;->setDescendantFocusability(I)V
const/4 v3, 0x1
invoke-virtual {p0, v3}, Landroid/support/v4/view/DraftViewPager;->setFocusable(Z)V
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getContext()Landroid/content/Context;
move-result-object v1
new-instance v3, Landroid/widget/Scroller;
sget-object v4, Landroid/support/v4/view/DraftViewPager;->sInterpolator:Landroid/view/animation/Interpolator;
invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
iput-object v3, p0, Landroid/support/v4/view/DraftViewPager;->mScroller:Landroid/widget/Scroller;
invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
move-result v3
iput v3, p0, Landroid/support/v4/view/DraftViewPager;->mTouchSlop:I
invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I
move-result v3
iput v3, p0, Landroid/support/v4/view/DraftViewPager;->mMinimumVelocity:I
invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I
move-result v3
iput v3, p0, Landroid/support/v4/view/DraftViewPager;->mMaximumVelocity:I
new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;
invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V
iput-object v3, p0, Landroid/support/v4/view/DraftViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;
new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;
invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V
iput-object v3, p0, Landroid/support/v4/view/DraftViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v3
iget v2, v3, Landroid/util/DisplayMetrics;->density:F
const/high16 v3, 0x41c8
mul-float/2addr v3, v2
float-to-int v3, v3
iput v3, p0, Landroid/support/v4/view/DraftViewPager;->mFlingDistance:I
return-void
.end method
.method public isDrawn()Z
.registers 2
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getWidth()I
move-result v0
if-lez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public isFakeDragging()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/view/DraftViewPager;->mFakeDragging:Z
return v0
.end method
.method protected onAttachedToWindow()V
.registers 2
invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/view/DraftViewPager;->mFirstLayout:Z
return-void
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 10
invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V
iget v4, p0, Landroid/support/v4/view/DraftViewPager;->mPageMargin:I
if-lez v4, :cond_2f
iget-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v4, :cond_2f
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getScrollX()I
move-result v2
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getWidth()I
move-result v3
iget v4, p0, Landroid/support/v4/view/DraftViewPager;->mPageMargin:I
add-int/2addr v4, v3
rem-int v1, v2, v4
if-eqz v1, :cond_2f
sub-int v4, v2, v1
add-int v0, v4, v3
iget-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;
iget v5, p0, Landroid/support/v4/view/DraftViewPager;->mTopPageBounds:I
iget v6, p0, Landroid/support/v4/view/DraftViewPager;->mPageMargin:I
add-int/2addr v6, v0
iget v7, p0, Landroid/support/v4/view/DraftViewPager;->mBottomPageBounds:I
invoke-virtual {v4, v0, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
:cond_2f
return-void
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 16
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
and-int/lit16 v6, v0, 0xff
const/4 v0, 0x3
if-eq v6, v0, :cond_c
const/4 v0, 0x1
if-ne v6, v0, :cond_23
:cond_c
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/view/DraftViewPager;->mIsBeingDragged:Z
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/view/DraftViewPager;->mIsUnableToDrag:Z
const/4 v0, -0x1
iput v0, p0, Landroid/support/v4/view/DraftViewPager;->mActivePointerId:I
iget-object v0, p0, Landroid/support/v4/view/DraftViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;
if-eqz v0, :cond_21
iget-object v0, p0, Landroid/support/v4/view/DraftViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;
invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/view/DraftViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;
:cond_21
const/4 v0, 0x0
:goto_22
return v0
:cond_23
if-eqz v6, :cond_31
iget-boolean v0, p0, Landroid/support/v4/view/DraftViewPager;->mIsBeingDragged:Z
if-eqz v0, :cond_2b
const/4 v0, 0x1
goto :goto_22
:cond_2b
iget-boolean v0, p0, Landroid/support/v4/view/DraftViewPager;->mIsUnableToDrag:Z
if-eqz v0, :cond_31
const/4 v0, 0x0
goto :goto_22
:cond_31
sparse-switch v6, :sswitch_data_da
:goto_34
:cond_34
iget-boolean v0, p0, Landroid/support/v4/view/DraftViewPager;->mIsBeingDragged:Z
if-nez v0, :cond_47
iget-object v0, p0, Landroid/support/v4/view/DraftViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;
if-nez v0, :cond_42
invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/view/DraftViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;
:cond_42
iget-object v0, p0, Landroid/support/v4/view/DraftViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;
invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
:cond_47
iget-boolean v0, p0, Landroid/support/v4/view/DraftViewPager;->mIsBeingDragged:Z
goto :goto_22
:sswitch_4a
iget v7, p0, Landroid/support/v4/view/DraftViewPager;->mActivePointerId:I
const/4 v0, -0x1
if-eq v7, v0, :cond_34
invoke-static {p1, v7}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I
move-result v9
invoke-static {p1, v9}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F
move-result v10
iget v0, p0, Landroid/support/v4/view/DraftViewPager;->mLastMotionX:F
sub-float v8, v10, v0
invoke-static {v8}, Ljava/lang/Math;->abs(F)F
move-result v11
invoke-static {p1, v9}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F
move-result v12
iget v0, p0, Landroid/support/v4/view/DraftViewPager;->mLastMotionY:F
sub-float v0, v12, v0
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v13
const/4 v2, 0x0
float-to-int v3, v8
float-to-int v4, v10
float-to-int v5, v12
move-object v0, p0
move-object v1, p0
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/DraftViewPager;->canScroll(Landroid/view/View;ZIII)Z
move-result v0
if-eqz v0, :cond_7f
iput v10, p0, Landroid/support/v4/view/DraftViewPager;->mLastMotionX:F
iput v10, p0, Landroid/support/v4/view/DraftViewPager;->mInitialMotionX:F
iput v12, p0, Landroid/support/v4/view/DraftViewPager;->mLastMotionY:F
const/4 v0, 0x0
goto :goto_22
:cond_7f
iget v0, p0, Landroid/support/v4/view/DraftViewPager;->mTouchSlop:I
int-to-float v0, v0
cmpl-float v0, v11, v0
if-lez v0, :cond_98
cmpl-float v0, v11, v13
if-lez v0, :cond_98
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/view/DraftViewPager;->mIsBeingDragged:Z
const/4 v0, 0x1
invoke-direct {p0, v0}, Landroid/support/v4/view/DraftViewPager;->setScrollState(I)V
iput v10, p0, Landroid/support/v4/view/DraftViewPager;->mLastMotionX:F
const/4 v0, 0x1
invoke-direct {p0, v0}, Landroid/support/v4/view/DraftViewPager;->setScrollingCacheEnabled(Z)V
goto :goto_34
:cond_98
iget v0, p0, Landroid/support/v4/view/DraftViewPager;->mTouchSlop:I
int-to-float v0, v0
cmpl-float v0, v13, v0
if-lez v0, :cond_34
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/view/DraftViewPager;->mIsUnableToDrag:Z
goto :goto_34
:sswitch_a3
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
iput v0, p0, Landroid/support/v4/view/DraftViewPager;->mInitialMotionX:F
iput v0, p0, Landroid/support/v4/view/DraftViewPager;->mLastMotionX:F
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v0
iput v0, p0, Landroid/support/v4/view/DraftViewPager;->mLastMotionY:F
const/4 v0, 0x0
invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I
move-result v0
iput v0, p0, Landroid/support/v4/view/DraftViewPager;->mActivePointerId:I
iget v0, p0, Landroid/support/v4/view/DraftViewPager;->mScrollState:I
const/4 v1, 0x2
if-ne v0, v1, :cond_c9
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/view/DraftViewPager;->mIsBeingDragged:Z
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/view/DraftViewPager;->mIsUnableToDrag:Z
const/4 v0, 0x1
invoke-direct {p0, v0}, Landroid/support/v4/view/DraftViewPager;->setScrollState(I)V
goto/16 :goto_34
:cond_c9
invoke-direct {p0}, Landroid/support/v4/view/DraftViewPager;->completeScroll()V
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/view/DraftViewPager;->mIsBeingDragged:Z
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/view/DraftViewPager;->mIsUnableToDrag:Z
goto/16 :goto_34
:sswitch_d4
invoke-direct {p0, p1}, Landroid/support/v4/view/DraftViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V
goto/16 :goto_34
nop
:sswitch_data_da
.sparse-switch
0x0 -> :sswitch_a3
0x2 -> :sswitch_4a
0x6 -> :sswitch_d4
.end sparse-switch
.end method
.method protected onLayout(ZIIII)V
.registers 34
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getChildCount()I
move-result v6
const/16 v25, 0x1
move/from16 v0, v25
move-object/from16 v1, p0
iput-boolean v0, v1, Landroid/support/v4/view/DraftViewPager;->mInLayout:Z
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->populate()V
const/16 v25, 0x0
move/from16 v0, v25
move-object/from16 v1, p0
iput-boolean v0, v1, Landroid/support/v4/view/DraftViewPager;->mInLayout:Z
sub-int v24, p4, p2
sub-int v9, p5, p3
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getScrollX()I
move-result v22
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getPaddingLeft()I
move-result v18
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getPaddingTop()I
move-result v20
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getPaddingRight()I
move-result v19
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getPaddingBottom()I
move-result v17
const/4 v7, 0x0
const/4 v11, 0x0
:goto_31
if-ge v11, v6, :cond_17d
move-object/from16 v0, p0
invoke-virtual {v0, v11}, Landroid/support/v4/view/DraftViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getVisibility()I
move-result v25
const/16 v26, 0x8
move/from16 v0, v25
move/from16 v1, v26
if-eq v0, v1, :cond_80
invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v14
check-cast v14, Landroid/support/v4/view/DraftViewPager$LayoutParams;
const/4 v4, 0x0
const/4 v5, 0x0
iget-boolean v0, v14, Landroid/support/v4/view/DraftViewPager$LayoutParams;->isDecor:Z
move/from16 v25, v0
if-eqz v25, :cond_d5
iget v0, v14, Landroid/support/v4/view/DraftViewPager$LayoutParams;->gravity:I
move/from16 v25, v0
and-int/lit8 v10, v25, 0x7
iget v0, v14, Landroid/support/v4/view/DraftViewPager$LayoutParams;->gravity:I
move/from16 v25, v0
and-int/lit8 v23, v25, 0x70
packed-switch v10, :pswitch_data_198
:pswitch_62
move/from16 v4, v18
:goto_64
sparse-switch v23, :sswitch_data_1a6
move/from16 v5, v20
:goto_69
add-int v4, v4, v22
add-int/lit8 v7, v7, 0x1
invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I
move-result v25
add-int v25, v25, v4
invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I
move-result v26
add-int v26, v26, v5
move/from16 v0, v25
move/from16 v1, v26
invoke-virtual {v3, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V
:cond_80
:goto_80
add-int/lit8 v11, v11, 0x1
goto :goto_31
:pswitch_83
move/from16 v4, v18
invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I
move-result v25
add-int v18, v18, v25
goto :goto_64
:pswitch_8c
invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I
move-result v25
sub-int v25, v24, v25
div-int/lit8 v25, v25, 0x2
move/from16 v0, v25
move/from16 v1, v18
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v4
goto :goto_64
:pswitch_9d
sub-int v25, v24, v19
invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I
move-result v26
sub-int v4, v25, v26
invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I
move-result v25
add-int v19, v19, v25
goto :goto_64
:sswitch_ac
move/from16 v5, v20
invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I
move-result v25
add-int v20, v20, v25
goto :goto_69
:sswitch_b5
invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I
move-result v25
sub-int v25, v9, v25
div-int/lit8 v25, v25, 0x2
move/from16 v0, v25
move/from16 v1, v20
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v5
goto :goto_69
:sswitch_c6
sub-int v25, v9, v17
invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I
move-result v26
sub-int v5, v25, v26
invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I
move-result v25
add-int v17, v17, v25
goto :goto_69
:cond_d5
move-object/from16 v0, p0
invoke-virtual {v0, v3}, Landroid/support/v4/view/DraftViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/DraftViewPager$ItemInfo;
move-result-object v12
if-eqz v12, :cond_80
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/DraftViewPager;->mPageMargin:I
move/from16 v25, v0
add-int v25, v25, v24
iget v0, v12, Landroid/support/v4/view/DraftViewPager$ItemInfo;->position:I
move/from16 v26, v0
mul-int v13, v25, v26
add-int v4, v18, v13
move/from16 v5, v20
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getWidth()I
move-result v25
move/from16 v0, v25
int-to-float v0, v0
move/from16 v25, v0
const/high16 v26, 0x3f80
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/DraftViewPager;->mPreviewRatio:F
move/from16 v27, v0
sub-float v26, v26, v27
mul-float v25, v25, v26
move/from16 v0, v25
float-to-int v0, v0
move/from16 v21, v0
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getWidth()I
move-result v25
move/from16 v0, v25
int-to-float v0, v0
move/from16 v25, v0
const/high16 v26, 0x3f80
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/DraftViewPager;->mPreviewRatio:F
move/from16 v27, v0
sub-float v26, v26, v27
const/high16 v27, 0x4000
div-float v26, v26, v27
mul-float v25, v25, v26
move/from16 v0, v25
float-to-int v8, v0
iget v0, v12, Landroid/support/v4/view/DraftViewPager$ItemInfo;->position:I
move/from16 v25, v0
if-lez v25, :cond_162
iget v0, v12, Landroid/support/v4/view/DraftViewPager$ItemInfo;->position:I
move/from16 v25, v0
mul-int v16, v21, v25
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/DraftViewPager;->mDraftMargin:I
move/from16 v25, v0
mul-int/lit8 v25, v25, 0x2
iget v0, v12, Landroid/support/v4/view/DraftViewPager$ItemInfo;->position:I
move/from16 v26, v0
mul-int v15, v25, v26
sub-int v25, v4, v16
add-int v25, v25, v8
add-int v25, v25, v15
invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I
move-result v26
add-int v26, v26, v4
sub-int v26, v26, v16
add-int v26, v26, v8
add-int v26, v26, v15
invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I
move-result v27
add-int v27, v27, v5
move/from16 v0, v25
move/from16 v1, v26
move/from16 v2, v27
invoke-virtual {v3, v0, v5, v1, v2}, Landroid/view/View;->layout(IIII)V
goto/16 :goto_80
:cond_162
add-int v25, v4, v8
invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I
move-result v26
add-int v26, v26, v4
add-int v26, v26, v8
invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I
move-result v27
add-int v27, v27, v5
move/from16 v0, v25
move/from16 v1, v26
move/from16 v2, v27
invoke-virtual {v3, v0, v5, v1, v2}, Landroid/view/View;->layout(IIII)V
goto/16 :goto_80
:cond_17d
move/from16 v0, v20
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v4/view/DraftViewPager;->mTopPageBounds:I
sub-int v25, v9, v17
move/from16 v0, v25
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v4/view/DraftViewPager;->mBottomPageBounds:I
move-object/from16 v0, p0
iput v7, v0, Landroid/support/v4/view/DraftViewPager;->mDecorChildCount:I
const/16 v25, 0x0
move/from16 v0, v25
move-object/from16 v1, p0
iput-boolean v0, v1, Landroid/support/v4/view/DraftViewPager;->mFirstLayout:Z
return-void
:sswitch_data_1a6
.sparse-switch
0x10 -> :sswitch_b5
0x30 -> :sswitch_ac
0x50 -> :sswitch_c6
.end sparse-switch
:pswitch_data_198
.packed-switch 0x1
:pswitch_8c
:pswitch_62
:pswitch_83
:pswitch_62
:pswitch_9d
.end packed-switch
.end method
.method protected onMeasure(II)V
.registers 23
const/16 v17, 0x0
move/from16 v0, v17
move/from16 v1, p1
invoke-static {v0, v1}, Landroid/support/v4/view/DraftViewPager;->getDefaultSize(II)I
move-result v17
const/16 v18, 0x0
move/from16 v0, v18
move/from16 v1, p2
invoke-static {v0, v1}, Landroid/support/v4/view/DraftViewPager;->getDefaultSize(II)I
move-result v18
move-object/from16 v0, p0
move/from16 v1, v17
move/from16 v2, v18
invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/DraftViewPager;->setMeasuredDimension(II)V
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getMeasuredWidth()I
move-result v17
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getPaddingLeft()I
move-result v18
sub-int v17, v17, v18
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getPaddingRight()I
move-result v18
sub-int v5, v17, v18
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getMeasuredHeight()I
move-result v17
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getPaddingTop()I
move-result v18
sub-int v17, v17, v18
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getPaddingBottom()I
move-result v18
sub-int v4, v17, v18
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getChildCount()I
move-result v13
const/4 v11, 0x0
:goto_42
if-ge v11, v13, :cond_f1
move-object/from16 v0, p0
invoke-virtual {v0, v11}, Landroid/support/v4/view/DraftViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getVisibility()I
move-result v17
const/16 v18, 0x8
move/from16 v0, v17
move/from16 v1, v18
if-eq v0, v1, :cond_db
invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v12
check-cast v12, Landroid/support/v4/view/DraftViewPager$LayoutParams;
if-eqz v12, :cond_db
iget-boolean v0, v12, Landroid/support/v4/view/DraftViewPager$LayoutParams;->isDecor:Z
move/from16 v17, v0
if-eqz v17, :cond_db
iget v0, v12, Landroid/support/v4/view/DraftViewPager$LayoutParams;->gravity:I
move/from16 v17, v0
and-int/lit8 v10, v17, 0x7
iget v0, v12, Landroid/support/v4/view/DraftViewPager$LayoutParams;->gravity:I
move/from16 v17, v0
and-int/lit8 v14, v17, 0x70
const-string v17, "ViewPager"
new-instance v18, Ljava/lang/StringBuilder;
invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V
const-string v19, "gravity: "
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
iget v0, v12, Landroid/support/v4/view/DraftViewPager$LayoutParams;->gravity:I
move/from16 v19, v0
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v18
const-string v19, " hgrav: "
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
move-object/from16 v0, v18
invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v18
const-string v19, " vgrav: "
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
move-object/from16 v0, v18
invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const/high16 v15, -0x8000
const/high16 v8, -0x8000
const/16 v17, 0x30
move/from16 v0, v17
if-eq v14, v0, :cond_b4
const/16 v17, 0x50
move/from16 v0, v17
if-ne v14, v0, :cond_df
:cond_b4
const/4 v7, 0x1
:goto_b5
const/16 v17, 0x3
move/from16 v0, v17
if-eq v10, v0, :cond_c1
const/16 v17, 0x5
move/from16 v0, v17
if-ne v10, v0, :cond_e1
:cond_c1
const/4 v6, 0x1
:goto_c2
if-eqz v7, :cond_e3
const/high16 v15, 0x4000
:goto_c6
:cond_c6
invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v16
invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v9
move/from16 v0, v16
invoke-virtual {v3, v0, v9}, Landroid/view/View;->measure(II)V
if-eqz v7, :cond_e8
invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I
move-result v17
sub-int v4, v4, v17
:goto_db
:cond_db
add-int/lit8 v11, v11, 0x1
goto/16 :goto_42
:cond_df
const/4 v7, 0x0
goto :goto_b5
:cond_e1
const/4 v6, 0x0
goto :goto_c2
:cond_e3
if-eqz v6, :cond_c6
const/high16 v8, 0x4000
goto :goto_c6
:cond_e8
if-eqz v6, :cond_db
invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I
move-result v17
sub-int v5, v5, v17
goto :goto_db
:cond_f1
const/high16 v17, 0x4000
move/from16 v0, v17
invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v17
move/from16 v0, v17
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v4/view/DraftViewPager;->mChildWidthMeasureSpec:I
const/high16 v17, 0x4000
move/from16 v0, v17
invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v17
move/from16 v0, v17
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v4/view/DraftViewPager;->mChildHeightMeasureSpec:I
const/16 v17, 0x1
move/from16 v0, v17
move-object/from16 v1, p0
iput-boolean v0, v1, Landroid/support/v4/view/DraftViewPager;->mInLayout:Z
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->populate()V
const/16 v17, 0x0
move/from16 v0, v17
move-object/from16 v1, p0
iput-boolean v0, v1, Landroid/support/v4/view/DraftViewPager;->mInLayout:Z
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getChildCount()I
move-result v13
const/4 v11, 0x0
:goto_125
if-ge v11, v13, :cond_15d
move-object/from16 v0, p0
invoke-virtual {v0, v11}, Landroid/support/v4/view/DraftViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getVisibility()I
move-result v17
const/16 v18, 0x8
move/from16 v0, v17
move/from16 v1, v18
if-eq v0, v1, :cond_15a
invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v12
check-cast v12, Landroid/support/v4/view/DraftViewPager$LayoutParams;
if-eqz v12, :cond_147
iget-boolean v0, v12, Landroid/support/v4/view/DraftViewPager$LayoutParams;->isDecor:Z
move/from16 v17, v0
if-nez v17, :cond_15a
:cond_147
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/DraftViewPager;->mChildWidthMeasureSpec:I
move/from16 v17, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/DraftViewPager;->mChildHeightMeasureSpec:I
move/from16 v18, v0
move/from16 v0, v17
move/from16 v1, v18
invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V
:cond_15a
add-int/lit8 v11, v11, 0x1
goto :goto_125
:cond_15d
return-void
.end method
.method protected onPageScrolled(IFI)V
.registers 20
move-object/from16 v0, p0
iget v14, v0, Landroid/support/v4/view/DraftViewPager;->mDecorChildCount:I
if-lez v14, :cond_68
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getScrollX()I
move-result v12
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getPaddingLeft()I
move-result v10
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getPaddingRight()I
move-result v11
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getWidth()I
move-result v13
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getChildCount()I
move-result v4
const/4 v8, 0x0
:goto_1b
if-ge v8, v4, :cond_68
move-object/from16 v0, p0
invoke-virtual {v0, v8}, Landroid/support/v4/view/DraftViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v9
check-cast v9, Landroid/support/v4/view/DraftViewPager$LayoutParams;
iget-boolean v14, v9, Landroid/support/v4/view/DraftViewPager$LayoutParams;->isDecor:Z
if-nez v14, :cond_30
:goto_2d
:cond_2d
add-int/lit8 v8, v8, 0x1
goto :goto_1b
:cond_30
iget v14, v9, Landroid/support/v4/view/DraftViewPager$LayoutParams;->gravity:I
and-int/lit8 v7, v14, 0x7
const/4 v5, 0x0
packed-switch v7, :pswitch_data_94
:pswitch_38
move v5, v10
:goto_39
add-int/2addr v5, v12
invoke-virtual {v3}, Landroid/view/View;->getLeft()I
move-result v14
sub-int v6, v5, v14
if-eqz v6, :cond_2d
invoke-virtual {v3, v6}, Landroid/view/View;->offsetLeftAndRight(I)V
goto :goto_2d
:pswitch_46
move v5, v10
invoke-virtual {v3}, Landroid/view/View;->getWidth()I
move-result v14
add-int/2addr v10, v14
goto :goto_39
:pswitch_4d
invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I
move-result v14
sub-int v14, v13, v14
div-int/lit8 v14, v14, 0x2
invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I
move-result v5
goto :goto_39
:pswitch_5a
sub-int v14, v13, v11
invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I
move-result v15
sub-int v5, v14, v15
invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I
move-result v14
add-int/2addr v11, v14
goto :goto_39
:cond_68
move-object/from16 v0, p0
iget-object v14, v0, Landroid/support/v4/view/DraftViewPager;->mOnPageChangeListener:Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;
if-eqz v14, :cond_7b
move-object/from16 v0, p0
iget-object v14, v0, Landroid/support/v4/view/DraftViewPager;->mOnPageChangeListener:Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;
move/from16 v0, p1
move/from16 v1, p2
move/from16 v2, p3
invoke-interface {v14, v0, v1, v2}, Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;->onPageScrolled(IFI)V
:cond_7b
move-object/from16 v0, p0
iget-object v14, v0, Landroid/support/v4/view/DraftViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;
if-eqz v14, :cond_8e
move-object/from16 v0, p0
iget-object v14, v0, Landroid/support/v4/view/DraftViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;
move/from16 v0, p1
move/from16 v1, p2
move/from16 v2, p3
invoke-interface {v14, v0, v1, v2}, Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;->onPageScrolled(IFI)V
:cond_8e
const/4 v14, 0x1
move-object/from16 v0, p0
iput-boolean v14, v0, Landroid/support/v4/view/DraftViewPager;->mCalledSuper:Z
return-void
:pswitch_data_94
.packed-switch 0x1
:pswitch_4d
:pswitch_38
:pswitch_46
:pswitch_38
:pswitch_5a
.end packed-switch
.end method
.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
.registers 12
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getChildCount()I
move-result v1
and-int/lit8 v7, p1, 0x2
if-eqz v7, :cond_2c
const/4 v6, 0x0
const/4 v5, 0x1
move v2, v1
:goto_b
move v3, v6
:goto_c
if-eq v3, v2, :cond_33
invoke-virtual {p0, v3}, Landroid/support/v4/view/DraftViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v7
if-nez v7, :cond_31
invoke-virtual {p0, v0}, Landroid/support/v4/view/DraftViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/DraftViewPager$ItemInfo;
move-result-object v4
if-eqz v4, :cond_31
iget v7, v4, Landroid/support/v4/view/DraftViewPager$ItemInfo;->position:I
iget v8, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
if-ne v7, v8, :cond_31
invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z
move-result v7
if-eqz v7, :cond_31
const/4 v7, 0x1
:goto_2b
return v7
:cond_2c
add-int/lit8 v6, v1, -0x1
const/4 v5, -0x1
const/4 v2, -0x1
goto :goto_b
:cond_31
add-int/2addr v3, v5
goto :goto_c
:cond_33
const/4 v7, 0x0
goto :goto_2b
.end method
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 6
const-string v1, " + Landroid/support/v4/view/DraftViewPager; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
instance-of v1, p1, Landroid/support/v4/view/DraftViewPager$SavedState;
if-nez v1, :cond_8
invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V
:goto_7
const-string v1, " - Landroid/support/v4/view/DraftViewPager; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_8
move-object v0, p1
check-cast v0, Landroid/support/v4/view/DraftViewPager$SavedState;
invoke-virtual {v0}, Landroid/support/v4/view/DraftViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;
move-result-object v1
invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V
iget-object v1, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
if-eqz v1, :cond_27
iget-object v1, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
iget-object v2, v0, Landroid/support/v4/view/DraftViewPager$SavedState;->adapterState:Landroid/os/Parcelable;
iget-object v3, v0, Landroid/support/v4/view/DraftViewPager$SavedState;->loader:Ljava/lang/ClassLoader;
invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/DraftPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
iget v1, v0, Landroid/support/v4/view/DraftViewPager$SavedState;->position:I
const/4 v2, 0x0
const/4 v3, 0x1
invoke-virtual {p0, v1, v2, v3}, Landroid/support/v4/view/DraftViewPager;->setCurrentItemInternal(IZZ)V
goto :goto_7
:cond_27
iget v1, v0, Landroid/support/v4/view/DraftViewPager$SavedState;->position:I
iput v1, p0, Landroid/support/v4/view/DraftViewPager;->mRestoredCurItem:I
iget-object v1, v0, Landroid/support/v4/view/DraftViewPager$SavedState;->adapterState:Landroid/os/Parcelable;
iput-object v1, p0, Landroid/support/v4/view/DraftViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;
iget-object v1, v0, Landroid/support/v4/view/DraftViewPager$SavedState;->loader:Ljava/lang/ClassLoader;
iput-object v1, p0, Landroid/support/v4/view/DraftViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;
goto :goto_7
.end method
.method public onSaveInstanceState()Landroid/os/Parcelable;
.registers 4
const-string v1, " + Landroid/support/v4/view/DraftViewPager; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v1
new-instance v0, Landroid/support/v4/view/DraftViewPager$SavedState;
invoke-direct {v0, v1}, Landroid/support/v4/view/DraftViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V
iget v2, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
iput v2, v0, Landroid/support/v4/view/DraftViewPager$SavedState;->position:I
iget-object v2, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
if-eqz v2, :cond_19
iget-object v2, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
invoke-virtual {v2}, Landroid/support/v4/view/DraftPagerAdapter;->saveState()Landroid/os/Parcelable;
move-result-object v2
iput-object v2, v0, Landroid/support/v4/view/DraftViewPager$SavedState;->adapterState:Landroid/os/Parcelable;
:cond_19
move-object v2, v0
const-string v1, " - Landroid/support/v4/view/DraftViewPager; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v0, v2
return-object v0
.end method
.method protected onSizeChanged(IIII)V
.registers 7
invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V
if-eq p1, p3, :cond_c
iget v0, p0, Landroid/support/v4/view/DraftViewPager;->mPageMargin:I
iget v1, p0, Landroid/support/v4/view/DraftViewPager;->mPageMargin:I
invoke-direct {p0, p1, p3, v0, v1}, Landroid/support/v4/view/DraftViewPager;->recomputeScrollPosition(IIII)V
:cond_c
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 33
.parameter
.end parameter
move-object/from16 v0, p0
iget-boolean v0, v0, Landroid/support/v4/view/DraftViewPager;->mFakeDragging:Z
move/from16 v28, v0
if-eqz v28, :cond_b
const/16 v28, 0x1
:goto_a
return v28
:cond_b
invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I
move-result v28
if-nez v28, :cond_1a
invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I
move-result v28
if-eqz v28, :cond_1a
const/16 v28, 0x0
goto :goto_a
:cond_1a
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
move-object/from16 v28, v0
if-eqz v28, :cond_2e
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
move-object/from16 v28, v0
invoke-virtual/range {v28 .. v28}, Landroid/support/v4/view/DraftPagerAdapter;->getCount()I
move-result v28
if-nez v28, :cond_31
:cond_2e
const/16 v28, 0x0
goto :goto_a
:cond_31
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/DraftViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;
move-object/from16 v28, v0
if-nez v28, :cond_43
invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
move-result-object v28
move-object/from16 v0, v28
move-object/from16 v1, p0
iput-object v0, v1, Landroid/support/v4/view/DraftViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;
:cond_43
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/DraftViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;
move-object/from16 v28, v0
move-object/from16 v0, v28
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I
move-result v4
const/4 v12, 0x0
and-int/lit16 v0, v4, 0xff
move/from16 v28, v0
packed-switch v28, :pswitch_data_346
:pswitch_5c
:goto_5c
:cond_5c
if-eqz v12, :cond_61
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->invalidate()V
:cond_61
const/16 v28, 0x1
goto :goto_a
:pswitch_64
invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->completeScroll()V
invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F
move-result v28
move/from16 v0, v28
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v4/view/DraftViewPager;->mInitialMotionX:F
move/from16 v0, v28
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v4/view/DraftViewPager;->mLastMotionX:F
const/16 v28, 0x0
move-object/from16 v0, p1
move/from16 v1, v28
invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I
move-result v28
move/from16 v0, v28
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v4/view/DraftViewPager;->mActivePointerId:I
goto :goto_5c
:pswitch_88
move-object/from16 v0, p0
iget-boolean v0, v0, Landroid/support/v4/view/DraftViewPager;->mIsBeingDragged:Z
move/from16 v28, v0
if-nez v28, :cond_f9
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/DraftViewPager;->mActivePointerId:I
move/from16 v28, v0
move-object/from16 v0, p1
move/from16 v1, v28
invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I
move-result v17
move-object/from16 v0, p1
move/from16 v1, v17
invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F
move-result v24
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/DraftViewPager;->mLastMotionX:F
move/from16 v28, v0
sub-float v28, v24, v28
invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F
move-result v25
move-object/from16 v0, p1
move/from16 v1, v17
invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F
move-result v26
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/DraftViewPager;->mLastMotionY:F
move/from16 v28, v0
sub-float v28, v26, v28
invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F
move-result v27
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/DraftViewPager;->mTouchSlop:I
move/from16 v28, v0
move/from16 v0, v28
int-to-float v0, v0
move/from16 v28, v0
cmpl-float v28, v25, v28
if-lez v28, :cond_f9
cmpl-float v28, v25, v27
if-lez v28, :cond_f9
const/16 v28, 0x1
move/from16 v0, v28
move-object/from16 v1, p0
iput-boolean v0, v1, Landroid/support/v4/view/DraftViewPager;->mIsBeingDragged:Z
move/from16 v0, v24
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v4/view/DraftViewPager;->mLastMotionX:F
const/16 v28, 0x1
move-object/from16 v0, p0
move/from16 v1, v28
invoke-direct {v0, v1}, Landroid/support/v4/view/DraftViewPager;->setScrollState(I)V
const/16 v28, 0x1
move-object/from16 v0, p0
move/from16 v1, v28
invoke-direct {v0, v1}, Landroid/support/v4/view/DraftViewPager;->setScrollingCacheEnabled(Z)V
:cond_f9
move-object/from16 v0, p0
iget-boolean v0, v0, Landroid/support/v4/view/DraftViewPager;->mIsBeingDragged:Z
move/from16 v28, v0
if-eqz v28, :cond_5c
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/DraftViewPager;->mActivePointerId:I
move/from16 v28, v0
move-object/from16 v0, p1
move/from16 v1, v28
invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I
move-result v5
move-object/from16 v0, p1
invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F
move-result v24
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/DraftViewPager;->mLastMotionX:F
move/from16 v28, v0
sub-float v7, v28, v24
move/from16 v0, v24
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v4/view/DraftViewPager;->mLastMotionX:F
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getScrollX()I
move-result v28
move/from16 v0, v28
int-to-float v14, v0
add-float v19, v14, v7
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getWidth()I
move-result v28
move/from16 v0, v28
int-to-float v0, v0
move/from16 v28, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/DraftViewPager;->mPreviewRatio:F
move/from16 v29, v0
mul-float v28, v28, v29
move/from16 v0, v28
float-to-int v0, v0
move/from16 v22, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/DraftViewPager;->mPageMargin:I
move/from16 v28, v0
add-int v23, v22, v28
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
move-object/from16 v28, v0
invoke-virtual/range {v28 .. v28}, Landroid/support/v4/view/DraftPagerAdapter;->getCount()I
move-result v28
add-int/lit8 v10, v28, -0x1
const/16 v28, 0x0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
move/from16 v29, v0
add-int/lit8 v29, v29, -0x1
mul-int v29, v29, v23
invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I
move-result v28
move/from16 v0, v28
int-to-float v11, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
move/from16 v28, v0
add-int/lit8 v28, v28, 0x1
move/from16 v0, v28
invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I
move-result v28
mul-int v28, v28, v23
move/from16 v0, v28
int-to-float v0, v0
move/from16 v18, v0
cmpg-float v28, v19, v11
if-gez v28, :cond_1d8
const/16 v28, 0x0
cmpl-float v28, v11, v28
if-nez v28, :cond_19c
move/from16 v0, v19
neg-float v15, v0
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/DraftViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;
move-object/from16 v28, v0
move/from16 v0, v22
int-to-float v0, v0
move/from16 v29, v0
div-float v29, v15, v29
invoke-virtual/range {v28 .. v29}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z
move-result v12
:cond_19c
move/from16 v19, v11
:cond_19e
:goto_19e
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/DraftViewPager;->mLastMotionX:F
move/from16 v28, v0
move/from16 v0, v19
float-to-int v0, v0
move/from16 v29, v0
move/from16 v0, v29
int-to-float v0, v0
move/from16 v29, v0
sub-float v29, v19, v29
add-float v28, v28, v29
move/from16 v0, v28
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v4/view/DraftViewPager;->mLastMotionX:F
move/from16 v0, v19
float-to-int v0, v0
move/from16 v28, v0
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getScrollY()I
move-result v29
move-object/from16 v0, p0
move/from16 v1, v28
move/from16 v2, v29
invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/DraftViewPager;->scrollTo(II)V
move/from16 v0, v19
float-to-int v0, v0
move/from16 v28, v0
move-object/from16 v0, p0
move/from16 v1, v28
invoke-direct {v0, v1}, Landroid/support/v4/view/DraftViewPager;->pageScrolled(I)V
goto/16 :goto_5c
:cond_1d8
cmpl-float v28, v19, v18
if-lez v28, :cond_19e
mul-int v28, v10, v23
move/from16 v0, v28
int-to-float v0, v0
move/from16 v28, v0
cmpl-float v28, v18, v28
if-nez v28, :cond_1fa
sub-float v15, v19, v18
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/DraftViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;
move-object/from16 v28, v0
move/from16 v0, v22
int-to-float v0, v0
move/from16 v29, v0
div-float v29, v15, v29
invoke-virtual/range {v28 .. v29}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z
move-result v12
:cond_1fa
move/from16 v19, v18
goto :goto_19e
:pswitch_1fd
move-object/from16 v0, p0
iget-boolean v0, v0, Landroid/support/v4/view/DraftViewPager;->mIsBeingDragged:Z
move/from16 v28, v0
if-eqz v28, :cond_5c
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/DraftViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;
move-object/from16 v21, v0
const/16 v28, 0x3e8
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/DraftViewPager;->mMaximumVelocity:I
move/from16 v29, v0
move/from16 v0, v29
int-to-float v0, v0
move/from16 v29, v0
move-object/from16 v0, v21
move/from16 v1, v28
move/from16 v2, v29
invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/DraftViewPager;->mActivePointerId:I
move/from16 v28, v0
move-object/from16 v0, v21
move/from16 v1, v28
invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F
move-result v28
move/from16 v0, v28
float-to-int v9, v0
const/16 v28, 0x1
move/from16 v0, v28
move-object/from16 v1, p0
iput-boolean v0, v1, Landroid/support/v4/view/DraftViewPager;->mPopulatePending:Z
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getWidth()I
move-result v28
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/DraftViewPager;->mPageMargin:I
move/from16 v29, v0
add-int v23, v28, v29
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->getScrollX()I
move-result v19
move/from16 v0, v23
int-to-float v0, v0
move/from16 v28, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/DraftViewPager;->mPreviewRatio:F
move/from16 v29, v0
mul-float v28, v28, v29
move/from16 v0, v28
float-to-int v0, v0
move/from16 v28, v0
div-int v6, v19, v28
rem-int v28, v19, v23
move/from16 v0, v28
int-to-float v0, v0
move/from16 v28, v0
move/from16 v0, v23
int-to-float v0, v0
move/from16 v29, v0
div-float v16, v28, v29
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/DraftViewPager;->mActivePointerId:I
move/from16 v28, v0
move-object/from16 v0, p1
move/from16 v1, v28
invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I
move-result v5
move-object/from16 v0, p1
invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F
move-result v24
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/DraftViewPager;->mInitialMotionX:F
move/from16 v28, v0
sub-float v28, v24, v28
move/from16 v0, v28
float-to-int v0, v0
move/from16 v20, v0
move-object/from16 v0, p0
move/from16 v1, v16
move/from16 v2, v20
invoke-direct {v0, v6, v1, v9, v2}, Landroid/support/v4/view/DraftViewPager;->determineTargetPage(IFII)I
move-result v13
const/16 v28, 0x1
const/16 v29, 0x1
move-object/from16 v0, p0
move/from16 v1, v28
move/from16 v2, v29
invoke-virtual {v0, v13, v1, v2, v9}, Landroid/support/v4/view/DraftViewPager;->setCurrentItemInternal(IZZI)V
const/16 v28, -0x1
move/from16 v0, v28
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v4/view/DraftViewPager;->mActivePointerId:I
invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->endDrag()V
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/DraftViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;
move-object/from16 v28, v0
invoke-virtual/range {v28 .. v28}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z
move-result v28
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/DraftViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;
move-object/from16 v29, v0
invoke-virtual/range {v29 .. v29}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z
move-result v29
or-int v12, v28, v29
goto/16 :goto_5c
:pswitch_2c7
move-object/from16 v0, p0
iget-boolean v0, v0, Landroid/support/v4/view/DraftViewPager;->mIsBeingDragged:Z
move/from16 v28, v0
if-eqz v28, :cond_5c
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
move/from16 v28, v0
const/16 v29, 0x1
const/16 v30, 0x1
move-object/from16 v0, p0
move/from16 v1, v28
move/from16 v2, v29
move/from16 v3, v30
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/DraftViewPager;->setCurrentItemInternal(IZZ)V
const/16 v28, -0x1
move/from16 v0, v28
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v4/view/DraftViewPager;->mActivePointerId:I
invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/DraftViewPager;->endDrag()V
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/DraftViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;
move-object/from16 v28, v0
invoke-virtual/range {v28 .. v28}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z
move-result v28
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/DraftViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;
move-object/from16 v29, v0
invoke-virtual/range {v29 .. v29}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z
move-result v29
or-int v12, v28, v29
goto/16 :goto_5c
:pswitch_307
invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I
move-result v8
move-object/from16 v0, p1
invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F
move-result v24
move/from16 v0, v24
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v4/view/DraftViewPager;->mLastMotionX:F
move-object/from16 v0, p1
invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I
move-result v28
move/from16 v0, v28
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v4/view/DraftViewPager;->mActivePointerId:I
goto/16 :goto_5c
:pswitch_325
invoke-direct/range {p0 .. p1}, Landroid/support/v4/view/DraftViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/DraftViewPager;->mActivePointerId:I
move/from16 v28, v0
move-object/from16 v0, p1
move/from16 v1, v28
invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I
move-result v28
move-object/from16 v0, p1
move/from16 v1, v28
invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F
move-result v28
move/from16 v0, v28
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v4/view/DraftViewPager;->mLastMotionX:F
goto/16 :goto_5c
:pswitch_data_346
.packed-switch 0x0
:pswitch_64
:pswitch_1fd
:pswitch_88
:pswitch_2c7
:pswitch_5c
:pswitch_307
:pswitch_325
.end packed-switch
.end method
.method  pageLeft()Z
.registers 3
const/4 v0, 0x1
iget v1, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
if-lez v1, :cond_d
iget v1, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
add-int/lit8 v1, v1, -0x1
invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/DraftViewPager;->setCurrentItem(IZ)V
:goto_c
return v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method  pageRight()Z
.registers 4
const/4 v0, 0x1
iget-object v1, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
if-eqz v1, :cond_19
iget v1, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
iget-object v2, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
invoke-virtual {v2}, Landroid/support/v4/view/DraftPagerAdapter;->getCount()I
move-result v2
add-int/lit8 v2, v2, -0x1
if-ge v1, v2, :cond_19
iget v1, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
add-int/lit8 v1, v1, 0x1
invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/DraftViewPager;->setCurrentItem(IZ)V
:goto_18
return v0
:cond_19
const/4 v0, 0x0
goto :goto_18
.end method
.method public populate()V
.registers 16
const/4 v11, 0x0
const/4 v12, -0x1
iget-object v10, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
if-nez v10, :cond_7
:cond_6
return-void
:cond_7
iget-boolean v10, p0, Landroid/support/v4/view/DraftViewPager;->mPopulatePending:Z
if-nez v10, :cond_6
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getWindowToken()Landroid/os/IBinder;
move-result-object v10
if-eqz v10, :cond_6
iget-object v10, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
invoke-virtual {v10, p0}, Landroid/support/v4/view/DraftPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V
iget v8, p0, Landroid/support/v4/view/DraftViewPager;->mOffscreenPageLimit:I
const/4 v10, 0x0
iget v13, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
sub-int/2addr v13, v8
invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I
move-result v9
iget-object v10, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
invoke-virtual {v10}, Landroid/support/v4/view/DraftPagerAdapter;->getCount()I
move-result v0
add-int/lit8 v10, v0, -0x1
iget v13, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
add-int/2addr v13, v8
invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I
move-result v4
const/4 v7, -0x1
const/4 v5, 0x0
:goto_31
iget-object v10, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
move-result v10
if-ge v5, v10, :cond_7b
iget-object v10, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Landroid/support/v4/view/DraftViewPager$ItemInfo;
iget v10, v6, Landroid/support/v4/view/DraftViewPager$ItemInfo;->position:I
if-lt v10, v9, :cond_49
iget v10, v6, Landroid/support/v4/view/DraftViewPager$ItemInfo;->position:I
if-le v10, v4, :cond_62
:cond_49
iget-boolean v10, v6, Landroid/support/v4/view/DraftViewPager$ItemInfo;->scrolling:Z
if-nez v10, :cond_62
iget-object v10, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
add-int/lit8 v5, v5, -0x1
iget-object v10, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
iget v13, v6, Landroid/support/v4/view/DraftViewPager$ItemInfo;->position:I
iget-object v14, v6, Landroid/support/v4/view/DraftViewPager$ItemInfo;->object:Ljava/lang/Object;
invoke-virtual {v10, p0, v13, v14}, Landroid/support/v4/view/DraftPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
:cond_5d
iget v7, v6, Landroid/support/v4/view/DraftViewPager$ItemInfo;->position:I
add-int/lit8 v5, v5, 0x1
goto :goto_31
:cond_62
if-ge v7, v4, :cond_5d
iget v10, v6, Landroid/support/v4/view/DraftViewPager$ItemInfo;->position:I
if-le v10, v9, :cond_5d
add-int/lit8 v7, v7, 0x1
if-ge v7, v9, :cond_6d
move v7, v9
:goto_6d
:cond_6d
if-gt v7, v4, :cond_5d
iget v10, v6, Landroid/support/v4/view/DraftViewPager$ItemInfo;->position:I
if-ge v7, v10, :cond_5d
invoke-virtual {p0, v7, v5}, Landroid/support/v4/view/DraftViewPager;->addNewItem(II)V
add-int/lit8 v7, v7, 0x1
add-int/lit8 v5, v5, 0x1
goto :goto_6d
:cond_7b
iget-object v10, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
move-result v10
if-lez v10, :cond_a3
iget-object v10, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
iget-object v13, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
move-result v13
add-int/lit8 v13, v13, -0x1
invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v10
check-cast v10, Landroid/support/v4/view/DraftViewPager$ItemInfo;
iget v7, v10, Landroid/support/v4/view/DraftViewPager$ItemInfo;->position:I
:goto_95
if-ge v7, v4, :cond_a7
add-int/lit8 v7, v7, 0x1
if-le v7, v9, :cond_a5
:goto_9b
if-gt v7, v4, :cond_a7
invoke-virtual {p0, v7, v12}, Landroid/support/v4/view/DraftViewPager;->addNewItem(II)V
add-int/lit8 v7, v7, 0x1
goto :goto_9b
:cond_a3
move v7, v12
goto :goto_95
:cond_a5
move v7, v9
goto :goto_9b
:cond_a7
const/4 v2, 0x0
const/4 v5, 0x0
:goto_a9
iget-object v10, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
move-result v10
if-ge v5, v10, :cond_c7
iget-object v10, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v10
check-cast v10, Landroid/support/v4/view/DraftViewPager$ItemInfo;
iget v10, v10, Landroid/support/v4/view/DraftViewPager$ItemInfo;->position:I
iget v12, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
if-ne v10, v12, :cond_110
iget-object v10, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/view/DraftViewPager$ItemInfo;
:cond_c7
iget-object v12, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
iget v13, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
if-eqz v2, :cond_113
iget-object v10, v2, Landroid/support/v4/view/DraftViewPager$ItemInfo;->object:Ljava/lang/Object;
:goto_cf
invoke-virtual {v12, p0, v13, v10}, Landroid/support/v4/view/DraftPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
iget-object v10, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
invoke-virtual {v10, p0}, Landroid/support/v4/view/DraftPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->hasFocus()Z
move-result v10
if-eqz v10, :cond_6
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->findFocus()Landroid/view/View;
move-result-object v3
if-eqz v3, :cond_115
invoke-virtual {p0, v3}, Landroid/support/v4/view/DraftViewPager;->infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/DraftViewPager$ItemInfo;
move-result-object v6
:goto_e7
if-eqz v6, :cond_ef
iget v10, v6, Landroid/support/v4/view/DraftViewPager$ItemInfo;->position:I
iget v11, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
if-eq v10, v11, :cond_6
:cond_ef
const/4 v5, 0x0
:goto_f0
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getChildCount()I
move-result v10
if-ge v5, v10, :cond_6
invoke-virtual {p0, v5}, Landroid/support/v4/view/DraftViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {p0, v1}, Landroid/support/v4/view/DraftViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/DraftViewPager$ItemInfo;
move-result-object v6
if-eqz v6, :cond_10d
iget v10, v6, Landroid/support/v4/view/DraftViewPager$ItemInfo;->position:I
iget v11, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
if-ne v10, v11, :cond_10d
const/4 v10, 0x2
invoke-virtual {v1, v10}, Landroid/view/View;->requestFocus(I)Z
move-result v10
if-nez v10, :cond_6
:cond_10d
add-int/lit8 v5, v5, 0x1
goto :goto_f0
:cond_110
add-int/lit8 v5, v5, 0x1
goto :goto_a9
:cond_113
move-object v10, v11
goto :goto_cf
:cond_115
move-object v6, v11
goto :goto_e7
.end method
.method public setAdapter(Landroid/support/v4/app/DraftFragmentStatePagerAdapter;)V
.registers 10
const/4 v7, 0x0
const/4 v6, 0x0
iget-object v3, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
if-eqz v3, :cond_41
iget-object v3, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
iget-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mObserver:Landroid/support/v4/view/DraftViewPager$PagerObserver;
invoke-virtual {v3, v4}, Landroid/support/v4/view/DraftPagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
iget-object v3, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
invoke-virtual {v3, p0}, Landroid/support/v4/view/DraftPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V
const/4 v0, 0x0
:goto_13
iget-object v3, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-ge v0, v3, :cond_2f
iget-object v3, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/view/DraftViewPager$ItemInfo;
iget-object v3, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
iget v4, v1, Landroid/support/v4/view/DraftViewPager$ItemInfo;->position:I
iget-object v5, v1, Landroid/support/v4/view/DraftViewPager$ItemInfo;->object:Ljava/lang/Object;
invoke-virtual {v3, p0, v4, v5}, Landroid/support/v4/view/DraftPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
add-int/lit8 v0, v0, 0x1
goto :goto_13
:cond_2f
iget-object v3, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
invoke-virtual {v3, p0}, Landroid/support/v4/view/DraftPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V
iget-object v3, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
invoke-direct {p0}, Landroid/support/v4/view/DraftViewPager;->removeNonDecorViews()V
iput v6, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
invoke-virtual {p0, v6, v6}, Landroid/support/v4/view/DraftViewPager;->scrollTo(II)V
:cond_41
iget-object v2, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
iput-object p1, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
iget-object v3, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
if-eqz v3, :cond_77
iget-object v3, p0, Landroid/support/v4/view/DraftViewPager;->mObserver:Landroid/support/v4/view/DraftViewPager$PagerObserver;
if-nez v3, :cond_54
new-instance v3, Landroid/support/v4/view/DraftViewPager$PagerObserver;
invoke-direct {v3, p0, v7}, Landroid/support/v4/view/DraftViewPager$PagerObserver;-><init>(Landroid/support/v4/view/DraftViewPager;Landroid/support/v4/view/DraftViewPager$1;)V
iput-object v3, p0, Landroid/support/v4/view/DraftViewPager;->mObserver:Landroid/support/v4/view/DraftViewPager$PagerObserver;
:cond_54
iget-object v3, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
iget-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mObserver:Landroid/support/v4/view/DraftViewPager$PagerObserver;
invoke-virtual {v3, v4}, Landroid/support/v4/view/DraftPagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
iput-boolean v6, p0, Landroid/support/v4/view/DraftViewPager;->mPopulatePending:Z
iget v3, p0, Landroid/support/v4/view/DraftViewPager;->mRestoredCurItem:I
if-ltz v3, :cond_83
iget-object v3, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
iget-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;
iget-object v5, p0, Landroid/support/v4/view/DraftViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;
invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/DraftPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
iget v3, p0, Landroid/support/v4/view/DraftViewPager;->mRestoredCurItem:I
const/4 v4, 0x1
invoke-virtual {p0, v3, v6, v4}, Landroid/support/v4/view/DraftViewPager;->setCurrentItemInternal(IZZ)V
const/4 v3, -0x1
iput v3, p0, Landroid/support/v4/view/DraftViewPager;->mRestoredCurItem:I
iput-object v7, p0, Landroid/support/v4/view/DraftViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;
iput-object v7, p0, Landroid/support/v4/view/DraftViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;
:goto_77
:cond_77
iget-object v3, p0, Landroid/support/v4/view/DraftViewPager;->mAdapterChangeListener:Landroid/support/v4/view/DraftViewPager$OnAdapterChangeListener;
if-eqz v3, :cond_82
if-eq v2, p1, :cond_82
iget-object v3, p0, Landroid/support/v4/view/DraftViewPager;->mAdapterChangeListener:Landroid/support/v4/view/DraftViewPager$OnAdapterChangeListener;
invoke-interface {v3, v2, p1}, Landroid/support/v4/view/DraftViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/v4/view/DraftPagerAdapter;Landroid/support/v4/view/DraftPagerAdapter;)V
:cond_82
return-void
:cond_83
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->populate()V
goto :goto_77
.end method
.method public setCurrentItem(I)V
.registers 4
const/4 v1, 0x0
iput-boolean v1, p0, Landroid/support/v4/view/DraftViewPager;->mPopulatePending:Z
iget-boolean v0, p0, Landroid/support/v4/view/DraftViewPager;->mFirstLayout:Z
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_8
invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/view/DraftViewPager;->setCurrentItemInternal(IZZ)V
return-void
:cond_c
move v0, v1
goto :goto_8
.end method
.method public setCurrentItem(IZ)V
.registers 4
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/view/DraftViewPager;->mPopulatePending:Z
invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/DraftViewPager;->setCurrentItemInternal(IZZ)V
return-void
.end method
.method  setCurrentItemInternal(IZZ)V
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/view/DraftViewPager;->setCurrentItemInternal(IZZI)V
return-void
.end method
.method  setCurrentItemInternal(IZZI)V
.registers 11
const/4 v1, 0x1
const/4 v5, 0x0
iget-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
if-eqz v4, :cond_e
iget-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
invoke-virtual {v4}, Landroid/support/v4/view/DraftPagerAdapter;->getCount()I
move-result v4
if-gtz v4, :cond_12
:cond_e
invoke-direct {p0, v5}, Landroid/support/v4/view/DraftViewPager;->setScrollingCacheEnabled(Z)V
:cond_11
:goto_11
return-void
:cond_12
if-nez p3, :cond_24
iget v4, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
if-ne v4, p1, :cond_24
iget-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
if-eqz v4, :cond_24
invoke-direct {p0, v5}, Landroid/support/v4/view/DraftViewPager;->setScrollingCacheEnabled(Z)V
goto :goto_11
:cond_24
if-gez p1, :cond_49
const/4 p1, 0x0
:goto_27
:cond_27
iget v3, p0, Landroid/support/v4/view/DraftViewPager;->mOffscreenPageLimit:I
iget v4, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
add-int/2addr v4, v3
if-gt p1, v4, :cond_33
iget v4, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
sub-int/2addr v4, v3
if-ge p1, v4, :cond_5a
:cond_33
const/4 v2, 0x0
:goto_34
iget-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
if-ge v2, v4, :cond_5a
iget-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mItems:Ljava/util/ArrayList;
invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/support/v4/view/DraftViewPager$ItemInfo;
iput-boolean v1, v4, Landroid/support/v4/view/DraftViewPager$ItemInfo;->scrolling:Z
add-int/lit8 v2, v2, 0x1
goto :goto_34
:cond_49
iget-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
invoke-virtual {v4}, Landroid/support/v4/view/DraftPagerAdapter;->getCount()I
move-result v4
if-lt p1, v4, :cond_27
iget-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mAdapter:Landroid/support/v4/view/DraftPagerAdapter;
invoke-virtual {v4}, Landroid/support/v4/view/DraftPagerAdapter;->getCount()I
move-result v4
add-int/lit8 p1, v4, -0x1
goto :goto_27
:cond_5a
iget v4, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
if-eq v4, p1, :cond_83
:goto_5e
iput p1, p0, Landroid/support/v4/view/DraftViewPager;->mCurItem:I
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->populate()V
invoke-direct {p0, p1}, Landroid/support/v4/view/DraftViewPager;->getAdjustedXDestination(I)I
move-result v0
if-eqz p2, :cond_85
invoke-virtual {p0, p1, v0, v5, p4}, Landroid/support/v4/view/DraftViewPager;->smoothScrollTo(IIII)V
if-eqz v1, :cond_77
iget-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mOnPageChangeListener:Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;
if-eqz v4, :cond_77
iget-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mOnPageChangeListener:Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;
invoke-interface {v4, p1}, Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;->onPageSelected(I)V
:cond_77
if-eqz v1, :cond_11
iget-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;
if-eqz v4, :cond_11
iget-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;
invoke-interface {v4, p1}, Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;->onPageSelected(I)V
goto :goto_11
:cond_83
move v1, v5
goto :goto_5e
:cond_85
if-eqz v1, :cond_90
iget-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mOnPageChangeListener:Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;
if-eqz v4, :cond_90
iget-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mOnPageChangeListener:Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;
invoke-interface {v4, p1}, Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;->onPageSelected(I)V
:cond_90
if-eqz v1, :cond_9b
iget-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;
if-eqz v4, :cond_9b
iget-object v4, p0, Landroid/support/v4/view/DraftViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;
invoke-interface {v4, p1}, Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;->onPageSelected(I)V
:cond_9b
invoke-direct {p0}, Landroid/support/v4/view/DraftViewPager;->completeScroll()V
invoke-virtual {p0, v0, v5}, Landroid/support/v4/view/DraftViewPager;->scrollTo(II)V
goto/16 :goto_11
.end method
.method  setInternalPageChangeListener(Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;)Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;
.registers 3
iget-object v0, p0, Landroid/support/v4/view/DraftViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;
iput-object p1, p0, Landroid/support/v4/view/DraftViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;
return-object v0
.end method
.method public setOffscreenPageLimit(I)V
.registers 6
const/4 v3, 0x1
if-ge p1, v3, :cond_26
const-string v0, "ViewPager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Requested offscreen page limit "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " too small; defaulting to "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
const/4 p1, 0x1
:cond_26
iget v0, p0, Landroid/support/v4/view/DraftViewPager;->mOffscreenPageLimit:I
if-eq p1, v0, :cond_2f
iput p1, p0, Landroid/support/v4/view/DraftViewPager;->mOffscreenPageLimit:I
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->populate()V
:cond_2f
return-void
.end method
.method  setOnAdapterChangeListener(Landroid/support/v4/view/DraftViewPager$OnAdapterChangeListener;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/view/DraftViewPager;->mAdapterChangeListener:Landroid/support/v4/view/DraftViewPager$OnAdapterChangeListener;
return-void
.end method
.method public setOnPageChangeListener(Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/view/DraftViewPager;->mOnPageChangeListener:Landroid/support/v4/view/DraftViewPager$OnPageChangeListener;
return-void
.end method
.method public setPageMargin(I)V
.registers 4
iget v0, p0, Landroid/support/v4/view/DraftViewPager;->mPageMargin:I
iput p1, p0, Landroid/support/v4/view/DraftViewPager;->mPageMargin:I
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getWidth()I
move-result v1
invoke-direct {p0, v1, v1, p1, v0}, Landroid/support/v4/view/DraftViewPager;->recomputeScrollPosition(IIII)V
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->requestLayout()V
return-void
.end method
.method public setPageMarginDrawable(I)V
.registers 3
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v4/view/DraftViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/view/DraftViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;
if-eqz p1, :cond_7
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->refreshDrawableState()V
:cond_7
if-nez p1, :cond_11
const/4 v0, 0x1
:goto_a
invoke-virtual {p0, v0}, Landroid/support/v4/view/DraftViewPager;->setWillNotDraw(Z)V
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->invalidate()V
return-void
:cond_11
const/4 v0, 0x0
goto :goto_a
.end method
.method  smoothScrollTo(IIII)V
.registers 19
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getChildCount()I
move-result v1
if-nez v1, :cond_b
const/4 v1, 0x0
invoke-direct {p0, v1}, Landroid/support/v4/view/DraftViewPager;->setScrollingCacheEnabled(Z)V
:goto_a
return-void
:cond_b
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getScrollX()I
move-result v2
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getScrollY()I
move-result v3
sub-int v4, p2, v2
sub-int v5, p3, v3
if-nez v4, :cond_23
if-nez v5, :cond_23
invoke-direct {p0}, Landroid/support/v4/view/DraftViewPager;->completeScroll()V
const/4 v1, 0x0
invoke-direct {p0, v1}, Landroid/support/v4/view/DraftViewPager;->setScrollState(I)V
goto :goto_a
:cond_23
const/4 v1, 0x1
invoke-direct {p0, v1}, Landroid/support/v4/view/DraftViewPager;->setScrollingCacheEnabled(Z)V
const/4 v1, 0x1
iput-boolean v1, p0, Landroid/support/v4/view/DraftViewPager;->mScrolling:Z
const/4 v1, 0x2
invoke-direct {p0, v1}, Landroid/support/v4/view/DraftViewPager;->setScrollState(I)V
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->getWidth()I
move-result v11
div-int/lit8 v9, v11, 0x2
const/high16 v1, 0x3f80
const/high16 v12, 0x3f80
invoke-static {v4}, Ljava/lang/Math;->abs(I)I
move-result v13
int-to-float v13, v13
mul-float/2addr v12, v13
int-to-float v13, v11
div-float/2addr v12, v13
invoke-static {v1, v12}, Ljava/lang/Math;->min(FF)F
move-result v8
int-to-float v1, v9
int-to-float v12, v9
invoke-virtual {p0, v8}, Landroid/support/v4/view/DraftViewPager;->distanceInfluenceForSnapDuration(F)F
move-result v13
mul-float/2addr v12, v13
add-float v7, v1, v12
const/4 v6, 0x0
invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I
move-result p4
if-lez p4, :cond_75
const/high16 v1, 0x447a
move/from16 v0, p4
int-to-float v12, v0
div-float v12, v7, v12
invoke-static {v12}, Ljava/lang/Math;->abs(F)F
move-result v12
mul-float/2addr v1, v12
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v1
mul-int/lit8 v6, v1, 0x4
:goto_66
const/16 v1, 0x258
invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I
move-result v6
iget-object v1, p0, Landroid/support/v4/view/DraftViewPager;->mScroller:Landroid/widget/Scroller;
invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V
invoke-virtual {p0}, Landroid/support/v4/view/DraftViewPager;->invalidate()V
goto :goto_a
:cond_75
invoke-static {v4}, Ljava/lang/Math;->abs(I)I
move-result v1
int-to-float v1, v1
iget v12, p0, Landroid/support/v4/view/DraftViewPager;->mPageMargin:I
add-int/2addr v12, v11
int-to-float v12, v12
div-float v10, v1, v12
const/high16 v1, 0x3f80
add-float/2addr v1, v10
const/high16 v12, 0x42c8
mul-float/2addr v1, v12
float-to-int v6, v1
goto :goto_66
.end method
.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
.registers 3
invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
move-result v0
if-nez v0, :cond_a
iget-object v0, p0, Landroid/support/v4/view/DraftViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;
if-ne p1, v0, :cond_c
:cond_a
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method