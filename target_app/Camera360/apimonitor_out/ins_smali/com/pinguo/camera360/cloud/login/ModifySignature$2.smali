.class  Lcom/pinguo/camera360/cloud/login/ModifySignature$2;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "ModifySignature.java"
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/login/ModifySignature;
.method constructor <init>(Lcom/pinguo/camera360/cloud/login/ModifySignature;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature$2;->this$0:Lcom/pinguo/camera360/cloud/login/ModifySignature;
invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V
return-void
.end method
.method public onError(Ljava/lang/Exception;)V
.registers 7
const/16 v4, 0x1a4
iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature$2;->this$0:Lcom/pinguo/camera360/cloud/login/ModifySignature;
#calls: Lcom/pinguo/camera360/cloud/login/ModifySignature;->dismissDialog()V
invoke-static {v3}, Lcom/pinguo/camera360/cloud/login/ModifySignature;->access$3(Lcom/pinguo/camera360/cloud/login/ModifySignature;)V
const/4 v0, 0x0
instance-of v3, p1, Lcom/pinguo/lib/os/Fault;
if-eqz v3, :cond_32
move-object v1, p1
check-cast v1, Lcom/pinguo/lib/os/Fault;
invoke-virtual {v1}, Lcom/pinguo/lib/os/Fault;->getStatus()I
move-result v3
if-ne v3, v4, :cond_28
new-instance v2, Landroid/content/Intent;
invoke-direct {v2}, Landroid/content/Intent;-><init>()V
const-string/jumbo v3, "destroy_account"
invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature$2;->this$0:Lcom/pinguo/camera360/cloud/login/ModifySignature;
const/16 v4, 0x3e9
invoke-virtual {v3, v4, v2}, Lcom/pinguo/camera360/cloud/login/ModifySignature;->setResult(ILandroid/content/Intent;)V
:goto_27
return-void
:cond_28
iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature$2;->this$0:Lcom/pinguo/camera360/cloud/login/ModifySignature;
invoke-virtual {v1}, Lcom/pinguo/lib/os/Fault;->getStatus()I
move-result v4
invoke-static {v3, v4}, Lcom/pinguo/camera360/cloud/login/StatusErrorCodeMessage;->getServerStatusErrorMessage(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v0
:cond_32
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_41
iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature$2;->this$0:Lcom/pinguo/camera360/cloud/login/ModifySignature;
const v4, 0x7f080169
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/cloud/login/ModifySignature;->getString(I)Ljava/lang/String;
move-result-object v0
:cond_41
iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature$2;->this$0:Lcom/pinguo/camera360/cloud/login/ModifySignature;
#calls: Lcom/pinguo/camera360/cloud/login/ModifySignature;->showMessage(Ljava/lang/String;)V
invoke-static {v3, v0}, Lcom/pinguo/camera360/cloud/login/ModifySignature;->access$1(Lcom/pinguo/camera360/cloud/login/ModifySignature;Ljava/lang/String;)V
goto :goto_27
.end method
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/cloud/login/ModifySignature$2;->onSuccess(Ljava/lang/Void;)V
return-void
.end method
.method public onSuccess(Ljava/lang/Void;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature$2;->this$0:Lcom/pinguo/camera360/cloud/login/ModifySignature;
#calls: Lcom/pinguo/camera360/cloud/login/ModifySignature;->dismissDialog()V
invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/ModifySignature;->access$3(Lcom/pinguo/camera360/cloud/login/ModifySignature;)V
const/4 v0, 0x0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalSignature(I)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature$2;->this$0:Lcom/pinguo/camera360/cloud/login/ModifySignature;
invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/login/ModifySignature;->finish()V
return-void
.end method