.class  Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$2;
.super Ljava/lang/Object;
.source "ShareBSAlertController.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic this$1:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
.field private final synthetic val$dialog:Lcom/pinguo/share/ui/dialog/ShareBSAlertController;
.field private final synthetic val$listView:Landroid/widget/ListView;
.method constructor <init>(Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;Landroid/widget/ListView;Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$2;->this$1:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$2;->val$listView:Landroid/widget/ListView;
iput-object p3, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$2;->val$dialog:Lcom/pinguo/share/ui/dialog/ShareBSAlertController;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$2; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x0
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xb
if-lt v1, v2, :cond_d
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$2;->val$listView:Landroid/widget/ListView;
invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z
move-result v0
:cond_d
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$2;->this$1:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iget-object v1, v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mCheckedItems:[Z
if-eqz v1, :cond_19
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$2;->this$1:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iget-object v1, v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mCheckedItems:[Z
aput-boolean v0, v1, p3
:cond_19
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$2;->this$1:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iget-object v1, v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;
iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$2;->val$dialog:Lcom/pinguo/share/ui/dialog/ShareBSAlertController;
#getter for: Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mDialogInterface:Landroid/content/DialogInterface;
invoke-static {v2}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->access$7(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)Landroid/content/DialogInterface;
move-result-object v2
invoke-interface {v1, v2, p3, v0}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V
const-string v1, " - Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$2; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method