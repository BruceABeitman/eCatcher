.class public abstract Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.source "PullToRefreshAdapterViewBase.java"
.implements Landroid/widget/AbsListView$OnScrollListener;
.field private static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I
.field private mEmptyView:Landroid/view/View;
.field private mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
.field private mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
.field private mLastItemVisible:Z
.field private mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;
.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
.field private mScrollEmptyView:Z
.field private mShowIndicator:Z
.method static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
.registers 3
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I
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
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I
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
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;
check-cast v0, Landroid/widget/AbsListView;
invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;
check-cast v0, Landroid/widget/AbsListView;
invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;
check-cast v0, Landroid/widget/AbsListView;
invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;
check-cast v0, Landroid/widget/AbsListView;
invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
return-void
.end method
.method private addIndicatorViews()V
.registers 9
const/4 v7, 0x0
const/4 v6, -0x2
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
move-result-object v0
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;
move-result-object v2
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z
move-result v3
if-eqz v3, :cond_6d
iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
if-nez v3, :cond_6d
new-instance v3, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getContext()Landroid/content/Context;
move-result-object v4
sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-direct {v3, v4, v5}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
iput-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
new-instance v1, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getResources()Landroid/content/res/Resources;
move-result-object v3
sget v4, Lcom/handmark/pulltorefresh/library/R$dimen;->indicator_right_padding:I
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v3
iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I
const/16 v3, 0x35
iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:goto_3b
:cond_3b
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z
move-result v3
if-eqz v3, :cond_7f
iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
if-nez v3, :cond_7f
new-instance v3, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getContext()Landroid/content/Context;
move-result-object v4
sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-direct {v3, v4, v5}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
iput-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
new-instance v1, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getResources()Landroid/content/res/Resources;
move-result-object v3
sget v4, Lcom/handmark/pulltorefresh/library/R$dimen;->indicator_right_padding:I
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v3
iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I
const/16 v3, 0x55
iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:goto_6c
:cond_6c
return-void
:cond_6d
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z
move-result v3
if-nez v3, :cond_3b
iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
if-eqz v3, :cond_3b
iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
iput-object v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
goto :goto_3b
:cond_7f
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z
move-result v3
if-nez v3, :cond_6c
iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
if-eqz v3, :cond_6c
iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
iput-object v7, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
goto :goto_6c
.end method
.method private static convertEmptyViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
.registers 3
const/4 v0, 0x0
if-eqz p0, :cond_12
new-instance v0, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
instance-of v1, p0, Landroid/widget/LinearLayout$LayoutParams;
if-eqz v1, :cond_13
check-cast p0, Landroid/widget/LinearLayout$LayoutParams;
iget v1, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
:cond_12
:goto_12
return-object v0
:cond_13
const/16 v1, 0x11
iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
goto :goto_12
.end method
.method private getShowIndicatorInternal()Z
.registers 2
iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mShowIndicator:Z
if-eqz v0, :cond_c
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->isPullToRefreshEnabled()Z
move-result v0
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method private isFirstItemVisible()Z
.registers 7
const/4 v3, 0x1
const/4 v4, 0x0
iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;
check-cast v2, Landroid/widget/AbsListView;
invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;
move-result-object v0
if-eqz v0, :cond_12
invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z
move-result v2
if-eqz v2, :cond_1d
:cond_12
const-string/jumbo v2, "PullToRefresh"
const-string/jumbo v4, "isFirstItemVisible. Empty View."
invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
move v2, v3
:goto_1c
return v2
:cond_1d
iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;
check-cast v2, Landroid/widget/AbsListView;
invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I
move-result v2
if-gt v2, v3, :cond_43
iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;
check-cast v2, Landroid/widget/AbsListView;
invoke-virtual {v2, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_43
invoke-virtual {v1}, Landroid/view/View;->getTop()I
move-result v5
iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;
check-cast v2, Landroid/widget/AbsListView;
invoke-virtual {v2}, Landroid/widget/AbsListView;->getTop()I
move-result v2
if-lt v5, v2, :cond_41
move v2, v3
goto :goto_1c
:cond_41
move v2, v4
goto :goto_1c
:cond_43
move v2, v4
goto :goto_1c
.end method
.method private isLastItemVisible()Z
.registers 11
const/4 v6, 0x1
const/4 v7, 0x0
iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;
check-cast v5, Landroid/widget/AbsListView;
invoke-virtual {v5}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;
move-result-object v0
if-eqz v0, :cond_12
invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z
move-result v5
if-eqz v5, :cond_1d
:cond_12
const-string/jumbo v5, "PullToRefresh"
const-string/jumbo v7, "isLastItemVisible. Empty View."
invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
move v5, v6
:goto_1c
return v5
:cond_1d
iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;
check-cast v5, Landroid/widget/AbsListView;
invoke-virtual {v5}, Landroid/widget/AbsListView;->getCount()I
move-result v5
add-int/lit8 v2, v5, -0x1
iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;
check-cast v5, Landroid/widget/AbsListView;
invoke-virtual {v5}, Landroid/widget/AbsListView;->getLastVisiblePosition()I
move-result v4
const-string/jumbo v5, "PullToRefresh"
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "isLastItemVisible. Last Item Position: "
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, " Last Visible Pos: "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
add-int/lit8 v5, v2, -0x1
if-lt v4, v5, :cond_7a
iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;
check-cast v5, Landroid/widget/AbsListView;
invoke-virtual {v5}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I
move-result v5
sub-int v1, v4, v5
iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;
check-cast v5, Landroid/widget/AbsListView;
invoke-virtual {v5, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;
move-result-object v3
if-eqz v3, :cond_7a
invoke-virtual {v3}, Landroid/view/View;->getBottom()I
move-result v8
iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;
check-cast v5, Landroid/widget/AbsListView;
invoke-virtual {v5}, Landroid/widget/AbsListView;->getBottom()I
move-result v5
if-gt v8, v5, :cond_78
move v5, v6
goto :goto_1c
:cond_78
move v5, v7
goto :goto_1c
:cond_7a
move v5, v7
goto :goto_1c
.end method
.method private removeIndicatorViews()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
if-eqz v0, :cond_10
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;
move-result-object v0
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
iput-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
:cond_10
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
if-eqz v0, :cond_1f
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;
move-result-object v0
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
iput-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
:cond_1f
return-void
.end method
.method private updateIndicatorViewsVisibility()V
.registers 2
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
if-eqz v0, :cond_1d
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->isRefreshing()Z
move-result v0
if-nez v0, :cond_3b
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->isReadyForPullStart()Z
move-result v0
if-eqz v0, :cond_3b
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->isVisible()Z
move-result v0
if-nez v0, :cond_1d
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->show()V
:goto_1d
:cond_1d
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
if-eqz v0, :cond_3a
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->isRefreshing()Z
move-result v0
if-nez v0, :cond_49
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->isReadyForPullEnd()Z
move-result v0
if-eqz v0, :cond_49
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->isVisible()Z
move-result v0
if-nez v0, :cond_3a
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->show()V
:goto_3a
:cond_3a
return-void
:cond_3b
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->isVisible()Z
move-result v0
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->hide()V
goto :goto_1d
:cond_49
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->isVisible()Z
move-result v0
if-eqz v0, :cond_3a
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->hide()V
goto :goto_3a
.end method
.method public getShowIndicator()Z
.registers 2
iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mShowIndicator:Z
return v0
.end method
.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
.registers 4
const/4 v1, 0x7
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->isPullToRefreshOverScrollEnabled()Z
move-result v0
if-eqz v0, :cond_f
const/4 v0, 0x0
:goto_8
invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v0
iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mShowIndicator:Z
return-void
:cond_f
const/4 v0, 0x1
goto :goto_8
.end method
.method protected isReadyForPullEnd()Z
.registers 2
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->isLastItemVisible()Z
move-result v0
return v0
.end method
.method protected isReadyForPullStart()Z
.registers 2
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->isFirstItemVisible()Z
move-result v0
return v0
.end method
.method protected onPullToRefresh()V
.registers 3
invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onPullToRefresh()V
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z
move-result v0
if-eqz v0, :cond_1a
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
move-result-object v0
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
move-result-object v1
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_28
:goto_1a
:cond_1a
return-void
:pswitch_1b
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->pullToRefresh()V
goto :goto_1a
:pswitch_21
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->pullToRefresh()V
goto :goto_1a
nop
:pswitch_data_28
.packed-switch 0x2
:pswitch_21
:pswitch_1b
.end packed-switch
.end method
.method protected onRefreshing(Z)V
.registers 3
invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onRefreshing(Z)V
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z
move-result v0
if-eqz v0, :cond_c
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->updateIndicatorViewsVisibility()V
:cond_c
return-void
.end method
.method protected onReleaseToRefresh()V
.registers 3
invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onReleaseToRefresh()V
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z
move-result v0
if-eqz v0, :cond_1a
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
move-result-object v0
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
move-result-object v1
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_28
:goto_1a
:cond_1a
return-void
:pswitch_1b
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->releaseToRefresh()V
goto :goto_1a
:pswitch_21
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->releaseToRefresh()V
goto :goto_1a
nop
:pswitch_data_28
.packed-switch 0x2
:pswitch_21
:pswitch_1b
.end packed-switch
.end method
.method protected onReset()V
.registers 2
invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onReset()V
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z
move-result v0
if-eqz v0, :cond_c
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->updateIndicatorViewsVisibility()V
:cond_c
return-void
.end method
.method public final onScroll(Landroid/widget/AbsListView;III)V
.registers 8
const-string/jumbo v0, "PullToRefresh"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "First Visible: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ". Visible Count: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ". Total Items:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;
if-eqz v0, :cond_3b
if-lez p4, :cond_4e
add-int v0, p2, p3
add-int/lit8 v1, p4, -0x1
if-lt v0, v1, :cond_4e
const/4 v0, 0x1
:goto_39
iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mLastItemVisible:Z
:cond_3b
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z
move-result v0
if-eqz v0, :cond_44
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->updateIndicatorViewsVisibility()V
:cond_44
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
if-eqz v0, :cond_4d
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V
:cond_4d
return-void
:cond_4e
const/4 v0, 0x0
goto :goto_39
.end method
.method protected onScrollChanged(IIII)V
.registers 8
invoke-super {p0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onScrollChanged(IIII)V
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;
if-eqz v0, :cond_12
iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z
if-nez v0, :cond_12
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;
neg-int v1, p1
neg-int v2, p2
invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V
:cond_12
return-void
.end method
.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
.registers 4
if-nez p2, :cond_f
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;
if-eqz v0, :cond_f
iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mLastItemVisible:Z
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;
invoke-interface {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;->onLastItemVisible()V
:cond_f
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
:cond_18
return-void
.end method
.method public setAdapter(Landroid/widget/ListAdapter;)V
.registers 3
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;
check-cast v0, Landroid/widget/AdapterView;
invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V
return-void
.end method
.method public final setEmptyView(Landroid/view/View;)V
.registers 6
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;
move-result-object v2
if-eqz p1, :cond_26
const/4 v3, 0x1
invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V
invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v1
if-eqz v1, :cond_19
instance-of v3, v1, Landroid/view/ViewGroup;
if-eqz v3, :cond_19
check-cast v1, Landroid/view/ViewGroup;
invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_19
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
invoke-static {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->convertEmptyViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
move-result-object v0
if-eqz v0, :cond_36
invoke-virtual {v2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:goto_26
:cond_26
iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;
instance-of v3, v3, Lcom/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor;
if-eqz v3, :cond_3a
iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;
check-cast v3, Lcom/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor;
invoke-interface {v3, p1}, Lcom/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor;->setEmptyViewInternal(Landroid/view/View;)V
:goto_33
iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;
return-void
:cond_36
invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
goto :goto_26
:cond_3a
iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;
check-cast v3, Landroid/widget/AbsListView;
invoke-virtual {v3, p1}, Landroid/widget/AbsListView;->setEmptyView(Landroid/view/View;)V
goto :goto_33
.end method
.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
.registers 3
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;
check-cast v0, Landroid/widget/AbsListView;
invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return-void
.end method
.method public final setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
.registers 2
iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;
return-void
.end method
.method public final setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
.registers 2
iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
return-void
.end method
.method public final setScrollEmptyView(Z)V
.registers 2
iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z
return-void
.end method
.method public setShowIndicator(Z)V
.registers 3
iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mShowIndicator:Z
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z
move-result v0
if-eqz v0, :cond_c
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->addIndicatorViews()V
:goto_b
return-void
:cond_c
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->removeIndicatorViews()V
goto :goto_b
.end method
.method protected updateUIForMode()V
.registers 2
invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->updateUIForMode()V
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z
move-result v0
if-eqz v0, :cond_d
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->addIndicatorViews()V
:goto_c
return-void
:cond_d
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->removeIndicatorViews()V
goto :goto_c
.end method