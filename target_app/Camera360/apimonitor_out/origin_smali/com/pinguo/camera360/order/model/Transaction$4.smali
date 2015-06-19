.class Lcom/pinguo/camera360/order/model/Transaction$4;
.super Lcom/pinguo/lib/os/AsyncFutureAdapter;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/model/Transaction;->createOtherCoupon(Ljava/lang/String;)Lcom/pinguo/lib/os/AsyncFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/lib/os/AsyncFutureAdapter",
        "<",
        "Lcom/pinguo/camera360/order/model/Coupon$Info;",
        "Lcom/pinguo/camera360/order/model/store/v1/CouponInfoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/order/model/Transaction;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/model/Transaction;Lcom/pinguo/lib/os/AsyncFuture;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/order/model/Transaction$4;->this$0:Lcom/pinguo/camera360/order/model/Transaction;

    invoke-direct {p0, p2}, Lcom/pinguo/lib/os/AsyncFutureAdapter;-><init>(Lcom/pinguo/lib/os/AsyncFuture;)V

    return-void
.end method


# virtual methods
.method public adapte(Lcom/pinguo/camera360/order/model/store/v1/CouponInfoResponse;)Lcom/pinguo/camera360/order/model/Coupon$Info;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget v0, p1, Lcom/pinguo/camera360/order/model/store/v1/CouponInfoResponse;->status:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_32

    iget-object v1, p0, Lcom/pinguo/camera360/order/model/Transaction$4;->this$0:Lcom/pinguo/camera360/order/model/Transaction;

    iget-object v0, p1, Lcom/pinguo/camera360/order/model/store/v1/CouponInfoResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/pinguo/camera360/order/model/Coupon$Info;

    #setter for: Lcom/pinguo/camera360/order/model/Transaction;->mOtherCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;
    invoke-static {v1, v0}, Lcom/pinguo/camera360/order/model/Transaction;->access$4(Lcom/pinguo/camera360/order/model/Transaction;Lcom/pinguo/camera360/order/model/Coupon$Info;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/Transaction$4;->this$0:Lcom/pinguo/camera360/order/model/Transaction;

    #getter for: Lcom/pinguo/camera360/order/model/Transaction;->mOrder:Lcom/pinguo/camera360/order/model/Order;
    invoke-static {v0}, Lcom/pinguo/camera360/order/model/Transaction;->access$1(Lcom/pinguo/camera360/order/model/Transaction;)Lcom/pinguo/camera360/order/model/Order;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/Transaction$4;->this$0:Lcom/pinguo/camera360/order/model/Transaction;

    #getter for: Lcom/pinguo/camera360/order/model/Transaction;->mOrder:Lcom/pinguo/camera360/order/model/Order;
    invoke-static {v0}, Lcom/pinguo/camera360/order/model/Transaction;->access$1(Lcom/pinguo/camera360/order/model/Transaction;)Lcom/pinguo/camera360/order/model/Order;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;

    iget-object v1, p0, Lcom/pinguo/camera360/order/model/Transaction$4;->this$0:Lcom/pinguo/camera360/order/model/Transaction;

    #getter for: Lcom/pinguo/camera360/order/model/Transaction;->mOtherCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;
    invoke-static {v1}, Lcom/pinguo/camera360/order/model/Transaction;->access$5(Lcom/pinguo/camera360/order/model/Transaction;)Lcom/pinguo/camera360/order/model/Coupon$Info;

    move-result-object v1

    iput-object v1, v0, Lcom/pinguo/camera360/order/model/Order$Info;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;

    :cond_27
    iget-object v0, p0, Lcom/pinguo/camera360/order/model/Transaction$4;->this$0:Lcom/pinguo/camera360/order/model/Transaction;

    const/4 v1, 0x3

    #setter for: Lcom/pinguo/camera360/order/model/Transaction;->mCouponType:I
    invoke-static {v0, v1}, Lcom/pinguo/camera360/order/model/Transaction;->access$2(Lcom/pinguo/camera360/order/model/Transaction;I)V

    iget-object v0, p1, Lcom/pinguo/camera360/order/model/store/v1/CouponInfoResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/pinguo/camera360/order/model/Coupon$Info;

    return-object v0

    :cond_32
    new-instance v0, Lcom/pinguo/lib/os/Fault;

    iget v1, p1, Lcom/pinguo/camera360/order/model/store/v1/CouponInfoResponse;->status:I

    iget-object v2, p1, Lcom/pinguo/camera360/order/model/store/v1/CouponInfoResponse;->message:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/os/Fault;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic adapte(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/pinguo/camera360/order/model/store/v1/CouponInfoResponse;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/order/model/Transaction$4;->adapte(Lcom/pinguo/camera360/order/model/store/v1/CouponInfoResponse;)Lcom/pinguo/camera360/order/model/Coupon$Info;

    move-result-object v0

    return-object v0
.end method
