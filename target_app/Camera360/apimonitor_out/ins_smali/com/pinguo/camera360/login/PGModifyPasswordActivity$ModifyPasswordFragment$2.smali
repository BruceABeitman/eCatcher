.class  Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$2;
.super Ljava/lang/Object;
.source "PGModifyPasswordActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
.method constructor <init>(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$2;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$2;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
iget-object v1, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$2;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
#getter for: Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mShowPassword:Z
invoke-static {v1}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->access$1(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)Z
move-result v1
if-eqz v1, :cond_55
const/4 v1, 0x0
:goto_b
#setter for: Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mShowPassword:Z
invoke-static {v2, v1}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->access$2(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;Z)V
iget-object v1, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$2;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
#getter for: Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mEyeImagView:Landroid/widget/ImageView;
invoke-static {v1}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->access$3(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)Landroid/widget/ImageView;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$2;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
#getter for: Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mShowPassword:Z
invoke-static {v2}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->access$1(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)Z
move-result v2
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$2;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
#getter for: Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mEmailPasswordInput:Lcom/pinguo/camera360/login/EditTextWithLine;
invoke-static {v1}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->access$4(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)Lcom/pinguo/camera360/login/EditTextWithLine;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/login/EditTextWithLine;->getText()Landroid/text/Editable;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$2;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
#getter for: Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mEmailPasswordInput:Lcom/pinguo/camera360/login/EditTextWithLine;
invoke-static {v1}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->access$4(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)Lcom/pinguo/camera360/login/EditTextWithLine;
move-result-object v2
iget-object v1, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$2;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
#getter for: Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mShowPassword:Z
invoke-static {v1}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->access$1(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)Z
move-result v1
if-eqz v1, :cond_57
const/16 v1, 0x90
:goto_37
or-int/lit8 v1, v1, 0x1
invoke-virtual {v2, v1}, Lcom/pinguo/camera360/login/EditTextWithLine;->setInputType(I)V
iget-object v1, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$2;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
#getter for: Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mEmailPasswordInput:Lcom/pinguo/camera360/login/EditTextWithLine;
invoke-static {v1}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->access$4(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)Lcom/pinguo/camera360/login/EditTextWithLine;
move-result-object v1
invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
move-result v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/login/EditTextWithLine;->setSelection(I)V
iget-object v1, p0, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$2;->this$1:Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;
#getter for: Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->mEmailPasswordInput:Lcom/pinguo/camera360/login/EditTextWithLine;
invoke-static {v1}, Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;->access$4(Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment;)Lcom/pinguo/camera360/login/EditTextWithLine;
move-result-object v1
sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/login/EditTextWithLine;->setTypeface(Landroid/graphics/Typeface;)V
const-string v1, " - Lcom/pinguo/camera360/login/PGModifyPasswordActivity$ModifyPasswordFragment$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_55
const/4 v1, 0x1
goto :goto_b
:cond_57
const/16 v1, 0x80
goto :goto_37
.end method