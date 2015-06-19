.class  Lcom/pinguo/camera360/login/PGLoginActivity$2;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "PGLoginActivity.java"
.field final synthetic this$0:Lcom/pinguo/camera360/login/PGLoginActivity;
.method constructor <init>(Lcom/pinguo/camera360/login/PGLoginActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/PGLoginActivity$2;->this$0:Lcom/pinguo/camera360/login/PGLoginActivity;
invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V
return-void
.end method
.method public onError(Ljava/lang/Exception;)V
.registers 6
iget-object v2, p0, Lcom/pinguo/camera360/login/PGLoginActivity$2;->this$0:Lcom/pinguo/camera360/login/PGLoginActivity;
#calls: Lcom/pinguo/camera360/login/PGLoginActivity;->dissmissDialog()V
invoke-static {v2}, Lcom/pinguo/camera360/login/PGLoginActivity;->access$1(Lcom/pinguo/camera360/login/PGLoginActivity;)V
const/4 v0, 0x0
instance-of v2, p1, Lcom/pinguo/lib/os/Fault;
if-eqz v2, :cond_17
move-object v1, p1
check-cast v1, Lcom/pinguo/lib/os/Fault;
iget-object v2, p0, Lcom/pinguo/camera360/login/PGLoginActivity$2;->this$0:Lcom/pinguo/camera360/login/PGLoginActivity;
invoke-virtual {v1}, Lcom/pinguo/lib/os/Fault;->getStatus()I
move-result v3
invoke-static {v2, v3}, Lcom/pinguo/camera360/cloud/login/StatusErrorCodeMessage;->getServerStatusErrorMessage(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v0
:cond_17
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_26
iget-object v2, p0, Lcom/pinguo/camera360/login/PGLoginActivity$2;->this$0:Lcom/pinguo/camera360/login/PGLoginActivity;
const v3, 0x7f0801a5
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/login/PGLoginActivity;->getString(I)Ljava/lang/String;
move-result-object v0
:cond_26
iget-object v2, p0, Lcom/pinguo/camera360/login/PGLoginActivity$2;->this$0:Lcom/pinguo/camera360/login/PGLoginActivity;
#calls: Lcom/pinguo/camera360/login/PGLoginActivity;->showMessage(Ljava/lang/String;)V
invoke-static {v2, v0}, Lcom/pinguo/camera360/login/PGLoginActivity;->access$3(Lcom/pinguo/camera360/login/PGLoginActivity;Ljava/lang/String;)V
return-void
.end method
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/login/PGLoginActivity$2;->onSuccess(Ljava/lang/Void;)V
return-void
.end method
.method public onSuccess(Ljava/lang/Void;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginActivity$2;->this$0:Lcom/pinguo/camera360/login/PGLoginActivity;
#calls: Lcom/pinguo/camera360/login/PGLoginActivity;->dissmissDialog()V
invoke-static {v0}, Lcom/pinguo/camera360/login/PGLoginActivity;->access$1(Lcom/pinguo/camera360/login/PGLoginActivity;)V
iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginActivity$2;->this$0:Lcom/pinguo/camera360/login/PGLoginActivity;
#calls: Lcom/pinguo/camera360/login/PGLoginActivity;->returnResultFinish()V
invoke-static {v0}, Lcom/pinguo/camera360/login/PGLoginActivity;->access$2(Lcom/pinguo/camera360/login/PGLoginActivity;)V
return-void
.end method