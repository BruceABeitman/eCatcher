.class  Lcom/pinguo/camera360/login/model/QQLogin$1;
.super Ljava/lang/Object;
.source "QQLogin.java"
.implements Lcom/pinguo/camera360/login/model/QQSso$IQQSSOLoginCallback;
.field final synthetic this$0:Lcom/pinguo/camera360/login/model/QQLogin;
.field private final synthetic val$result:Lcom/pinguo/lib/os/AsyncResult;
.method constructor <init>(Lcom/pinguo/camera360/login/model/QQLogin;Lcom/pinguo/lib/os/AsyncResult;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/login/model/QQLogin$1;->this$0:Lcom/pinguo/camera360/login/model/QQLogin;
iput-object p2, p0, Lcom/pinguo/camera360/login/model/QQLogin$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancelled()V
.registers 3
const-string/jumbo v0, "test"
const-string/jumbo v1, "sso cancel"
invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public onFailed(Ljava/lang/String;)V
.registers 5
const-string/jumbo v0, "test"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "sso fail msg="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/pinguo/camera360/login/model/QQLogin$1;->this$0:Lcom/pinguo/camera360/login/model/QQLogin;
const-string/jumbo v1, "qzone"
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/QQLogin;->startWebViewLogin(Ljava/lang/String;)V
return-void
.end method
.method public onSuccessed(Ljava/lang/String;)V
.registers 5
new-instance v0, Lcom/pinguo/camera360/login/model/QQSsoResponse;
invoke-direct {v0}, Lcom/pinguo/camera360/login/model/QQSsoResponse;-><init>()V
const/16 v1, 0xc8
iput v1, v0, Lcom/pinguo/camera360/login/model/QQSsoResponse;->status:I
iput-object p1, v0, Lcom/pinguo/camera360/login/model/QQSsoResponse;->message:Ljava/lang/String;
iget-object v1, p0, Lcom/pinguo/camera360/login/model/QQLogin$1;->this$0:Lcom/pinguo/camera360/login/model/QQLogin;
iget-object v2, p0, Lcom/pinguo/camera360/login/model/QQLogin$1;->val$result:Lcom/pinguo/lib/os/AsyncResult;
#calls: Lcom/pinguo/camera360/login/model/QQLogin;->postResponse(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
invoke-static {v1, v2, v0}, Lcom/pinguo/camera360/login/model/QQLogin;->access$2(Lcom/pinguo/camera360/login/model/QQLogin;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
return-void
.end method