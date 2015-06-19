.class  Lcom/pinguo/camera360/order/model/Order$1;
.super Lcom/pinguo/lib/os/AsyncFutureAdapter;
.source "Order.java"
.field final synthetic this$0:Lcom/pinguo/camera360/order/model/Order;
.method constructor <init>(Lcom/pinguo/camera360/order/model/Order;Lcom/pinguo/lib/os/AsyncFuture;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/order/model/Order$1;->this$0:Lcom/pinguo/camera360/order/model/Order;
invoke-direct {p0, p2}, Lcom/pinguo/lib/os/AsyncFutureAdapter;-><init>(Lcom/pinguo/lib/os/AsyncFuture;)V
return-void
.end method
.method public adapte(Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$Response;)Lcom/pinguo/camera360/order/model/Order$Info;
.registers 5
iget v0, p1, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$Response;->status:I
const/16 v1, 0xc8
if-ne v0, v1, :cond_23
iget-object v0, p0, Lcom/pinguo/camera360/order/model/Order$1;->this$0:Lcom/pinguo/camera360/order/model/Order;
iget-object v1, v0, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
iget-object v0, p1, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$Response;->data:Ljava/lang/Object;
check-cast v0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$Response$Data;
iget-object v0, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$Response$Data;->oid:Ljava/lang/String;
iput-object v0, v1, Lcom/pinguo/camera360/order/model/Order$Info;->mOrderId:Ljava/lang/String;
iget-object v0, p0, Lcom/pinguo/camera360/order/model/Order$1;->this$0:Lcom/pinguo/camera360/order/model/Order;
iget-object v1, v0, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
iget-object v0, p1, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$Response;->data:Ljava/lang/Object;
check-cast v0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$Response$Data;
iget v0, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$Response$Data;->status:I
iput v0, v1, Lcom/pinguo/camera360/order/model/Order$Info;->mStatus:I
iget-object v0, p0, Lcom/pinguo/camera360/order/model/Order$1;->this$0:Lcom/pinguo/camera360/order/model/Order;
iget-object v0, v0, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
return-object v0
:cond_23
new-instance v0, Lcom/pinguo/lib/os/Fault;
iget v1, p1, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$Response;->status:I
iget-object v2, p1, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$Response;->message:Ljava/lang/String;
invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/os/Fault;-><init>(ILjava/lang/String;)V
throw v0
.end method
.method public bridge synthetic adapte(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$Response;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/order/model/Order$1;->adapte(Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$Response;)Lcom/pinguo/camera360/order/model/Order$Info;
move-result-object v0
return-object v0
.end method