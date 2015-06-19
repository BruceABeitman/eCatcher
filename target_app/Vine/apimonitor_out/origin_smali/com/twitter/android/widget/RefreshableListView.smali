.class public Lcom/twitter/android/widget/RefreshableListView;
.super Lco/vine/android/views/SdkListView;
.source "RefreshableListView.java"

# interfaces
.implements Lcom/twitter/android/widget/TopScrollable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/android/widget/RefreshableListView$SavedState;,
        Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;,
        Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;,
        Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;,
        Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;
    }
.end annotation


# static fields
.field static final MODE_ADDED:I = 0x1

.field protected static final MODE_ATTACHED:I = 0x2

.field static final MODE_POPPED:I = 0x10

.field static final MODE_REFRESHING:I = 0x22

.field static final MODE_REFRESH_STARTED:I = 0x20

.field static final MODE_SCROLLING:I = 0x8

.field static final MODE_SLOP:I = 0x40

.field static final MODE_TRACKING:I = 0x4

.field private static final SMOOTH_SCROLL_MAX_POSITION:I = 0x5


# instance fields
.field private mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

.field private mAttachedToWindow:Z

.field private mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

.field private mDownY:I

.field private final mFooterLayoutId:I

.field private mFooterView:Landroid/view/View;

.field private final mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mItemCount:I

.field private mLoading:Landroid/widget/ImageView;

.field private mLoadingAnimation:Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;

.field private mMode:I

.field private mMoveY:I

.field private mPTRDisabled:Z

.field private final mPixelScale:F

.field private mPullBackgroundColor:I

.field private mRefreshListener:Lcom/twitter/android/widget/RefreshListener;

.field private mRefreshTriangle1:Landroid/widget/ImageView;

.field final mRefreshView:Landroid/widget/RelativeLayout;

.field private final mScrollRunnable:Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;

.field final mScroller:Landroid/widget/Scroller;

.field private mTopPos:I

.field private final mTouchSlop:I

.field private mUnderNavRefreshHeader:Landroid/view/View;

.field private mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/RefreshableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/twitter/android/R$attr;->refreshableListViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/RefreshableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 16

    invoke-direct {p0, p1, p2, p3}, Lco/vine/android/views/SdkListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    sget-object v8, Lcom/twitter/android/R$styleable;->RefreshableListView:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    iput v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mPixelScale:F

    const/4 v8, 0x4

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mPullBackgroundColor:I

    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v8, Landroid/widget/Scroller;

    invoke-direct {v8, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mScroller:Landroid/widget/Scroller;

    new-instance v8, Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;

    invoke-direct {v8, p0}, Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;-><init>(Lcom/twitter/android/widget/RefreshableListView;)V

    iput-object v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mScrollRunnable:Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v4, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_5f

    sget v8, Lcom/twitter/android/R$id;->refresh_divider:I

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_5f
    sget v8, Lcom/twitter/android/R$id;->refresh_loading:I

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mLoading:Landroid/widget/ImageView;

    sget v8, Lcom/twitter/android/R$id;->refresh_triangle_1:I

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshTriangle1:Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v8

    iput v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mTouchSlop:I

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    new-instance v8, Landroid/widget/AbsListView$LayoutParams;

    iget v9, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v11, -0x1

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mFooterLayoutId:I

    new-instance v8, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;

    iget-object v9, p0, Lcom/twitter/android/widget/RefreshableListView;->mLoading:Landroid/widget/ImageView;

    invoke-direct {v8, p0, v9}, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;-><init>(Lcom/twitter/android/widget/RefreshableListView;Landroid/widget/ImageView;)V

    iput-object v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mLoadingAnimation:Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/twitter/android/widget/RefreshableListView;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/twitter/android/widget/RefreshableListView;)Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/twitter/android/widget/RefreshableListView;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v0, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v3, :cond_6

    iget-object v4, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    iget v6, v3, Landroid/widget/AbsListView$LayoutParams;->width:I

    iget v7, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    const/4 v8, -0x2

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_2c
    return-void
.end method

