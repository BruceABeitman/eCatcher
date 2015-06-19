.class Lcom/pinguo/camera360/order/OrderListActivity$5;
.super Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
.source "OrderListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/OrderListActivity;->request(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/Camera360Lib/network/HttpGsonRequest",
        "<",
        "Lcom/pinguo/camera360/order/OrderListActivity$GsonData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/order/OrderListActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/OrderListActivity;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    invoke-direct {p0, p2, p3}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getParams()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #calls: Lcom/pinguo/camera360/order/OrderListActivity;->fillupCommonHttpParams(Ljava/util/Map;)V
    invoke-static {v1, v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$13(Lcom/pinguo/camera360/order/OrderListActivity;Ljava/util/Map;)V

    return-object v0
.end method

.method protected onErrorResponse(Ljava/lang/Exception;)V
    .registers 7

    const v4, 0x7f0801b0

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$14(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;

    move-result-object v0

    if-ne v0, p0, :cond_17

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    const/4 v1, 0x0

    #setter for: Lcom/pinguo/camera360/order/OrderListActivity;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
    invoke-static {v0, v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$15(Lcom/pinguo/camera360/order/OrderListActivity;Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;)V

    :cond_17
    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$4(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    instance-of v0, p1, Lcom/android/volley/NoConnectionError;

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mNoOrderTipView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$23(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mOrderList:Ljava/util/List;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$17(Lcom/pinguo/camera360/order/OrderListActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mOrderList:Ljava/util/List;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$17(Lcom/pinguo/camera360/order/OrderListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_7b

    :cond_41
    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mNoOrderTipView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$23(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mNetworkView:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$25(Lcom/pinguo/camera360/order/OrderListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mHeaderRightBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$22(Lcom/pinguo/camera360/order/OrderListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$4(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    :goto_67
    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #calls: Lcom/pinguo/camera360/order/OrderListActivity;->noOrderPullToRefreshComplete()V
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$21(Lcom/pinguo/camera360/order/OrderListActivity;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mNetworkIV:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$26(Lcom/pinguo/camera360/order/OrderListActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #calls: Lcom/pinguo/camera360/order/OrderListActivity;->cancelProgressDialog()V
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$24(Lcom/pinguo/camera360/order/OrderListActivity;)V

    return-void

    :cond_7b
    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    invoke-static {v0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_67

    :cond_85
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/JsonSyntaxException;

    if-eqz v0, :cond_123

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mLoadedPages:I
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$16(Lcom/pinguo/camera360/order/OrderListActivity;)I

    move-result v0

    if-nez v0, :cond_e1

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mOrderList:Ljava/util/List;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$17(Lcom/pinguo/camera360/order/OrderListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mOrderList:Ljava/util/List;
    invoke-static {v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$17(Lcom/pinguo/camera360/order/OrderListActivity;)Ljava/util/List;

    move-result-object v1

    #calls: Lcom/pinguo/camera360/order/OrderListActivity;->refreshOrderListView(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$19(Lcom/pinguo/camera360/order/OrderListActivity;Ljava/util/List;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$4(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mSelectedOrderPos:I
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$12(Lcom/pinguo/camera360/order/OrderListActivity;)I

    move-result v0

    if-nez v0, :cond_c5

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mHeaderRightBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$22(Lcom/pinguo/camera360/order/OrderListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_c5
    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mNetworkView:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$25(Lcom/pinguo/camera360/order/OrderListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mNoOrderTipView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$23(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setVisibility(I)V

    :cond_d7
    :goto_d7
    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mNetworkView:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$25(Lcom/pinguo/camera360/order/OrderListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_67

    :cond_e1
    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mOrderList:Ljava/util/List;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$17(Lcom/pinguo/camera360/order/OrderListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mLoadedPages:I
    invoke-static {v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$16(Lcom/pinguo/camera360/order/OrderListActivity;)I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    if-gt v0, v1, :cond_d7

    invoke-static {}, Lcom/pinguo/camera360/order/OrderListActivity;->access$7()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u5df2\u52a0\u8f7d\u5b8c\u6570\u636e"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    #calls: Lcom/pinguo/camera360/order/OrderListActivity;->pullToRefreshComplete(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Z)V
    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/order/OrderListActivity;->access$20(Lcom/pinguo/camera360/order/OrderListActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mHeaderRightBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$22(Lcom/pinguo/camera360/order/OrderListActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mNetworkView:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$25(Lcom/pinguo/camera360/order/OrderListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mNoOrderTipView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$23(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setVisibility(I)V

    goto :goto_d7

    :cond_123
    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mOrderList:Ljava/util/List;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$17(Lcom/pinguo/camera360/order/OrderListActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_137

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mOrderList:Ljava/util/List;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$17(Lcom/pinguo/camera360/order/OrderListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_15f

    :cond_137
    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mNoOrderTipView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$23(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mNetworkView:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$25(Lcom/pinguo/camera360/order/OrderListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mHeaderRightBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$22(Lcom/pinguo/camera360/order/OrderListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$4(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    goto/16 :goto_67

    :cond_15f
    iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    invoke-static {v0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_67
.end method

.method protected onResponse(Lcom/pinguo/camera360/order/OrderListActivity$GsonData;)V
    .registers 8

    const/16 v3, 0xc8

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-static {}, Lcom/pinguo/camera360/order/OrderListActivity;->access$7()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onResponse"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
    invoke-static {v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$14(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;

    move-result-object v1

    if-ne v1, p0, :cond_1d

    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    const/4 v2, 0x0

    #setter for: Lcom/pinguo/camera360/order/OrderListActivity;->mPendingRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
    invoke-static {v1, v2}, Lcom/pinguo/camera360/order/OrderListActivity;->access$15(Lcom/pinguo/camera360/order/OrderListActivity;Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;)V

    :cond_1d
    const/4 v0, 0x0

    iget v1, p1, Lcom/pinguo/camera360/order/OrderListActivity$GsonData;->status:I

    if-ne v1, v3, :cond_e9

    iget-object v1, p1, Lcom/pinguo/camera360/order/OrderListActivity$GsonData;->data:Ljava/util/List;

    if-eqz v1, :cond_e9

    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mLoadedPages:I
    invoke-static {v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$16(Lcom/pinguo/camera360/order/OrderListActivity;)I

    move-result v1

    if-nez v1, :cond_38

    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mOrderList:Ljava/util/List;
    invoke-static {v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$17(Lcom/pinguo/camera360/order/OrderListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    :cond_38
    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mOrderList:Ljava/util/List;
    invoke-static {v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$17(Lcom/pinguo/camera360/order/OrderListActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Lcom/pinguo/camera360/order/OrderListActivity$GsonData;->data:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/pinguo/camera360/order/OrderListActivity;->access$7()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "data count = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/pinguo/camera360/order/OrderListActivity$GsonData;->data:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " all count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mOrderList:Ljava/util/List;
    invoke-static {v3}, Lcom/pinguo/camera360/order/OrderListActivity;->access$17(Lcom/pinguo/camera360/order/OrderListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mLoadedPages:I
    invoke-static {v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$16(Lcom/pinguo/camera360/order/OrderListActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/pinguo/camera360/order/OrderListActivity;->mLoadedPages:I
    invoke-static {v1, v2}, Lcom/pinguo/camera360/order/OrderListActivity;->access$18(Lcom/pinguo/camera360/order/OrderListActivity;I)V

    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    iget-object v2, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mOrderList:Ljava/util/List;
    invoke-static {v2}, Lcom/pinguo/camera360/order/OrderListActivity;->access$17(Lcom/pinguo/camera360/order/OrderListActivity;)Ljava/util/List;

    move-result-object v2

    #calls: Lcom/pinguo/camera360/order/OrderListActivity;->refreshOrderListView(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/pinguo/camera360/order/OrderListActivity;->access$19(Lcom/pinguo/camera360/order/OrderListActivity;Ljava/util/List;)V

    :cond_8b
    :goto_8b
    iget-object v1, p1, Lcom/pinguo/camera360/order/OrderListActivity$GsonData;->data:Ljava/util/List;

    if-eqz v1, :cond_f9

    iget-object v1, p1, Lcom/pinguo/camera360/order/OrderListActivity$GsonData;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_f9

    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    #calls: Lcom/pinguo/camera360/order/OrderListActivity;->pullToRefreshComplete(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Z)V
    invoke-static {v1, v2, v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$20(Lcom/pinguo/camera360/order/OrderListActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Z)V

    :goto_9e
    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #calls: Lcom/pinguo/camera360/order/OrderListActivity;->noOrderPullToRefreshComplete()V
    invoke-static {v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$21(Lcom/pinguo/camera360/order/OrderListActivity;)V

    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mOrderList:Ljava/util/List;
    invoke-static {v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$17(Lcom/pinguo/camera360/order/OrderListActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mOrderList:Ljava/util/List;
    invoke-static {v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$17(Lcom/pinguo/camera360/order/OrderListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_133

    :cond_b7
    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mSelectedOrderPos:I
    invoke-static {v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$12(Lcom/pinguo/camera360/order/OrderListActivity;)I

    move-result v1

    if-nez v1, :cond_c8

    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mHeaderRightBtn:Landroid/view/View;
    invoke-static {v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$22(Lcom/pinguo/camera360/order/OrderListActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_c8
    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mNoOrderTipView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    invoke-static {v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$23(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setVisibility(I)V

    :goto_d1
    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #calls: Lcom/pinguo/camera360/order/OrderListActivity;->cancelProgressDialog()V
    invoke-static {v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$24(Lcom/pinguo/camera360/order/OrderListActivity;)V

    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mNetworkView:Landroid/view/View;
    invoke-static {v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$25(Lcom/pinguo/camera360/order/OrderListActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mNetworkIV:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$26(Lcom/pinguo/camera360/order/OrderListActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    return-void

    :cond_e9
    iget v1, p1, Lcom/pinguo/camera360/order/OrderListActivity$GsonData;->status:I

    if-ne v1, v3, :cond_8b

    iget-object v1, p1, Lcom/pinguo/camera360/order/OrderListActivity$GsonData;->data:Ljava/util/List;

    if-nez v1, :cond_8b

    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    #calls: Lcom/pinguo/camera360/order/OrderListActivity;->pullToRefreshComplete(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Z)V
    invoke-static {v1, v2, v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$20(Lcom/pinguo/camera360/order/OrderListActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Z)V

    goto :goto_8b

    :cond_f9
    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mOrderList:Ljava/util/List;
    invoke-static {v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$17(Lcom/pinguo/camera360/order/OrderListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_10d

    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    #calls: Lcom/pinguo/camera360/order/OrderListActivity;->pullToRefreshComplete(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Z)V
    invoke-static {v1, v2, v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$20(Lcom/pinguo/camera360/order/OrderListActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Z)V

    goto :goto_9e

    :cond_10d
    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mOrderList:Ljava/util/List;
    invoke-static {v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$17(Lcom/pinguo/camera360/order/OrderListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mLoadedPages:I
    invoke-static {v2}, Lcom/pinguo/camera360/order/OrderListActivity;->access$16(Lcom/pinguo/camera360/order/OrderListActivity;)I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    if-ge v1, v2, :cond_12a

    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    #calls: Lcom/pinguo/camera360/order/OrderListActivity;->pullToRefreshComplete(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Z)V
    invoke-static {v1, v2, v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$20(Lcom/pinguo/camera360/order/OrderListActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Z)V

    goto/16 :goto_9e

    :cond_12a
    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    #calls: Lcom/pinguo/camera360/order/OrderListActivity;->pullToRefreshComplete(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Z)V
    invoke-static {v1, v2, v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$20(Lcom/pinguo/camera360/order/OrderListActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Z)V

    goto/16 :goto_9e

    :cond_133
    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mHeaderRightBtn:Landroid/view/View;
    invoke-static {v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$22(Lcom/pinguo/camera360/order/OrderListActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$5;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;

    #getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mNoOrderTipView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    invoke-static {v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$23(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setVisibility(I)V

    goto :goto_d1
.end method

.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/pinguo/camera360/order/OrderListActivity$GsonData;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/order/OrderListActivity$5;->onResponse(Lcom/pinguo/camera360/order/OrderListActivity$GsonData;)V

    return-void
.end method
