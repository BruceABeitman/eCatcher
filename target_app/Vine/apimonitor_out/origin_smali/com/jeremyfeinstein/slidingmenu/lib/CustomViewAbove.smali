.class public Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
.super Landroid/view/ViewGroup;
.source "CustomViewAbove.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$SimpleOnPageChangeListener;,
        Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final TAG:Ljava/lang/String; = "CustomViewAbove"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field protected mActivePointerId:I

.field private mClosedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;

.field private mContent:Landroid/view/View;

.field private mCurItem:I

.field private mEnabled:Z

.field private mFlingDistance:I

.field private mIgnoredViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialMotionX:F

.field private mInternalPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private mLastIntersecption:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field protected mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOnPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

.field private mOpenedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;

.field private mQuickReturn:Z

.field private mScrollX:F

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mScrollingCacheEnabled:Z

.field protected mTouchMode:I

.field private mTouchSlop:I

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$1;

    invoke-direct {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$1;-><init>()V

    sput-object v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mEnabled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    iput v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mTouchMode:I

    iput-boolean v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mQuickReturn:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScrollX:F

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->initCustomViewAbove()V

    return-void
.end method

.method static synthetic access$000(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;)Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
    .registers 2

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    return-object v0
.end method

.method private completeScroll()V
    .registers 8

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScrolling:Z

    if-eqz v0, :cond_37

    invoke-direct {p0, v6}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v2

    iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    if-ne v1, v3, :cond_25

    if-eq v2, v4, :cond_28

    :cond_25
    invoke-virtual {p0, v3, v4}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    :cond_28
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->isMenuOpen()Z

    move-result v5

    if-eqz v5, :cond_3a

    iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mOpenedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;

    if-eqz v5, :cond_37

    iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mOpenedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;

    invoke-interface {v5}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;->onOpened()V

    :cond_37
    :goto_37
    iput-boolean v6, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScrolling:Z

    return-void

    :cond_3a
    iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mClosedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;

    if-eqz v5, :cond_37

    iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mClosedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;

    invoke-interface {v5}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;->onClosed()V

    goto :goto_37
.end method

.method private determineTargetPage(FII)I
    .registers 7

    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mFlingDistance:I

    if-le v1, v2, :cond_20

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mMinimumVelocity:I

    if-le v1, v2, :cond_20

    if-lez p2, :cond_19

    if-lez p3, :cond_19

    add-int/lit8 v0, v0, -0x1

    :cond_18
    :goto_18
    return v0

    :cond_19
    if-gez p2, :cond_18

    if-gez p3, :cond_18

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_20
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_18
.end method

.method private endDrag()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mQuickReturn:Z

    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsUnableToDrag:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_16
    return-void
.end method

.method private getLeftBound()I
    .registers 3

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getAbsLeftBound(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private getPointerIndex(Landroid/view/MotionEvent;I)I
    .registers 5

    const/4 v1, -0x1

    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    if-ne v0, v1, :cond_9

    iput v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    :cond_9
    return v0
.end method

.method private getRightBound()I
    .registers 3

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getAbsRightBound(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private isInIgnoredView(Landroid/view/MotionEvent;)Z
    .registers 7

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    :goto_2b
    return v3

    :cond_2c
    const/4 v3, 0x0

    goto :goto_2b
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 6

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    if-ne v1, v3, :cond_24

    if-nez v2, :cond_25

    const/4 v0, 0x1

    :goto_f
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    :cond_24
    return-void

    :cond_25
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private pageScrolled(I)V
    .registers 8

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getWidth()I

    move-result v3

    div-int v2, p1, v3

    rem-int v1, p1, v3

    int-to-float v4, v1

    int-to-float v5, v3

    div-float v0, v4, v5

    invoke-virtual {p0, v2, v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->onPageScrolled(IFI)V

    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_6

    iput-boolean p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScrollingCacheEnabled:Z

    :cond_6
    return-void
.end method

.method private startDrag()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mQuickReturn:Z

    return-void
.end method

.method private thisSlideAllowed(F)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->menuOpenSlideAllowed(F)Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->menuClosedSlideAllowed(F)Z

    move-result v0

    goto :goto_d
.end method

.method private thisTouchAllowed(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScrollX:F

    add-float/2addr v2, v3

    float-to-int v0, v2

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->isMenuOpen()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    int-to-float v4, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->menuOpenTouchAllowed(Landroid/view/View;IF)Z

    move-result v1

    :cond_1a
    :goto_1a
    :pswitch_1a
    return v1

    :cond_1b
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mTouchMode:I

    packed-switch v2, :pswitch_data_32

    goto :goto_1a

    :pswitch_21
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->marginTouchAllowed(Landroid/view/View;I)Z

    move-result v1

    goto :goto_1a

    :pswitch_2a
    invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->isInIgnoredView(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_1a

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_21
        :pswitch_2a
        :pswitch_1a
    .end packed-switch
.end method


# virtual methods
.method public addIgnoredView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public addMovement(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_13
    return-void
.end method

.method public arrowScroll(I)Z
    .registers 8

    const/16 v5, 0x42

    const/16 v4, 0x11

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_b

    const/4 v0, 0x0

    :cond_b
    const/4 v1, 0x0

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_40

    if-eq v2, v0, :cond_40

    if-ne p1, v4, :cond_28

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    :cond_1e
    :goto_1e
    if-eqz v1, :cond_27

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->playSoundEffect(I)V

    :cond_27
    return v1

    :cond_28
    if-ne p1, v5, :cond_1e

    if-eqz v0, :cond_3b

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-gt v3, v4, :cond_3b

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->pageRight()Z

    move-result v1

    goto :goto_1e

    :cond_3b
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_1e

    :cond_40
    if-eq p1, v4, :cond_45

    const/4 v3, 0x1

    if-ne p1, v3, :cond_4a

    :cond_45
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->pageLeft()Z

    move-result v1

    goto :goto_1e

    :cond_4a
    if-eq p1, v5, :cond_4f

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1e

    :cond_4f
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->pageRight()Z

    move-result v1

    goto :goto_1e
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

    invoke-virtual/range {v0 .. v5}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->canScroll(Landroid/view/View;ZIII)Z

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

.method public clearIgnoredViews()V
    .registers 2

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public computeScroll()V
    .registers 6

    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_32

    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v1

    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_28

    if-eq v1, v3, :cond_2e

    :cond_28
    invoke-virtual {p0, v2, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    invoke-direct {p0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->pageScrolled(I)V

    :cond_2e
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->invalidate()V

    :goto_31
    return-void

    :cond_32
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->completeScroll()V

    goto :goto_31
.end method

.method public determineDrag(Landroid/view/MotionEvent;)V
    .registers 12

    const/4 v9, 0x1

    const/4 v8, -0x1

    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    if-eq v0, v8, :cond_c

    if-ne v3, v8, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    iget v8, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    sub-float v1, v4, v8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    iget v8, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionY:F

    sub-float v2, v6, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->isMenuOpen()Z

    move-result v8

    if-eqz v8, :cond_49

    iget v8, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mTouchSlop:I

    div-int/lit8 v8, v8, 0x2

    :goto_2f
    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_4c

    cmpl-float v8, v5, v7

    if-lez v8, :cond_4c

    invoke-direct {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->thisSlideAllowed(F)Z

    move-result v8

    if-eqz v8, :cond_4c

    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->startDrag()V

    iput v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    iput v6, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionY:F

    invoke-direct {p0, v9}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    goto :goto_c

    :cond_49
    iget v8, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mTouchSlop:I

    goto :goto_2f

    :cond_4c
    iget v8, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_c

    iput-boolean v9, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsUnableToDrag:Z

    goto :goto_c
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->drawShadow(Landroid/view/View;Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getPercentOpen()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->drawFade(Landroid/view/View;Landroid/graphics/Canvas;F)V

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getPercentOpen()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->drawSelector(Landroid/view/View;Landroid/graphics/Canvas;F)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method distanceInfluenceForSnapDuration(F)F
    .registers 6

    const/high16 v0, 0x3f00

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    return v0
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

    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    goto :goto_f

    :sswitch_17
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->arrowScroll(I)Z

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

    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    goto :goto_f

    :cond_30
    invoke-static {p1, v3}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->arrowScroll(I)Z

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

.method public getBehindWidth()I
    .registers 2

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v0

    goto :goto_5
.end method

.method public getChildWidth(I)I
    .registers 3

    packed-switch p1, :pswitch_data_12

    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getBehindWidth()I

    move-result v0

    goto :goto_4

    :pswitch_a
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_4

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_a
    .end packed-switch
.end method

.method public getContent()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getContentLeft()I
    .registers 3

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentItem()I
    .registers 2

    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    return v0
.end method

.method public getDestScrollX(I)I
    .registers 4

    packed-switch p1, :pswitch_data_16

    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getMenuLeft(Landroid/view/View;I)I

    move-result v0

    goto :goto_4

    :pswitch_e
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_4

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_5
        :pswitch_e
        :pswitch_5
    .end packed-switch
.end method

.method protected getPercentOpen()F
    .registers 3

    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScrollX:F

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getBehindWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTouchMode()I
    .registers 2

    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mTouchMode:I

    return v0
.end method

.method initCustomViewAbove()V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setWillNotDraw(Z)V

    const/high16 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setDescendantFocusability(I)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mMaximumVelocity:I

    new-instance v3, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$2;

    invoke-direct {v3, p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$2;-><init>(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;)V

    invoke-virtual {p0, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setInternalPageChangeListener(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;)Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41c8

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mFlingDistance:I

    return-void
.end method

.method public isMenuOpen()Z
    .registers 3

    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isSlidingEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mEnabled:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mEnabled:Z

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return v3

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    const/4 v2, 0x3

    if-eq v0, v2, :cond_18

    if-eq v0, v4, :cond_18

    if-eqz v0, :cond_1e

    iget-boolean v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsUnableToDrag:Z

    if-eqz v2, :cond_1e

    :cond_18
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->endDrag()V

    iput-boolean v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastIntersecption:Z

    goto :goto_6

    :cond_1e
    sparse-switch v0, :sswitch_data_8e

    :cond_21
    :goto_21
    iget-boolean v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    if-nez v2, :cond_28

    invoke-virtual {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->addMovement(Landroid/view/MotionEvent;)V

    :cond_28
    iget-boolean v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    if-nez v2, :cond_30

    iget-boolean v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mQuickReturn:Z

    if-eqz v2, :cond_8b

    :cond_30
    move v2, v4

    :goto_31
    iput-boolean v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastIntersecption:Z

    iget-boolean v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    if-nez v2, :cond_3b

    iget-boolean v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mQuickReturn:Z

    if-eqz v2, :cond_6

    :cond_3b
    move v3, v4

    goto :goto_6

    :sswitch_3d
    invoke-virtual {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->determineDrag(Landroid/view/MotionEvent;)V

    goto :goto_21

    :sswitch_41
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    iput v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_21

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mInitialMotionX:F

    iput v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionY:F

    invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_84

    iput-boolean v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    iput-boolean v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsUnableToDrag:Z

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->isMenuOpen()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    iget v6, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScrollX:F

    add-float/2addr v7, v8

    invoke-virtual {v2, v5, v6, v7}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v2

    if-eqz v2, :cond_21

    iput-boolean v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mQuickReturn:Z

    goto :goto_21

    :cond_84
    iput-boolean v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsUnableToDrag:Z

    goto :goto_21

    :sswitch_87
    invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_21

    :cond_8b
    move v2, v3

    goto :goto_31

    nop

    :sswitch_data_8e
    .sparse-switch
        0x0 -> :sswitch_41
        0x2 -> :sswitch_3d
        0x6 -> :sswitch_87
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    const/4 v3, 0x0

    sub-int v1, p4, p2

    sub-int v0, p5, p3

    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    const/4 v4, 0x0

    invoke-static {v4, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getDefaultSize(II)I

    move-result v3

    invoke-static {v4, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getDefaultSize(II)I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setMeasuredDimension(II)V

    invoke-static {p1, v4, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v1

    invoke-static {p2, v4, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v0

    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected onPageScrolled(IFI)V
    .registers 5

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mOnPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mOnPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_9
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_12
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_15

    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->completeScroll()V

    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getDestScrollX(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    :cond_15
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 27
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mEnabled:Z

    move/from16 v20, v0

    if-nez v20, :cond_b

    const/16 v20, 0x0

    :goto_a
    return v20

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v20, v0

    if-nez v20, :cond_1c

    invoke-direct/range {p0 .. p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v20

    if-nez v20, :cond_1c

    const/16 v20, 0x0

    goto :goto_a

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-nez v20, :cond_32

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v0, v4, 0xff

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_28e

    :cond_46
    :goto_46
    :pswitch_46
    const/16 v20, 0x1

    goto :goto_a

    :pswitch_49
    invoke-direct/range {p0 .. p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->completeScroll()V

    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mInitialMotionX:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    goto :goto_46

    :pswitch_6d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v20, v0

    if-nez v20, :cond_83

    invoke-virtual/range {p0 .. p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->determineDrag(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsUnableToDrag:Z

    move/from16 v20, v0

    if-eqz v20, :cond_83

    const/16 v20, 0x0

    goto :goto_a

    :cond_83
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_46

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    move/from16 v20, v0

    sub-float v6, v20, v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    invoke-virtual/range {p0 .. p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v20

    move/from16 v0, v20

    int-to-float v12, v0

    add-float v16, v12, v6

    invoke-direct/range {p0 .. p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getLeftBound()I

    move-result v20

    move/from16 v0, v20

    int-to-float v10, v0

    invoke-direct/range {p0 .. p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getRightBound()I

    move-result v20

    move/from16 v0, v20

    int-to-float v15, v0

    cmpg-float v20, v16, v10

    if-gez v20, :cond_114

    move/from16 v16, v10

    :cond_da
    :goto_da
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    move/from16 v20, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v16, v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->pageScrolled(I)V

    goto/16 :goto_46

    :cond_114
    cmpl-float v20, v16, v15

    if-lez v20, :cond_da

    move/from16 v16, v15

    goto :goto_da

    :pswitch_11b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1dd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    const/16 v20, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mMaximumVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v9, v0

    invoke-virtual/range {p0 .. p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getDestScrollX(I)I

    move-result v20

    sub-int v20, v16, v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getBehindWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v13, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1c7

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mInitialMotionX:F

    move/from16 v20, v0

    sub-float v20, v19, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v13, v9, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->determineTargetPage(FII)I

    move-result v11

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v11, v1, v2, v9}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    :goto_1ba
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->endDrag()V

    goto/16 :goto_46

    :cond_1c7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    move/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    goto :goto_1ba

    :cond_1dd
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mQuickReturn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    move/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScrollX:F

    move/from16 v24, v0

    add-float v23, v23, v24

    invoke-virtual/range {v20 .. v23}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v20

    if-eqz v20, :cond_46

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(I)V

    invoke-direct/range {p0 .. p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->endDrag()V

    goto/16 :goto_46

    :pswitch_217
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    move/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->endDrag()V

    goto/16 :goto_46

    :pswitch_241
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    goto/16 :goto_46

    :pswitch_25f
    invoke-direct/range {p0 .. p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_46

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    goto/16 :goto_46

    :pswitch_data_28e
    .packed-switch 0x0
        :pswitch_49
        :pswitch_11b
        :pswitch_6d
        :pswitch_217
        :pswitch_46
        :pswitch_241
        :pswitch_25f
    .end packed-switch
.end method

.method pageLeft()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-lez v1, :cond_d

    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method pageRight()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-ge v1, v0, :cond_d

    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public removeIgnoredView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public scrollTo(II)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    int-to-float v0, p1

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScrollX:F

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->scrollBehindTo(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getPercentOpen()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->manageLayers(F)V

    return-void
.end method

.method public setAboveOffset(I)V
    .registers 6

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->removeView(Landroid/view/View;)V

    :cond_9
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setCurrentItem(I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .registers 9

    const/4 v2, 0x0

    if-nez p3, :cond_b

    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-ne v3, p1, :cond_b

    invoke-direct {p0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    :goto_a
    return-void

    :cond_b
    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v3, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getMenuPage(I)I

    move-result p1

    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-eq v3, p1, :cond_3a

    const/4 v1, 0x1

    :goto_16
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    invoke-virtual {p0, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getDestScrollX(I)I

    move-result v0

    if-eqz v1, :cond_29

    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mOnPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    if-eqz v3, :cond_29

    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mOnPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;->onPageSelected(I)V

    :cond_29
    if-eqz v1, :cond_34

    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;->onPageSelected(I)V

    :cond_34
    if-eqz p2, :cond_3c

    invoke-virtual {p0, v0, v2, p4}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->smoothScrollTo(III)V

    goto :goto_a

    :cond_3a
    move v1, v2

    goto :goto_16

    :cond_3c
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->completeScroll()V

    invoke-virtual {p0, v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    goto :goto_a
.end method

.method public setCustomViewBehind(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;)V
    .registers 2

    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    return-void
.end method

.method public setInitialTouchEvents(FI)V
    .registers 4

    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mInitialMotionX:F

    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    iput p2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    return-void
.end method

.method setInternalPageChangeListener(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;)Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;
    .registers 3

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    return-object v0
.end method

.method public setOnClosedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mClosedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;

    return-void
.end method

.method public setOnOpenedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mOpenedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;

    return-void
.end method

.method public setOnPageChangeListener(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mOnPageChangeListener:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    return-void
.end method

.method public setSlidingEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mEnabled:Z

    return-void
.end method

.method public setTouchMode(I)V
    .registers 2

    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mTouchMode:I

    return-void
.end method

.method smoothScrollTo(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->smoothScrollTo(III)V

    return-void
.end method

.method smoothScrollTo(III)V
    .registers 18

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getChildCount()I

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v3

    sub-int v4, p1, v2

    sub-int v5, p2, v3

    if-nez v4, :cond_38

    if-nez v5, :cond_38

    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->completeScroll()V

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mOpenedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mOpenedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;

    invoke-interface {v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;->onOpened()V

    goto :goto_a

    :cond_2e
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mClosedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mClosedListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;

    invoke-interface {v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;->onClosed()V

    goto :goto_a

    :cond_38
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScrolling:Z

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getBehindWidth()I

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

    invoke-virtual {p0, v8}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->distanceInfluenceForSnapDuration(F)F

    move-result v13

    mul-float/2addr v12, v13

    add-float v7, v1, v12

    const/4 v6, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_86

    const/high16 v1, 0x447a

    move/from16 v0, p3

    int-to-float v12, v0

    div-float v12, v7, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    :goto_77
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->invalidate()V

    goto :goto_a

    :cond_86
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v12, v11

    div-float v10, v1, v12

    const/high16 v1, 0x3f80

    add-float/2addr v1, v10

    const/high16 v12, 0x42c8

    mul-float/2addr v1, v12

    float-to-int v6, v1

    const/16 v6, 0x258

    goto :goto_77
.end method
