.class Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$2;
.super Lcom/pinguo/Camera360Lib/network/HttpMultipartRequest;
.source "ApiCreateOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->get(Lcom/pinguo/lib/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;

.field private final synthetic val$createResult:Lcom/pinguo/lib/os/AsyncResult;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;Ljava/lang/String;Lcom/pinguo/Camera360Lib/network/MultipartEntity;Lcom/pinguo/lib/os/AsyncResult;)V
    .registers 5

    iput-object p1, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$2;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;

    iput-object p4, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$2;->val$createResult:Lcom/pinguo/lib/os/AsyncResult;

    invoke-direct {p0, p2, p3}, Lcom/pinguo/Camera360Lib/network/HttpMultipartRequest;-><init>(Ljava/lang/String;Lcom/pinguo/Camera360Lib/network/MultipartEntity;)V

    return-void
.end method


# virtual methods
.method protected getParams()Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v8, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$2;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;

    #getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->access$1(Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v4}, LvStudio/Android/Camera360/RemoteConstants;->prepareCommonParams(Landroid/content/Context;Ljava/util/Map;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_14
    iget-object v8, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$2;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;

    #getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->mProductList:Ljava/util/List;
    invoke-static {v8}, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->access$2(Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v2, v8, :cond_c2

    iget-object v8, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$2;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;

    #getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->access$1(Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/pinguo/camera360/order/model/OrderAddress;->create(Landroid/content/Context;)Lcom/pinguo/camera360/order/model/OrderAddress;

    move-result-object v3

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    :try_start_2f
    const-string/jumbo v8, "product"

    invoke-virtual {v1, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "currency"

    const-string/jumbo v9, "CNY"

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "type"

    const-string/jumbo v9, "passport"

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "consignee"

    iget-object v9, v3, Lcom/pinguo/camera360/order/model/OrderAddress;->name:Ljava/lang/String;

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "mobile"

    iget-object v9, v3, Lcom/pinguo/camera360/order/model/OrderAddress;->mobile:Ljava/lang/String;

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "telephone"

    iget-object v9, v3, Lcom/pinguo/camera360/order/model/OrderAddress;->telephone:Ljava/lang/String;

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "country"

    iget-object v8, v3, Lcom/pinguo/camera360/order/model/OrderAddress;->country:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_dd

    iget-object v8, v3, Lcom/pinguo/camera360/order/model/OrderAddress;->country:Ljava/lang/String;

    :goto_70
    invoke-interface {v4, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "province"

    iget-object v9, v3, Lcom/pinguo/camera360/order/model/OrderAddress;->province:Ljava/lang/String;

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "city"

    iget-object v9, v3, Lcom/pinguo/camera360/order/model/OrderAddress;->city:Ljava/lang/String;

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "district"

    iget-object v9, v3, Lcom/pinguo/camera360/order/model/OrderAddress;->area:Ljava/lang/String;

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "address"

    iget-object v9, v3, Lcom/pinguo/camera360/order/model/OrderAddress;->address:Ljava/lang/String;

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_93} :catch_eb

    :goto_93
    iget-object v8, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$2;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;

    #getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;
    invoke-static {v8}, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->access$3(Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;)Lcom/pinguo/camera360/order/model/Coupon$Info;

    move-result-object v8

    if-eqz v8, :cond_b7

    iget-object v8, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$2;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;

    #getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;
    invoke-static {v8}, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->access$3(Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;)Lcom/pinguo/camera360/order/model/Coupon$Info;

    move-result-object v8

    iget-object v8, v8, Lcom/pinguo/camera360/order/model/Coupon$Info;->coupon:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b7

    const-string/jumbo v8, "coupon"

    iget-object v9, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$2;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;

    #getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;
    invoke-static {v9}, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->access$3(Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;)Lcom/pinguo/camera360/order/model/Coupon$Info;

    move-result-object v9

    iget-object v9, v9, Lcom/pinguo/camera360/order/model/Coupon$Info;->coupon:Ljava/lang/String;

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b7
    invoke-static {v4}, Lcom/pinguo/lib/network/NetworkUtils;->getSigByParamMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "sig"

    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :cond_c2
    iget-object v8, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$2;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;

    #getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->mProductList:Ljava/util/List;
    invoke-static {v8}, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->access$2(Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;

    iget-object v8, v5, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->productId:Ljava/lang/String;

    iget v9, v5, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->itemCount:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_14

    :cond_dd
    :try_start_dd
    iget-object v8, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$2;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;

    #getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->access$1(Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;)Landroid/content/Context;

    move-result-object v8

    const v10, 0x7f080396

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e9} :catch_eb

    move-result-object v8

    goto :goto_70

    :catch_eb
    move-exception v0

    invoke-static {}, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->access$0()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_93
.end method

.method protected onErrorResponse(Ljava/lang/Exception;)V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder;->access$0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$2;->val$createResult:Lcom/pinguo/lib/os/AsyncResult;

    invoke-virtual {v0, p1}, Lcom/pinguo/lib/os/AsyncResult;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$2;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method protected onResponse(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$Response;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$Response;

    iget-object v2, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiCreateOrder$2;->val$createResult:Lcom/pinguo/lib/os/AsyncResult;

    invoke-virtual {v2, v1}, Lcom/pinguo/lib/os/AsyncResult;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
