.class  Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$1;
.super Ljava/lang/Object;
.source "ShareBSAlertController.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic this$1:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
.field private final synthetic val$dialog:Lcom/pinguo/share/ui/dialog/ShareBSAlertController;
.method constructor <init>(Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$1;->this$1:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$1;->val$dialog:Lcom/pinguo/share/ui/dialog/ShareBSAlertController;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$1; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$1;->this$1:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iget-object v0, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$1;->val$dialog:Lcom/pinguo/share/ui/dialog/ShareBSAlertController;
#getter for: Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mDialogInterface:Landroid/content/DialogInterface;
invoke-static {v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->access$7(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)Landroid/content/DialogInterface;
move-result-object v1
invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$1;->val$dialog:Lcom/pinguo/share/ui/dialog/ShareBSAlertController;
#getter for: Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mDialogInterface:Landroid/content/DialogInterface;
invoke-static {v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->access$7(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)Landroid/content/DialogInterface;
move-result-object v0
invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V
const-string v1, " - Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$1; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method