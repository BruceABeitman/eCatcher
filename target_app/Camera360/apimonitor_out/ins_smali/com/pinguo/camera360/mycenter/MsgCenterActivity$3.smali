.class  Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;
.super Ljava/lang/Object;
.source "MsgCenterActivity.java"
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
.method constructor <init>(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;)Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
return-object v0
.end method
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.registers 12
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3; onItemLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x1
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMessageList:Ljava/util/List;
invoke-static {v2}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Ljava/util/List;
move-result-object v2
invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/mycenter/PGMessage;
new-array v1, v5, [Ljava/lang/String;
const/4 v2, 0x0
iget-object v3, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
invoke-virtual {v3}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0801de
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
iget-object v3, v0, Lcom/pinguo/camera360/mycenter/PGMessage;->text:Ljava/lang/String;
new-instance v4, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3$1;
invoke-direct {v4, p0, p3}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3$1;-><init>(Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;I)V
invoke-static {v2, v3, v1, v4}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogItems(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
const-string v1, " - Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3; onItemLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v5
.end method