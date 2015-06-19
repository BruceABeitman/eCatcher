.class  Lcom/pinguo/camera360/shop/activity/StoreActivity$8;
.super Ljava/lang/Object;
.source "StoreActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/StoreActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$8;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$8;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->access$6(Lcom/pinguo/camera360/shop/activity/StoreActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V
return-void
.end method