.class  Lcom/pinguo/camera360/order/OrderDetailActivity$1;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "OrderDetailActivity.java"
.field final synthetic this$0:Lcom/pinguo/camera360/order/OrderDetailActivity;
.field private final synthetic val$fprogressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.method constructor <init>(Lcom/pinguo/camera360/order/OrderDetailActivity;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/order/OrderDetailActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderDetailActivity;
iput-object p2, p0, Lcom/pinguo/camera360/order/OrderDetailActivity$1;->val$fprogressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V
return-void
.end method
.method public onError(Ljava/lang/Exception;)V
.registers 4
invoke-static {}, Lcom/pinguo/camera360/order/OrderDetailActivity;->access$1()Ljava/lang/String;
move-result-object v0
invoke-static {v0, p1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderDetailActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderDetailActivity;
#getter for: Lcom/pinguo/camera360/order/OrderDetailActivity;->mNetworkIV:Landroid/widget/ImageView;
invoke-static {v0}, Lcom/pinguo/camera360/order/OrderDetailActivity;->access$0(Lcom/pinguo/camera360/order/OrderDetailActivity;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderDetailActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderDetailActivity;
#getter for: Lcom/pinguo/camera360/order/OrderDetailActivity;->mRetryBoxView:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/order/OrderDetailActivity;->access$2(Lcom/pinguo/camera360/order/OrderDetailActivity;)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderDetailActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderDetailActivity;
#getter for: Lcom/pinguo/camera360/order/OrderDetailActivity;->mContentBoxView:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/order/OrderDetailActivity;->access$3(Lcom/pinguo/camera360/order/OrderDetailActivity;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
if-nez v0, :cond_31
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderDetailActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderDetailActivity;
#getter for: Lcom/pinguo/camera360/order/OrderDetailActivity;->mContentBoxView:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/order/OrderDetailActivity;->access$3(Lcom/pinguo/camera360/order/OrderDetailActivity;)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_31
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderDetailActivity$1;->val$fprogressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_3a
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderDetailActivity$1;->val$fprogressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
:cond_3a
return-void
.end method
.method public onSuccess(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderDetailActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderDetailActivity;
#getter for: Lcom/pinguo/camera360/order/OrderDetailActivity;->mNetworkIV:Landroid/widget/ImageView;
invoke-static {v0}, Lcom/pinguo/camera360/order/OrderDetailActivity;->access$0(Lcom/pinguo/camera360/order/OrderDetailActivity;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderDetailActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderDetailActivity;
iget-object v0, p1, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response;->data:Ljava/lang/Object;
check-cast v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data;
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/order/OrderDetailActivity;->updateOrderDetailView(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data;)V
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderDetailActivity$1;->val$fprogressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderDetailActivity$1;->val$fprogressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
:cond_1b
return-void
.end method
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/order/OrderDetailActivity$1;->onSuccess(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response;)V
return-void
.end method