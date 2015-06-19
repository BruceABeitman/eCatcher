.class public Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;
.source "PullToRefreshListView.java"
.field private static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I
.field private mFooterLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
.field private mHeaderLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
.field private mListViewExtrasEnabled:Z
.field private mLvFooterLoadingFrame:Landroid/widget/FrameLayout;
.method static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
.registers 3
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I
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
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I
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
.registers 2
invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
return-void
.end method
.method static synthetic access$1(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Landroid/widget/FrameLayout;
.registers 2
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mLvFooterLoadingFrame:Landroid/widget/FrameLayout;
return-object v0
.end method
.method protected createListView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
.registers 6
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x9
if-lt v1, v2, :cond_c
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$InternalListViewSDK9;
invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$InternalListViewSDK9;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
:goto_b
return-object v0
:cond_c
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView;
invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
goto :goto_b
.end method
.method protected createLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;
.registers 6
invoke-super {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->createLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;
move-result-object v1
iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mListViewExtrasEnabled:Z
if-eqz v2, :cond_26
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
move-result-object v0
if-eqz p1, :cond_19
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z
move-result v2
if-eqz v2, :cond_19
iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mHeaderLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;->addLayout(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V
:cond_19
if-eqz p2, :cond_26
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z
move-result v2
if-eqz v2, :cond_26
iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mFooterLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;->addLayout(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V
:cond_26
return-object v1
.end method
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
move-result-object v0
return-object v0
.end method
.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
.registers 5
invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->createListView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
move-result-object v0
const v1, 0x102000a
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setId(I)V
return-object v0
.end method
.method public final getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
.registers 2
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
return-object v0
.end method
.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
.registers 9
const/16 v6, 0x8
const/4 v5, 0x1
invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->handleStyledAttributes(Landroid/content/res/TypedArray;)V
const/16 v2, 0x10
invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v2
iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mListViewExtrasEnabled:Z
iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mListViewExtrasEnabled:Z
if-eqz v2, :cond_6f
new-instance v1, Landroid/widget/FrameLayout$LayoutParams;
const/4 v2, -0x1
const/4 v3, -0x2
invoke-direct {v1, v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V
new-instance v0, Landroid/widget/FrameLayout;
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getContext()Landroid/content/Context;
move-result-object v2
sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {p0, v2, v3, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
move-result-object v2
iput-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mHeaderLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mHeaderLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v2, v6}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V
iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mHeaderLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mRefreshableView:Landroid/view/View;
check-cast v2, Landroid/widget/ListView;
const/4 v3, 0x0
const/4 v4, 0x0
invoke-virtual {v2, v0, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
new-instance v2, Landroid/widget/FrameLayout;
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getContext()Landroid/content/Context;
move-result-object v3
invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
iput-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mLvFooterLoadingFrame:Landroid/widget/FrameLayout;
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getContext()Landroid/content/Context;
move-result-object v2
sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {p0, v2, v3, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
move-result-object v2
iput-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mFooterLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mFooterLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v2, v6}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V
iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mLvFooterLoadingFrame:Landroid/widget/FrameLayout;
iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mFooterLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
const/16 v2, 0xf
invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v2
if-nez v2, :cond_6f
invoke-virtual {p0, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setScrollingWhileRefreshingEnabled(Z)V
:cond_6f
return-void
.end method
.method protected onRefreshing(Z)V
.registers 11
const/4 v8, 0x0
iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mRefreshableView:Landroid/view/View;
check-cast v6, Landroid/widget/ListView;
invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v0
iget-boolean v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mListViewExtrasEnabled:Z
if-eqz v6, :cond_1b
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getShowViewWhileRefreshing()Z
move-result v6
if-eqz v6, :cond_1b
if-eqz v0, :cond_1b
invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z
move-result v6
if-eqz v6, :cond_1f
:cond_1b
invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->onRefreshing(Z)V
:goto_1e
:cond_1e
return-void
:cond_1f
invoke-super {p0, v8}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->onRefreshing(Z)V
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
move-result-object v6
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
move-result-object v7
invoke-virtual {v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v7
aget v6, v6, v7
packed-switch v6, :pswitch_data_88
:pswitch_33
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getHeaderLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
move-result-object v3
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mHeaderLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mFooterLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
const/4 v5, 0x0
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getScrollY()I
move-result v6
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getHeaderSize()I
move-result v7
add-int v4, v6, v7
:goto_46
invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->reset()V
invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->hideAllViews()V
const/16 v6, 0x8
invoke-virtual {v2, v6}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V
invoke-virtual {v1, v8}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->refreshing()V
if-eqz p1, :cond_1e
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->disableLoadingLayoutVisibilityChanges()V
invoke-virtual {p0, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setHeaderScroll(I)V
iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mRefreshableView:Landroid/view/View;
check-cast v6, Landroid/widget/ListView;
invoke-virtual {v6, v5}, Landroid/widget/ListView;->setSelection(I)V
invoke-virtual {p0, v8}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->smoothScrollTo(I)V
goto :goto_1e
:pswitch_6a
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getFooterLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
move-result-object v3
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mFooterLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mHeaderLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mRefreshableView:Landroid/view/View;
check-cast v6, Landroid/widget/ListView;
invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I
move-result v6
add-int/lit8 v5, v6, -0x1
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getScrollY()I
move-result v6
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getFooterSize()I
move-result v7
sub-int v4, v6, v7
goto :goto_46
nop
:pswitch_data_88
.packed-switch 0x3
:pswitch_6a
:pswitch_33
:pswitch_6a
.end packed-switch
.end method
.method protected onReset()V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/handmark/pulltorefresh/library/PullToRefreshListView; onReset "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v6, 0x0
const/4 v2, 0x1
iget-boolean v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mListViewExtrasEnabled:Z
if-nez v5, :cond_a
invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->onReset()V
:goto_9
const-string v1, " - Lcom/handmark/pulltorefresh/library/PullToRefreshListView; onReset"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_a
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
move-result-object v5
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
move-result-object v7
invoke-virtual {v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v7
aget v5, v5, v7
packed-switch v5, :pswitch_data_84
:pswitch_1b
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getHeaderLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
move-result-object v1
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mHeaderLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getHeaderSize()I
move-result v5
neg-int v3, v5
const/4 v4, 0x0
iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mRefreshableView:Landroid/view/View;
check-cast v5, Landroid/widget/ListView;
invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I
move-result v5
sub-int/2addr v5, v4
invoke-static {v5}, Ljava/lang/Math;->abs(I)I
move-result v5
if-gt v5, v2, :cond_82
:goto_36
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getVisibility()I
move-result v5
if-nez v5, :cond_58
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->showInvisibleViews()V
const/16 v5, 0x8
invoke-virtual {v0, v5}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V
if-eqz v2, :cond_58
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getState()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
move-result-object v5
sget-object v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
if-eq v5, v6, :cond_58
iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mRefreshableView:Landroid/view/View;
check-cast v5, Landroid/widget/ListView;
invoke-virtual {v5, v4}, Landroid/widget/ListView;->setSelection(I)V
invoke-virtual {p0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setHeaderScroll(I)V
:cond_58
invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->onReset()V
goto :goto_9
:pswitch_5c
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getFooterLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
move-result-object v1
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mFooterLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mRefreshableView:Landroid/view/View;
check-cast v5, Landroid/widget/ListView;
invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I
move-result v5
add-int/lit8 v4, v5, -0x1
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getFooterSize()I
move-result v3
iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mRefreshableView:Landroid/view/View;
check-cast v5, Landroid/widget/ListView;
invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I
move-result v5
sub-int/2addr v5, v4
invoke-static {v5}, Ljava/lang/Math;->abs(I)I
move-result v5
if-gt v5, v2, :cond_80
:goto_7f
goto :goto_36
:cond_80
move v2, v6
goto :goto_7f
:cond_82
move v2, v6
goto :goto_36
:pswitch_data_84
.packed-switch 0x3
:pswitch_5c
:pswitch_1b
:pswitch_5c
.end packed-switch
.end method