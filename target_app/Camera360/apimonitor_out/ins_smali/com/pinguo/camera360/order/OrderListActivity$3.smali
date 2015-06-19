.class  Lcom/pinguo/camera360/order/OrderListActivity$3;
.super Ljava/lang/Object;
.source "OrderListActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/order/OrderListActivity;
.field private final synthetic val$titleTextView:Landroid/widget/TextView;
.method constructor <init>(Lcom/pinguo/camera360/order/OrderListActivity;Landroid/widget/TextView;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/order/OrderListActivity$3;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;
iput-object p2, p0, Lcom/pinguo/camera360/order/OrderListActivity$3;->val$titleTextView:Landroid/widget/TextView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/order/OrderListActivity$3; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$3;->val$titleTextView:Landroid/widget/TextView;
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$3;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;
#getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mDialogListViewAdapter:Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;
invoke-static {v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$8(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;
move-result-object v1
invoke-virtual {v1, p3}, Lcom/pinguo/camera360/order/adapter/OrderListMenuAdapter;->getTitle(I)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$3;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;
#getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$4(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$3;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;
#calls: Lcom/pinguo/camera360/order/OrderListActivity;->showProgressDialog()V
invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$9(Lcom/pinguo/camera360/order/OrderListActivity;)V
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$3;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;
#calls: Lcom/pinguo/camera360/order/OrderListActivity;->selectOrder(I)V
invoke-static {v0, p3}, Lcom/pinguo/camera360/order/OrderListActivity;->access$10(Lcom/pinguo/camera360/order/OrderListActivity;I)V
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$3;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;
#getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mBottomMenuDlg:Landroid/app/Dialog;
invoke-static {v0}, Lcom/pinguo/camera360/order/OrderListActivity;->access$11(Lcom/pinguo/camera360/order/OrderListActivity;)Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V
const-string v1, " - Lcom/pinguo/camera360/order/OrderListActivity$3; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method