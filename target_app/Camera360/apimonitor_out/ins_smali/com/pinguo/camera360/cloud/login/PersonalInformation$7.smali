.class  Lcom/pinguo/camera360/cloud/login/PersonalInformation$7;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "PersonalInformation.java"
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;
.method constructor <init>(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$7;->this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;
invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V
return-void
.end method
.method public onError(Ljava/lang/Exception;)V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$7;->this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$7;->this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;
const v2, 0x7f080296
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->getString(I)Ljava/lang/String;
move-result-object v1
#calls: Lcom/pinguo/camera360/cloud/login/PersonalInformation;->showMessage(Ljava/lang/String;)V
invoke-static {v0, v1}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->access$6(Lcom/pinguo/camera360/cloud/login/PersonalInformation;Ljava/lang/String;)V
return-void
.end method
.method public onSuccess(Lcom/pinguo/camera360/login/model/QQSsoResponse;)V
.registers 5
iget-object v0, p1, Lcom/pinguo/camera360/login/model/QQSsoResponse;->message:Ljava/lang/String;
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$7;->this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;
const-string/jumbo v2, "qzone"
#calls: Lcom/pinguo/camera360/cloud/login/PersonalInformation;->bindForSso(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v1, v0, v2}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->access$5(Lcom/pinguo/camera360/cloud/login/PersonalInformation;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/pinguo/camera360/login/model/QQSsoResponse;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/cloud/login/PersonalInformation$7;->onSuccess(Lcom/pinguo/camera360/login/model/QQSsoResponse;)V
return-void
.end method