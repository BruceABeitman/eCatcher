.class  Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "BSAlertController.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic this$1:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;
.field private final synthetic val$dialog:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
.field private final synthetic val$listView:Lcom/pinguo/camera360/ui/dialog/RecycleListView;
.method constructor <init>(Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;Lcom/pinguo/camera360/ui/dialog/RecycleListView;Lcom/pinguo/camera360/ui/dialog/BSAlertController;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$4;->this$1:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;
iput-object p2, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$4;->val$listView:Lcom/pinguo/camera360/ui/dialog/RecycleListView;
iput-object p3, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$4;->val$dialog:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$4; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$4;->this$1:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;
iget-object v0, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCheckedItems:[Z
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$4;->this$1:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;
iget-object v0, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCheckedItems:[Z
iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$4;->val$listView:Lcom/pinguo/camera360/ui/dialog/RecycleListView;
invoke-virtual {v1, p3}, Lcom/pinguo/camera360/ui/dialog/RecycleListView;->isItemChecked(I)Z
move-result v1
aput-boolean v1, v0, p3
:cond_12
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$4;->this$1:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;
iget-object v0, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;
iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$4;->val$dialog:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
#getter for: Lcom/pinguo/camera360/ui/dialog/BSAlertController;->mDialogInterface:Landroid/content/DialogInterface;
invoke-static {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->access$7(Lcom/pinguo/camera360/ui/dialog/BSAlertController;)Landroid/content/DialogInterface;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$4;->val$listView:Lcom/pinguo/camera360/ui/dialog/RecycleListView;
invoke-virtual {v2, p3}, Lcom/pinguo/camera360/ui/dialog/RecycleListView;->isItemChecked(I)Z
move-result v2
invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V
const-string v1, " - Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$4; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method