.class  Lcom/pinguo/camera360/order/ShareForCouponActivity$2;
.super Ljava/lang/Object;
.source "ShareForCouponActivity.java"
.implements Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
.field final synthetic this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
.method constructor <init>(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$2;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$2;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#calls: Lcom/pinguo/camera360/order/ShareForCouponActivity;->cancelProgressDialog()V
invoke-static {v0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$1(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$2;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mNetworkIV:Landroid/widget/ImageView;
invoke-static {v0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$2(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$2;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mNetworkView:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$3(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
.registers 6
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$2;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#calls: Lcom/pinguo/camera360/order/ShareForCouponActivity;->cancelProgressDialog()V
invoke-static {v0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$1(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$2;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mNetworkIV:Landroid/widget/ImageView;
invoke-static {v0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$2(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$2;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mNetworkView:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$3(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$2;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareBtn:Landroid/widget/Button;
invoke-static {v0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$0(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Landroid/widget/Button;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
return-void
.end method
.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
.registers 6
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$2;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#calls: Lcom/pinguo/camera360/order/ShareForCouponActivity;->cancelProgressDialog()V
invoke-static {v0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$1(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$2;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mNetworkIV:Landroid/widget/ImageView;
invoke-static {v0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$2(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$2;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mNetworkView:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$3(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$2;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareBtn:Landroid/widget/Button;
invoke-static {v0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$0(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Landroid/widget/Button;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
return-void
.end method