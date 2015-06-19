.class  Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$7;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "IDPhotoMakeListFragment.java"
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$7;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V
return-void
.end method
.method public onError(Ljava/lang/Exception;)V
.registers 6
const/4 v3, 0x0
const-string/jumbo v0, "IDPhotoMakeListFragment"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "e: error: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$7;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$24(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$7;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressLay:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$27(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$7;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mRetryBtn:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$25(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$7;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$24(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v0
if-eqz v0, :cond_45
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$7;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$24(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
:cond_45
instance-of v0, p1, Lcom/pinguo/lib/os/Fault;
if-eqz v0, :cond_53
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$7;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mRetryLay:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$26(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
:goto_52
return-void
:cond_53
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$7;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
#calls: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->refreshPriceData(I)V
invoke-static {v0, v3}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$28(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;I)V
goto :goto_52
.end method
.method public onSuccess(Ljava/lang/Integer;)V
.registers 5
const/16 v2, 0x8
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$7;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$24(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
const-string/jumbo v0, "IDPhotoMakeListFragment"
const-string/jumbo v1, "onSuccess "
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$7;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mRetryBtn:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$25(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$7;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mRetryLay:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$26(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$7;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressLay:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$27(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$7;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$24(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v0
if-eqz v0, :cond_40
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$7;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$24(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
:cond_40
invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_88
const-string/jumbo v0, "IDPhotoMakeListFragment"
const-string/jumbo v1, "STATUS_USED "
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$7;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mList:Landroid/widget/ListView;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$12(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$7;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mShareFooter:Landroid/view/View;
invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$13(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z
invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/Transaction;->getOrder()Lcom/pinguo/camera360/order/model/Order;
move-result-object v0
iget-object v0, v0, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
iget-object v0, v0, Lcom/pinguo/camera360/order/model/Order$Info;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;
if-nez v0, :cond_74
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$7;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
const/4 v1, 0x0
#calls: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->refreshPriceData(I)V
invoke-static {v0, v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$28(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;I)V
:goto_73
return-void
:cond_74
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$7;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/order/model/Transaction;->getOrder()Lcom/pinguo/camera360/order/model/Order;
move-result-object v1
iget-object v1, v1, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
iget-object v1, v1, Lcom/pinguo/camera360/order/model/Order$Info;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;
iget v1, v1, Lcom/pinguo/camera360/order/model/Coupon$Info;->amount:I
#calls: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->refreshPriceData(I)V
invoke-static {v0, v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$28(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;I)V
goto :goto_73
:cond_88
invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/Transaction;->getShareCoupon()Lcom/pinguo/camera360/order/model/Coupon$Info;
move-result-object v0
if-eqz v0, :cond_a1
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$7;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mList:Landroid/widget/ListView;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$12(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$7;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mShareFooter:Landroid/view/View;
invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$13(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z
:cond_a1
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$7;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
#calls: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->refreashBannerData()V
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$29(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)V
goto :goto_73
.end method
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Integer;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$7;->onSuccess(Ljava/lang/Integer;)V
return-void
.end method