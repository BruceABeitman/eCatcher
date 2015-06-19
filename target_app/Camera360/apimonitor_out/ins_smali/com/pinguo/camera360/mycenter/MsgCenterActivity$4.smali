.class  Lcom/pinguo/camera360/mycenter/MsgCenterActivity$4;
.super Ljava/lang/Object;
.source "MsgCenterActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
.method constructor <init>(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$4;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/mycenter/MsgCenterActivity$4; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$4;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMessageList:Ljava/util/List;
invoke-static {v1}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->delMsg(Ljava/util/List;)V
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$4;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMessageList:Ljava/util/List;
invoke-static {v0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$4;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMsgAdapter:Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;
invoke-static {v0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$4(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->notifyDataSetChanged()V
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$4;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mHederRightView:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$6(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$4;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mNoMsgTipView:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$7(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->clearNewMessageFlag()V
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$4;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMessageList:Ljava/util/List;
invoke-static {v1}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->updateLocalMsgs(Ljava/util/List;)V
const-string v1, " - Lcom/pinguo/camera360/mycenter/MsgCenterActivity$4; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method