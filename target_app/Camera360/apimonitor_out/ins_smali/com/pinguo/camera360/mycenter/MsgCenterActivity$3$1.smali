.class  Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3$1;
.super Ljava/lang/Object;
.source "MsgCenterActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$1:Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;
.field private final synthetic val$pos:I
.method constructor <init>(Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;I)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3$1;->this$1:Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;
iput p2, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3$1;->val$pos:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
const/4 v3, 0x1
if-nez p2, :cond_88
iget-object v1, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3$1;->this$1:Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
invoke-static {v1}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;)Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
move-result-object v1
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMessageList:Ljava/util/List;
invoke-static {v1}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Ljava/util/List;
move-result-object v1
iget v2, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3$1;->val$pos:I
invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/mycenter/PGMessage;
iget-boolean v1, v0, Lcom/pinguo/camera360/mycenter/PGMessage;->hasReaded:Z
if-nez v1, :cond_23
iput-boolean v3, v0, Lcom/pinguo/camera360/mycenter/PGMessage;->hasReaded:Z
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-result-object v1
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->decNewMessageCount(I)V
:cond_23
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->delMsg(Lcom/pinguo/camera360/mycenter/PGMessage;)V
iget-object v1, v0, Lcom/pinguo/camera360/mycenter/PGMessage;->id:Ljava/lang/String;
iget-object v2, v0, Lcom/pinguo/camera360/mycenter/PGMessage;->text:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalMessageRemove(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3$1;->this$1:Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
invoke-static {v1}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;)Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
move-result-object v1
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMessageList:Ljava/util/List;
invoke-static {v1}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Ljava/util/List;
move-result-object v1
iget v2, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3$1;->val$pos:I
invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
iget-object v1, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3$1;->this$1:Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
invoke-static {v1}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;)Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
move-result-object v1
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMsgAdapter:Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;
invoke-static {v1}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$4(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->notifyDataSetChanged()V
iget-object v1, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3$1;->this$1:Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
invoke-static {v1}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;)Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
move-result-object v1
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMessageList:Ljava/util/List;
invoke-static {v1}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-gtz v1, :cond_89
iget-object v1, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3$1;->this$1:Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
invoke-static {v1}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;)Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
move-result-object v1
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mHederRightView:Landroid/view/View;
invoke-static {v1}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$6(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3$1;->this$1:Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
invoke-static {v1}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;)Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
move-result-object v1
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mNoMsgTipView:Landroid/view/View;
invoke-static {v1}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$7(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V
:goto_77
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3$1;->this$1:Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
invoke-static {v2}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;)Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
move-result-object v2
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMessageList:Ljava/util/List;
invoke-static {v2}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Ljava/util/List;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->updateLocalMsgs(Ljava/util/List;)V
:cond_88
const-string v1, " - Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_89
iget-object v1, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3$1;->this$1:Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
invoke-static {v1}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;)Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
move-result-object v1
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mHederRightView:Landroid/view/View;
invoke-static {v1}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$6(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3$1;->this$1:Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
invoke-static {v1}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity$3;)Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
move-result-object v1
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mNoMsgTipView:Landroid/view/View;
invoke-static {v1}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$7(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Landroid/view/View;
move-result-object v1
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
goto :goto_77
.end method