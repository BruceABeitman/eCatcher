.class  Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$3;
.super Ljava/lang/Object;
.source "PGModifyPasswordActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
.method constructor <init>(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$3;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$3; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$3;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
invoke-virtual {v3}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
const-string/jumbo v4, "input_method"
invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/inputmethod/InputMethodManager;
iget-object v3, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$3;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
#getter for: Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mEmailPasswordInput:Lcom/pinguo/camera360/login/EditTextWithLine;
invoke-static {v3}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->access$4(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)Lcom/pinguo/camera360/login/EditTextWithLine;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/login/EditTextWithLine;->getWindowToken()Landroid/os/IBinder;
move-result-object v3
const/4 v4, 0x0
invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
iget-object v3, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$3;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
invoke-virtual {v3}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v3, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$3;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
#getter for: Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mEmailPasswordInput:Lcom/pinguo/camera360/login/EditTextWithLine;
invoke-static {v3}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->access$4(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)Lcom/pinguo/camera360/login/EditTextWithLine;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/login/EditTextWithLine;->getText()Landroid/text/Editable;
move-result-object v3
invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0}, Lcom/pinguo/share/util/ShareModuleUtil;->hasNet(Landroid/content/Context;)Z
move-result v3
if-nez v3, :cond_46
iget-object v3, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$3;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
iget-object v4, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$3;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
const v5, 0x7f08017e
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->getString(I)Ljava/lang/String;
move-result-object v4
#calls: Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->showMessage(Ljava/lang/String;)V
invoke-static {v3, v4}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->access$5(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;Ljava/lang/String;)V
:goto_45
const-string v1, " - Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$3; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_46
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_5b
iget-object v3, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$3;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
iget-object v4, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$3;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
const v5, 0x7f0801a0
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->getString(I)Ljava/lang/String;
move-result-object v4
#calls: Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->showErrorMessage(Ljava/lang/String;)V
invoke-static {v3, v4}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->access$6(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;Ljava/lang/String;)V
goto :goto_45
:cond_5b
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v3
const/4 v4, 0x6
if-lt v3, v4, :cond_6a
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v3
const/16 v4, 0x14
if-le v3, v4, :cond_79
:cond_6a
iget-object v3, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$3;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
iget-object v4, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$3;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
const v5, 0x7f0801a2
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->getString(I)Ljava/lang/String;
move-result-object v4
#calls: Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->showErrorMessage(Ljava/lang/String;)V
invoke-static {v3, v4}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->access$6(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;Ljava/lang/String;)V
goto :goto_45
:cond_79
iget-object v3, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$3;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
#calls: Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->modifyPassword(Landroid/content/Context;Ljava/lang/String;)V
invoke-static {v3, v0, v2}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->access$7(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;Landroid/content/Context;Ljava/lang/String;)V
goto :goto_45
.end method