.method private isRefreshable()Z
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshListener:Lcom/twitter/android/widget/RefreshListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v2, :cond_14

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    iget-object v3, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_15

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_14
    return-void

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private silence(Ljava/lang/Exception;Landroid/view/MotionEvent;)V
    .registers 7

    const-string v0, "Event was: {}, x: {}, y: {}."

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private startScroll(I)V
    .registers 3

    if-lez p1, :cond_7

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mScrollRunnable:Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;->scroll(I)V

    :cond_7
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 6

    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_16
    return-void

    :cond_17
    invoke-super {p0, p1, p2, p3}, Lco/vine/android/views/SdkListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_16
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 6

    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_16
    return-void

    :cond_17
    invoke-super {p0, p1, p2, p3}, Lco/vine/android/views/SdkListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_16
.end method

.method attach(I)V
    .registers 19

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/twitter/android/widget/RefreshableListView;->mPTRDisabled:Z

    if-nez v14, :cond_6f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v1

    if-eqz v1, :cond_70

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14, v11}, Lcom/twitter/android/widget/RefreshableListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_1d
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/twitter/android/widget/RefreshableListView;->setMode(I)V

    if-eqz v1, :cond_2b

    invoke-virtual {v12}, Landroid/view/View;->isLayoutRequested()Z

    move-result v14

    if-eqz v14, :cond_7e

    :cond_2b
    const/4 v10, 0x1

    :goto_2c
    if-eqz v10, :cond_87

    move-object/from16 v0, p0

    iget v14, v0, Lcom/twitter/android/widget/RefreshableListView;->mWidthMeasureSpec:I

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/RefreshableListView;->getListPaddingLeft()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/RefreshableListView;->getListPaddingRight()I

    move-result v16

    add-int v15, v15, v16

    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    iget v9, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v9, :cond_80

    const/high16 v14, 0x4000

    invoke-static {v9, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :goto_4e
    invoke-virtual {v12, v6, v3}, Landroid/view/View;->measure(II)V

    :goto_51
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int v5, p1, v8

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/RefreshableListView;->getListPaddingLeft()I

    move-result v7

    if-eqz v10, :cond_8d

    add-int v4, v7, v13

    add-int v2, v5, v8

    invoke-virtual {v12, v7, v5, v4, v2}, Landroid/view/View;->layout(IIII)V

    :goto_68
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/twitter/android/widget/RefreshableListView;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

    invoke-virtual {v14}, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->onChanged()V

    :cond_6f
    return-void

    :cond_70
    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14, v11, v15}, Lcom/twitter/android/widget/RefreshableListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/twitter/android/widget/RefreshableListView;->setMode(I)V

    goto :goto_1d

    :cond_7e
    const/4 v10, 0x0

    goto :goto_2c

    :cond_80
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_4e

    :cond_87
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/twitter/android/widget/RefreshableListView;->cleanupLayoutState(Landroid/view/View;)V

    goto :goto_51

    :cond_8d
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int v14, v7, v14

    invoke-virtual {v12, v14}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int v14, v5, v14

    invoke-virtual {v12, v14}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_68
.end method

.method public colorizePTR(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/twitter/android/R$id;->refresh_loading:I

    iget-object v2, p0, Lcom/twitter/android/widget/RefreshableListView;->mLoading:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1, v2}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/twitter/android/R$id;->refresh_triangle_1:I

    iget-object v2, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshTriangle1:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1, v2}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V

    return-void
.end method

.method protected computeVerticalScrollOffset()I
    .registers 11

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->isSmoothScrollbarEnabled()Z

    move-result v7

    if-eqz v7, :cond_4e

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v7

    if-eqz v7, :cond_4e

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getChildCount()I

    move-result v0

    iget v7, p0, Lcom/twitter/android/widget/RefreshableListView;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    if-lez v1, :cond_4d

    const/4 v7, 0x1

    if-lt v2, v7, :cond_4d

    if-lez v0, :cond_4d

    invoke-virtual {p0, v6}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_4d

    add-int/lit8 v7, v2, -0x1

    mul-int/lit8 v7, v7, 0x64

    mul-int/lit8 v8, v4, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getScrollY()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    int-to-float v9, v1

    mul-float/2addr v8, v9

    const/high16 v9, 0x42c8

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_4d
    :goto_4d
    return v6

    :cond_4e
    invoke-super {p0}, Lco/vine/android/views/SdkListView;->computeVerticalScrollOffset()I

    move-result v6

    goto :goto_4d
.end method

