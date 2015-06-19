.class public Lcom/pinguo/album/surpport/GLPullToRefreshView;
.super Lcom/pinguo/album/views/GLBaseView;
.source "GLPullToRefreshView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/album/surpport/GLPullToRefreshView$OnRefreshListener;,
        Lcom/pinguo/album/surpport/GLPullToRefreshView$OnSmoothScrollFinishedListener;,
        Lcom/pinguo/album/surpport/GLPullToRefreshView$State;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$pinguo$album$surpport$GLPullToRefreshView$State:[I = null

.field static final FRICTION:F = 3.0f

#the value of this static final field might be set in the static constructor
.field private static final HEAD_REFRESH_LENGTH:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "GLPullToRefreshView"

.field public static final MODE_PULL_END:I = 0x2

.field public static final MODE_PULL_START:I = 0x1

.field public static final SMOOTH_SCROLL_DURATION_MS:I = 0xc8

.field private static final TAIL_REFRESH_LENGTH:I


# instance fields
.field private enablePullEnd:Z

.field private enablePullStart:Z

.field private mContentView:Lcom/pinguo/album/views/GLBaseView;

.field private mHeadLayout:Lcom/pinguo/album/surpport/GLPullLoadingLayout;

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastScrollRelatePos:F

.field private mMode:I

.field private mOnRefreshListener:Lcom/pinguo/album/surpport/GLPullToRefreshView$OnRefreshListener;

.field private mScrollFinishedListener:Lcom/pinguo/album/surpport/GLPullToRefreshView$OnSmoothScrollFinishedListener;

.field private mScrollRelatePos:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingWhileRefreshingEnabled:Z

.field private mState:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

.field private mTailLayout:Lcom/pinguo/album/surpport/GLPullLoadingLayout;

.field private mTouchSlop:I

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static synthetic $SWITCH_TABLE$com$pinguo$album$surpport$GLPullToRefreshView$State()[I
    .registers 3

    sget-object v0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->$SWITCH_TABLE$com$pinguo$album$surpport$GLPullToRefreshView$State:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->values()[Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->HEAD_REFRESHING:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    invoke-virtual {v1}, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_4f

    :goto_15
    :try_start_15
    sget-object v1, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->MANUAL_REFRESHING:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    invoke-virtual {v1}, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_4d

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->PULL_TO_REFRESH:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    invoke-virtual {v1}, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_4b

    :goto_27
    :try_start_27
    sget-object v1, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->RELEASE_TO_REFRESH:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    invoke-virtual {v1}, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_49

    :goto_30
    :try_start_30
    sget-object v1, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->RESET:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    invoke-virtual {v1}, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_47

    :goto_39
    :try_start_39
    sget-object v1, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->TAIL_REFRESHING:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    invoke-virtual {v1}, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_45

    :goto_42
    sput-object v0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->$SWITCH_TABLE$com$pinguo$album$surpport$GLPullToRefreshView$State:[I

    goto :goto_4

    :catch_45
    move-exception v1

    goto :goto_42

    :catch_47
    move-exception v1

    goto :goto_39

    :catch_49
    move-exception v1

    goto :goto_30

    :catch_4b
    move-exception v1

    goto :goto_27

    :catch_4d
    move-exception v1

    goto :goto_1e

    :catch_4f
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x46

    invoke-static {v0}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(I)I

    move-result v0

    sput v0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->HEAD_REFRESH_LENGTH:I

    const/16 v0, 0x37

    invoke-static {v0}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(I)I

    move-result v0

    sput v0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->TAIL_REFRESH_LENGTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/pinguo/album/views/GLBaseView;-><init>()V

    iput-boolean v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollingWhileRefreshingEnabled:Z

    sget-object v0, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->RESET:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    iput-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mState:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    iput-boolean v5, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mIsBeingDragged:Z

    iput v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mMode:I

    iput-boolean v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->enablePullStart:Z

    iput-boolean v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->enablePullEnd:Z

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mTouchSlop:I

    new-instance v0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;

    const v2, 0x7f080012

    const v3, 0x7f08000d

    const v4, 0x7f08000e

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/album/surpport/GLPullLoadingLayout;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mHeadLayout:Lcom/pinguo/album/surpport/GLPullLoadingLayout;

    new-instance v0, Lcom/pinguo/album/surpport/GLPullLoadingLayout;

    const v2, 0x7f080011

    const v3, 0x7f080010

    const v4, 0x7f080015

    move-object v1, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/album/surpport/GLPullLoadingLayout;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mTailLayout:Lcom/pinguo/album/surpport/GLPullLoadingLayout;

    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScroller:Landroid/widget/Scroller;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/album/surpport/GLPullToRefreshView;)Lcom/pinguo/album/surpport/GLPullToRefreshView$OnSmoothScrollFinishedListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollFinishedListener:Lcom/pinguo/album/surpport/GLPullToRefreshView$OnSmoothScrollFinishedListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/album/surpport/GLPullToRefreshView;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->callRefreshListener()V

    return-void
.end method

.method private callRefreshListener()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mOnRefreshListener:Lcom/pinguo/album/surpport/GLPullToRefreshView$OnRefreshListener;

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mOnRefreshListener:Lcom/pinguo/album/surpport/GLPullToRefreshView$OnRefreshListener;

    invoke-interface {v0}, Lcom/pinguo/album/surpport/GLPullToRefreshView$OnRefreshListener;->onPullDownToRefresh()V

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mOnRefreshListener:Lcom/pinguo/album/surpport/GLPullToRefreshView$OnRefreshListener;

    invoke-interface {v0}, Lcom/pinguo/album/surpport/GLPullToRefreshView$OnRefreshListener;->onPullUpToRefresh()V

    goto :goto_e
.end method

.method private getMaximumPullScroll()I
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4040

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private isReadyForPull()Z
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->isReadyForPullStart()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->isReadyForPullEnd()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private pullEvent()V
    .registers 9

    const/4 v7, 0x0

    const/high16 v6, 0x4040

    const/4 v5, 0x0

    iget v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mInitialMotionY:F

    iget v2, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastMotionY:F

    iget v4, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mMode:I

    packed-switch v4, :pswitch_data_cc

    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->isRefreshing()Z

    move-result v4

    if-eqz v4, :cond_aa

    iget v4, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastScrollRelatePos:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_97

    iget v4, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastScrollRelatePos:F

    sub-float v5, v0, v2

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastScrollRelatePos:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_31
    sget v1, Lcom/pinguo/album/surpport/GLPullToRefreshView;->HEAD_REFRESH_LENGTH:I

    :goto_33
    invoke-virtual {p0, v3}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->setHeaderScroll(I)V

    if-eqz v3, :cond_51

    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->isRefreshing()Z

    move-result v4

    if-nez v4, :cond_51

    iget-object v4, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mState:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    sget-object v5, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->PULL_TO_REFRESH:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    if-eq v4, v5, :cond_b7

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-lt v1, v4, :cond_b7

    sget-object v4, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->PULL_TO_REFRESH:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    new-array v5, v7, [Z

    invoke-virtual {p0, v4, v5}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->setState(Lcom/pinguo/album/surpport/GLPullToRefreshView$State;[Z)V

    :cond_51
    :goto_51
    return-void

    :pswitch_52
    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->isRefreshing()Z

    move-result v4

    if-eqz v4, :cond_8b

    iget v4, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastScrollRelatePos:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_79

    iget v4, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastScrollRelatePos:F

    sub-float v5, v0, v2

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastScrollRelatePos:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_76
    sget v1, Lcom/pinguo/album/surpport/GLPullToRefreshView;->TAIL_REFRESH_LENGTH:I

    goto :goto_33

    :cond_79
    sub-float v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    sget v4, Lcom/pinguo/album/surpport/GLPullToRefreshView;->TAIL_REFRESH_LENGTH:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_76

    :cond_8b
    sub-float v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_76

    :cond_97
    sub-float v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    sget v4, Lcom/pinguo/album/surpport/GLPullToRefreshView;->HEAD_REFRESH_LENGTH:I

    neg-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_31

    :cond_aa
    sub-float v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto/16 :goto_31

    :cond_b7
    iget-object v4, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mState:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    sget-object v5, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->PULL_TO_REFRESH:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    if-ne v4, v5, :cond_51

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v1, v4, :cond_51

    sget-object v4, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->RELEASE_TO_REFRESH:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    new-array v5, v7, [Z

    invoke-virtual {p0, v4, v5}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->setState(Lcom/pinguo/album/surpport/GLPullToRefreshView$State;[Z)V

    goto :goto_51

    nop

    :pswitch_data_cc
    .packed-switch 0x2
        :pswitch_52
    .end packed-switch
.end method

.method private renderHead(Lcom/pinguo/album/opengles/GLESCanvas;)V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mHeadLayout:Lcom/pinguo/album/surpport/GLPullLoadingLayout;

    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->getWidth()I

    move-result v4

    iget v1, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollRelatePos:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->render(Lcom/pinguo/album/opengles/GLESCanvas;IIII)V

    return-void
.end method

.method private renderTail(Lcom/pinguo/album/opengles/GLESCanvas;)V
    .registers 8

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mTailLayout:Lcom/pinguo/album/surpport/GLPullLoadingLayout;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->getHeight()I

    move-result v1

    iget v3, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollRelatePos:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->getWidth()I

    move-result v4

    iget v1, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollRelatePos:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->render(Lcom/pinguo/album/opengles/GLESCanvas;IIII)V

    return-void
.end method

.method private final scrollTo(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollRelatePos:I

    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->invalidate()V

    return-void
.end method

.method private final smoothScrollTo(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->smoothScrollTo(ILcom/pinguo/album/surpport/GLPullToRefreshView$OnSmoothScrollFinishedListener;)V

    return-void
.end method

.method private final smoothScrollTo(ILcom/pinguo/album/surpport/GLPullToRefreshView$OnSmoothScrollFinishedListener;)V
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_f
    iget v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollRelatePos:I

    sub-int v0, p1, v0

    if-nez v0, :cond_16

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollRelatePos:I

    iget v3, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollRelatePos:I

    sub-int v4, p1, v3

    const/16 v5, 0xc8

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iput-object p2, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollFinishedListener:Lcom/pinguo/album/surpport/GLPullToRefreshView$OnSmoothScrollFinishedListener;

    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->invalidate()V

    goto :goto_15
.end method


# virtual methods
.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-nez v7, :cond_19

    iget v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollRelatePos:I

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-super {p0, p1}, Lcom/pinguo/album/views/GLBaseView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    iget v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollRelatePos:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :goto_18
    return v6

    :cond_19
    iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mMotionTarget:Lcom/pinguo/album/views/GLBaseView;

    if-eqz v0, :cond_39

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    iget-object v4, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mMotionTarget:Lcom/pinguo/album/views/GLBaseView;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/pinguo/album/views/GLBaseView;Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mMotionTarget:Lcom/pinguo/album/views/GLBaseView;

    :cond_39
    invoke-virtual {p0, p1}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->onTouch(Landroid/view/MotionEvent;)Z

    const/4 v6, 0x1

    goto :goto_18
.end method

.method protected interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v7, 0x3

    if-eq v1, v7, :cond_c

    if-ne v1, v6, :cond_f

    :cond_c
    iget-boolean v6, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mIsBeingDragged:Z

    :cond_e
    :goto_e
    return v6

    :cond_f
    if-eqz v1, :cond_15

    iget-boolean v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mIsBeingDragged:Z

    if-nez v7, :cond_e

    :cond_15
    packed-switch v1, :pswitch_data_112

    :cond_18
    :goto_18
    :pswitch_18
    iget-boolean v6, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mIsBeingDragged:Z

    goto :goto_e

    :pswitch_1b
    iget-boolean v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollingWhileRefreshingEnabled:Z

    if-nez v7, :cond_25

    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->isRefreshing()Z

    move-result v7

    if-nez v7, :cond_e

    :cond_25
    invoke-direct {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->isReadyForPull()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastMotionY:F

    sub-float v2, v5, v7

    iget v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastMotionX:F

    sub-float v3, v4, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v7, v0, v7

    if-lez v7, :cond_18

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v0, v7

    if-lez v7, :cond_18

    iget v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollRelatePos:I

    int-to-float v7, v7

    iput v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastScrollRelatePos:F

    const/high16 v7, 0x3f80

    cmpl-float v7, v2, v7

    if-ltz v7, :cond_8f

    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->isReadyForPullStart()Z

    move-result v7

    if-eqz v7, :cond_8f

    iget-object v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mState:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    sget-object v8, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->TAIL_REFRESHING:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    if-eq v7, v8, :cond_6e

    iput v5, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastMotionY:F

    iput v4, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastMotionX:F

    iput-boolean v6, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mIsBeingDragged:Z

    iput v6, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mMode:I

    goto :goto_18

    :cond_6e
    iget-object v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mOnRefreshListener:Lcom/pinguo/album/surpport/GLPullToRefreshView$OnRefreshListener;

    if-eqz v7, :cond_18

    iget-object v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mOnRefreshListener:Lcom/pinguo/album/surpport/GLPullToRefreshView$OnRefreshListener;

    invoke-interface {v7}, Lcom/pinguo/album/surpport/GLPullToRefreshView$OnRefreshListener;->cancelWhenRefreshPull()Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mOnRefreshListener:Lcom/pinguo/album/surpport/GLPullToRefreshView$OnRefreshListener;

    invoke-interface {v7}, Lcom/pinguo/album/surpport/GLPullToRefreshView$OnRefreshListener;->onCancelRefresh()V

    sget-object v7, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->RESET:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    new-array v8, v9, [Z

    invoke-virtual {p0, v7, v8}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->setState(Lcom/pinguo/album/surpport/GLPullToRefreshView$State;[Z)V

    iput v5, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastMotionY:F

    iput v4, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastMotionX:F

    iput-boolean v6, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mIsBeingDragged:Z

    iput v6, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mMode:I

    goto :goto_18

    :cond_8f
    const/high16 v7, -0x4080

    cmpg-float v7, v2, v7

    if-gtz v7, :cond_cd

    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->isReadyForPullEnd()Z

    move-result v7

    if-eqz v7, :cond_cd

    iget-object v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mState:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    sget-object v8, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->HEAD_REFRESHING:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    if-eq v7, v8, :cond_ab

    iput v5, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastMotionY:F

    iput v4, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastMotionX:F

    iput-boolean v6, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mIsBeingDragged:Z

    iput v10, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mMode:I

    goto/16 :goto_18

    :cond_ab
    iget-object v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mOnRefreshListener:Lcom/pinguo/album/surpport/GLPullToRefreshView$OnRefreshListener;

    if-eqz v7, :cond_18

    iget-object v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mOnRefreshListener:Lcom/pinguo/album/surpport/GLPullToRefreshView$OnRefreshListener;

    invoke-interface {v7}, Lcom/pinguo/album/surpport/GLPullToRefreshView$OnRefreshListener;->cancelWhenRefreshPull()Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mOnRefreshListener:Lcom/pinguo/album/surpport/GLPullToRefreshView$OnRefreshListener;

    invoke-interface {v7}, Lcom/pinguo/album/surpport/GLPullToRefreshView$OnRefreshListener;->onCancelRefresh()V

    sget-object v7, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->RESET:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    new-array v8, v9, [Z

    invoke-virtual {p0, v7, v8}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->setState(Lcom/pinguo/album/surpport/GLPullToRefreshView$State;[Z)V

    iput v5, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastMotionY:F

    iput v4, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastMotionX:F

    iput-boolean v6, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mIsBeingDragged:Z

    iput v10, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mMode:I

    goto/16 :goto_18

    :cond_cd
    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->isRefreshing()Z

    move-result v7

    if-eqz v7, :cond_18

    iget v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollRelatePos:I

    if-eqz v7, :cond_18

    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->isReadyForPullStart()Z

    move-result v7

    if-eqz v7, :cond_e7

    iput v5, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastMotionY:F

    iput v4, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastMotionX:F

    iput-boolean v6, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mIsBeingDragged:Z

    iput v6, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mMode:I

    goto/16 :goto_18

    :cond_e7
    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->isReadyForPullEnd()Z

    move-result v7

    if-eqz v7, :cond_18

    iput v5, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastMotionY:F

    iput v4, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastMotionX:F

    iput-boolean v6, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mIsBeingDragged:Z

    iput v10, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mMode:I

    goto/16 :goto_18

    :pswitch_f7
    invoke-direct {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->isReadyForPull()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mInitialMotionY:F

    iput v6, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastMotionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mInitialMotionX:F

    iput v6, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastMotionX:F

    iput-boolean v9, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mIsBeingDragged:Z

    goto/16 :goto_18

    nop

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_f7
        :pswitch_18
        :pswitch_1b
    .end packed-switch
.end method

.method protected isReadyForPullEnd()Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mContentView:Lcom/pinguo/album/views/GLBaseView;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mContentView:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v3}, Lcom/pinguo/album/views/GLBaseView;->isEnd()Z

    move-result v3

    if-eqz v3, :cond_21

    iget-boolean v3, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->enablePullEnd:Z

    if-eqz v3, :cond_21

    move v0, v2

    :goto_13
    if-nez v0, :cond_23

    iget-object v3, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mState:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    sget-object v4, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->TAIL_REFRESHING:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    if-ne v3, v4, :cond_1f

    iget v3, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollRelatePos:I

    if-nez v3, :cond_23

    :cond_1f
    move v0, v1

    :goto_20
    return v0

    :cond_21
    move v0, v1

    goto :goto_13

    :cond_23
    move v0, v2

    goto :goto_20
.end method

.method protected isReadyForPullStart()Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mContentView:Lcom/pinguo/album/views/GLBaseView;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mContentView:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v3}, Lcom/pinguo/album/views/GLBaseView;->isBegin()Z

    move-result v3

    if-eqz v3, :cond_21

    iget-boolean v3, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->enablePullStart:Z

    if-eqz v3, :cond_21

    move v0, v2

    :goto_13
    if-nez v0, :cond_23

    iget-object v3, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mState:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    sget-object v4, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->HEAD_REFRESHING:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    if-ne v3, v4, :cond_1f

    iget v3, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollRelatePos:I

    if-nez v3, :cond_23

    :cond_1f
    move v0, v1

    :goto_20
    return v0

    :cond_21
    move v0, v1

    goto :goto_13

    :cond_23
    move v0, v2

    goto :goto_20
.end method

.method public isRefreshing()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mState:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    invoke-static {v0}, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->isRefreshingState(Lcom/pinguo/album/surpport/GLPullToRefreshView$State;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mContentView:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/pinguo/album/views/GLBaseView;->layout(IIII)V

    return-void
.end method

.method protected onPullToRefresh()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mHeadLayout:Lcom/pinguo/album/surpport/GLPullLoadingLayout;

    sget-object v1, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->PULL_TO_REFRESH:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    invoke-virtual {v0, v1}, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->setState(Lcom/pinguo/album/surpport/GLPullToRefreshView$State;)V

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mTailLayout:Lcom/pinguo/album/surpport/GLPullLoadingLayout;

    sget-object v1, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->PULL_TO_REFRESH:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    invoke-virtual {v0, v1}, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->setState(Lcom/pinguo/album/surpport/GLPullToRefreshView$State;)V

    return-void
.end method

.method public final onRefreshComplete()V
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->RESET:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v0, v1}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->setState(Lcom/pinguo/album/surpport/GLPullToRefreshView$State;[Z)V

    :cond_e
    return-void
.end method

.method protected onRefreshing(Z)V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mHeadLayout:Lcom/pinguo/album/surpport/GLPullLoadingLayout;

    sget-object v2, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->HEAD_REFRESHING:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    invoke-virtual {v1, v2}, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->setState(Lcom/pinguo/album/surpport/GLPullToRefreshView$State;)V

    iget-object v1, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mTailLayout:Lcom/pinguo/album/surpport/GLPullLoadingLayout;

    sget-object v2, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->TAIL_REFRESHING:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    invoke-virtual {v1, v2}, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->setState(Lcom/pinguo/album/surpport/GLPullToRefreshView$State;)V

    if-eqz p1, :cond_27

    new-instance v0, Lcom/pinguo/album/surpport/GLPullToRefreshView$2;

    invoke-direct {v0, p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView$2;-><init>(Lcom/pinguo/album/surpport/GLPullToRefreshView;)V

    iget v1, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mMode:I

    packed-switch v1, :pswitch_data_2c

    sget v1, Lcom/pinguo/album/surpport/GLPullToRefreshView;->HEAD_REFRESH_LENGTH:I

    neg-int v1, v1

    invoke-direct {p0, v1, v0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->smoothScrollTo(ILcom/pinguo/album/surpport/GLPullToRefreshView$OnSmoothScrollFinishedListener;)V

    :goto_20
    return-void

    :pswitch_21
    sget v1, Lcom/pinguo/album/surpport/GLPullToRefreshView;->TAIL_REFRESH_LENGTH:I

    invoke-direct {p0, v1, v0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->smoothScrollTo(ILcom/pinguo/album/surpport/GLPullToRefreshView$OnSmoothScrollFinishedListener;)V

    goto :goto_20

    :cond_27
    invoke-direct {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->callRefreshListener()V

    goto :goto_20

    nop

    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_21
    .end packed-switch
.end method

.method protected onReleaseToRefresh()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mHeadLayout:Lcom/pinguo/album/surpport/GLPullLoadingLayout;

    sget-object v1, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->RELEASE_TO_REFRESH:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    invoke-virtual {v0, v1}, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->setState(Lcom/pinguo/album/surpport/GLPullToRefreshView$State;)V

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mTailLayout:Lcom/pinguo/album/surpport/GLPullLoadingLayout;

    sget-object v1, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->RELEASE_TO_REFRESH:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    invoke-virtual {v0, v1}, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->setState(Lcom/pinguo/album/surpport/GLPullToRefreshView$State;)V

    return-void
.end method

.method protected onReset()V
    .registers 4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mIsBeingDragged:Z

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mHeadLayout:Lcom/pinguo/album/surpport/GLPullLoadingLayout;

    sget-object v1, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->RESET:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    invoke-virtual {v0, v1}, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->setState(Lcom/pinguo/album/surpport/GLPullToRefreshView$State;)V

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mTailLayout:Lcom/pinguo/album/surpport/GLPullLoadingLayout;

    sget-object v1, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->RESET:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    invoke-virtual {v0, v1}, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->setState(Lcom/pinguo/album/surpport/GLPullToRefreshView$State;)V

    invoke-direct {p0, v2}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->smoothScrollTo(I)V

    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollingWhileRefreshingEnabled:Z

    if-nez v2, :cond_d

    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_d

    :goto_c
    return v0

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-eqz v2, :cond_1b

    move v0, v1

    goto :goto_c

    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_b8

    :cond_22
    move v0, v1

    goto :goto_c

    :pswitch_24
    iget-boolean v2, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mIsBeingDragged:Z

    if-eqz v2, :cond_22

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastMotionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastMotionX:F

    invoke-direct {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->pullEvent()V

    goto :goto_c

    :pswitch_38
    invoke-direct {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->isReadyForPull()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mInitialMotionY:F

    iput v1, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastMotionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mInitialMotionX:F

    iput v1, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mLastMotionX:F

    goto :goto_c

    :pswitch_4f
    iget-boolean v2, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mIsBeingDragged:Z

    if-eqz v2, :cond_22

    iput-boolean v1, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mIsBeingDragged:Z

    iget-object v2, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mState:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    sget-object v3, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->RELEASE_TO_REFRESH:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    if-ne v2, v3, :cond_78

    iget-object v2, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mOnRefreshListener:Lcom/pinguo/album/surpport/GLPullToRefreshView$OnRefreshListener;

    if-eqz v2, :cond_78

    iget v2, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mMode:I

    packed-switch v2, :pswitch_data_c4

    sget-object v2, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->HEAD_REFRESHING:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    new-array v3, v0, [Z

    aput-boolean v0, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->setState(Lcom/pinguo/album/surpport/GLPullToRefreshView$State;[Z)V

    goto :goto_c

    :pswitch_6e
    sget-object v2, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->TAIL_REFRESHING:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    new-array v3, v0, [Z

    aput-boolean v0, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->setState(Lcom/pinguo/album/surpport/GLPullToRefreshView$State;[Z)V

    goto :goto_c

    :cond_78
    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_af

    iget v2, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_94

    sget v2, Lcom/pinguo/album/surpport/GLPullToRefreshView;->TAIL_REFRESH_LENGTH:I

    iget v3, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollRelatePos:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v2, v3, :cond_94

    sget v1, Lcom/pinguo/album/surpport/GLPullToRefreshView;->TAIL_REFRESH_LENGTH:I

    invoke-direct {p0, v1}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->smoothScrollTo(I)V

    goto/16 :goto_c

    :cond_94
    iget v2, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mMode:I

    if-ne v2, v0, :cond_aa

    sget v2, Lcom/pinguo/album/surpport/GLPullToRefreshView;->HEAD_REFRESH_LENGTH:I

    iget v3, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollRelatePos:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v2, v3, :cond_aa

    sget v1, Lcom/pinguo/album/surpport/GLPullToRefreshView;->HEAD_REFRESH_LENGTH:I

    neg-int v1, v1

    invoke-direct {p0, v1}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->smoothScrollTo(I)V

    goto/16 :goto_c

    :cond_aa
    invoke-direct {p0, v1}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->smoothScrollTo(I)V

    goto/16 :goto_c

    :cond_af
    sget-object v2, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->RESET:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    new-array v1, v1, [Z

    invoke-virtual {p0, v2, v1}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->setState(Lcom/pinguo/album/surpport/GLPullToRefreshView$State;[Z)V

    goto/16 :goto_c

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_38
        :pswitch_4f
        :pswitch_24
        :pswitch_4f
    .end packed-switch

    :pswitch_data_c4
    .packed-switch 0x2
        :pswitch_6e
    .end packed-switch
.end method

.method protected render(Lcom/pinguo/album/opengles/GLESCanvas;)V
    .registers 11

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    iget-object v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v7

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    iput v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollRelatePos:I

    const/4 v1, 0x1

    :cond_1a
    iget-object v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_32

    if-nez v4, :cond_32

    iget-object v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollFinishedListener:Lcom/pinguo/album/surpport/GLPullToRefreshView$OnSmoothScrollFinishedListener;

    if-eqz v7, :cond_32

    iget-object v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mUIHandler:Landroid/os/Handler;

    new-instance v8, Lcom/pinguo/album/surpport/GLPullToRefreshView$1;

    invoke-direct {v8, p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView$1;-><init>(Lcom/pinguo/album/surpport/GLPullToRefreshView;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_32
    iget-object v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mHeadLayout:Lcom/pinguo/album/surpport/GLPullLoadingLayout;

    invoke-virtual {v7}, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->inLoadingAnimation()Z

    move-result v7

    if-eqz v7, :cond_3e

    iget v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollRelatePos:I

    if-ltz v7, :cond_7d

    :cond_3e
    if-nez v1, :cond_7d

    move v1, v6

    :goto_41
    iget-object v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mTailLayout:Lcom/pinguo/album/surpport/GLPullLoadingLayout;

    invoke-virtual {v7}, Lcom/pinguo/album/surpport/GLPullLoadingLayout;->inLoadingAnimation()Z

    move-result v7

    if-eqz v7, :cond_4d

    iget v7, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollRelatePos:I

    if-gtz v7, :cond_7f

    :cond_4d
    if-nez v1, :cond_7f

    move v1, v6

    :goto_50
    invoke-virtual {p0, p1}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->renderBackground(Lcom/pinguo/album/opengles/GLESCanvas;)V

    const/4 v5, 0x2

    invoke-interface {p1, v5}, Lcom/pinguo/album/opengles/GLESCanvas;->save(I)V

    const/4 v5, 0x0

    iget v6, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollRelatePos:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-interface {p1, v5, v6}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->getComponentCount()I

    move-result v2

    :goto_64
    if-lt v0, v2, :cond_81

    invoke-interface {p1}, Lcom/pinguo/album/opengles/GLESCanvas;->restore()V

    iget v5, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollRelatePos:I

    if-gez v5, :cond_70

    invoke-direct {p0, p1}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->renderHead(Lcom/pinguo/album/opengles/GLESCanvas;)V

    :cond_70
    iget v5, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollRelatePos:I

    if-lez v5, :cond_77

    invoke-direct {p0, p1}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->renderTail(Lcom/pinguo/album/opengles/GLESCanvas;)V

    :cond_77
    if-eqz v1, :cond_7c

    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->invalidate()V

    :cond_7c
    return-void

    :cond_7d
    move v1, v5

    goto :goto_41

    :cond_7f
    move v1, v5

    goto :goto_50

    :cond_81
    invoke-virtual {p0, v0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->getComponent(I)Lcom/pinguo/album/views/GLBaseView;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->renderChild(Lcom/pinguo/album/opengles/GLESCanvas;Lcom/pinguo/album/views/GLBaseView;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_64
.end method

.method public setContentView(Lcom/pinguo/album/views/GLBaseView;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mContentView:Lcom/pinguo/album/views/GLBaseView;

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->getComponentCount()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->removeAllComponents()V

    :cond_e
    iput-object p1, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mContentView:Lcom/pinguo/album/views/GLBaseView;

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mContentView:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {p0, v0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->addComponent(Lcom/pinguo/album/views/GLBaseView;)V

    goto :goto_4
.end method

.method public setEnablePullEnd(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->enablePullEnd:Z

    return-void
.end method

.method public setEnablePullStart(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->enablePullStart:Z

    return-void
.end method

.method protected final setHeaderScroll(I)V
    .registers 4

    invoke-direct {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->getMaximumPullScroll()I

    move-result v0

    neg-int v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->scrollTo(I)V

    return-void
.end method

.method public final setOnRefreshListener(Lcom/pinguo/album/surpport/GLPullToRefreshView$OnRefreshListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mOnRefreshListener:Lcom/pinguo/album/surpport/GLPullToRefreshView$OnRefreshListener;

    return-void
.end method

.method final varargs setState(Lcom/pinguo/album/surpport/GLPullToRefreshView$State;[Z)V
    .registers 5

    iput-object p1, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mState:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    invoke-static {}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->$SWITCH_TABLE$com$pinguo$album$surpport$GLPullToRefreshView$State()[I

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView;->mState:Lcom/pinguo/album/surpport/GLPullToRefreshView$State;

    invoke-virtual {v1}, Lcom/pinguo/album/surpport/GLPullToRefreshView$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    :goto_11
    return-void

    :pswitch_12
    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->onReset()V

    goto :goto_11

    :pswitch_16
    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->onPullToRefresh()V

    goto :goto_11

    :pswitch_1a
    invoke-virtual {p0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->onReleaseToRefresh()V

    goto :goto_11

    :pswitch_1e
    const/4 v0, 0x0

    aget-boolean v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->onRefreshing(Z)V

    goto :goto_11

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_12
        :pswitch_16
        :pswitch_1a
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method
