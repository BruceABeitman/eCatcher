.class  Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$4;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "PGModifyPasswordActivity.java"
.field final synthetic this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
.method constructor <init>(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$4;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V
return-void
.end method
.method public onError(Ljava/lang/Exception;)V
.registers 6
iget-object v2, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$4;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
#calls: Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->hideDialog()V
invoke-static {v2}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->access$8(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)V
const/4 v0, 0x0
instance-of v2, p1, Lcom/pinguo/lib/os/Fault;
if-eqz v2, :cond_1b
move-object v1, p1
check-cast v1, Lcom/pinguo/lib/os/Fault;
iget-object v2, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$4;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
invoke-virtual {v2}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-virtual {v1}, Lcom/pinguo/lib/os/Fault;->getStatus()I
move-result v3
invoke-static {v2, v3}, Lcom/pinguo/camera360/cloud/login/StatusErrorCodeMessage;->getServerStatusErrorMessage(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v0
:cond_1b
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_30
iget-object v2, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$4;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
const v3, 0x7f08017e
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$4;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
#calls: Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->showMessage(Ljava/lang/String;)V
invoke-static {v2, v0}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->access$5(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;Ljava/lang/String;)V
:goto_2f
return-void
:cond_30
iget-object v2, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$4;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
#calls: Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->showErrorMessage(Ljava/lang/String;)V
invoke-static {v2, v0}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->access$6(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;Ljava/lang/String;)V
goto :goto_2f
.end method
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$4;->onSuccess(Ljava/lang/String;)V
return-void
.end method
.method public onSuccess(Ljava/lang/String;)V
.registers 5
iget-object v1, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$4;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
#calls: Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->hideDialog()V
invoke-static {v1}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->access$8(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)V
iget-object v1, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$4;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
#getter for: Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mUserInfo:Lcom/pinguo/camera360/login/model/User$Info;
invoke-static {v1}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->access$9(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v1
if-nez v1, :cond_17
iget-object v1, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$4;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
invoke-virtual {v1}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V
:goto_16
return-void
:cond_17
iget-object v1, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$4;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
#getter for: Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mUserInfo:Lcom/pinguo/camera360/login/model/User$Info;
invoke-static {v1}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->access$9(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v1
const/4 v2, 0x0
iput v2, v1, Lcom/pinguo/camera360/login/model/User$Info;->forgetPass:I
iget-object v1, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$4;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
#getter for: Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mUserInfo:Lcom/pinguo/camera360/login/model/User$Info;
invoke-static {v1}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->access$9(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v1
iput-object p1, v1, Lcom/pinguo/camera360/login/model/User$Info;->token:Ljava/lang/String;
new-instance v0, Lcom/pinguo/camera360/login/model/User;
iget-object v1, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$4;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
invoke-virtual {v1}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$4;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
#getter for: Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mUserInfo:Lcom/pinguo/camera360/login/model/User$Info;
invoke-static {v2}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->access$9(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/login/model/User;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/login/model/User$Info;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/login/model/User;->save()V
iget-object v1, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$4;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
invoke-virtual {v1}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const/4 v2, -0x1
invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V
iget-object v1, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$4;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
invoke-virtual {v1}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V
goto :goto_16
.end method