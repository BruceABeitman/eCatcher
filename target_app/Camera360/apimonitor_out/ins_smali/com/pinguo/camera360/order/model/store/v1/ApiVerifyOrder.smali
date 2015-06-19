.class public Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder;
.super Lcom/pinguo/lib/network/ApiAsyncTaskBase;
.source "ApiVerifyOrder.java"
.field private mOrderId:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/lib/network/ApiAsyncTaskBase;-><init>(Landroid/content/Context;)V
iput-object p2, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder;->mOrderId:Ljava/lang/String;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder;->mContext:Landroid/content/Context;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder;->mOrderId:Ljava/lang/String;
return-object v0
.end method
.method public get(Lcom/pinguo/lib/os/AsyncResult;)V
.registers 5
new-instance v0, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$1;
const/4 v1, 0x1
const-string/jumbo v2, "https://bstore.camera360.com/v1/order/paysucc"
invoke-direct {v0, p0, v1, v2, p1}, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder$1;-><init>(Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder;ILjava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/order/model/store/v1/ApiVerifyOrder;->execute(Lcom/pinguo/Camera360Lib/network/HttpRequestBase;)V
return-void
.end method