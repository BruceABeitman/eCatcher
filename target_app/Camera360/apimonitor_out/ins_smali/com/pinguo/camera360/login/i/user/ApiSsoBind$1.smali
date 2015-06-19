.class  Lcom/pinguo/camera360/login/i/user/ApiSsoBind$1;
.super Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
.source "ApiSsoBind.java"
.field final synthetic this$0:Lcom/pinguo/camera360/login/i/user/ApiSsoBind;
.field private final synthetic val$result:Lcom/pinguo/lib/os/AsyncResult;
.method constructor <init>(Lcom/pinguo/camera360/login/i/user/ApiSsoBind;ILjava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V
.registers 5
iput-object p1, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoBind$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiSsoBind;
iput-object p4, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoBind$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
invoke-direct {p0, p2, p3}, Lcom/pinguo/Camera360Lib/network/HttpStringRequest;-><init>(ILjava/lang/String;)V
return-void
.end method
.method protected getParams()Ljava/util/Map;
.registers 5
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iget-object v2, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoBind$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiSsoBind;
#getter for: Lcom/pinguo/camera360/login/i/user/ApiSsoBind;->mContext:Landroid/content/Context;
invoke-static {v2}, Lcom/pinguo/camera360/login/i/user/ApiSsoBind;->access$0(Lcom/pinguo/camera360/login/i/user/ApiSsoBind;)Landroid/content/Context;
move-result-object v2
invoke-static {v2, v0}, Lcom/pinguo/camera360/login/model/LoginConfig;->prepareCommonParams(Landroid/content/Context;Ljava/util/Map;)V
const-string/jumbo v2, "tokenData"
iget-object v3, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoBind$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiSsoBind;
iget-object v3, v3, Lcom/pinguo/camera360/login/i/user/ApiSsoBind;->mTokenData:Ljava/lang/String;
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v2, "siteCode"
iget-object v3, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoBind$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiSsoBind;
#getter for: Lcom/pinguo/camera360/login/i/user/ApiSsoBind;->mSiteCode:Ljava/lang/String;
invoke-static {v3}, Lcom/pinguo/camera360/login/i/user/ApiSsoBind;->access$1(Lcom/pinguo/camera360/login/i/user/ApiSsoBind;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {v0}, Lcom/pinguo/Camera360Lib/utils/NetworkUtils;->getSigByParamMap(Ljava/util/Map;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "sig"
invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object v0
.end method
.method protected onErrorResponse(Ljava/lang/Exception;)V
.registers 4
invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoBind$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiSsoBind;
iget-object v1, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoBind$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
#calls: Lcom/pinguo/camera360/login/i/user/ApiSsoBind;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
invoke-static {v0, v1, p1}, Lcom/pinguo/camera360/login/i/user/ApiSsoBind;->access$3(Lcom/pinguo/camera360/login/i/user/ApiSsoBind;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
return-void
.end method
.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/login/i/user/ApiSsoBind$1;->onResponse(Ljava/lang/String;)V
return-void
.end method
.method protected onResponse(Ljava/lang/String;)V
.registers 7
:try_start_0
const-string/jumbo v1, "test"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "onresponse:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v1, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoBind$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiSsoBind;
iget-object v2, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoBind$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
new-instance v3, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;
iget-object v4, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoBind$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiSsoBind;
#getter for: Lcom/pinguo/camera360/login/i/user/ApiSsoBind;->mSiteCode:Ljava/lang/String;
invoke-static {v4}, Lcom/pinguo/camera360/login/i/user/ApiSsoBind;->access$1(Lcom/pinguo/camera360/login/i/user/ApiSsoBind;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, p1, v4}, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V
#calls: Lcom/pinguo/camera360/login/i/user/ApiSsoBind;->postResponse(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/login/i/user/ApiSsoBind;->access$2(Lcom/pinguo/camera360/login/i/user/ApiSsoBind;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
:try_end_28
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_28} :catch_29
:goto_28
return-void
:catch_29
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
iget-object v1, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoBind$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiSsoBind;
iget-object v2, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoBind$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
#calls: Lcom/pinguo/camera360/login/i/user/ApiSsoBind;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
invoke-static {v1, v2, v0}, Lcom/pinguo/camera360/login/i/user/ApiSsoBind;->access$3(Lcom/pinguo/camera360/login/i/user/ApiSsoBind;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
goto :goto_28
.end method