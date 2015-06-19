.class  Lcom/pinguo/camera360/cloud/login/AssociateMailBox$6;
.super Ljava/lang/Object;
.source "AssociateMailBox.java"
.implements Landroid/view/View$OnFocusChangeListener;
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
.method constructor <init>(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$6;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onFocusChange(Landroid/view/View;Z)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/cloud/login/AssociateMailBox$6; onFocusChange "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
if-eqz p2, :cond_22
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$6;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
#getter for: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordIconIv:Landroid/widget/ImageView;
invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$6(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)Landroid/widget/ImageView;
move-result-object v0
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$6;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
#getter for: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mMailboxState:I
invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$4(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)I
move-result v0
const/16 v1, 0x64
if-ne v0, v1, :cond_22
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$6;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
#getter for: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mErrorTipTV:Landroid/widget/TextView;
invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$3(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)Landroid/widget/TextView;
move-result-object v0
const-string/jumbo v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_22
const-string v1, " - Lcom/pinguo/camera360/cloud/login/AssociateMailBox$6; onFocusChange"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method