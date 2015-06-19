.class  Lcom/pinguo/camera360/order/ShareForCouponActivity$9;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "ShareForCouponActivity.java"
.field final synthetic this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
.method constructor <init>(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$9;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V
return-void
.end method
.method public onError(Ljava/lang/Exception;)V
.registers 6
const v2, 0x7f0803a2
const/4 v3, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$9;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#calls: Lcom/pinguo/camera360/order/ShareForCouponActivity;->cancelProgressDialog()V
invoke-static {v1}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$1(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V
instance-of v1, p1, Lcom/pinguo/lib/os/Fault;
if-eqz v1, :cond_49
check-cast p1, Lcom/pinguo/lib/os/Fault;
invoke-virtual {p1}, Lcom/pinguo/lib/os/Fault;->getStatus()I
move-result v0
const/16 v1, 0x280d
if-ne v0, v1, :cond_2e
iget-object v1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$9;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
const v2, 0x7f0803a0
invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
:goto_23
iget-object v1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$9;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mShareBtn:Landroid/widget/Button;
invoke-static {v1}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$0(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Landroid/widget/Button;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V
return-void
:cond_2e
const/16 v1, 0x280e
if-ne v0, v1, :cond_3f
iget-object v1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$9;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
const v2, 0x7f0803a1
invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
goto :goto_23
:cond_3f
iget-object v1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$9;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
goto :goto_23
:cond_49
iget-object v1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$9;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
goto :goto_23
.end method
.method public onSuccess(Lcom/pinguo/camera360/order/model/Coupon$Info;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$9;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#calls: Lcom/pinguo/camera360/order/ShareForCouponActivity;->cancelProgressDialog()V
invoke-static {v0}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$1(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$9;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#setter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;
invoke-static {v0, p1}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$8(Lcom/pinguo/camera360/order/ShareForCouponActivity;Lcom/pinguo/camera360/order/model/Coupon$Info;)V
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$9;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
iget-object v1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$9;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
#getter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;
invoke-static {v1}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$9(Lcom/pinguo/camera360/order/ShareForCouponActivity;)Lcom/pinguo/camera360/order/model/Coupon$Info;
move-result-object v1
#calls: Lcom/pinguo/camera360/order/ShareForCouponActivity;->onResult(Lcom/pinguo/camera360/order/model/Coupon$Info;)V
invoke-static {v0, v1}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$10(Lcom/pinguo/camera360/order/ShareForCouponActivity;Lcom/pinguo/camera360/order/model/Coupon$Info;)V
return-void
.end method
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/pinguo/camera360/order/model/Coupon$Info;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/order/ShareForCouponActivity$9;->onSuccess(Lcom/pinguo/camera360/order/model/Coupon$Info;)V
return-void
.end method