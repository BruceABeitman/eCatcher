.class  Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$3;
.super Ljava/lang/Object;
.source "BSAlertController.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic this$1:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;
.field private final synthetic val$dialog:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
.method constructor <init>(Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;Lcom/pinguo/camera360/ui/dialog/BSAlertController;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$3;->this$1:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;
iput-object p2, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$3;->val$dialog:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$3; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$3;->this$1:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;
iget-object v0, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;
iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$3;->val$dialog:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
#getter for: Lcom/pinguo/camera360/ui/dialog/BSAlertController;->mDialogInterface:Landroid/content/DialogInterface;
invoke-static {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->access$7(Lcom/pinguo/camera360/ui/dialog/BSAlertController;)Landroid/content/DialogInterface;
move-result-object v1
invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$3;->this$1:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;
iget-boolean v0, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mIsSingleChoice:Z
if-nez v0, :cond_1c
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$3;->val$dialog:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
#getter for: Lcom/pinguo/camera360/ui/dialog/BSAlertController;->mDialogInterface:Landroid/content/DialogInterface;
invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->access$7(Lcom/pinguo/camera360/ui/dialog/BSAlertController;)Landroid/content/DialogInterface;
move-result-object v0
invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V
:cond_1c
const-string v1, " - Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$3; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method