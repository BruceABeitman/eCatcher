.class public Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;
.super Lcom/pinguo/lib/network/ApiAsyncTaskBase;
.source "ApiOrderAmount.java"
.field private static final TAG:Ljava/lang/String;
.field private mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
.field private mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;
.field private mProductList:Ljava/util/List;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/pinguo/camera360/order/model/Coupon$Info;Lcom/pinguo/camera360/order/model/OrderAddress;)V
.registers 5
invoke-direct {p0, p1}, Lcom/pinguo/lib/network/ApiAsyncTaskBase;-><init>(Landroid/content/Context;)V
iput-object p2, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->mProductList:Ljava/util/List;
iput-object p3, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;
iput-object p4, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->mContext:Landroid/content/Context;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->mProductList:Ljava/util/List;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;)Lcom/pinguo/camera360/order/model/OrderAddress;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
return-object v0
.end method
.method static synthetic access$3()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;)Lcom/pinguo/camera360/order/model/Coupon$Info;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;
return-object v0
.end method
.method public get(Lcom/pinguo/lib/os/AsyncResult;)V
.registers 5
new-instance v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$1;
const/4 v1, 0x1
const-string/jumbo v2, "https://bstore.camera360.com/v1/order/amount"
invoke-direct {v0, p0, v1, v2, p1}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$1;-><init>(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;ILjava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->execute(Lcom/pinguo/Camera360Lib/network/HttpRequestBase;)V
return-void
.end method