.class  Lcom/pinguo/camera360/cloud/login/AssociateMailBox$8;
.super Ljava/lang/Object;
.source "AssociateMailBox.java"
.implements Landroid/widget/TextView$OnEditorActionListener;
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
.method constructor <init>(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$8;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$8;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
#calls: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->checkPassword()Z
invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$5(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)Z
const/4 v0, 0x0
return v0
.end method