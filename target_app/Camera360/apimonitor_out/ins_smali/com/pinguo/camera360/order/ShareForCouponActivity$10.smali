.class  Lcom/pinguo/camera360/order/ShareForCouponActivity$10;
.super Ljava/lang/Object;
.source "ShareForCouponActivity.java"
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
.method constructor <init>(Lcom/pinguo/camera360/order/ShareForCouponActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$10;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancel(Landroid/content/DialogInterface;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/order/ShareForCouponActivity$10;->this$0:Lcom/pinguo/camera360/order/ShareForCouponActivity;
const/4 v1, 0x0
#setter for: Lcom/pinguo/camera360/order/ShareForCouponActivity;->mLoadingDialogShowing:Z
invoke-static {v0, v1}, Lcom/pinguo/camera360/order/ShareForCouponActivity;->access$11(Lcom/pinguo/camera360/order/ShareForCouponActivity;Z)V
return-void
.end method