.class public Lcom/pinguo/camera360/order/OrderListActivity;
.super Landroid/app/Activity;
.source "OrderListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/order/OrderListActivity$GsonData;
    }
.end annotation


# static fields
.field private static final PAGE_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBottomMenuDlg:Landroid/app/Dialog;

.field private mDialogListViewAdapter:Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderRightBtn:Landroid/view/View;

.field private mLoadedPages:I

.field private mNetworkIV:Landroid/widget/ImageView;

.field mNetworkRefreshAnim:Landroid/view/animation/Animation;

.field private mNetworkView:Landroid/view/View;

.field private mNoOrderPullView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

.field private mNoOrderTipView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

.field private mOrderAdapter:Lcom/pinguo/camera360/order/adapter/OrderListAdapter;

.field private mOrderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/order/model/OrderBean;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/Camera360Lib/network/HttpGsonRequest",
            "<",
            "Lcom/pinguo/camera360/order/OrderListActivity$GsonData;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

.field private mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mSelectedOrderPos:I

.field private mStateChangedOrderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/mycenter/PGOrderMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/order/OrderListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/order/OrderListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mSelectedOrderPos:I

    iput v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mLoadedPages:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/order/OrderListActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/order/OrderListActivity;->pullOrderChangedData()V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/order/OrderListActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/order/OrderListActivity;->refreshOrderList()V

    return-void
.end method