.method protected computeVerticalScrollRange()I
    .registers 6

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->isSmoothScrollbarEnabled()Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v3

    if-eqz v3, :cond_31

    iget v3, p0, Lcom/twitter/android/widget/RefreshableListView;->mItemCount:I

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getScrollY()I

    move-result v2

    mul-int/lit8 v3, v0, 0x64

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v2, :cond_30

    int-to-float v3, v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v0

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    :cond_30
    :goto_30
    return v1

    :cond_31
    invoke-super {p0}, Lco/vine/android/views/SdkListView;->computeVerticalScrollRange()I

    move-result v1

    goto :goto_30
.end method

.method detach()V
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne p0, v0, :cond_14

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->detachViewFromParent(Landroid/view/View;)V

    :cond_14
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->unsetMode(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->onChanged()V

    :cond_1e
    return-void
.end method

.method protected detachViewsFromParent(II)V
    .registers 4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-super {p0, p1, p2}, Lco/vine/android/views/SdkListView;->detachViewsFromParent(II)V

    goto :goto_7
.end method

.method public disablePTR()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mPTRDisabled:Z

    return-void
.end method

.method public getFooterViewsCount()I
    .registers 2

    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    invoke-super {p0}, Lco/vine/android/views/SdkListView;->getFooterViewsCount()I

    move-result v0

    goto :goto_c
.end method

.method public getHeaderViewsCount()I
    .registers 2

    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_16

    :cond_1e
    invoke-super {p0}, Lco/vine/android/views/SdkListView;->getHeaderViewsCount()I

    move-result v0

    goto :goto_16
.end method

.method protected isMode(I)Z
    .registers 3

    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mMode:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected layoutChildren()V
    .registers 2

    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-super {p0}, Lco/vine/android/views/SdkListView;->layoutChildren()V

    :cond_9
    :goto_9
    return-void

    :cond_a
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mItemCount:I

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->clearRecycledState(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->clearRecycledState(Ljava/util/ArrayList;)V

    :cond_20
    invoke-super {p0}, Lco/vine/android/views/SdkListView;->layoutChildren()V

    goto :goto_9
.end method

.method offsetChildrenTopAndBottom(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->registerDataSetObserver()V

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->updateItemCount()V

    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAttachedToWindow:Z

    invoke-super {p0}, Lco/vine/android/views/SdkListView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->unregisterDataSetObserver()V

    :cond_f
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mScrollRunnable:Lcom/twitter/android/widget/RefreshableListView$ScrollRunnable;

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAttachedToWindow:Z

    invoke-super {p0}, Lco/vine/android/views/SdkListView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v2

    if-eqz v2, :cond_34

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v2, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getScrollX()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v2, p0, Lcom/twitter/android/widget/RefreshableListView;->mPullBackgroundColor:I

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_34
    invoke-super {p0, p1}, Lco/vine/android/views/SdkListView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5

    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAttachedToWindow:Z

    if-nez v0, :cond_1f

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getSelectedItemPosition()I

    move-result v0

    if-gez v0, :cond_1f

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->updateItemCount()V

    :cond_1f
    invoke-super {p0, p1, p2, p3}, Lco/vine/android/views/SdkListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v8

    if-nez v8, :cond_d

    invoke-super {p0, p1}, Lco/vine/android/views/SdkListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    :goto_c
    return v6

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    iget v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mDownY:I

    sub-int v1, v5, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_66

    :cond_1d
    :goto_1d
    :pswitch_1d
    :try_start_1d
    invoke-super {p0, p1}, Lco/vine/android/views/SdkListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_20
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1d .. :try_end_20} :catch_60
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_20} :catch_60

    move-result v6

    goto :goto_c

    :pswitch_22
    iput v5, p0, Lcom/twitter/android/widget/RefreshableListView;->mDownY:I

    const/high16 v7, -0x8000

    iput v7, p0, Lcom/twitter/android/widget/RefreshableListView;->mMoveY:I

    goto :goto_1d

    :pswitch_29
    const/16 v8, 0x20

    invoke-virtual {p0, v8}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v8

    if-eqz v8, :cond_34

    iput v5, p0, Lcom/twitter/android/widget/RefreshableListView;->mMoveY:I

    goto :goto_1d

    :cond_34
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-virtual {p0, v7}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    :goto_3f
    if-eqz v4, :cond_5e

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_45
    iput v5, p0, Lcom/twitter/android/widget/RefreshableListView;->mMoveY:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v8

    if-nez v8, :cond_1d

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getListPaddingTop()I

    move-result v8

    if-lt v3, v8, :cond_1d

    iget v8, p0, Lcom/twitter/android/widget/RefreshableListView;->mTouchSlop:I

    if-le v1, v8, :cond_1d

    move v6, v7

    goto :goto_c

    :cond_59
    invoke-virtual {p0, v6}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_3f

    :cond_5e
    move v3, v6

    goto :goto_45

    :catch_60
    move-exception v2

    invoke-direct {p0, v2, p1}, Lcom/twitter/android/widget/RefreshableListView;->silence(Ljava/lang/Exception;Landroid/view/MotionEvent;)V

    goto :goto_c

    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1d
        :pswitch_29
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 3

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->updateItemCount()V

    iput p1, p0, Lcom/twitter/android/widget/RefreshableListView;->mWidthMeasureSpec:I

    invoke-super {p0, p1, p2}, Lco/vine/android/views/SdkListView;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    move-object v0, p1

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView$SavedState;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lco/vine/android/views/SdkListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Lcom/twitter/android/widget/RefreshableListView$SavedState;->refreshable:Z

    if-eqz v1, :cond_12

    iget v1, v0, Lcom/twitter/android/widget/RefreshableListView$SavedState;->mode:I

    iput v1, p0, Lcom/twitter/android/widget/RefreshableListView;->mMode:I

    :cond_12
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    invoke-super {p0}, Lco/vine/android/views/SdkListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Lcom/twitter/android/widget/RefreshableListView$SavedState;

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/RefreshableListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v2

    iput-boolean v2, v0, Lcom/twitter/android/widget/RefreshableListView$SavedState;->refreshable:Z

    iget v2, p0, Lcom/twitter/android/widget/RefreshableListView;->mMode:I

    iput v2, v0, Lcom/twitter/android/widget/RefreshableListView$SavedState;->mode:I

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16

    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v12

    if-nez v12, :cond_b

    invoke-super {p0, p1}, Lco/vine/android/views/SdkListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    :goto_a
    return v12

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    and-int/lit16 v0, v12, 0xff

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v11, v12

    iget v12, p0, Lcom/twitter/android/widget/RefreshableListView;->mDownY:I

    sub-int v4, v11, v12

    packed-switch v0, :pswitch_data_13e

    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-super {p0, p1}, Lco/vine/android/views/SdkListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_20
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1d .. :try_end_20} :catch_137
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_20} :catch_137

    move-result v12

    goto :goto_a

    :pswitch_22
    iput v11, p0, Lcom/twitter/android/widget/RefreshableListView;->mDownY:I

    const/high16 v12, -0x8000

    iput v12, p0, Lcom/twitter/android/widget/RefreshableListView;->mMoveY:I

    const/16 v12, 0x40

    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->setMode(I)V

    goto :goto_1d

    :pswitch_2e
    const/16 v12, 0x14

    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->unsetMode(I)V

    const/16 v12, 0x20

    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v12

    if-nez v12, :cond_1d

    const/4 v12, 0x2

    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v12

    if-eqz v12, :cond_1d

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v7

    if-nez v7, :cond_1d

    if-eqz v9, :cond_1d

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v2

    if-lez v8, :cond_63

    iget-object v12, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshListener:Lcom/twitter/android/widget/RefreshListener;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/twitter/android/widget/RefreshListener;->onRefreshReleased(Z)V

    invoke-direct {p0, v8}, Lcom/twitter/android/widget/RefreshableListView;->startScroll(I)V

    goto :goto_1d

    :cond_63
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v12

    if-lez v12, :cond_1d

    iget-object v12, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshListener:Lcom/twitter/android/widget/RefreshListener;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/twitter/android/widget/RefreshListener;->onRefreshReleased(Z)V

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getDividerHeight()I

    move-result v12

    add-int/2addr v12, v2

    invoke-direct {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->startScroll(I)V

    goto :goto_1d

    :pswitch_78
    const/16 v12, 0x20

    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v12

    if-eqz v12, :cond_83

    iput v11, p0, Lcom/twitter/android/widget/RefreshableListView;->mMoveY:I

    goto :goto_1d

    :cond_83
    iget v12, p0, Lcom/twitter/android/widget/RefreshableListView;->mMoveY:I

    const/high16 v13, -0x8000

    if-eq v12, v13, :cond_107

    iget v12, p0, Lcom/twitter/android/widget/RefreshableListView;->mMoveY:I

    sub-int v5, v11, v12

    :goto_8d
    const/4 v12, 0x2

    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v1

    if-eqz v1, :cond_109

    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    :goto_99
    if-eqz v9, :cond_10f

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    :goto_9f
    iget v12, p0, Lcom/twitter/android/widget/RefreshableListView;->mMoveY:I

    if-lt v11, v12, :cond_111

    const/4 v10, 0x1

    :goto_a4
    iput v11, p0, Lcom/twitter/android/widget/RefreshableListView;->mMoveY:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v12

    if-nez v12, :cond_132

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getListPaddingTop()I

    move-result v12

    if-lt v8, v12, :cond_132

    iget v12, p0, Lcom/twitter/android/widget/RefreshableListView;->mTouchSlop:I

    if-le v4, v12, :cond_132

    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->requestDisallowInterceptTouchEvent(Z)V

    const/16 v12, 0x40

    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v12

    if-eqz v12, :cond_ca

    invoke-super {p0, p1}, Lco/vine/android/views/SdkListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/16 v12, 0x40

    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->unsetMode(I)V

    :cond_ca
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->setChildrenDrawingCacheEnabled(Z)V

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->setChildrenDrawnWithCacheEnabled(Z)V

    if-eqz v1, :cond_128

    int-to-float v12, v5

    const/high16 v13, 0x3f00

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->offsetChildrenTopAndBottom(I)V

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->invalidate()V

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_113

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v12

    if-ltz v12, :cond_113

    if-eqz v10, :cond_100

    const/16 v12, 0x10

    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v12

    if-nez v12, :cond_100

    const/16 v12, 0x10

    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->setMode(I)V

    iget-object v12, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshListener:Lcom/twitter/android/widget/RefreshListener;

    invoke-interface {v12}, Lcom/twitter/android/widget/RefreshListener;->onRefreshPulled()V

    :cond_100
    :goto_100
    const/4 v12, 0x4

    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->setMode(I)V

    const/4 v12, 0x1

    goto/16 :goto_a

    :cond_107
    move v5, v4

    goto :goto_8d

    :cond_109
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    goto :goto_99

    :cond_10f
    const/4 v8, 0x0

    goto :goto_9f

    :cond_111
    const/4 v10, 0x0

    goto :goto_a4

    :cond_113
    if-nez v10, :cond_100

    const/16 v12, 0x10

    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v12

    if-eqz v12, :cond_100

    const/16 v12, 0x10

    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->unsetMode(I)V

    iget-object v12, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshListener:Lcom/twitter/android/widget/RefreshListener;

    invoke-interface {v12}, Lcom/twitter/android/widget/RefreshListener;->onRefreshCancelled()V

    goto :goto_100

    :cond_128
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getDividerHeight()I

    move-result v12

    sub-int v12, v8, v12

    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->attach(I)V

    goto :goto_100

    :cond_132
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->detach()V

    goto/16 :goto_1d

    :catch_137
    move-exception v6

    invoke-direct {p0, v6, p1}, Lcom/twitter/android/widget/RefreshableListView;->silence(Ljava/lang/Exception;Landroid/view/MotionEvent;)V

    const/4 v12, 0x0

    goto/16 :goto_a

    :pswitch_data_13e
    .packed-switch 0x0
        :pswitch_22
        :pswitch_2e
        :pswitch_78
    .end packed-switch
.end method

.method public refreshMore(Z)V
    .registers 4

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mFooterView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mFooterView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .registers 4

    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2b

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->onChanged()V

    :cond_24
    const/4 v0, 0x1

    :cond_25
    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/twitter/android/widget/RefreshableListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a

    :cond_2d
    invoke-super {p0, p1}, Lco/vine/android/views/SdkListView;->removeHeaderView(Landroid/view/View;)Z

    move-result v0

    goto :goto_2a
.end method

.method requestLastChildLayout()V
    .registers 7

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getBottomPaddingOffset()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getDividerHeight()I

    move-result v5

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_37

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-super {p0}, Lco/vine/android/views/SdkListView;->layoutChildren()V

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->offsetChildrenTopAndBottom(I)V

    :cond_37
    return-void
.end method

.method public scrollTop()Z
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v2, p0, Lcom/twitter/android/widget/RefreshableListView;->mTopPos:I

    const/16 v5, 0x22

    invoke-virtual {p0, v5}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v5

    if-eqz v5, :cond_e

    add-int/lit8 v2, v2, 0x1

    :cond_e
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v6, 0x7

    if-le v5, v6, :cond_32

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-gt v1, v2, :cond_27

    if-ne v1, v2, :cond_31

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-gez v5, :cond_31

    :cond_27
    const/4 v3, 0x5

    if-le v1, v3, :cond_2d

    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/RefreshableListView;->setSelection(I)V

    :cond_2d
    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/RefreshableListView;->smoothScrollToPosition(I)V

    move v3, v4

    :cond_31
    :goto_31
    return v3

    :cond_32
    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/RefreshableListView;->setSelection(I)V

    move v3, v4

    goto :goto_31
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/twitter/android/widget/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v0

    if-eqz v0, :cond_66

    if-eqz p1, :cond_61

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    :cond_1a
    new-instance v0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;-><init>(Lcom/twitter/android/widget/RefreshableListView;)V

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mFooterView:Landroid/view/View;

    if-nez v0, :cond_44

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mFooterLayoutId:I

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6, v1, v2}, Lcom/twitter/android/widget/RefreshableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    sget v0, Lcom/twitter/android/R$id;->footer_content:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mFooterView:Landroid/view/View;

    :cond_44
    new-instance v0, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    iget-object v2, p0, Lcom/twitter/android/widget/RefreshableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/twitter/android/widget/RefreshableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;-><init>(Lcom/twitter/android/widget/RefreshableListView;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;)V

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    :cond_53
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->getSuperCount()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mItemCount:I

    :goto_5b
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    invoke-super {p0, v0}, Lco/vine/android/views/SdkListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_60
    return-void

    :cond_61
    iput-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    iput v2, p0, Lcom/twitter/android/widget/RefreshableListView;->mItemCount:I

    goto :goto_5b

    :cond_66
    invoke-super {p0, p1}, Lco/vine/android/views/SdkListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_60
