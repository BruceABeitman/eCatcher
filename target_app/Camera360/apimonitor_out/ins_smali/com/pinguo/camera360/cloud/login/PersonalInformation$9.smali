.class  Lcom/pinguo/camera360/cloud/login/PersonalInformation$9;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "PersonalInformation.java"
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;
.method constructor <init>(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$9;->this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;
invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V
return-void
.end method
.method public onError(Ljava/lang/Exception;)V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$9;->this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$9;->this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;
const v2, 0x7f080296
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->getString(I)Ljava/lang/String;
move-result-object v1
#calls: Lcom/pinguo/camera360/cloud/login/PersonalInformation;->showMessage(Ljava/lang/String;)V
invoke-static {v0, v1}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->access$6(Lcom/pinguo/camera360/cloud/login/PersonalInformation;Ljava/lang/String;)V
return-void
.end method
.method public onSuccess(Ljava/lang/Object;)V
.registers 2
return-void
.end method