.class  Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$1;
.super Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
.source "ApiOrderAmount.java"
.field final synthetic this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;
.field private final synthetic val$result:Lcom/pinguo/lib/os/AsyncResult;
.method constructor <init>(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;ILjava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V
.registers 5
iput-object p1, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$1;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;
iput-object p4, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
invoke-direct {p0, p2, p3}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;-><init>(ILjava/lang/String;)V
return-void
.end method
.method protected getParams()Ljava/util/Map;
.registers 11
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
iget-object v7, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$1;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;
#getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->mContext:Landroid/content/Context;
invoke-static {v7}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->access$0(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;)Landroid/content/Context;
move-result-object v7
invoke-static {v7, v3}, LvStudio/Android/Camera360/RemoteConstants;->prepareCommonParams(Landroid/content/Context;Ljava/util/Map;)V
new-instance v5, Ljava/util/HashMap;
invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
const/4 v2, 0x0
:goto_14
iget-object v7, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$1;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;
#getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->mProductList:Ljava/util/List;
invoke-static {v7}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->access$1(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;)Ljava/util/List;
move-result-object v7
invoke-interface {v7}, Ljava/util/List;->size()I
move-result v7
if-lt v2, v7, :cond_f7
new-instance v1, Lcom/google/gson/Gson;
invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V
:try_start_25
const-string/jumbo v7, "product"
invoke-virtual {v1, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v7, "currency"
const-string/jumbo v8, "CNY"
invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v7, "type"
const-string/jumbo v8, "passport"
invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v7, "consignee"
iget-object v8, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$1;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;
#getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
invoke-static {v8}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->access$2(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;)Lcom/pinguo/camera360/order/model/OrderAddress;
move-result-object v8
iget-object v8, v8, Lcom/pinguo/camera360/order/model/OrderAddress;->name:Ljava/lang/String;
invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v7, "mobile"
iget-object v8, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$1;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;
#getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
invoke-static {v8}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->access$2(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;)Lcom/pinguo/camera360/order/model/OrderAddress;
move-result-object v8
iget-object v8, v8, Lcom/pinguo/camera360/order/model/OrderAddress;->mobile:Ljava/lang/String;
invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v7, "telephone"
iget-object v8, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$1;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;
#getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
invoke-static {v8}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->access$2(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;)Lcom/pinguo/camera360/order/model/OrderAddress;
move-result-object v8
iget-object v8, v8, Lcom/pinguo/camera360/order/model/OrderAddress;->telephone:Ljava/lang/String;
invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v8, "country"
iget-object v7, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$1;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;
#getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
invoke-static {v7}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->access$2(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;)Lcom/pinguo/camera360/order/model/OrderAddress;
move-result-object v7
iget-object v7, v7, Lcom/pinguo/camera360/order/model/OrderAddress;->country:Ljava/lang/String;
invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v7
if-nez v7, :cond_112
iget-object v7, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$1;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;
#getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
invoke-static {v7}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->access$2(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;)Lcom/pinguo/camera360/order/model/OrderAddress;
move-result-object v7
iget-object v7, v7, Lcom/pinguo/camera360/order/model/OrderAddress;->country:Ljava/lang/String;
:goto_84
invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v7, "province"
iget-object v8, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$1;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;
#getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
invoke-static {v8}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->access$2(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;)Lcom/pinguo/camera360/order/model/OrderAddress;
move-result-object v8
iget-object v8, v8, Lcom/pinguo/camera360/order/model/OrderAddress;->province:Ljava/lang/String;
invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v7, "city"
iget-object v8, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$1;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;
#getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
invoke-static {v8}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->access$2(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;)Lcom/pinguo/camera360/order/model/OrderAddress;
move-result-object v8
iget-object v8, v8, Lcom/pinguo/camera360/order/model/OrderAddress;->city:Ljava/lang/String;
invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v7, "district"
iget-object v8, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$1;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;
#getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
invoke-static {v8}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->access$2(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;)Lcom/pinguo/camera360/order/model/OrderAddress;
move-result-object v8
iget-object v8, v8, Lcom/pinguo/camera360/order/model/OrderAddress;->area:Ljava/lang/String;
invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v7, "address"
iget-object v8, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$1;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;
#getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
invoke-static {v8}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->access$2(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;)Lcom/pinguo/camera360/order/model/OrderAddress;
move-result-object v8
iget-object v8, v8, Lcom/pinguo/camera360/order/model/OrderAddress;->address:Ljava/lang/String;
invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_bf
:try_end_bf
.catch Ljava/lang/Exception; {:try_start_25 .. :try_end_bf} :catch_121
iget-object v7, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$1;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;
#getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;
invoke-static {v7}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->access$4(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;)Lcom/pinguo/camera360/order/model/Coupon$Info;
move-result-object v7
if-eqz v7, :cond_e3
iget-object v7, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$1;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;
#getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;
invoke-static {v7}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->access$4(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;)Lcom/pinguo/camera360/order/model/Coupon$Info;
move-result-object v7
iget-object v7, v7, Lcom/pinguo/camera360/order/model/Coupon$Info;->coupon:Ljava/lang/String;
invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v7
if-nez v7, :cond_e3
const-string/jumbo v7, "coupon"
iget-object v8, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$1;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;
#getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;
invoke-static {v8}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->access$4(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;)Lcom/pinguo/camera360/order/model/Coupon$Info;
move-result-object v8
iget-object v8, v8, Lcom/pinguo/camera360/order/model/Coupon$Info;->coupon:Ljava/lang/String;
invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_e3
const-string/jumbo v7, "type"
const-string/jumbo v8, "passport"
invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {v3}, Lcom/pinguo/lib/network/NetworkUtils;->getSigByParamMap(Ljava/util/Map;)Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "sig"
invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object v3
:cond_f7
iget-object v7, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$1;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;
#getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->mProductList:Ljava/util/List;
invoke-static {v7}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->access$1(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;)Ljava/util/List;
move-result-object v7
invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
iget-object v7, v4, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->productId:Ljava/lang/String;
iget v8, v4, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->itemCount:I
invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v8
invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v2, v2, 0x1
goto/16 :goto_14
:try_start_112
:cond_112
iget-object v7, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$1;->this$0:Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;
#getter for: Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->mContext:Landroid/content/Context;
invoke-static {v7}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->access$0(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;)Landroid/content/Context;
move-result-object v7
const v9, 0x7f080396
invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;
:try_end_11e
.catch Ljava/lang/Exception; {:try_start_112 .. :try_end_11e} :catch_121
move-result-object v7
goto/16 :goto_84
:catch_121
move-exception v0
invoke-static {}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount;->access$3()Ljava/lang/String;
move-result-object v7
invoke-static {v7, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_bf
.end method
.method protected onErrorResponse(Ljava/lang/Exception;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
invoke-virtual {v0, p1}, Lcom/pinguo/lib/os/AsyncResult;->onError(Ljava/lang/Exception;)V
return-void
.end method
.method protected onResponse(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$Response;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
invoke-virtual {v0, p1}, Lcom/pinguo/lib/os/AsyncResult;->onSuccess(Ljava/lang/Object;)V
return-void
.end method
.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$Response;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$1;->onResponse(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderAmount$Response;)V
return-void
.end method