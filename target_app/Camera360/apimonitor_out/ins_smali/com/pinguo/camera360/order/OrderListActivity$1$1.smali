.class  Lcom/pinguo/camera360/order/OrderListActivity$1$1;
.super Ljava/lang/Object;
.source "OrderListActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/pinguo/camera360/order/OrderListActivity$1;
.method constructor <init>(Lcom/pinguo/camera360/order/OrderListActivity$1;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/order/OrderListActivity$1$1;->this$1:Lcom/pinguo/camera360/order/OrderListActivity$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
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