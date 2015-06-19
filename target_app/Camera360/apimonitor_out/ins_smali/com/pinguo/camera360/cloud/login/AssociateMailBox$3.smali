.class  Lcom/pinguo/camera360/cloud/login/AssociateMailBox$3;
.super Ljava/lang/Object;
.source "AssociateMailBox.java"
.implements Landroid/widget/TextView$OnEditorActionListener;
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
.method constructor <init>(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$3;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.registers 6
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$3;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
#calls: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->checkEmailAddr(Z)Z
invoke-static {v0, v1}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$1(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;Z)Z
return v1
.end method