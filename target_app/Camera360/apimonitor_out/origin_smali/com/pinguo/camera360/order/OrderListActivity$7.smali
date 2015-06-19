.class Lcom/pinguo/camera360/order/OrderListActivity$7;
.super Ljava/lang/Object;
.source "OrderListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/OrderListActivity;->pullToRefreshComplete(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/order/OrderListActivity;

.field private final synthetic val$mode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/OrderListActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/order/OrderListActivity$7;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    iput-object p2, p0, Lcom/pinguo/camera360/order/OrderListActivity$7;->val$mode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$7;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$4(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$7;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$4(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$7;->val$mode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    return-void
.end method
