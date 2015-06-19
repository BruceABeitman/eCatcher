.class  Lcom/pinguo/camera360/login/PGLoginFragment$5;
.super Ljava/lang/Object;
.source "PGLoginFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/login/PGLoginFragment;
.method constructor <init>(Lcom/pinguo/camera360/login/PGLoginFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/PGLoginFragment$5;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/login/PGLoginFragment$5; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
iget-object v2, p0, Lcom/pinguo/camera360/login/PGLoginFragment$5;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;
#setter for: Lcom/pinguo/camera360/login/PGLoginFragment;->mClickEye:Z
invoke-static {v2, v1}, Lcom/pinguo/camera360/login/PGLoginFragment;->access$6(Lcom/pinguo/camera360/login/PGLoginFragment;Z)V
iget-object v2, p0, Lcom/pinguo/camera360/login/PGLoginFragment$5;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;
iget-object v3, p0, Lcom/pinguo/camera360/login/PGLoginFragment$5;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;
#getter for: Lcom/pinguo/camera360/login/PGLoginFragment;->mShowPassword:Z
invoke-static {v3}, Lcom/pinguo/camera360/login/PGLoginFragment;->access$8(Lcom/pinguo/camera360/login/PGLoginFragment;)Z
move-result v3
if-eqz v3, :cond_11
const/4 v1, 0x0
:cond_11
#setter for: Lcom/pinguo/camera360/login/PGLoginFragment;->mShowPassword:Z
invoke-static {v2, v1}, Lcom/pinguo/camera360/login/PGLoginFragment;->access$9(Lcom/pinguo/camera360/login/PGLoginFragment;Z)V
iget-object v1, p0, Lcom/pinguo/camera360/login/PGLoginFragment$5;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;
#getter for: Lcom/pinguo/camera360/login/PGLoginFragment;->mEyeImagView:Landroid/widget/ImageView;
invoke-static {v1}, Lcom/pinguo/camera360/login/PGLoginFragment;->access$10(Lcom/pinguo/camera360/login/PGLoginFragment;)Landroid/widget/ImageView;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/login/PGLoginFragment$5;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;
#getter for: Lcom/pinguo/camera360/login/PGLoginFragment;->mShowPassword:Z
invoke-static {v2}, Lcom/pinguo/camera360/login/PGLoginFragment;->access$8(Lcom/pinguo/camera360/login/PGLoginFragment;)Z
move-result v2
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/login/PGLoginFragment$5;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;
#getter for: Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailPasswordInput:Lcom/pinguo/camera360/login/EditTextWithLine;
invoke-static {v1}, Lcom/pinguo/camera360/login/PGLoginFragment;->access$11(Lcom/pinguo/camera360/login/PGLoginFragment;)Lcom/pinguo/camera360/login/EditTextWithLine;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/login/EditTextWithLine;->getText()Landroid/text/Editable;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/login/PGLoginFragment$5;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;
#getter for: Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailPasswordInput:Lcom/pinguo/camera360/login/EditTextWithLine;
invoke-static {v1}, Lcom/pinguo/camera360/login/PGLoginFragment;->access$11(Lcom/pinguo/camera360/login/PGLoginFragment;)Lcom/pinguo/camera360/login/EditTextWithLine;
move-result-object v2
iget-object v1, p0, Lcom/pinguo/camera360/login/PGLoginFragment$5;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;
#getter for: Lcom/pinguo/camera360/login/PGLoginFragment;->mShowPassword:Z
invoke-static {v1}, Lcom/pinguo/camera360/login/PGLoginFragment;->access$8(Lcom/pinguo/camera360/login/PGLoginFragment;)Z
move-result v1
if-eqz v1, :cond_5b
const/16 v1, 0x90
:goto_3d
or-int/lit8 v1, v1, 0x1
invoke-virtual {v2, v1}, Lcom/pinguo/camera360/login/EditTextWithLine;->setInputType(I)V
iget-object v1, p0, Lcom/pinguo/camera360/login/PGLoginFragment$5;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;
#getter for: Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailPasswordInput:Lcom/pinguo/camera360/login/EditTextWithLine;
invoke-static {v1}, Lcom/pinguo/camera360/login/PGLoginFragment;->access$11(Lcom/pinguo/camera360/login/PGLoginFragment;)Lcom/pinguo/camera360/login/EditTextWithLine;
move-result-object v1
invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
move-result v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/login/EditTextWithLine;->setSelection(I)V
iget-object v1, p0, Lcom/pinguo/camera360/login/PGLoginFragment$5;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;
#getter for: Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailPasswordInput:Lcom/pinguo/camera360/login/EditTextWithLine;
invoke-static {v1}, Lcom/pinguo/camera360/login/PGLoginFragment;->access$11(Lcom/pinguo/camera360/login/PGLoginFragment;)Lcom/pinguo/camera360/login/EditTextWithLine;
move-result-object v1
sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/login/EditTextWithLine;->setTypeface(Landroid/graphics/Typeface;)V
const-string v1, " - Lcom/pinguo/camera360/login/PGLoginFragment$5; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_5b
const/16 v1, 0x80
goto :goto_3d
.end method