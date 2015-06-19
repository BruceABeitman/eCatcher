.class  Lcom/pinguo/camera360/cloud/login/AssociateMailBox$7;
.super Ljava/lang/Object;
.source "AssociateMailBox.java"
.implements Landroid/text/TextWatcher;
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
.method constructor <init>(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$7;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
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
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$7;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
#getter for: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordIconIv:Landroid/widget/ImageView;
invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$6(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)Landroid/widget/ImageView;
move-result-object v0
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$7;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
#getter for: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mMailboxState:I
invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$4(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)I
move-result v0
const/16 v1, 0x64
if-ne v0, v1, :cond_20
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$7;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
#getter for: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mErrorTipTV:Landroid/widget/TextView;
invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$3(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)Landroid/widget/TextView;
move-result-object v0
const-string/jumbo v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_20
return-void
.end method