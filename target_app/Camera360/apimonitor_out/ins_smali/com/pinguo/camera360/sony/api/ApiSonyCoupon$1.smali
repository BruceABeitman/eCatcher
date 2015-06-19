.class  Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$1;
.super Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
.source "ApiSonyCoupon.java"
.field final synthetic this$0:Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;
.field private final synthetic val$result:Lcom/pinguo/lib/os/AsyncResult;
.method constructor <init>(Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;ILjava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V
.registers 5
iput-object p1, p0, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$1;->this$0:Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;
iput-object p4, p0, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
invoke-direct {p0, p2, p3}, Lcom/pinguo/Camera360Lib/network/HttpStringRequest;-><init>(ILjava/lang/String;)V
return-void
.end method
.method protected getParams()Ljava/util/Map;
.registers 5
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iget-object v2, p0, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$1;->this$0:Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;
#getter for: Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;->mContext:Landroid/content/Context;
invoke-static {v2}, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;->access$0(Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;)Landroid/content/Context;
move-result-object v2
invoke-static {v2, v0}, LvStudio/Android/Camera360/RemoteConstants;->prepareCommonParams(Landroid/content/Context;Ljava/util/Map;)V
const-string/jumbo v2, "resourceIds"
iget-object v3, p0, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$1;->this$0:Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;
#getter for: Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;->mResourceId:Ljava/lang/String;
invoke-static {v3}, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;->access$1(Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {v0}, Lcom/pinguo/Camera360Lib/utils/NetworkUtils;->getSigByParamMap(Ljava/util/Map;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "sig"
invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object v0
.end method
.method protected onErrorResponse(Ljava/lang/Exception;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$1;->this$0:Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;
iget-object v1, p0, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
#calls: Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
invoke-static {v0, v1, p1}, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;->access$4(Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
return-void
.end method
.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$1;->onResponse(Ljava/lang/String;)V
return-void
.end method
.method protected onResponse(Ljava/lang/String;)V
.registers 6
iget-object v2, p0, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$1;->this$0:Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;
#calls: Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;->createResponseInstance(Ljava/lang/String;)Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse;
invoke-static {v2, p1}, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;->access$2(Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;Ljava/lang/String;)Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse;
move-result-object v1
iget v2, v1, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse;->status:I
const/16 v3, 0xc8
if-ne v2, v3, :cond_14
iget-object v2, p0, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$1;->this$0:Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;
iget-object v3, p0, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
#calls: Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;->postResponse(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
invoke-static {v2, v3, v1}, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;->access$3(Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
:goto_13
return-void
:cond_14
new-instance v0, Lcom/pinguo/lib/os/Fault;
iget v2, v1, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse;->status:I
iget-object v3, v1, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse;->message:Ljava/lang/String;
invoke-direct {v0, v2, v3}, Lcom/pinguo/lib/os/Fault;-><init>(ILjava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$1;->this$0:Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;
iget-object v3, p0, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
#calls: Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
invoke-static {v2, v3, v0}, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;->access$4(Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
goto :goto_13
.end method