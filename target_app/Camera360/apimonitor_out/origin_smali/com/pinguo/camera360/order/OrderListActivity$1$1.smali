.class Lcom/pinguo/camera360/order/OrderListActivity$1$1;
.super Ljava/lang/Object;
.source "OrderListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/OrderListActivity$1;->onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/order/OrderListActivity$1;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/OrderListActivity$1;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/order/OrderListActivity$1$1;->this$1:Lcom/pinguo/camera360/order/OrderListActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$1$1;->this$1:Lcom/pinguo/camera360/order/OrderListActivity$1;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity$1;->access$1(Lcom/pinguo/camera360/order/OrderListActivity$1;)Lcom/pinguo/camera360/order/OrderListActivity;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$4(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    return-void
.end method
