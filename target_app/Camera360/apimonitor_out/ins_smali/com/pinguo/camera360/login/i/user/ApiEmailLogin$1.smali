.class  Lcom/pinguo/camera360/login/i/user/ApiEmailLogin$1;
.super Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
.source "ApiEmailLogin.java"
.field final synthetic this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;
.field private final synthetic val$md5_password:Ljava/lang/String;
.field private final synthetic val$result:Lcom/pinguo/lib/os/AsyncResult;
.field private final synthetic val$url:Ljava/lang/String;
.method constructor <init>(Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V
.registers 7
iput-object p1, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;
iput-object p4, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin$1;->val$md5_password:Ljava/lang/String;
iput-object p5, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin$1;->val$url:Ljava/lang/String;
iput-object p6, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
invoke-direct {p0, p2, p3}, Lcom/pinguo/Camera360Lib/network/HttpStringRequest;-><init>(ILjava/lang/String;)V
return-void
.end method
.method protected getParams()Ljava/util/Map;
.registers 7
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
iget-object v3, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;
#getter for: Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;->mContext:Landroid/content/Context;
invoke-static {v3}, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;->access$0(Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;)Landroid/content/Context;
move-result-object v3
invoke-static {v3, v1}, Lcom/pinguo/camera360/login/model/LoginConfig;->prepareCommonParams(Landroid/content/Context;Ljava/util/Map;)V
const-string/jumbo v3, "email"
iget-object v4, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;
#getter for: Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;->mEmail:Ljava/lang/String;
invoke-static {v4}, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;->access$1(Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;)Ljava/lang/String;
move-result-object v4
invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v3, "password"
iget-object v4, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin$1;->val$md5_password:Ljava/lang/String;
invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {v1}, Lcom/pinguo/Camera360Lib/utils/NetworkUtils;->getSigByParamMap(Ljava/util/Map;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "sig"
invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_start_2c
const-string/jumbo v3, "test"
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "request url:"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v5, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin$1;->val$url:Ljava/lang/String;
invoke-static {v5, v1}, Lcom/pinguo/lib/network/HttpUtils;->getUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:try_end_48
.catch Ljava/io/UnsupportedEncodingException; {:try_start_2c .. :try_end_48} :catch_49
:goto_48
return-object v1
:catch_49
move-exception v0
invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
goto :goto_48
.end method
.method protected onErrorResponse(Ljava/lang/Exception;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;
iget-object v1, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
#calls: Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
invoke-static {v0, v1, p1}, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;->access$3(Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
return-void
.end method
.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin$1;->onResponse(Ljava/lang/String;)V
return-void
.end method
.method protected onResponse(Ljava/lang/String;)V
.registers 7
:try_start_0
const-string/jumbo v1, "test"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "response:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v1, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;
iget-object v2, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
new-instance v3, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;
const-string/jumbo v4, "email"
invoke-direct {v3, p1, v4}, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V
#calls: Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;->postResponse(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;->access$2(Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
:goto_25
:try_end_25
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_25} :catch_26
return-void
:catch_26
move-exception v0
iget-object v1, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;
iget-object v2, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
#calls: Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
invoke-static {v1, v2, v0}, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;->access$3(Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
goto :goto_25
.end method