.class  Lcom/pinguo/camera360/cloud/login/AssociateMailBox$2;
.super Ljava/lang/Object;
.source "AssociateMailBox.java"
.implements Landroid/view/View$OnFocusChangeListener;
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
.method constructor <init>(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$2;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onFocusChange(Landroid/view/View;Z)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/cloud/login/AssociateMailBox$2; onFocusChange "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
if-nez p2, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$2;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
const/4 v1, 0x0
#calls: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->checkEmailAddr(Z)Z
invoke-static {v0, v1}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$1(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;Z)Z
:goto_8
const-string v1, " - Lcom/pinguo/camera360/cloud/login/AssociateMailBox$2; onFocusChange"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_9
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$2;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
#getter for: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mEmailIconIV:Landroid/widget/ImageView;
invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$2(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)Landroid/widget/ImageView;
move-result-object v0
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$2;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
#getter for: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mErrorTipTV:Landroid/widget/TextView;
invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$3(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)Landroid/widget/TextView;
move-result-object v0
const-string/jumbo v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_8
.end method