.class  Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$1;
.super Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
.source "ApiEmailCheck.java"
.field final synthetic this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;
.field private final synthetic val$result:Lcom/pinguo/lib/os/AsyncResult;
.method constructor <init>(Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;ILjava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V
.registers 5
iput-object p1, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;
iput-object p4, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
invoke-direct {p0, p2, p3}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;-><init>(ILjava/lang/String;)V
return-void
.end method
.method protected getParams()Ljava/util/Map;
.registers 5
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iget-object v2, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;
#getter for: Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;->mContext:Landroid/content/Context;
invoke-static {v2}, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;->access$0(Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;)Landroid/content/Context;
move-result-object v2
invoke-static {v2, v0}, Lcom/pinguo/camera360/login/model/LoginConfig;->prepareCommonParams(Landroid/content/Context;Ljava/util/Map;)V
const-string/jumbo v2, "email"
iget-object v3, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;
#getter for: Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;->mEmail:Ljava/lang/String;
invoke-static {v3}, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;->access$1(Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;)Ljava/lang/String;
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
iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;
iget-object v1, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
#calls: Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
invoke-static {v0, v1, p1}, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;->access$3(Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
return-void
.end method
.method protected onResponse(Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$Response;)V
.registers 5
:try_start_0
iget-object v1, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$1;->this$0:Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;
iget-object v2, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
#calls: Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;->postResponse(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
invoke-static {v1, v2, p1}, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;->access$2(Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
:goto_7
:try_end_7
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8
return-void
:catch_8
move-exception v0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$1;->onErrorResponse(Ljava/lang/Exception;)V
goto :goto_7
.end method
.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$Response;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$1;->onResponse(Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$Response;)V
return-void
.end method