.class  Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$1;
.super Ljava/lang/Object;
.source "ChoicePrivilegeActivity.java"
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;
.method constructor <init>(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$1;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onBackClick()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$1;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->setResult(I)V
iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$1;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->finish()V
return-void
.end method
.method public onRightBtnClick()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$1;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;
#calls: Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->onTitleRightBtnClick()V
invoke-static {v0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->access$0(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)V
return-void
.end method