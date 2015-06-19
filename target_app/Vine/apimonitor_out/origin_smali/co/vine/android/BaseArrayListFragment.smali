.class public Lco/vine/android/BaseArrayListFragment;
.super Lco/vine/android/BaseAdapterFragment;
.source "BaseArrayListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lco/vine/android/widget/OnTabChangedListener;
.implements Lcom/twitter/android/widget/RefreshListener;
.implements Lco/vine/android/widget/PinnedHeaderListView$ScrollDeltaListener;


# static fields
.field public static final ARG_BG_COLOR:Ljava/lang/String; = "bg_color"

.field public static final ARG_CHOICE_MODE:Ljava/lang/String; = "chmode"

.field public static final ARG_DATA:Ljava/lang/String; = "data"

.field public static final ARG_EMPTY_DESC:Ljava/lang/String; = "empty_desc"

.field public static final ARG_OWNER_ID:Ljava/lang/String; = "owner_id"

.field public static final ARG_REFRESHABLE:Ljava/lang/String; = "refresh"

.field public static final ARG_TAKE_FOCUS:Ljava/lang/String; = "take_focus"

.field private static final STATE_SCROLL_OFF_KEY:Ljava/lang/String; = "scroll_off"

.field private static final STATE_SCROLL_POS_KEY:Ljava/lang/String; = "scroll_pos"


# instance fields
.field protected mAdapter:Landroid/widget/BaseAdapter;

.field protected mAnchor:J

.field protected mBgColor:I

.field private mChildFormerTop:I

.field private mChildObservedForScrollDistance:Landroid/view/View;

.field protected mChoiceMode:I

.field protected mEmptyProgress:Landroid/widget/ProgressBar;

.field protected mEmptyText:Landroid/widget/TextView;

.field protected mEmptyTextStringRes:I

.field private mEmptyView:Landroid/view/View;

.field protected mFocused:Z

.field private mIsSadFaceHeaderAdded:Z

.field private mIsSadFacePartOfHeader:Z

.field protected mListState:Lco/vine/android/ListState;

.field protected mListView:Landroid/widget/ListView;

.field protected mNextPage:I

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemLongClickListenerClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field protected mOwnerId:J

.field protected mRefreshable:Z

.field private final mRequestFocus:Ljava/lang/Runnable;

.field private mRootView:Landroid/view/View;

.field protected mSadface:Landroid/view/View;

.field private mScrollListener:Lco/vine/android/widget/tabs/TabScrollListener;

.field private mScrollOffset:I

.field private mScrollPos:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lco/vine/android/BaseAdapterFragment;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lco/vine/android/BaseArrayListFragment;->mNextPage:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lco/vine/android/BaseArrayListFragment;->mAnchor:J

    new-instance v0, Lco/vine/android/BaseArrayListFragment$1;

    invoke-direct {v0, p0}, Lco/vine/android/BaseArrayListFragment$1;-><init>(Lco/vine/android/BaseArrayListFragment;)V

    iput-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lco/vine/android/BaseArrayListFragment$2;

    invoke-direct {v0, p0}, Lco/vine/android/BaseArrayListFragment$2;-><init>(Lco/vine/android/BaseArrayListFragment;)V

    iput-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mOnItemLongClickListenerClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    new-instance v0, Lco/vine/android/BaseArrayListFragment$3;

    invoke-direct {v0, p0}, Lco/vine/android/BaseArrayListFragment$3;-><init>(Lco/vine/android/BaseArrayListFragment;)V

    iput-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mRequestFocus:Ljava/lang/Runnable;

    const/4 v0, -0x1

    iput v0, p0, Lco/vine/android/BaseArrayListFragment;->mChildFormerTop:I

    return-void
.end method

.method public static prepareArguments(Landroid/content/Intent;Z)Landroid/os/Bundle;
    .registers 5

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_b
    const-string v1, "data"

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "refresh"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private showLoading(Z)V
    .registers 6

    const/4 v3, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1d

    iget-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v1, p0, Lco/vine/android/BaseArrayListFragment;->mSadface:Landroid/view/View;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lco/vine/android/BaseArrayListFragment;->mSadface:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    iget-object v1, p0, Lco/vine/android/BaseArrayListFragment;->mEmptyProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lco/vine/android/BaseArrayListFragment;->mEmptyProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lco/vine/android/BaseArrayListFragment;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1c

    :cond_29
    iget-object v1, p0, Lco/vine/android/BaseArrayListFragment;->mEmptyProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lco/vine/android/BaseArrayListFragment;->mEmptyProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1c
