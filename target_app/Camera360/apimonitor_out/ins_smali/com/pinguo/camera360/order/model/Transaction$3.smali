.class  Lcom/pinguo/camera360/order/model/Transaction$3;
.super Lcom/pinguo/lib/os/AsyncFutureAdapter;
.source "Transaction.java"
.field final synthetic this$0:Lcom/pinguo/camera360/order/model/Transaction;
.method constructor <init>(Lcom/pinguo/camera360/order/model/Transaction;Lcom/pinguo/lib/os/AsyncFuture;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/order/model/Transaction$3;->this$0:Lcom/pinguo/camera360/order/model/Transaction;
invoke-direct {p0, p2}, Lcom/pinguo/lib/os/AsyncFutureAdapter;-><init>(Lcom/pinguo/lib/os/AsyncFuture;)V
return-void
.end method
.method public adapte(Lcom/pinguo/camera360/shop/model/api/BaseResponse;)Ljava/lang/Integer;
.registers 5
iget v0, p1, Lcom/pinguo/camera360/shop/model/api/BaseResponse;->status:I
const/16 v1, 0xc8
if-ne v0, v1, :cond_b
iget-object v0, p1, Lcom/pinguo/camera360/shop/model/api/BaseResponse;->data:Ljava/lang/Object;
check-cast v0, Ljava/lang/Integer;
return-object v0
:cond_b
new-instance v0, Lcom/pinguo/lib/os/Fault;
iget v1, p1, Lcom/pinguo/camera360/shop/model/api/BaseResponse;->status:I
iget-object v2, p1, Lcom/pinguo/camera360/shop/model/api/BaseResponse;->message:Ljava/lang/String;
invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/os/Fault;-><init>(ILjava/lang/String;)V
throw v0
.end method
.method public bridge synthetic adapte(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, Lcom/pinguo/camera360/shop/model/api/BaseResponse;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/order/model/Transaction$3;->adapte(Lcom/pinguo/camera360/shop/model/api/BaseResponse;)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method