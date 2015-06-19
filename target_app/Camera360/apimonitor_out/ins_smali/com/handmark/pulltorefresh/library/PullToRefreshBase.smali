.class public abstract Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.super Landroid/widget/LinearLayout;
.source "PullToRefreshBase.java"
.implements Lcom/handmark/pulltorefresh/library/IPullToRefresh;
.field private static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I = null
.field private static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I = null
.field private static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$State:[I = null
.field static final DEBUG:Z = true
.field static final DEMO_SCROLL_INTERVAL:I = 0xe1
.field static final FRICTION:F = 2.0f
.field static final LOG_TAG:Ljava/lang/String; = "PullToRefresh"
.field public static final SMOOTH_SCROLL_DURATION_MS:I = 0xc8
.field public static final SMOOTH_SCROLL_LONG_DURATION_MS:I = 0x145
.field static final STATE_CURRENT_MODE:Ljava/lang/String; = "ptr_current_mode"
.field static final STATE_MODE:Ljava/lang/String; = "ptr_mode"
.field static final STATE_SCROLLING_REFRESHING_ENABLED:Ljava/lang/String; = "ptr_disable_scrolling"
.field static final STATE_SHOW_REFRESHING_VIEW:Ljava/lang/String; = "ptr_show_refreshing_view"
.field static final STATE_STATE:Ljava/lang/String; = "ptr_state"
.field static final STATE_SUPER:Ljava/lang/String; = "ptr_super"
.field static final USE_HW_LAYERS:Z
.field private mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
.field private mCurrentSmoothScrollRunnable:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;
.field private mFilterTouchEvents:Z
.field public mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
.field private mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
.field private mInitialMotionX:F
.field private mInitialMotionY:F
.field private mIsBeingDragged:Z
.field private mLastMotionX:F
.field private mLastMotionY:F
.field private mLayoutVisibilityChangesEnabled:Z
.field private mLoadingAnimationStyle:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
.field private mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
.field private mOnPullEventListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;
.field private mOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
.field private mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;
.field private mOverScrollEnabled:Z
.field protected mRefreshableView:Landroid/view/View;
.field private mRefreshableViewWrapper:Landroid/widget/FrameLayout;
.field private mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;
.field private mScrollingWhileRefreshingEnabled:Z
.field private mShowViewWhileRefreshing:Z
.field private mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
.field private mTouchSlop:I
.method static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
.registers 3
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
:try_start_c
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:try_start_15
:goto_15
:try_end_15
.catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_44
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_end_1e
.catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_42
:try_start_1e
:goto_1e
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v1
const/4 v2, 0x5
aput v2, v0, v1
:try_end_27
.catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_40
:goto_27
:try_start_27
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:goto_30
:try_start_30
:try_end_30
.catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_3e
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:goto_39
:try_end_39
.catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_3c
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I
goto :goto_4
:catch_3c
move-exception v1
goto :goto_39
:catch_3e
move-exception v1
goto :goto_30
:catch_40
move-exception v1
goto :goto_27
:catch_42
move-exception v1
goto :goto_1e
:catch_44
move-exception v1
goto :goto_15
.end method
.method static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
.registers 3
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
:try_start_c
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_start_15
:try_end_15
.catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_23
:goto_15
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_end_1e
.catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_21
:goto_1e
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I
goto :goto_4
:catch_21
move-exception v1
goto :goto_1e
:catch_23
move-exception v1
goto :goto_15
.end method
.method static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$State()[I
.registers 3
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$State:[I
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
:try_start_c
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->ordinal()I
move-result v1
const/4 v2, 0x5
aput v2, v0, v1
:try_start_15
:goto_15
:try_end_15
.catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_4f
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->OVERSCROLLING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->ordinal()I
move-result v1
const/4 v2, 0x6
aput v2, v0, v1
:try_end_1e
.catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_4d
:try_start_1e
:goto_1e
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_27
.catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_4b
:goto_27
:try_start_27
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:goto_30
:try_start_30
:try_end_30
.catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_49
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:goto_39
:try_start_39
:try_end_39
.catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_47
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_end_42
.catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_45
:goto_42
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$State:[I
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
.method public constructor <init>(Landroid/content/Context;)V
.registers 5
const/4 v2, 0x0
const/4 v1, 0x1
invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
move-result-object v0
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z
iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z
iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z
iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z
iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
move-result-object v0
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 6
const/4 v2, 0x0
const/4 v1, 0x1
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
move-result-object v0
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z
iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z
iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z
iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z
iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
move-result-object v0
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
.registers 6
const/4 v2, 0x0
const/4 v1, 0x1
invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
move-result-object v0
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z
iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z
iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z
iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z
iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
move-result-object v0
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
iput-object p2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
.registers 7
const/4 v2, 0x0
const/4 v1, 0x1
invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
move-result-object v0
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z
iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z
iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z
iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z
iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
move-result-object v0
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
iput-object p2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
iput-object p3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method static synthetic access$0(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)Landroid/view/animation/Interpolator;
.registers 2
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;
return-object v0
.end method
.method static synthetic access$4(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.registers 1
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->callRefreshListener()V
return-void
.end method
.method static synthetic access$5(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
.registers 7
invoke-direct/range {p0 .. p6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
return-void
.end method
.method private addRefreshableView(Landroid/content/Context;Landroid/view/View;)V
.registers 6
const/4 v2, -0x1
new-instance v0, Landroid/widget/FrameLayout;
invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;
invoke-virtual {v0, p2, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;
new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method private callRefreshListener()V
.registers 3
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;->onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
:cond_9
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if-ne v0, v1, :cond_1a
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;
invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;->onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
goto :goto_9
:cond_1a
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if-ne v0, v1, :cond_9
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;
invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;->onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
goto :goto_9
.end method
.method private getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
.registers 5
const/4 v3, -0x1
const/4 v2, -0x2
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
move-result-object v0
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
move-result-object v1
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_20
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
:goto_18
return-object v0
:pswitch_19
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
goto :goto_18
nop
:pswitch_data_20
.packed-switch 0x2
:pswitch_19
.end packed-switch
.end method
.method private getMaximumPullScroll()I
.registers 4
const/high16 v2, 0x4000
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
move-result-object v0
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
move-result-object v1
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_2a
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getHeight()I
move-result v0
int-to-float v0, v0
div-float/2addr v0, v2
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
:goto_1d
return v0
:pswitch_1e
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getWidth()I
move-result v0
int-to-float v0, v0
div-float/2addr v0, v2
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
goto :goto_1d
nop
:pswitch_data_2a
.packed-switch 0x2
:pswitch_1e
.end packed-switch
.end method
.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 13
const/16 v9, 0xb
const/4 v8, 0x6
const/4 v7, 0x2
const/4 v6, 0x1
const/4 v5, 0x0
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
move-result-object v3
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
move-result-object v4
invoke-virtual {v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I
move-result v4
aget v3, v3, v4
packed-switch v3, :pswitch_data_ca
invoke-virtual {p0, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setOrientation(I)V
:goto_1a
const/16 v3, 0x11
invoke-virtual {p0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setGravity(I)V
invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
move-result-object v2
invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I
move-result v3
iput v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mTouchSlop:I
sget-object v3, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh:[I
invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v3
if-eqz v3, :cond_3f
invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getInteger(II)I
move-result v3
invoke-static {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
move-result-object v3
iput-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
:cond_3f
const/16 v3, 0xe
invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v3
if-eqz v3, :cond_53
const/16 v3, 0xe
invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I
move-result v3
invoke-static {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
move-result-object v3
iput-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
:cond_53
invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
move-result-object v3
iput-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;
iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;
invoke-direct {p0, p1, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->addRefreshableView(Landroid/content/Context;Landroid/view/View;)V
sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {p0, p1, v3, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
move-result-object v3
iput-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {p0, p1, v3, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
move-result-object v3
iput-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v3
if-eqz v3, :cond_aa
invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
if-eqz v1, :cond_7f
iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;
invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_7f
:cond_7f
invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v3
if-eqz v3, :cond_8b
invoke-virtual {v0, v9, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v3
iput-boolean v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z
:cond_8b
const/16 v3, 0xf
invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v3
if-eqz v3, :cond_9b
const/16 v3, 0xf
invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v3
iput-boolean v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z
:cond_9b
invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->handleStyledAttributes(Landroid/content/res/TypedArray;)V
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->updateUIForMode()V
return-void
:pswitch_a5
invoke-virtual {p0, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setOrientation(I)V
goto/16 :goto_1a
:cond_aa
const/16 v3, 0x12
invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v3
if-eqz v3, :cond_7f
const-string/jumbo v3, "ptrAdapterViewBackground"
const-string/jumbo v4, "ptrRefreshableViewBackground"
invoke-static {v3, v4}, Lcom/handmark/pulltorefresh/library/internal/Utils;->warnDeprecation(Ljava/lang/String;Ljava/lang/String;)V
const/16 v3, 0x12
invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
if-eqz v1, :cond_7f
iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;
invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_7f
nop
:pswitch_data_ca
.packed-switch 0x2
:pswitch_a5
.end packed-switch
.end method
.method private isReadyForPull()Z
.registers 4
const/4 v0, 0x0
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
move-result-object v1
iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_2a
:cond_10
:goto_10
return v0
:pswitch_11
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPullStart()Z
move-result v0
goto :goto_10
:pswitch_16
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPullEnd()Z
move-result v0
goto :goto_10
:pswitch_1b
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPullEnd()Z
move-result v1
if-nez v1, :cond_27
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPullStart()Z
move-result v1
if-eqz v1, :cond_10
:cond_27
const/4 v0, 0x1
goto :goto_10
nop
:pswitch_data_2a
.packed-switch 0x2
:pswitch_11
:pswitch_16
:pswitch_1b
.end packed-switch
.end method
.method private pullEvent()V
.registers 11
const/4 v9, 0x0
const/high16 v8, 0x4000
const/4 v7, 0x0
const-string/jumbo v5, "PullToRefresh"
const-string/jumbo v6, "pullEvent"
invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
move-result-object v5
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
move-result-object v6
invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I
move-result v6
aget v5, v5, v6
packed-switch v5, :pswitch_data_aa
iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mInitialMotionY:F
iget v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F
:goto_22
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
move-result-object v5
iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v6
aget v5, v5, v6
packed-switch v5, :pswitch_data_b0
sub-float v5, v0, v2
invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F
move-result v5
div-float/2addr v5, v8
invoke-static {v5}, Ljava/lang/Math;->round(F)I
move-result v3
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getHeaderSize()I
move-result v1
:goto_40
invoke-virtual {p0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V
if-eqz v3, :cond_7a
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isRefreshing()Z
move-result v5
if-nez v5, :cond_7a
invoke-static {v3}, Ljava/lang/Math;->abs(I)I
move-result v5
int-to-float v5, v5
int-to-float v6, v1
div-float v4, v5, v6
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
move-result-object v5
iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v6
aget v5, v5, v6
packed-switch v5, :pswitch_data_b6
iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v5, v4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->onPull(F)V
:goto_67
iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
sget-object v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
if-eq v5, v6, :cond_96
invoke-static {v3}, Ljava/lang/Math;->abs(I)I
move-result v5
if-lt v1, v5, :cond_96
sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
new-array v6, v9, [Z
invoke-virtual {p0, v5, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
:cond_7a
:goto_7a
return-void
:pswitch_7b
iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mInitialMotionX:F
iget v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F
goto :goto_22
:pswitch_80
sub-float v5, v0, v2
invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F
move-result v5
div-float/2addr v5, v8
invoke-static {v5}, Ljava/lang/Math;->round(F)I
move-result v3
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getFooterSize()I
move-result v1
goto :goto_40
:pswitch_90
iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v5, v4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->onPull(F)V
goto :goto_67
:cond_96
iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
sget-object v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
if-ne v5, v6, :cond_7a
invoke-static {v3}, Ljava/lang/Math;->abs(I)I
move-result v5
if-ge v1, v5, :cond_7a
sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
new-array v6, v9, [Z
invoke-virtual {p0, v5, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
goto :goto_7a
:pswitch_data_aa
.packed-switch 0x2
:pswitch_7b
.end packed-switch
:pswitch_data_b6
.packed-switch 0x3
:pswitch_90
.end packed-switch
:pswitch_data_b0
.packed-switch 0x3
:pswitch_80
.end packed-switch
.end method
.method private final smoothScrollTo(IJ)V
.registers 11
const-wide/16 v4, 0x0
const/4 v6, 0x0
move-object v0, p0
move v1, p1
move-wide v2, p2
invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
return-void
.end method
.method private final smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
.registers 14
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->stop()V
:cond_9
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
move-result-object v0
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
move-result-object v1
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_4e
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getScrollY()I
move-result v2
:goto_1e
if-eq v2, p1, :cond_41
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;
if-nez v0, :cond_2b
new-instance v0, Landroid/view/animation/DecelerateInterpolator;
invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;
:cond_2b
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;
move-object v1, p0
move v3, p1
move-wide v4, p2
move-object v6, p6
invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;
const-wide/16 v0, 0x0
cmp-long v0, p4, v0
if-lez v0, :cond_47
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;
invoke-virtual {p0, v0, p4, p5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z
:goto_41
:cond_41
return-void
:pswitch_42
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getScrollX()I
move-result v2
goto :goto_1e
:cond_47
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;
invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z
goto :goto_41
nop
:pswitch_data_4e
.packed-switch 0x2
:pswitch_42
.end packed-switch
.end method
.method private final smoothScrollToAndBack(I)V
.registers 9
const-wide/16 v2, 0xc8
const-wide/16 v4, 0x0
new-instance v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;
invoke-direct {v6, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
move-object v0, p0
move v1, p1
invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
return-void
.end method
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.registers 8
const-string/jumbo v1, "PullToRefresh"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "addView: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getRefreshableView()Landroid/view/View;
move-result-object v0
instance-of v1, v0, Landroid/view/ViewGroup;
if-eqz v1, :cond_2c
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
return-void
:cond_2c
new-instance v1, Ljava/lang/UnsupportedOperationException;
const-string/jumbo v2, "Refreshable View is not a ViewGroup so can\'t addView"
invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method protected final addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.registers 4
invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method protected final addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.registers 4
const/4 v0, -0x1
invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method protected createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
.registers 7
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
move-result-object v2
invoke-virtual {v1, p1, p2, v2, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
move-result-object v0
const/4 v1, 0x4
invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V
return-object v0
.end method
.method protected createLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;
.registers 5
new-instance v0, Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;
invoke-direct {v0}, Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;-><init>()V
if-eqz p1, :cond_14
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z
move-result v1
if-eqz v1, :cond_14
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;->addLayout(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V
:cond_14
if-eqz p2, :cond_23
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z
move-result v1
if-eqz v1, :cond_23
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;->addLayout(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V
:cond_23
return-object v0
.end method
.method protected abstract createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end method
.method public final demo()Z
.registers 3
const/4 v0, 0x1
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z
move-result v1
if-eqz v1, :cond_1a
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPullStart()Z
move-result v1
if-eqz v1, :cond_1a
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getHeaderSize()I
move-result v1
neg-int v1, v1
mul-int/lit8 v1, v1, 0x2
invoke-direct {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollToAndBack(I)V
:goto_19
return v0
:cond_1a
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z
move-result v1
if-eqz v1, :cond_32
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPullEnd()Z
move-result v1
if-eqz v1, :cond_32
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getFooterSize()I
move-result v1
mul-int/lit8 v1, v1, 0x2
invoke-direct {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollToAndBack(I)V
goto :goto_19
:cond_32
const/4 v0, 0x0
goto :goto_19
.end method
.method protected final disableLoadingLayoutVisibilityChanges()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z
return-void
.end method
.method public final getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
.registers 2
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
return-object v0
.end method
.method public final getFilterTouchEvents()Z
.registers 2
iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z
return v0
.end method
.method protected final getFooterLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
.registers 2
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
return-object v0
.end method
.method protected final getFooterSize()I
.registers 2
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContentSize()I
move-result v0
return v0
.end method
.method protected final getHeaderLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
.registers 2
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
return-object v0
.end method
.method protected final getHeaderSize()I
.registers 2
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContentSize()I
move-result v0
return v0
.end method
.method public final getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;
move-result-object v0
return-object v0
.end method
.method public final getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->createLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;
move-result-object v0
return-object v0
.end method
.method public final getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
.registers 2
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
return-object v0
.end method
.method public abstract getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
.end method
.method protected getPullToRefreshScrollDuration()I
.registers 2
const/16 v0, 0xc8
return v0
.end method
.method protected getPullToRefreshScrollDurationLonger()I
.registers 2
const/16 v0, 0x145
return v0
.end method
.method public final getRefreshableView()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;
return-object v0
.end method
.method protected getRefreshableViewWrapper()Landroid/widget/FrameLayout;
.registers 2
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;
return-object v0
.end method
.method public final getShowViewWhileRefreshing()Z
.registers 2
iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z
return v0
.end method
.method public final getState()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
.registers 2
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
return-object v0
.end method
.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
.registers 2
return-void
.end method
.method public final isDisableScrollingWhileRefreshing()Z
.registers 2
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isScrollingWhileRefreshingEnabled()Z
move-result v0
if-eqz v0, :cond_8
const/4 v0, 0x0
:goto_7
return v0
:cond_8
const/4 v0, 0x1
goto :goto_7
.end method
.method public final isPullToRefreshEnabled()Z
.registers 2
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->permitsPullToRefresh()Z
move-result v0
return v0
.end method
.method public final isPullToRefreshOverScrollEnabled()Z
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x9
if-lt v0, v1, :cond_14
iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableView:Landroid/view/View;
invoke-static {v0}, Lcom/handmark/pulltorefresh/library/OverscrollHelper;->isAndroidOverScrollEnabled(Landroid/view/View;)Z
move-result v0
if-eqz v0, :cond_14
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method protected abstract isReadyForPullEnd()Z
.end method
.method protected abstract isReadyForPullStart()Z
.end method
.method public final isRefreshing()Z
.registers 3
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
if-eq v0, v1, :cond_e
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
if-eq v0, v1, :cond_e
const/4 v0, 0x0
:goto_d
return v0
:cond_e
const/4 v0, 0x1
goto :goto_d
.end method
.method public final isScrollingWhileRefreshingEnabled()Z
.registers 2
iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z
return v0
.end method
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 11
const/4 v6, 0x0
const/4 v7, 0x1
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isPullToRefreshEnabled()Z
move-result v8
if-nez v8, :cond_9
:goto_8
return v6
:cond_9
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v1
const/4 v8, 0x3
if-eq v1, v8, :cond_12
if-ne v1, v7, :cond_15
:cond_12
iput-boolean v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z
goto :goto_8
:cond_15
if-eqz v1, :cond_1d
iget-boolean v8, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z
if-eqz v8, :cond_1d
move v6, v7
goto :goto_8
:cond_1d
packed-switch v1, :pswitch_data_11c
:goto_20
:cond_20
:pswitch_20
const-string/jumbo v6, "PullToRefresh"
const-string/jumbo v7, "ACTION_MOVE end"
invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-boolean v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z
goto :goto_8
:pswitch_2c
iget-boolean v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z
if-nez v6, :cond_38
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isRefreshing()Z
move-result v6
if-eqz v6, :cond_38
move v6, v7
goto :goto_8
:cond_38
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPull()Z
move-result v6
if-eqz v6, :cond_20
const-string/jumbo v6, "PullToRefresh"
const-string/jumbo v8, "ACTION_MOVE start"
invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v5
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v4
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
move-result-object v6
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
move-result-object v8
invoke-virtual {v8}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I
move-result v8
aget v6, v6, v8
packed-switch v6, :pswitch_data_126
iget v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F
sub-float v2, v5, v6
iget v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F
sub-float v3, v4, v6
:goto_68
invoke-static {v2}, Ljava/lang/Math;->abs(F)F
move-result v0
const-string/jumbo v6, "PullToRefresh"
const-string/jumbo v8, "ACTION_MOVE 1"
invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mTouchSlop:I
int-to-float v6, v6
cmpl-float v6, v0, v6
if-lez v6, :cond_20
iget-boolean v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z
if-eqz v6, :cond_88
invoke-static {v3}, Ljava/lang/Math;->abs(F)F
move-result v6
cmpl-float v6, v0, v6
if-lez v6, :cond_20
:cond_88
const-string/jumbo v6, "PullToRefresh"
const-string/jumbo v8, "ACTION_MOVE 2"
invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z
move-result v6
if-eqz v6, :cond_c0
const/high16 v6, 0x3f80
cmpl-float v6, v2, v6
if-ltz v6, :cond_c0
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPullStart()Z
move-result v6
if-eqz v6, :cond_c0
iput v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F
iput v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F
iput-boolean v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z
iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
sget-object v7, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if-ne v6, v7, :cond_20
sget-object v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
iput-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
goto/16 :goto_20
:pswitch_b7
iget v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F
sub-float v2, v4, v6
iget v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F
sub-float v3, v5, v6
goto :goto_68
:cond_c0
iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z
move-result v6
if-eqz v6, :cond_20
const/high16 v6, -0x4080
cmpg-float v6, v2, v6
if-gtz v6, :cond_20
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPullEnd()Z
move-result v6
if-eqz v6, :cond_20
const-string/jumbo v6, "PullToRefresh"
const-string/jumbo v8, "ACTION_MOVE 3"
invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iput v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F
iput v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F
iput-boolean v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z
iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
sget-object v7, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if-ne v6, v7, :cond_20
sget-object v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
iput-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
goto/16 :goto_20
:pswitch_ef
const-string/jumbo v7, "PullToRefresh"
const-string/jumbo v8, "ACTION_DOWN"
invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPull()Z
move-result v7
if-eqz v7, :cond_20
const-string/jumbo v7, "PullToRefresh"
const-string/jumbo v8, "ACTION_DOWN start"
invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v7
iput v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mInitialMotionY:F
iput v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v7
iput v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mInitialMotionX:F
iput v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F
iput-boolean v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z
goto/16 :goto_20
nop
:pswitch_data_126
.packed-switch 0x2
:pswitch_b7
.end packed-switch
:pswitch_data_11c
.packed-switch 0x0
:pswitch_ef
:pswitch_20
:pswitch_2c
.end packed-switch
.end method
.method protected onPtrRestoreInstanceState(Landroid/os/Bundle;)V
.registers 2
return-void
.end method
.method protected onPtrSaveInstanceState(Landroid/os/Bundle;)V
.registers 2
return-void
.end method
.method protected onPullToRefresh()V
.registers 3
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
move-result-object v0
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_1c
:goto_f
return-void
:pswitch_10
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->pullToRefresh()V
goto :goto_f
:pswitch_16
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->pullToRefresh()V
goto :goto_f
:pswitch_data_1c
.packed-switch 0x2
:pswitch_16
:pswitch_10
.end packed-switch
.end method
.method public final onRefreshComplete()V
.registers 3
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isRefreshing()Z
move-result v0
if-eqz v0, :cond_e
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
const/4 v1, 0x0
new-array v1, v1, [Z
invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
:cond_e
return-void
.end method
.method protected onRefreshing(Z)V
.registers 5
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z
move-result v1
if-eqz v1, :cond_d
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->refreshing()V
:cond_d
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z
move-result v1
if-eqz v1, :cond_1a
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->refreshing()V
:cond_1a
if-eqz p1, :cond_4a
iget-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z
if-eqz v1, :cond_45
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$1;
invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$1;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
move-result-object v1
iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_4e
:pswitch_34
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getHeaderSize()I
move-result v1
neg-int v1, v1
invoke-virtual {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(ILcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
:goto_3c
return-void
:pswitch_3d
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getFooterSize()I
move-result v1
invoke-virtual {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(ILcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
goto :goto_3c
:cond_45
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(I)V
goto :goto_3c
:cond_4a
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->callRefreshListener()V
goto :goto_3c
:pswitch_data_4e
.packed-switch 0x3
:pswitch_3d
:pswitch_34
:pswitch_3d
.end packed-switch
.end method
.method protected onReleaseToRefresh()V
.registers 3
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
move-result-object v0
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_1c
:goto_f
return-void
:pswitch_10
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->releaseToRefresh()V
goto :goto_f
:pswitch_16
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->releaseToRefresh()V
goto :goto_f
:pswitch_data_1c
.packed-switch 0x2
:pswitch_16
:pswitch_10
.end packed-switch
.end method
.method protected onReset()V
.registers 3
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->reset()V
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->reset()V
invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(I)V
return-void
.end method
.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 7
const/4 v4, 0x1
const/4 v3, 0x0
instance-of v2, p1, Landroid/os/Bundle;
if-eqz v2, :cond_5e
move-object v0, p1
check-cast v0, Landroid/os/Bundle;
const-string/jumbo v2, "ptr_mode"
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v2
invoke-static {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
const-string/jumbo v2, "ptr_current_mode"
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v2
invoke-static {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
move-result-object v2
iput-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
const-string/jumbo v2, "ptr_disable_scrolling"
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v2
iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z
const-string/jumbo v2, "ptr_show_refreshing_view"
invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v2
iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z
const-string/jumbo v2, "ptr_super"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v2
invoke-super {p0, v2}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V
const-string/jumbo v2, "ptr_state"
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v2
invoke-static {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
move-result-object v1
sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
if-eq v1, v2, :cond_53
sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
if-ne v1, v2, :cond_5a
:cond_53
new-array v2, v4, [Z
aput-boolean v4, v2, v3
invoke-virtual {p0, v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
:cond_5a
invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onPtrRestoreInstanceState(Landroid/os/Bundle;)V
:goto_5d
return-void
:cond_5e
invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V
goto :goto_5d
.end method
.method protected final onSaveInstanceState()Landroid/os/Parcelable;
.registers 4
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onPtrSaveInstanceState(Landroid/os/Bundle;)V
const-string/jumbo v1, "ptr_state"
iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->getIntValue()I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string/jumbo v1, "ptr_mode"
iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getIntValue()I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string/jumbo v1, "ptr_current_mode"
iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getIntValue()I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string/jumbo v1, "ptr_disable_scrolling"
iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string/jumbo v1, "ptr_show_refreshing_view"
iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string/jumbo v1, "ptr_super"
invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
return-object v0
.end method
.method protected final onSizeChanged(IIII)V
.registers 10
const-string/jumbo v0, "PullToRefresh"
const-string/jumbo v1, "onSizeChanged. W: %d, H: %d"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->refreshLoadingViewsSize()V
invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->refreshRefreshableViewSize(II)V
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;
invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 6
const/4 v0, 0x0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isPullToRefreshEnabled()Z
move-result v2
if-nez v2, :cond_9
:goto_8
:cond_8
return v0
:cond_9
iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z
if-nez v2, :cond_15
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isRefreshing()Z
move-result v2
if-eqz v2, :cond_15
move v0, v1
goto :goto_8
:cond_15
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v2
if-nez v2, :cond_21
invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I
move-result v2
if-nez v2, :cond_8
:cond_21
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v2
packed-switch v2, :pswitch_data_94
goto :goto_8
:pswitch_29
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isReadyForPull()Z
move-result v2
if-eqz v2, :cond_8
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v0
iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mInitialMotionY:F
iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mInitialMotionX:F
iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F
move v0, v1
goto :goto_8
:pswitch_41
iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z
if-eqz v2, :cond_8
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v0
iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionY:F
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLastMotionX:F
const-string/jumbo v0, "PullToRefresh"
const-string/jumbo v2, "onTouchEvent pullEvent"
invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->pullEvent()V
move v0, v1
goto :goto_8
:pswitch_5f
iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z
if-eqz v2, :cond_8
iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mIsBeingDragged:Z
iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
if-ne v2, v3, :cond_7e
iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
if-nez v2, :cond_73
iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;
if-eqz v2, :cond_7e
:cond_73
sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
new-array v3, v1, [Z
aput-boolean v1, v3, v0
invoke-virtual {p0, v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
move v0, v1
goto :goto_8
:cond_7e
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isRefreshing()Z
move-result v2
if-eqz v2, :cond_89
invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(I)V
move v0, v1
goto :goto_8
:cond_89
sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
new-array v0, v0, [Z
invoke-virtual {p0, v2, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
move v0, v1
goto/16 :goto_8
nop
:pswitch_data_94
.packed-switch 0x0
:pswitch_29
:pswitch_5f
:pswitch_41
:pswitch_5f
.end packed-switch
.end method
.method protected final refreshLoadingViewsSize()V
.registers 11
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getMaximumPullScroll()I
move-result v5
int-to-float v5, v5
const v6, 0x3f99999a
mul-float/2addr v5, v6
float-to-int v0, v5
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingLeft()I
move-result v2
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingTop()I
move-result v4
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingRight()I
move-result v3
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingBottom()I
move-result v1
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
move-result-object v5
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
move-result-object v6
invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I
move-result v6
aget v5, v5, v6
packed-switch v5, :pswitch_data_9e
:goto_2b
const-string/jumbo v5, "PullToRefresh"
const-string/jumbo v6, "Setting Padding. L: %d, T: %d, R: %d, B: %d"
const/4 v7, 0x4
new-array v7, v7, [Ljava/lang/Object;
const/4 v8, 0x0
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
aput-object v9, v7, v8
const/4 v8, 0x1
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
aput-object v9, v7, v8
const/4 v8, 0x2
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
aput-object v9, v7, v8
const/4 v8, 0x3
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
aput-object v9, v7, v8
invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {p0, v2, v4, v3, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setPadding(IIII)V
return-void
:pswitch_5b
iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z
move-result v5
if-eqz v5, :cond_78
iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v5, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setWidth(I)V
neg-int v2, v0
:goto_69
iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z
move-result v5
if-eqz v5, :cond_7a
iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v5, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setWidth(I)V
neg-int v3, v0
goto :goto_2b
:cond_78
const/4 v2, 0x0
goto :goto_69
:cond_7a
const/4 v3, 0x0
goto :goto_2b
:pswitch_7c
iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z
move-result v5
if-eqz v5, :cond_99
iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v5, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setHeight(I)V
neg-int v4, v0
:goto_8a
iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z
move-result v5
if-eqz v5, :cond_9b
iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v5, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setHeight(I)V
neg-int v1, v0
goto :goto_2b
:cond_99
const/4 v4, 0x0
goto :goto_8a
:cond_9b
const/4 v1, 0x0
goto :goto_2b
nop
:pswitch_data_9e
.packed-switch 0x1
:pswitch_7c
:pswitch_5b
.end packed-switch
.end method
.method protected final refreshRefreshableViewSize(II)V
.registers 6
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;
invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
move-result-object v1
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
move-result-object v2
invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_32
:goto_19
:cond_19
return-void
:pswitch_1a
iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I
if-eq v1, p1, :cond_19
iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;
invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V
goto :goto_19
:pswitch_26
iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I
if-eq v1, p2, :cond_19
iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;
invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V
goto :goto_19
:pswitch_data_32
.packed-switch 0x1
:pswitch_26
:pswitch_1a
.end packed-switch
.end method
.method public setDisableScrollingWhileRefreshing(Z)V
.registers 3
if-eqz p1, :cond_7
const/4 v0, 0x0
:goto_3
invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setScrollingWhileRefreshingEnabled(Z)V
return-void
:cond_7
const/4 v0, 0x1
goto :goto_3
.end method
.method public final setFilterTouchEvents(Z)V
.registers 2
iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFilterTouchEvents:Z
return-void
.end method
.method protected final setHeaderScroll(I)V
.registers 8
const/4 v5, 0x4
const/4 v4, 0x0
const-string/jumbo v1, "PullToRefresh"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "setHeaderScroll: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getMaximumPullScroll()I
move-result v0
neg-int v1, v0
invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result p1
iget-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z
if-eqz v1, :cond_30
if-gez p1, :cond_42
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v1, v4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V
:goto_30
:cond_30
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
move-result-object v1
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
move-result-object v2
invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_5e
:goto_41
return-void
:cond_42
if-lez p1, :cond_4a
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v1, v4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V
goto :goto_30
:cond_4a
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v1, v5}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v1, v5}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V
goto :goto_30
:pswitch_55
invoke-virtual {p0, v4, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->scrollTo(II)V
goto :goto_41
:pswitch_59
invoke-virtual {p0, p1, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->scrollTo(II)V
goto :goto_41
nop
:pswitch_data_5e
.packed-switch 0x1
:pswitch_55
:pswitch_59
.end packed-switch
.end method
.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
.registers 3
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;
move-result-object v0
invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;
move-result-object v0
invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
.registers 5
invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z
move-result v0
invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;
move-result-object v0
invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setLongClickable(Z)V
.registers 3
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getRefreshableView()Landroid/view/View;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V
return-void
.end method
.method public final setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
.registers 5
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if-eq p1, v0, :cond_1f
const-string/jumbo v0, "PullToRefresh"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Setting mode to: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->updateUIForMode()V
:cond_1f
return-void
.end method
.method public setOnPullEventListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;)V
.registers 2
iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnPullEventListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;
return-void
.end method
.method public final setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V
.registers 3
iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;
const/4 v0, 0x0
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
return-void
.end method
.method public final setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
.registers 3
iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
const/4 v0, 0x0
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnRefreshListener2:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;
return-void
.end method
.method public setPullLabel(Ljava/lang/CharSequence;)V
.registers 3
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;
move-result-object v0
invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setPullLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
.registers 5
invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z
move-result v0
invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;
move-result-object v0
invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V
return-void
.end method
.method public final setPullToRefreshEnabled(Z)V
.registers 3
if-eqz p1, :cond_a
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
move-result-object v0
:goto_6
invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
return-void
:cond_a
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
goto :goto_6
.end method
.method public final setPullToRefreshOverScrollEnabled(Z)V
.registers 2
iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOverScrollEnabled:Z
return-void
.end method
.method public final setRefreshing()V
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setRefreshing(Z)V
return-void
.end method
.method public final setRefreshing(Z)V
.registers 5
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isRefreshing()Z
move-result v0
if-nez v0, :cond_11
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
const/4 v1, 0x1
new-array v1, v1, [Z
const/4 v2, 0x0
aput-boolean p1, v1, v2
invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
:cond_11
return-void
.end method
.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
.registers 3
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;
move-result-object v0
invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setRefreshingLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
.registers 5
invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z
move-result v0
invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;
move-result-object v0
invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setReleaseLabel(Ljava/lang/CharSequence;)V
.registers 3
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setReleaseLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
return-void
.end method
.method public setReleaseLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
.registers 5
invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z
move-result v0
invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;
move-result-object v0
invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setReleaseLabel(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
.registers 2
iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;
return-void
.end method
.method public final setScrollingWhileRefreshingEnabled(Z)V
.registers 2
iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z
return-void
.end method
.method public final setShowViewWhileRefreshing(Z)V
.registers 2
iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mShowViewWhileRefreshing:Z
return-void
.end method
.method final varargs setState(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
.registers 6
iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
const-string/jumbo v0, "PullToRefresh"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "State: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->name()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$State()[I
move-result-object v0
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_4e
:goto_2d
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnPullEventListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;
if-eqz v0, :cond_3a
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mOnPullEventListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mState:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-interface {v0, p0, v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;->onPullEvent(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
:cond_3a
return-void
:pswitch_3b
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onReset()V
goto :goto_2d
:pswitch_3f
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onPullToRefresh()V
goto :goto_2d
:pswitch_43
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onReleaseToRefresh()V
goto :goto_2d
:pswitch_47
const/4 v0, 0x0
aget-boolean v0, p2, v0
invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onRefreshing(Z)V
goto :goto_2d
:pswitch_data_4e
.packed-switch 0x1
:pswitch_3b
:pswitch_3f
:pswitch_43
:pswitch_47
:pswitch_47
.end packed-switch
.end method
.method protected final smoothScrollTo(I)V
.registers 4
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDuration()I
move-result v0
int-to-long v0, v0
invoke-direct {p0, p1, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJ)V
return-void
.end method
.method protected final smoothScrollTo(ILcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
.registers 10
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDuration()I
move-result v0
int-to-long v2, v0
const-wide/16 v4, 0x0
move-object v0, p0
move v1, p1
move-object v6, p2
invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
return-void
.end method
.method protected final smoothScrollToLonger(I)V
.registers 4
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDurationLonger()I
move-result v0
int-to-long v0, v0
invoke-direct {p0, p1, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollTo(IJ)V
return-void
.end method
.method protected updateUIForMode()V
.registers 4
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
move-result-object v0
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;
move-result-object v1
if-ne p0, v1, :cond_11
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->removeView(Landroid/view/View;)V
:cond_11
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z
move-result v1
if-eqz v1, :cond_1f
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mHeaderLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
const/4 v2, 0x0
invoke-virtual {p0, v1, v2, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
:cond_1f
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;
move-result-object v1
if-ne p0, v1, :cond_2c
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->removeView(Landroid/view/View;)V
:cond_2c
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z
move-result v1
if-eqz v1, :cond_39
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mFooterLayout:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:cond_39
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->refreshLoadingViewsSize()V
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if-eq v1, v2, :cond_47
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
:goto_44
iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
return-void
:cond_47
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
goto :goto_44
.end method