.end method

.method setMode(I)V
    .registers 3

    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mMode:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mMode:I

    return-void
.end method

.method public setPullToRefreshBackgroundColor(I)V
    .registers 3

    iput p1, p0, Lcom/twitter/android/widget/RefreshableListView;->mPullBackgroundColor:I

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mUnderNavRefreshHeader:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mUnderNavRefreshHeader:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_b
    return-void
.end method

.method public setRefreshHeader(Landroid/view/View;I)V
    .registers 6

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mLoading:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mLoading:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_c
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshTriangle1:Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshTriangle1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_15
    sget v0, Lcom/twitter/android/R$id;->refresh_loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mLoading:Landroid/widget/ImageView;

    sget v0, Lcom/twitter/android/R$id;->refresh_triangle_1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshTriangle1:Landroid/widget/ImageView;

    new-instance v0, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->mLoading:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;-><init>(Lcom/twitter/android/widget/RefreshableListView;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mLoadingAnimation:Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;

    iput-object p1, p0, Lcom/twitter/android/widget/RefreshableListView;->mUnderNavRefreshHeader:Landroid/view/View;

    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mPullBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v2, p2, v2, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method public setRefreshListener(Lcom/twitter/android/widget/RefreshListener;)V
    .registers 4

    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_14

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRefreshListener must be called before addHeaderView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshListener:Lcom/twitter/android/widget/RefreshListener;

    if-eq p1, v0, :cond_1a

    iput-object p1, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshListener:Lcom/twitter/android/widget/RefreshListener;

    :cond_1a
    return-void
.end method

.method public setTopPosition(I)V
    .registers 2

    iput p1, p0, Lcom/twitter/android/widget/RefreshableListView;->mTopPos:I

    return-void
.end method

.method public setViewYOffset(I)V
    .registers 6

    const/4 v3, 0x0

    int-to-float v1, p1

    iget v2, p0, Lcom/twitter/android/widget/RefreshableListView;->mPixelScale:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v0, v1

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1, v3, v2, v3, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method public startRefresh()V
    .registers 4

    const/16 v1, 0x20

    const/4 v2, 0x2

    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    :goto_15
    return-void

    :cond_16
    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/RefreshableListView;->setMode(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshTriangle1:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mLoading:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mLoadingAnimation:Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;->run()V

    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->onChanged()V

    goto :goto_15
.end method

.method public stopRefresh()V
    .registers 14

    const/16 v12, 0x20

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshListener:Lcom/twitter/android/widget/RefreshListener;

    if-eqz v5, :cond_57

    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v10

    if-eqz v10, :cond_57

    iget-object v10, p0, Lcom/twitter/android/widget/RefreshableListView;->mLoadingAnimation:Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;

    invoke-virtual {v10}, Lcom/twitter/android/widget/RefreshableListView$AnimateLoader;->cancel()V

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v3

    invoke-interface {v5}, Lcom/twitter/android/widget/RefreshListener;->getFirstItemPosition()Lcom/twitter/android/widget/ItemPosition;

    move-result-object v2

    iget v7, v2, Lcom/twitter/android/widget/ItemPosition;->offset:I

    iget v4, v2, Lcom/twitter/android/widget/ItemPosition;->position:I

    invoke-interface {v5}, Lcom/twitter/android/widget/RefreshListener;->onRefreshFinished()V

    iget-wide v10, v2, Lcom/twitter/android/widget/ItemPosition;->itemId:J

    invoke-interface {v5, v10, v11}, Lcom/twitter/android/widget/RefreshListener;->getPositionForItemId(J)I

    move-result v6

    invoke-virtual {p0, v12}, Lcom/twitter/android/widget/RefreshableListView;->unsetMode(I)V

    if-ne v6, v4, :cond_6b

    invoke-interface {v5}, Lcom/twitter/android/widget/RefreshListener;->onRefreshFinishedNoChange()V

    if-nez v0, :cond_5a

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_5a

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_58

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    :goto_47
    if-eqz v3, :cond_4c

    invoke-direct {p0, v8}, Lcom/twitter/android/widget/RefreshableListView;->startScroll(I)V

    :cond_4c
    :goto_4c
    iget-object v10, p0, Lcom/twitter/android/widget/RefreshableListView;->mRefreshTriangle1:Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v9, p0, Lcom/twitter/android/widget/RefreshableListView;->mLoading:Landroid/widget/ImageView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_57
    return-void

    :cond_58
    move v8, v9

    goto :goto_47

    :cond_5a
    if-eqz v3, :cond_65

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->detach()V

    :goto_5f
    add-int/lit8 v10, v4, -0x1

    invoke-virtual {p0, v10, v7}, Lcom/twitter/android/widget/RefreshableListView;->setSelectionFromTop(II)V

    goto :goto_4c

    :cond_65
    iget-object v10, p0, Lcom/twitter/android/widget/RefreshableListView;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

    invoke-virtual {v10}, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->onChanged()V

    goto :goto_5f

    :cond_6b
    invoke-interface {v5}, Lcom/twitter/android/widget/RefreshListener;->onRefreshFinishedNewData()V

    if-eqz v3, :cond_79

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->detach()V

    :goto_73
    add-int/lit8 v10, v6, -0x1

    invoke-virtual {p0, v10, v7}, Lcom/twitter/android/widget/RefreshableListView;->setSelectionFromTop(II)V

    goto :goto_4c

    :cond_79
    iget-object v10, p0, Lcom/twitter/android/widget/RefreshableListView;->mDataSetObserver:Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;

    invoke-virtual {v10}, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->onChanged()V

    goto :goto_73
.end method

.method unsetMode(I)V
    .registers 4

    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mMode:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mMode:I

    return-void
.end method

.method updateItemCount()V
    .registers 2

    invoke-direct {p0}, Lcom/twitter/android/widget/RefreshableListView;->isRefreshable()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->getSuperCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mItemCount:I

    goto :goto_6

    :cond_1a
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mAdapter:Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView$RefreshViewListAdapter;->getSuperCount()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->mItemCount:I

    goto :goto_6
.end method