.end method


# virtual methods
.method protected createDefaultView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    const v0, 0x7f03005f

    invoke-virtual {p0, p1, v0, p2}, Lco/vine/android/BaseArrayListFragment;->createView(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public createView(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    const/4 v5, 0x0

    invoke-virtual {p1, p2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lco/vine/android/BaseArrayListFragment;->mRootView:Landroid/view/View;

    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iget-object v5, p0, Lco/vine/android/BaseArrayListFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v5, p0, Lco/vine/android/BaseArrayListFragment;->mOnItemLongClickListenerClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget v5, p0, Lco/vine/android/BaseArrayListFragment;->mChoiceMode:I

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget v0, p0, Lco/vine/android/BaseArrayListFragment;->mBgColor:I

    if-eqz v0, :cond_30

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setBackgroundColor(I)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setCacheColorHint(I)V

    :cond_30
    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_68

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    const v5, 0x7f0a00f1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lco/vine/android/BaseArrayListFragment;->mEmptyProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lco/vine/android/BaseArrayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    instance-of v5, v5, Lco/vine/android/HomeTabActivity;

    if-eqz v5, :cond_68

    iget-object v5, p0, Lco/vine/android/BaseArrayListFragment;->mEmptyProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lco/vine/android/BaseArrayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0084

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_68
    iput-object v1, p0, Lco/vine/android/BaseArrayListFragment;->mEmptyView:Landroid/view/View;

    const v5, 0x7f0a007f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lco/vine/android/BaseArrayListFragment;->mEmptyText:Landroid/widget/TextView;

    iget v5, p0, Lco/vine/android/BaseArrayListFragment;->mEmptyTextStringRes:I

    if-lez v5, :cond_84

    iget-object v5, p0, Lco/vine/android/BaseArrayListFragment;->mEmptyText:Landroid/widget/TextView;

    if-eqz v5, :cond_84

    iget-object v5, p0, Lco/vine/android/BaseArrayListFragment;->mEmptyText:Landroid/widget/TextView;

    iget v6, p0, Lco/vine/android/BaseArrayListFragment;->mEmptyTextStringRes:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    :cond_84
    const v5, 0x7f0a007e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/BaseArrayListFragment;->mSadface:Landroid/view/View;

    iget-boolean v5, p0, Lco/vine/android/BaseArrayListFragment;->mRefreshable:Z

    if-eqz v5, :cond_97

    move-object v5, v2

    check-cast v5, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v5, p0}, Lcom/twitter/android/widget/RefreshableListView;->setRefreshListener(Lcom/twitter/android/widget/RefreshListener;)V

    :cond_97
    iput-object v2, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    instance-of v5, v5, Lco/vine/android/widget/PinnedHeaderListView;

    if-eqz v5, :cond_a6

    iget-object v5, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    check-cast v5, Lco/vine/android/widget/PinnedHeaderListView;

    invoke-virtual {v5, p0}, Lco/vine/android/widget/PinnedHeaderListView;->setScrollDeltaListener(Lco/vine/android/widget/PinnedHeaderListView$ScrollDeltaListener;)V

    :cond_a6
    return-object v4
.end method

.method public getFirstItemPosition()Lcom/twitter/android/widget/ItemPosition;
    .registers 10

    const/4 v5, 0x0

    iget-object v3, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_c

    const/4 v5, 0x0

    :goto_b
    return-object v5

    :cond_c
    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    iget-boolean v6, p0, Lco/vine/android/BaseArrayListFragment;->mRefreshing:Z

    if-eqz v6, :cond_1a

    add-int/lit8 v2, v2, 0x1

    :cond_1a
    if-ge v1, v2, :cond_34

    move v4, v2

    sub-int v6, v4, v1

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_23
    new-instance v6, Lcom/twitter/android/widget/ItemPosition;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v7

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    :cond_2f
    invoke-direct {v6, v4, v7, v8, v5}, Lcom/twitter/android/widget/ItemPosition;-><init>(IJI)V

    move-object v5, v6

    goto :goto_b

    :cond_34
    move v4, v1

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_23
.end method

.method public getPositionForItemId(J)I
    .registers 6

    iget-object v1, p0, Lco/vine/android/BaseArrayListFragment;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_1b

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lco/vine/android/BaseArrayListFragment;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Lco/vine/android/BaseArrayListFragment;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_18

    :goto_17
    return v0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1b
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public getRootView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method protected hideProgress(I)V
    .registers 4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_26

    :cond_4
    :goto_4
    return-void

    :pswitch_5
    invoke-direct {p0, v1}, Lco/vine/android/BaseArrayListFragment;->showLoading(Z)V

    goto :goto_4

    :pswitch_9
    invoke-direct {p0, v1}, Lco/vine/android/BaseArrayListFragment;->showLoading(Z)V

    iget-boolean v0, p0, Lco/vine/android/BaseArrayListFragment;->mRefreshable:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView;->stopRefresh()V

    iput-boolean v1, p0, Lco/vine/android/BaseArrayListFragment;->mRefreshing:Z

    goto :goto_4

    :pswitch_1a
    iget-boolean v0, p0, Lco/vine/android/BaseArrayListFragment;->mRefreshable:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->refreshMore(Z)V

    goto :goto_4

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_9
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method

.method invokeScrollFirstItem()V
    .registers 2

    iget-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mScrollListener:Lco/vine/android/widget/tabs/TabScrollListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mScrollListener:Lco/vine/android/widget/tabs/TabScrollListener;

    invoke-virtual {v0}, Lco/vine/android/widget/tabs/TabScrollListener;->onScrollFirstItem()V

    :cond_9
    return-void
.end method

.method protected isEmpty()Z
    .registers 4

    iget-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v1, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method protected isFocused()Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/BaseArrayListFragment;->mFocused:Z

    return v0
.end method

.method public isSadFacePartOfHeader()Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/BaseArrayListFragment;->mIsSadFacePartOfHeader:Z

    return v0
.end method

.method public declared-synchronized makeSadFaceHeaderView()V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-boolean v4, p0, Lco/vine/android/BaseArrayListFragment;->mIsSadFacePartOfHeader:Z

    if-nez v4, :cond_49

    const/4 v4, 0x1

    iput-boolean v4, p0, Lco/vine/android/BaseArrayListFragment;->mIsSadFacePartOfHeader:Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Lco/vine/android/BaseArrayListFragment;->mIsSadFaceHeaderAdded:Z

    iget-object v4, p0, Lco/vine/android/BaseArrayListFragment;->mSadface:Landroid/view/View;

    if-eqz v4, :cond_49

    const/4 v0, 0x0

    iget-object v4, p0, Lco/vine/android/BaseArrayListFragment;->mSadface:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_27

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4d

    iget-object v4, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    if-eq v3, v4, :cond_4b

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lco/vine/android/BaseArrayListFragment;->mSadface:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_27
    :goto_27
    if-nez v0, :cond_49

    iget-object v4, p0, Lco/vine/android/BaseArrayListFragment;->mSadface:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_40

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v2, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lco/vine/android/BaseArrayListFragment;->mSadface:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, v2

    :cond_40
    iget-object v4, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lco/vine/android/BaseArrayListFragment;->mSadface:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_66

    :cond_49
    monitor-exit p0

    return-void

    :cond_4b
    const/4 v0, 0x1

    goto :goto_27

    :cond_4d
    :try_start_4d
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The sad face does not belong to a valid parent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_66
    .catchall {:try_start_4d .. :try_end_66} :catchall_66

    :catchall_66
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;

    invoke-virtual {v0, p1, p2, p3}, Lco/vine/android/PendingRequestHelper;->onActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lco/vine/android/BaseAdapterFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Lco/vine/android/ListState;

    invoke-direct {v1}, Lco/vine/android/ListState;-><init>()V

    iput-object v1, p0, Lco/vine/android/BaseArrayListFragment;->mListState:Lco/vine/android/ListState;

    if-eqz p1, :cond_60

    const-string v1, "scroll_pos"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lco/vine/android/BaseArrayListFragment;->mScrollPos:I

    const-string v1, "scroll_off"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lco/vine/android/BaseArrayListFragment;->mScrollOffset:I

    iget-object v1, p0, Lco/vine/android/BaseArrayListFragment;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;

    invoke-virtual {v1, p1}, Lco/vine/android/PendingRequestHelper;->restorePendingCaptchaRequest(Landroid/os/Bundle;)V

    :goto_23
    invoke-virtual {p0}, Lco/vine/android/BaseArrayListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_65

    const-string v1, "refresh"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lco/vine/android/BaseArrayListFragment;->mRefreshable:Z

    const-string v1, "owner_id"

    iget-object v2, p0, Lco/vine/android/BaseArrayListFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lco/vine/android/BaseArrayListFragment;->mOwnerId:J

    const-string v1, "chmode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string v1, "chmode"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lco/vine/android/BaseArrayListFragment;->mChoiceMode:I

    :cond_4f
    const-string v1, "bg_color"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lco/vine/android/BaseArrayListFragment;->mBgColor:I

    const-string v1, "empty_desc"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lco/vine/android/BaseArrayListFragment;->mEmptyTextStringRes:I

    :goto_5f
    return-void

    :cond_60
    iput v4, p0, Lco/vine/android/BaseArrayListFragment;->mScrollPos:I

    iput v4, p0, Lco/vine/android/BaseArrayListFragment;->mScrollOffset:I

    goto :goto_23

    :cond_65
    iput-boolean v2, p0, Lco/vine/android/BaseArrayListFragment;->mRefreshable:Z

    iget-object v1, p0, Lco/vine/android/BaseArrayListFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v1

    iput-wide v1, p0, Lco/vine/android/BaseArrayListFragment;->mOwnerId:J

    iput v4, p0, Lco/vine/android/BaseArrayListFragment;->mChoiceMode:I

    iput v4, p0, Lco/vine/android/BaseArrayListFragment;->mBgColor:I

    goto :goto_5f
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    invoke-virtual {p0, p1, p2}, Lco/vine/android/BaseArrayListFragment;->createDefaultView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/BaseArrayListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lco/vine/android/BaseAdapterFragment;->onDestroyView()V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6

    return-void
.end method

.method protected onListItemLongClick(Landroid/widget/ListView;Landroid/view/View;IJ)Z
    .registers 7

    const/4 v0, 0x0

    return v0
.end method

.method public onMoveAway(I)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/BaseArrayListFragment;->mFocused:Z

    return-void
.end method

.method public onMoveTo(I)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/BaseArrayListFragment;->mFocused:Z

    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lco/vine/android/BaseAdapterFragment;->onPause()V

    iget-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Lco/vine/android/BaseArrayListFragment;->savePosition()V

    :cond_e
    return-void
.end method

.method public onRefreshCancelled()V
    .registers 1

    return-void
.end method

.method public onRefreshFinished()V
    .registers 1

    return-void
.end method

.method public onRefreshFinishedNewData()V
    .registers 1

    return-void
.end method

.method public onRefreshFinishedNoChange()V
    .registers 1

    return-void
.end method

.method public onRefreshPulled()V
    .registers 1

    return-void
.end method

.method public onRefreshReleased(Z)V
    .registers 3

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lco/vine/android/util/FlurryUtils;->trackValidPullToRefreshRelease(Ljava/lang/String;)V

    invoke-virtual {p0}, Lco/vine/android/BaseArrayListFragment;->refresh()V

    :cond_10
    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lco/vine/android/BaseAdapterFragment;->onResume()V

    invoke-virtual {p0}, Lco/vine/android/BaseArrayListFragment;->restorePosition()V

    iget-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;

    invoke-virtual {v0}, Lco/vine/android/PendingRequestHelper;->handlePendingCaptchaRequest()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lco/vine/android/BaseAdapterFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lco/vine/android/BaseArrayListFragment;->savePosition()V

    const-string v0, "scroll_pos"

    iget v1, p0, Lco/vine/android/BaseArrayListFragment;->mScrollPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "scroll_off"

    iget v1, p0, Lco/vine/android/BaseArrayListFragment;->mScrollOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onScroll(I)V
    .registers 4

    invoke-virtual {p0}, Lco/vine/android/BaseArrayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lco/vine/android/ScrollListener;

    if-eqz v1, :cond_d

    check-cast v0, Lco/vine/android/ScrollListener;

    invoke-interface {v0, p1}, Lco/vine/android/ScrollListener;->onScroll(I)V

    :cond_d
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 8

    iget-object v1, p0, Lco/vine/android/BaseArrayListFragment;->mListState:Lco/vine/android/ListState;

    iput p2, v1, Lco/vine/android/ListState;->firstVisibleItem:I

    iget-object v1, p0, Lco/vine/android/BaseArrayListFragment;->mListState:Lco/vine/android/ListState;

    iput p3, v1, Lco/vine/android/ListState;->visibleItemCount:I

    iget-object v1, p0, Lco/vine/android/BaseArrayListFragment;->mListState:Lco/vine/android/ListState;

    iput p4, v1, Lco/vine/android/ListState;->totalItemCount:I

    if-nez p3, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    if-lez p2, :cond_e

    iget-object v1, p0, Lco/vine/android/BaseArrayListFragment;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_e

    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x1

    if-lt v0, v1, :cond_e

    iget-object v1, p0, Lco/vine/android/BaseArrayListFragment;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_e

    iget-object v1, p0, Lco/vine/android/BaseArrayListFragment;->mListState:Lco/vine/android/ListState;

    iget-boolean v1, v1, Lco/vine/android/ListState;->hasNewScrollState:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lco/vine/android/BaseArrayListFragment;->mListState:Lco/vine/android/ListState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lco/vine/android/ListState;->hasNewScrollState:Z

    invoke-virtual {p0}, Lco/vine/android/BaseArrayListFragment;->onScrollLastItem()V

    goto :goto_e
.end method

.method protected onScrollLastItem()V
    .registers 1

    return-void
.end method

.method protected onScrollLastItem(Landroid/database/Cursor;)V
    .registers 2

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 6

    iget-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mListState:Lco/vine/android/ListState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lco/vine/android/ListState;->hasNewScrollState:Z

    iget-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mListState:Lco/vine/android/ListState;

    invoke-virtual {v0, p2}, Lco/vine/android/ListState;->setScrollState(I)V

    if-nez p2, :cond_1b

    iget-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mListState:Lco/vine/android/ListState;

    iget v0, v0, Lco/vine/android/ListState;->firstVisibleItem:I

    iget-object v1, p0, Lco/vine/android/BaseArrayListFragment;->mListState:Lco/vine/android/ListState;

    iget v1, v1, Lco/vine/android/ListState;->visibleItemCount:I

    iget-object v2, p0, Lco/vine/android/BaseArrayListFragment;->mListState:Lco/vine/android/ListState;

    iget v2, v2, Lco/vine/android/ListState;->totalItemCount:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lco/vine/android/BaseArrayListFragment;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_1b
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lco/vine/android/BaseAdapterFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/BaseArrayListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected processPostOptionsResult(Lco/vine/android/PostOptionsDialogActivity$Result;)V
    .registers 3

    iget-object v0, p1, Lco/vine/android/PostOptionsDialogActivity$Result;->request:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lco/vine/android/PostOptionsDialogActivity$Result;->request:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lco/vine/android/BaseArrayListFragment;->addRequest(Ljava/lang/String;)Ljava/lang/String;

    :cond_9
    iget-object v0, p1, Lco/vine/android/PostOptionsDialogActivity$Result;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_12

    iget-object v0, p1, Lco/vine/android/PostOptionsDialogActivity$Result;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lco/vine/android/BaseArrayListFragment;->startActivity(Landroid/content/Intent;)V

    :cond_12
    return-void
.end method

.method protected refresh()V
    .registers 1

    return-void
.end method

.method protected restorePosition()V
    .registers 4

    iget-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lco/vine/android/BaseArrayListFragment;->mScrollPos:I

    iget v2, p0, Lco/vine/android/BaseArrayListFragment;->mScrollOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method

.method protected savePosition()V
    .registers 5

    iget-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_17

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_f
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    iput v3, p0, Lco/vine/android/BaseArrayListFragment;->mScrollPos:I

    iput v1, p0, Lco/vine/android/BaseArrayListFragment;->mScrollOffset:I

    :cond_17
    return-void

    :cond_18
    const/4 v1, 0x0

    goto :goto_f
.end method

.method protected setEmptyStringMessage(I)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lco/vine/android/BaseArrayListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFocused(Z)V
    .registers 2

    iput-boolean p1, p0, Lco/vine/android/BaseArrayListFragment;->mFocused:Z

    return-void
.end method

.method public setNavBottom(I)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    instance-of v0, v0, Lco/vine/android/widget/PinnedHeaderListView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lco/vine/android/widget/PinnedHeaderListView;

    invoke-virtual {v0, p1}, Lco/vine/android/widget/PinnedHeaderListView;->setNavBottom(I)V

    :cond_d
    return-void
.end method

.method public setOwnerId(J)V
    .registers 3

    iput-wide p1, p0, Lco/vine/android/BaseArrayListFragment;->mOwnerId:J

    return-void
.end method

.method public setRefreshableHeaderOffset(I)V
    .registers 3

    iget-boolean v0, p0, Lco/vine/android/BaseArrayListFragment;->mRefreshable:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/RefreshableListView;->setViewYOffset(I)V

    :cond_b
    return-void
.end method

.method public setScrollListener(Lco/vine/android/widget/tabs/TabScrollListener;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/BaseArrayListFragment;->mScrollListener:Lco/vine/android/widget/tabs/TabScrollListener;

    return-void
.end method

.method public showDialog(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lco/vine/android/BaseArrayListFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_9
    return-void
.end method

.method protected showProgress(I)V
    .registers 4

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_24

    :cond_4
    :goto_4
    return-void

    :pswitch_5
    iget-boolean v0, p0, Lco/vine/android/BaseArrayListFragment;->mRefreshable:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->refreshMore(Z)V

    goto :goto_4

    :pswitch_11
    iget-boolean v0, p0, Lco/vine/android/BaseArrayListFragment;->mRefreshable:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView;->startRefresh()V

    iput-boolean v1, p0, Lco/vine/android/BaseArrayListFragment;->mRefreshing:Z

    goto :goto_4

    :pswitch_1f
    invoke-direct {p0, v1}, Lco/vine/android/BaseArrayListFragment;->showLoading(Z)V

    goto :goto_4

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_5
        :pswitch_11
        :pswitch_1f
        :pswitch_11
    .end packed-switch
.end method

.method protected showSadface(Z)V
    .registers 2

    invoke-virtual {p0, p1, p1}, Lco/vine/android/BaseArrayListFragment;->showSadface(ZZ)V

    return-void
.end method

.method protected showSadface(ZZ)V
    .registers 8

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_47

    iget-object v3, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_30

    iget-object v3, p0, Lco/vine/android/BaseArrayListFragment;->mSadface:Landroid/view/View;

    if-eqz v3, :cond_30

    iget-object v3, p0, Lco/vine/android/BaseArrayListFragment;->mEmptyProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-boolean v3, p0, Lco/vine/android/BaseArrayListFragment;->mIsSadFacePartOfHeader:Z

    if-nez v3, :cond_31

    iget-object v3, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_1b
    :goto_1b
    iget-object v3, p0, Lco/vine/android/BaseArrayListFragment;->mSadface:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lco/vine/android/BaseArrayListFragment;->mSadface:Landroid/view/View;

    const v4, 0x7f0a00e3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_30

    if-eqz p2, :cond_45

    :goto_2d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_30
    :goto_30
    return-void

    :cond_31
    iget-object v3, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-boolean v3, p0, Lco/vine/android/BaseArrayListFragment;->mIsSadFaceHeaderAdded:Z

    if-nez v3, :cond_1b

    iget-object v3, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lco/vine/android/BaseArrayListFragment;->mSadface:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lco/vine/android/BaseArrayListFragment;->mIsSadFaceHeaderAdded:Z

    goto :goto_1b

    :cond_45
    move v1, v2

    goto :goto_2d

    :cond_47
    iget-object v3, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_30

    iget-object v3, p0, Lco/vine/android/BaseArrayListFragment;->mSadface:Landroid/view/View;

    if-eqz v3, :cond_30

    iget-object v3, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-boolean v3, p0, Lco/vine/android/BaseArrayListFragment;->mIsSadFacePartOfHeader:Z

    if-eqz v3, :cond_6b

    iget-boolean v3, p0, Lco/vine/android/BaseArrayListFragment;->mIsSadFaceHeaderAdded:Z

    if-eqz v3, :cond_30

    iget-object v3, p0, Lco/vine/android/BaseArrayListFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lco/vine/android/BaseArrayListFragment;->mSadface:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    iget-object v3, p0, Lco/vine/android/BaseArrayListFragment;->mSadface:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v1, p0, Lco/vine/android/BaseArrayListFragment;->mIsSadFacePartOfHeader:Z

    goto :goto_30

    :cond_6b
    iget-object v1, p0, Lco/vine/android/BaseArrayListFragment;->mSadface:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_30
.end method
