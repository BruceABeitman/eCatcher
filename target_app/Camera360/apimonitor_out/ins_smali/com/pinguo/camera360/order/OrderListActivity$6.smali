.class  Lcom/pinguo/camera360/order/OrderListActivity$6;
.super Ljava/lang/Object;
.source "OrderListActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/order/OrderListActivity;
.method constructor <init>(Lcom/pinguo/camera360/order/OrderListActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/order/OrderListActivity$6;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$6;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;
#getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mNoOrderPullView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$27(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
move-result-object v0
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->onRefreshComplete()V
return-void
.end method