.method static synthetic access$10(Lcom/pinguo/camera360/order/OrderListActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/order/OrderListActivity;->selectOrder(I)V

    return-void
.end method

.method static synthetic access$11(Lcom/pinguo/camera360/order/OrderListActivity;)Landroid/app/Dialog;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mBottomMenuDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$12(Lcom/pinguo/camera360/order/OrderListActivity;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mSelectedOrderPos:I

    return v0
.end method

.method static synthetic access$13(Lcom/pinguo/camera360/order/OrderListActivity;Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/order/OrderListActivity;->fillupCommonHttpParams(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$14(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;

    return-object v0
.end method

.method static synthetic access$15(Lcom/pinguo/camera360/order/OrderListActivity;Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;

    return-void
.end method

.method static synthetic access$16(Lcom/pinguo/camera360/order/OrderListActivity;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mLoadedPages:I

    return v0
.end method

.method static synthetic access$17(Lcom/pinguo/camera360/order/OrderListActivity;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mOrderList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$18(Lcom/pinguo/camera360/order/OrderListActivity;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mLoadedPages:I

    return-void
.end method

.method static synthetic access$19(Lcom/pinguo/camera360/order/OrderListActivity;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/order/OrderListActivity;->refreshOrderListView(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/order/OrderListActivity;)I
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/order/OrderListActivity;->loadNextPage()I

    move-result v0

    return v0
.end method

.method static synthetic access$20(Lcom/pinguo/camera360/order/OrderListActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/order/OrderListActivity;->pullToRefreshComplete(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Z)V

    return-void
.end method

.method static synthetic access$21(Lcom/pinguo/camera360/order/OrderListActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/order/OrderListActivity;->noOrderPullToRefreshComplete()V

    return-void
.end method

.method static synthetic access$22(Lcom/pinguo/camera360/order/OrderListActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mHeaderRightBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$23(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mNoOrderTipView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    return-object v0
.end method

.method static synthetic access$24(Lcom/pinguo/camera360/order/OrderListActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/order/OrderListActivity;->cancelProgressDialog()V

    return-void
.end method

.method static synthetic access$25(Lcom/pinguo/camera360/order/OrderListActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mNetworkView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$26(Lcom/pinguo/camera360/order/OrderListActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mNetworkIV:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$27(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mNoOrderPullView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/order/OrderListActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/pinguo/camera360/order/adapter/OrderListAdapter;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mOrderAdapter:Lcom/pinguo/camera360/order/adapter/OrderListAdapter;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/order/OrderListActivity;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mStateChangedOrderList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/order/OrderListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mDialogListViewAdapter:Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/order/OrderListActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/order/OrderListActivity;->showProgressDialog()V

    return-void
.end method

.method private cancelProgressDialog()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    :cond_14
    return-void
.end method

.method private fillupCommonHttpParams(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, LvStudio/Android/Camera360/RemoteConstants;->prepareCommonParams(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method public static getBottomMenuDialog(Landroid/content/Context;Landroid/widget/ListView;)Landroid/app/Dialog;
    .registers 12

    new-instance v2, Landroid/app/Dialog;

    const v7, 0x7f09003e

    invoke-direct {v2, p0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v7, 0x7f030051

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const/16 v0, 0x2710

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v7, 0x2710

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const v7, 0x7f09003b

    invoke-virtual {v6, v7}, Landroid/view/Window;->setWindowAnimations(I)V

    const/4 v7, 0x0

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v1, -0x3e8

    const/16 v7, -0x3e8

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v7, 0x50

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-object v2
.end method

.method private init()V
    .registers 11

    const/4 v9, 0x0

    const/16 v8, 0x8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mOrderList:Ljava/util/List;

    const v6, 0x7f0a02df

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/order/OrderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a02de

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/order/OrderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v6, 0x7f0a02e0

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/order/OrderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f080367

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v4, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mHeaderRightBtn:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    const v6, 0x7f0a0397

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/order/OrderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v6, Lcom/pinguo/camera360/order/OrderListActivity$1;

    invoke-direct {v6, p0}, Lcom/pinguo/camera360/order/OrderListActivity$1;-><init>(Lcom/pinguo/camera360/order/OrderListActivity;)V

    invoke-virtual {v3, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    iput-object v3, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v6, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v7, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v6, v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    iget-object v6, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setScrollingWhileRefreshingEnabled(Z)V

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    new-instance v6, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;

    invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getStateChangedOrderList()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mStateChangedOrderList:Ljava/util/List;

    invoke-direct {v6, p0, v9, v7}, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)V

    iput-object v6, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mOrderAdapter:Lcom/pinguo/camera360/order/adapter/OrderListAdapter;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v6, Lcom/pinguo/camera360/order/OrderListActivity$2;

    invoke-direct {v6, p0}, Lcom/pinguo/camera360/order/OrderListActivity$2;-><init>(Lcom/pinguo/camera360/order/OrderListActivity;)V

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0300b6

    invoke-virtual {v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    new-instance v6, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;

    invoke-direct {v6, p0}, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mDialogListViewAdapter:Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v6, Lcom/pinguo/camera360/order/OrderListActivity$3;

    invoke-direct {v6, p0, v5}, Lcom/pinguo/camera360/order/OrderListActivity$3;-><init>(Lcom/pinguo/camera360/order/OrderListActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {p0, v1}, Lcom/pinguo/camera360/order/OrderListActivity;->getBottomMenuDialog(Landroid/content/Context;Landroid/widget/ListView;)Landroid/app/Dialog;

    move-result-object v6

    iput-object v6, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mBottomMenuDlg:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/pinguo/camera360/order/OrderListActivity;->showProgressDialog()V

    const v6, 0x7f0a0398

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/order/OrderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mNetworkView:Landroid/view/View;

    const v6, 0x7f0a0399

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/order/OrderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mNetworkIV:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mNetworkIV:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mNetworkView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    const v6, 0x7f0a039a

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/order/OrderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    iput-object v6, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mNoOrderTipView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    iget-object v6, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mNoOrderTipView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    invoke-virtual {v6, v8}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setVisibility(I)V

    iget-object v6, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mNoOrderTipView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    iput-object v6, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mNoOrderPullView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    iget-object v6, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mNoOrderPullView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    new-instance v7, Lcom/pinguo/camera360/order/OrderListActivity$4;

    invoke-direct {v7, p0}, Lcom/pinguo/camera360/order/OrderListActivity$4;-><init>(Lcom/pinguo/camera360/order/OrderListActivity;)V

    invoke-virtual {v6, v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    return-void
.end method

.method private initAnim()V
    .registers 3

    const v1, 0x7f040006

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mNetworkRefreshAnim:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mNetworkRefreshAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private loadNextPage()I
    .registers 7

    const/4 v2, 0x1

    sget-object v3, Lcom/pinguo/camera360/order/OrderListActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "loadNextPage page "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mLoadedPages:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mLoadedPages:I

    if-nez v3, :cond_26

    iget v3, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mSelectedOrderPos:I

    invoke-direct {p0, v3}, Lcom/pinguo/camera360/order/OrderListActivity;->selectOrder(I)V

    :goto_25
    return v2

    :cond_26
    iget-object v2, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mOrderList:Ljava/util/List;

    iget-object v3, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mOrderList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/order/model/OrderBean;

    if-eqz v0, :cond_40

    iget-object v2, v0, Lcom/pinguo/camera360/order/model/OrderBean;->oid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_42

    :cond_40
    const/4 v2, -0x2

    goto :goto_25

    :cond_42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "pageNum"

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "endOid"

    iget-object v3, v0, Lcom/pinguo/camera360/order/model/OrderBean;->oid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mSelectedOrderPos:I

    packed-switch v2, :pswitch_data_86

    :goto_60
    invoke-direct {p0, v1}, Lcom/pinguo/camera360/order/OrderListActivity;->fillupCommonHttpParams(Ljava/util/Map;)V

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/order/OrderListActivity;->request(Ljava/util/HashMap;)V

    const/4 v2, 0x2

    goto :goto_25

    :pswitch_68
    const-string/jumbo v2, "status"

    const-string/jumbo v3, "102,103,106"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    :pswitch_72
    const-string/jumbo v2, "status"

    const-string/jumbo v3, "104,107"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    :pswitch_7c
    const-string/jumbo v2, "status"

    const-string/jumbo v3, "3,108"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_68
        :pswitch_72
        :pswitch_7c
    .end packed-switch
.end method

.method private noOrderPullToRefreshComplete()V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/pinguo/camera360/order/OrderListActivity$6;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/order/OrderListActivity$6;-><init>(Lcom/pinguo/camera360/order/OrderListActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private pullOrderChangedData()V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->update(Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;)V

    return-void
.end method

.method private pullToRefreshComplete(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Z)V
    .registers 7

    sget-object v0, Lcom/pinguo/camera360/order/OrderListActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pullToRefreshComplete setmode"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_15

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/pinguo/camera360/order/OrderListActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/pinguo/camera360/order/OrderListActivity$7;-><init>(Lcom/pinguo/camera360/order/OrderListActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_14
.end method

.method private refreshOrderList()V
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mSelectedOrderPos:I

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/order/OrderListActivity;->selectOrder(I)V

    return-void
.end method

.method private refreshOrderListView(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mOrderAdapter:Lcom/pinguo/camera360/order/adapter/OrderListAdapter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mOrderAdapter:Lcom/pinguo/camera360/order/adapter/OrderListAdapter;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;->setOrderList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mOrderAdapter:Lcom/pinguo/camera360/order/adapter/OrderListAdapter;

    invoke-virtual {v0}, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;->notifyDataSetChanged()V

    :cond_e
    return-void
.end method

.method private request(Ljava/util/HashMap;)V
    .registers 10

    invoke-static {p1}, Lcom/pinguo/camera360/push/utils/NetworkUtils;->getSigByParamMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string/jumbo v5, "sig"

    invoke-virtual {p1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget-object v5, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;

    invoke-virtual {v5}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;->cancel()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;

    :cond_1c
    const-string/jumbo v2, "https://bstore.camera360.com/v1/order/list"

    :try_start_1f
    invoke-static {v2, p1}, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->getUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/pinguo/camera360/order/OrderListActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "url = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_38} :catch_44

    new-instance v1, Lcom/pinguo/camera360/order/OrderListActivity$5;

    const/4 v5, 0x1

    invoke-direct {v1, p0, v5, v4}, Lcom/pinguo/camera360/order/OrderListActivity$5;-><init>(Lcom/pinguo/camera360/order/OrderListActivity;ILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;->execute()V

    iput-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;

    :goto_43
    return-void

    :catch_44
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_43
.end method

.method private selectOrder(I)V
    .registers 5

    const/4 v1, 0x0

    iput v1, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mLoadedPages:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "pageNum"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    packed-switch p1, :pswitch_data_48

    :goto_17
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/order/OrderListActivity;->fillupCommonHttpParams(Ljava/util/Map;)V

    iput p1, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mSelectedOrderPos:I

    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mDialogListViewAdapter:Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;->setSelectedOrderPos(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mDialogListViewAdapter:Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;

    invoke-virtual {v1}, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;->notifyDataSetChanged()V

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/order/OrderListActivity;->request(Ljava/util/HashMap;)V

    return-void

    :pswitch_2a
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "102,103,106"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :pswitch_34
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "104,107"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :pswitch_3e
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "3,108"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_34
        :pswitch_3e
    .end packed-switch
.end method

.method private showProgressDialog()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_d
    return-void

    :cond_e
    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V

    goto :goto_d
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_20

    :goto_7
    return-void

    :sswitch_8
    invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderListActivity;->finish()V

    goto :goto_7

    :sswitch_c
    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mBottomMenuDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_7

    :sswitch_12
    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mNetworkIV:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mNetworkRefreshAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget v1, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mSelectedOrderPos:I

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/order/OrderListActivity;->selectOrder(I)V

    goto :goto_7

    nop

    :sswitch_data_20
    .sparse-switch
        0x7f0a02de -> :sswitch_8
        0x7f0a02e0 -> :sswitch_c
        0x7f0a0399 -> :sswitch_12
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030096

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/order/OrderListActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/order/OrderListActivity;->init()V

    invoke-direct {p0}, Lcom/pinguo/camera360/order/OrderListActivity;->initAnim()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/order/OrderListActivity;->selectOrder(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/order/OrderListActivity;->pullOrderChangedData()V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;

    invoke-virtual {v0}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;->cancel()V

    :cond_10
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onEvent(Lcom/pinguo/camera360/order/event/OnOrderStatusChangedEvent;)V
    .registers 4

    sget-object v0, Lcom/pinguo/camera360/order/OrderListActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "OnOrderStatusChangedEvent"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getStateChangedOrderList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mStateChangedOrderList:Ljava/util/List;

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mOrderAdapter:Lcom/pinguo/camera360/order/adapter/OrderListAdapter;

    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mStateChangedOrderList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;->setOrderStatusChangedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mOrderAdapter:Lcom/pinguo/camera360/order/adapter/OrderListAdapter;

    invoke-virtual {v0}, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity;->mOrderAdapter:Lcom/pinguo/camera360/order/adapter/OrderListAdapter;

    invoke-virtual {v0}, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onStop()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
