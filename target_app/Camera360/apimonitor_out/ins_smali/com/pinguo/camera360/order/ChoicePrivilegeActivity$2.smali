.class  Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$2;
.super Ljava/lang/Object;
.source "ChoicePrivilegeActivity.java"
.implements Landroid/text/TextWatcher;
.field final synthetic this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;
.method constructor <init>(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$2;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public afterTextChanged(Landroid/text/Editable;)V
.registers 2
return-void
.end method
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public onTextChanged(Ljava/lang/CharSequence;III)V
.registers 7
iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$2;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;
#getter for: Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeErrorTipTV:Landroid/widget/TextView;
invoke-static {v0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->access$1(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)Landroid/widget/TextView;
move-result-object v0
const-string/jumbo v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$2;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;
#getter for: Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeErrorTipTV:Landroid/widget/TextView;
invoke-static {v0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->access$1(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)Landroid/widget/TextView;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
return-void
.end method