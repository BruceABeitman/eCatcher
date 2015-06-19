.class  Lcom/pinguo/camera360/order/model/Transaction$2;
.super Lcom/pinguo/lib/os/AsyncFutureAdapter;
.source "Transaction.java"
.field final synthetic this$0:Lcom/pinguo/camera360/order/model/Transaction;
.method constructor <init>(Lcom/pinguo/camera360/order/model/Transaction;Lcom/pinguo/lib/os/AsyncFuture;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/order/model/Transaction$2;->this$0:Lcom/pinguo/camera360/order/model/Transaction;
invoke-direct {p0, p2}, Lcom/pinguo/lib/os/AsyncFutureAdapter;-><init>(Lcom/pinguo/lib/os/AsyncFuture;)V
return-void
.end method
.method public adapte(Lcom/pinguo/camera360/order/model/store/v1/CouponInfoResponse;)Lcom/pinguo/camera360/order/model/Coupon$Info;
.registers 6
iget v1, p1, Lcom/pinguo/camera360/order/model/store/v1/CouponInfoResponse;->status:I
const/16 v2, 0xc8
if-ne v1, v2, :cond_49
new-instance v0, Lcom/pinguo/camera360/order/model/CachedCoupon$Info;
invoke-direct {v0}, Lcom/pinguo/camera360/order/model/CachedCoupon$Info;-><init>()V
iget-object v1, p1, Lcom/pinguo/camera360/order/model/store/v1/CouponInfoResponse;->data:Ljava/lang/Object;
check-cast v1, Lcom/pinguo/camera360/order/model/Coupon$Info;
iput-object v1, v0, Lcom/pinguo/camera360/order/model/CachedCoupon$Info;->data:Lcom/pinguo/camera360/order/model/Coupon$Info;
new-instance v1, Lcom/pinguo/camera360/order/model/CachedCoupon;
iget-object v2, p0, Lcom/pinguo/camera360/order/model/Transaction$2;->this$0:Lcom/pinguo/camera360/order/model/Transaction;
#getter for: Lcom/pinguo/camera360/order/model/Transaction;->mContext:Landroid/content/Context;
invoke-static {v2}, Lcom/pinguo/camera360/order/model/Transaction;->access$0(Lcom/pinguo/camera360/order/model/Transaction;)Landroid/content/Context;
move-result-object v2
invoke-direct {v1, v2, v0}, Lcom/pinguo/camera360/order/model/CachedCoupon;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/order/model/CachedCoupon$Info;)V
invoke-virtual {v1}, Lcom/pinguo/camera360/order/model/CachedCoupon;->save()V
iget-object v1, p0, Lcom/pinguo/camera360/order/model/Transaction$2;->this$0:Lcom/pinguo/camera360/order/model/Transaction;
#getter for: Lcom/pinguo/camera360/order/model/Transaction;->mOrder:Lcom/pinguo/camera360/order/model/Order;
invoke-static {v1}, Lcom/pinguo/camera360/order/model/Transaction;->access$1(Lcom/pinguo/camera360/order/model/Transaction;)Lcom/pinguo/camera360/order/model/Order;
move-result-object v1
if-eqz v1, :cond_35
iget-object v1, p0, Lcom/pinguo/camera360/order/model/Transaction$2;->this$0:Lcom/pinguo/camera360/order/model/Transaction;
#getter for: Lcom/pinguo/camera360/order/model/Transaction;->mOrder:Lcom/pinguo/camera360/order/model/Order;
invoke-static {v1}, Lcom/pinguo/camera360/order/model/Transaction;->access$1(Lcom/pinguo/camera360/order/model/Transaction;)Lcom/pinguo/camera360/order/model/Order;
move-result-object v1
iget-object v2, v1, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
iget-object v1, p1, Lcom/pinguo/camera360/order/model/store/v1/CouponInfoResponse;->data:Ljava/lang/Object;
check-cast v1, Lcom/pinguo/camera360/order/model/Coupon$Info;
iput-object v1, v2, Lcom/pinguo/camera360/order/model/Order$Info;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;
:cond_35
iget-object v1, p0, Lcom/pinguo/camera360/order/model/Transaction$2;->this$0:Lcom/pinguo/camera360/order/model/Transaction;
const/4 v2, 0x2
#setter for: Lcom/pinguo/camera360/order/model/Transaction;->mCouponType:I
invoke-static {v1, v2}, Lcom/pinguo/camera360/order/model/Transaction;->access$2(Lcom/pinguo/camera360/order/model/Transaction;I)V
iget-object v2, p0, Lcom/pinguo/camera360/order/model/Transaction$2;->this$0:Lcom/pinguo/camera360/order/model/Transaction;
iget-object v1, p1, Lcom/pinguo/camera360/order/model/store/v1/CouponInfoResponse;->data:Ljava/lang/Object;
check-cast v1, Lcom/pinguo/camera360/order/model/Coupon$Info;
#setter for: Lcom/pinguo/camera360/order/model/Transaction;->mShareCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;
invoke-static {v2, v1}, Lcom/pinguo/camera360/order/model/Transaction;->access$3(Lcom/pinguo/camera360/order/model/Transaction;Lcom/pinguo/camera360/order/model/Coupon$Info;)V
iget-object v1, p1, Lcom/pinguo/camera360/order/model/store/v1/CouponInfoResponse;->data:Ljava/lang/Object;
check-cast v1, Lcom/pinguo/camera360/order/model/Coupon$Info;
return-object v1
:cond_49
new-instance v1, Lcom/pinguo/lib/os/Fault;
iget v2, p1, Lcom/pinguo/camera360/order/model/store/v1/CouponInfoResponse;->status:I
iget-object v3, p1, Lcom/pinguo/camera360/order/model/store/v1/CouponInfoResponse;->message:Ljava/lang/String;
invoke-direct {v1, v2, v3}, Lcom/pinguo/lib/os/Fault;-><init>(ILjava/lang/String;)V
throw v1
.end method
.method public bridge synthetic adapte(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, Lcom/pinguo/camera360/order/model/store/v1/CouponInfoResponse;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/order/model/Transaction$2;->adapte(Lcom/pinguo/camera360/order/model/store/v1/CouponInfoResponse;)Lcom/pinguo/camera360/order/model/Coupon$Info;
move-result-object v0
return-object v0
.end method