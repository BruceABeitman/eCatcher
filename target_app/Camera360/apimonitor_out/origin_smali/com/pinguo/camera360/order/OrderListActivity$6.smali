.class Lcom/pinguo/camera360/order/OrderListActivity$6;
.super Ljava/lang/Object;
.source "OrderListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/OrderListActivity;->noOrderPullToRefreshComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/order/OrderListActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/OrderListActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/order/OrderListActivity$6;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$6;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mNoOrderPullView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$27(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->onRefreshComplete()V

    return-void
.end method
