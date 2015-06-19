.class  Lcom/pinguo/camera360/order/model/Order$2;
.super Lcom/pinguo/lib/os/AsyncFutureHandler;
.source "Order.java"
.field final synthetic this$0:Lcom/pinguo/camera360/order/model/Order;
.method constructor <init>(Lcom/pinguo/camera360/order/model/Order;Lcom/pinguo/lib/os/AsyncFuture;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/order/model/Order$2;->this$0:Lcom/pinguo/camera360/order/model/Order;
invoke-direct {p0, p2}, Lcom/pinguo/lib/os/AsyncFutureHandler;-><init>(Lcom/pinguo/lib/os/AsyncFuture;)V
return-void
.end method
.method public adapte(Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;)Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;
.registers 5
iget v0, p1, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;->status:I
const/16 v1, 0xc8
if-ne v0, v1, :cond_7
return-object p1
:cond_7
new-instance v0, Lcom/pinguo/lib/os/Fault;
iget v1, p1, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;->status:I
iget-object v2, p1, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;->message:Ljava/lang/String;
invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/os/Fault;-><init>(ILjava/lang/String;)V
throw v0
.end method
.method public bridge synthetic adapte(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/order/model/Order$2;->adapte(Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;)Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$Response;
move-result-object v0
return-object v0
.end method