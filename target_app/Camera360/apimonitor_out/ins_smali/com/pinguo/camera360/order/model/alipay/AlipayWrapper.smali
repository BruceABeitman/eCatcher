.class public Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;
.super Ljava/lang/Object;
.source "AlipayWrapper.java"
.field private static final RQF_PAY:I = 0x1
.field private static final TAG:Ljava/lang/String;
.field private mAlipayResult:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;
.field private mContext:Landroid/app/Activity;
.field private mGsonRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
.field private mHandler:Landroid/os/Handler;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/app/Activity;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$1;-><init>(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;)V
iput-object v0, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mHandler:Landroid/os/Handler;
iput-object p1, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mContext:Landroid/app/Activity;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;)Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mGsonRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;)Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mAlipayResult:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;)Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mContext:Landroid/app/Activity;
return-object v0
.end method
.method static synthetic access$3()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method public cancel()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mGsonRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mGsonRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
invoke-virtual {v0}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;->cancel()V
:cond_9
return-void
.end method
.method public pay(Ljava/lang/String;Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;)V
.registers 9
iput-object p2, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mAlipayResult:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;
iget-object v0, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mGsonRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mGsonRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
invoke-virtual {v0}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;->cancel()V
:cond_b
new-instance v0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;
const/4 v2, 0x1
const-string/jumbo v3, "https://bstore.camera360.com/v1/order/signAlipay"
move-object v1, p0
move-object v4, p1
move-object v5, p2
invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$2;-><init>(Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;ILjava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;)V
iput-object v0, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mGsonRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
iget-object v0, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mGsonRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
invoke-static {}, LvStudio/Android/Camera360/RemoteConstants;->getRetryPolity()Lcom/android/volley/RetryPolicy;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;
iget-object v0, p0, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->mGsonRequest:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
invoke-virtual {v0}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;->execute()V
return-void
.end method