.class  Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$1;
.super Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
.source "ApiModifyPassword.java"
.field final synthetic this$0:Lcom/pinguo/camera360/login/i/user/ApiModifyPassword;
.field private final synthetic val$md5_password:Ljava/lang/String;
.field private final synthetic val$result:Lcom/pinguo/lib/os/AsyncResult;
.field private final synthetic val$url:Ljava/lang/String;
.method constructor <init>(Lcom/pinguo/camera360/login/i/user/ApiModifyPassword;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V
.registers 7
iput-object p1, p0, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiModifyPassword;
iput-object p4, p0, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$1;->val$md5_password:Ljava/lang/String;
iput-object p5, p0, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$1;->val$url:Ljava/lang/String;
iput-object p6, p0, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
invoke-direct {p0, p2, p3}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;-><init>(ILjava/lang/String;)V
return-void
.end method
.method protected getParams()Ljava/util/Map;
.registers 7
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
iget-object v3, p0, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiModifyPassword;
#getter for: Lcom/pinguo/camera360/login/i/user/ApiModifyPassword;->mContext:Landroid/content/Context;
invoke-static {v3}, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword;->access$0(Lcom/pinguo/camera360/login/i/user/ApiModifyPassword;)Landroid/content/Context;
move-result-object v3
invoke-static {v3, v1}, Lcom/pinguo/camera360/login/model/LoginConfig;->prepareCommonParams(Landroid/content/Context;Ljava/util/Map;)V
const-string/jumbo v3, "password"
iget-object v4, p0, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$1;->val$md5_password:Ljava/lang/String;
invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v3, "userId"
iget-object v4, p0, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiModifyPassword;
#getter for: Lcom/pinguo/camera360/login/i/user/ApiModifyPassword;->mUserId:Ljava/lang/String;
invoke-static {v4}, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword;->access$1(Lcom/pinguo/camera360/login/i/user/ApiModifyPassword;)Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v3, "token"
iget-object v4, p0, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiModifyPassword;
#getter for: Lcom/pinguo/camera360/login/i/user/ApiModifyPassword;->mToken:Ljava/lang/String;
invoke-static {v4}, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword;->access$2(Lcom/pinguo/camera360/login/i/user/ApiModifyPassword;)Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {v1}, Lcom/pinguo/Camera360Lib/utils/NetworkUtils;->getSigByParamMap(Ljava/util/Map;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "sig"
invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_start_40
const-string/jumbo v3, "test"
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "url:"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v5, p0, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$1;->val$url:Ljava/lang/String;
invoke-static {v5, v1}, Lcom/pinguo/lib/network/HttpUtils;->getUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:try_end_5c
.catch Ljava/io/UnsupportedEncodingException; {:try_start_40 .. :try_end_5c} :catch_5d
:goto_5c
return-object v1
:catch_5d
move-exception v0
invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
goto :goto_5c
.end method
.method protected onErrorResponse(Ljava/lang/Exception;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiModifyPassword;
iget-object v1, p0, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
#calls: Lcom/pinguo/camera360/login/i/user/ApiModifyPassword;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
invoke-static {v0, v1, p1}, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword;->access$4(Lcom/pinguo/camera360/login/i/user/ApiModifyPassword;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
return-void
.end method
.method protected onResponse(Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$Response;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiModifyPassword;
iget-object v1, p0, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
#calls: Lcom/pinguo/camera360/login/i/user/ApiModifyPassword;->postResponse(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
invoke-static {v0, v1, p1}, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword;->access$3(Lcom/pinguo/camera360/login/i/user/ApiModifyPassword;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
return-void
.end method
.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$Response;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$1;->onResponse(Lcom/pinguo/camera360/login/i/user/ApiModifyPassword$Response;)V
return-void
.end method