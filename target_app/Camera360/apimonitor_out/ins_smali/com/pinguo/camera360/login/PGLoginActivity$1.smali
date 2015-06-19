.class  Lcom/pinguo/camera360/login/PGLoginActivity$1;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "PGLoginActivity.java"
.field final synthetic this$0:Lcom/pinguo/camera360/login/PGLoginActivity;
.method constructor <init>(Lcom/pinguo/camera360/login/PGLoginActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/PGLoginActivity$1;->this$0:Lcom/pinguo/camera360/login/PGLoginActivity;
invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V
return-void
.end method
.method public onError(Ljava/lang/Exception;)V
.registers 2
return-void
.end method
.method public onSuccess(Lcom/pinguo/camera360/login/model/QQSsoResponse;)V
.registers 5
iget-object v0, p1, Lcom/pinguo/camera360/login/model/QQSsoResponse;->message:Ljava/lang/String;
iget-object v1, p0, Lcom/pinguo/camera360/login/PGLoginActivity$1;->this$0:Lcom/pinguo/camera360/login/PGLoginActivity;
const-string/jumbo v2, "qzone"
#calls: Lcom/pinguo/camera360/login/PGLoginActivity;->loginForSso(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v1, v0, v2}, Lcom/pinguo/camera360/login/PGLoginActivity;->access$0(Lcom/pinguo/camera360/login/PGLoginActivity;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/pinguo/camera360/login/model/QQSsoResponse;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/login/PGLoginActivity$1;->onSuccess(Lcom/pinguo/camera360/login/model/QQSsoResponse;)V
return-void
.end method