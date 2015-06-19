.class  Lcom/pinguo/camera360/cloud/login/AssociateMailBox$1;
.super Ljava/lang/Object;
.source "AssociateMailBox.java"
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
.method constructor <init>(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$1;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onBackClick()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$1;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->finish()V
return-void
.end method
.method public onRightBtnClick()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$1;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
#calls: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->assocaiteMainbox()V
invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$0(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V
return-void
.end method