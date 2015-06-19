.class public Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;
.super Lcom/pinguo/lib/network/ApiAsyncTaskBase;
.source "ApiCreateOrder.java"
.field public static final DEFAULT_TIMEOUT_MS:I = 0xea60
.field private static final TAG:Ljava/lang/String;
.field private mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;
.field private mProductList:Ljava/util/List;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/pinguo/camera360/order/model/Coupon$Info;)V
.registers 4
invoke-direct {p0, p1}, Lcom/pinguo/lib/network/ApiAsyncTaskBase;-><init>(Landroid/content/Context;)V
iput-object p2, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->mProductList:Ljava/util/List;
iput-object p3, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;
return-void
.end method
.method static synthetic access$0()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->mContext:Landroid/content/Context;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->mProductList:Ljava/util/List;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;)Lcom/pinguo/camera360/order/model/Coupon$Info;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;
return-object v0
.end method
.method public get(Lcom/pinguo/lib/os/AsyncResult;)V
.registers 13
new-instance v1, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v7
invoke-direct {v1, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
new-instance v4, Lcom/pinguo/Camera360Lib/network/MultipartEntity;
new-instance v7, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$1;
invoke-direct {v7, p0, v1, p1}, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$1;-><init>(Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;Landroid/os/Handler;Lcom/pinguo/lib/os/AsyncResult;)V
invoke-direct {v4, v7}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;-><init>(Lcom/pinguo/Camera360Lib/network/ResponseHandlerInterface;)V
const/4 v2, 0x0
:goto_14
iget-object v7, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->mProductList:Ljava/util/List;
invoke-interface {v7}, Ljava/util/List;->size()I
move-result v7
if-lt v2, v7, :cond_35
new-instance v6, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$2;
const-string/jumbo v7, "https://bstore.camera360.com/v1/order/createMaterial"
invoke-direct {v6, p0, v7, v4, p1}, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$2;-><init>(Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;Ljava/lang/String;Lcom/pinguo/Camera360Lib/network/MultipartEntity;Lcom/pinguo/lib/os/AsyncResult;)V
new-instance v7, Lcom/android/volley/DefaultRetryPolicy;
const v8, 0xea60
const/4 v9, 0x0
const/4 v10, 0x0
invoke-direct {v7, v8, v9, v10}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V
invoke-virtual {v6, v7}, Lcom/pinguo/Camera360Lib/network/HttpMultipartRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;
invoke-virtual {p0, v6}, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->execute(Lcom/pinguo/Camera360Lib/network/HttpRequestBase;)V
:goto_34
return-void
:cond_35
iget-object v7, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->mProductList:Ljava/util/List;
invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
iget-object v0, v5, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->savePath:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v7
if-eqz v7, :cond_51
new-instance v7, Ljava/io/FileNotFoundException;
const-string/jumbo v8, "Empty file path"
invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
invoke-virtual {p1, v7}, Lcom/pinguo/lib/os/AsyncResult;->onError(Ljava/lang/Exception;)V
goto :goto_34
:cond_51
new-instance v3, Ljava/io/File;
invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v7
if-nez v7, :cond_75
new-instance v7, Ljava/io/FileNotFoundException;
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "File not found:"
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
invoke-virtual {p1, v7}, Lcom/pinguo/lib/os/AsyncResult;->onError(Ljava/lang/Exception;)V
goto :goto_34
:cond_75
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "pictures-"
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v8, v5, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->productId:Ljava/lang/String;
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, "[]"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
new-instance v8, Ljava/io/File;
invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
const-string/jumbo v9, "image/jpeg"
invoke-virtual {v4, v7, v8, v9}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
add-int/lit8 v2, v2, 0x1
goto/16 :goto_14
.end method