.class  Lcom/pinguo/camera360/login/PGLoginFragment$1;
.super Ljava/lang/Object;
.source "PGLoginFragment.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic this$0:Lcom/pinguo/camera360/login/PGLoginFragment;
.method constructor <init>(Lcom/pinguo/camera360/login/PGLoginFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/PGLoginFragment$1;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 9
const/4 v5, 0x1
const/4 v4, -0x1
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v2
if-nez v2, :cond_15
iget-object v2, p0, Lcom/pinguo/camera360/login/PGLoginFragment$1;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;
#getter for: Lcom/pinguo/camera360/login/PGLoginFragment;->mGoToFindPasswordParent:Landroid/widget/TextView;
invoke-static {v2}, Lcom/pinguo/camera360/login/PGLoginFragment;->access$0(Lcom/pinguo/camera360/login/PGLoginFragment;)Landroid/widget/TextView;
move-result-object v2
const v3, -0x1c3ab2
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V
:goto_14
:cond_14
return v5
:cond_15
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v2
if-ne v2, v5, :cond_55
const/4 v2, 0x0
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalLoginLayBtnClick(I)V
iget-object v2, p0, Lcom/pinguo/camera360/login/PGLoginFragment$1;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;
#getter for: Lcom/pinguo/camera360/login/PGLoginFragment;->mGoToFindPasswordParent:Landroid/widget/TextView;
invoke-static {v2}, Lcom/pinguo/camera360/login/PGLoginFragment;->access$0(Lcom/pinguo/camera360/login/PGLoginFragment;)Landroid/widget/TextView;
move-result-object v2
invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/pinguo/camera360/login/PGLoginFragment$1;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;
invoke-virtual {v2}, Lcom/pinguo/camera360/login/PGLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
const-class v3, Lcom/pinguo/camera360/login/PGFindPasswordActivity;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v2, p0, Lcom/pinguo/camera360/login/PGLoginFragment$1;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;
#getter for: Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailInput:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
invoke-static {v2}, Lcom/pinguo/camera360/login/PGLoginFragment;->access$1(Lcom/pinguo/camera360/login/PGLoginFragment;)Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->getText()Landroid/text/Editable;
move-result-object v2
invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v0
const-string/jumbo v2, "email_message"
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v2, p0, Lcom/pinguo/camera360/login/PGLoginFragment$1;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;
invoke-virtual {v2}, Lcom/pinguo/camera360/login/PGLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
const/16 v3, 0x441
invoke-virtual {v2, v1, v3}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_14
:cond_55
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v2
const/4 v3, 0x3
if-ne v2, v3, :cond_14
iget-object v2, p0, Lcom/pinguo/camera360/login/PGLoginFragment$1;->this$0:Lcom/pinguo/camera360/login/PGLoginFragment;
#getter for: Lcom/pinguo/camera360/login/PGLoginFragment;->mGoToFindPasswordParent:Landroid/widget/TextView;
invoke-static {v2}, Lcom/pinguo/camera360/login/PGLoginFragment;->access$0(Lcom/pinguo/camera360/login/PGLoginFragment;)Landroid/widget/TextView;
move-result-object v2
invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V
goto :goto_14
.end method