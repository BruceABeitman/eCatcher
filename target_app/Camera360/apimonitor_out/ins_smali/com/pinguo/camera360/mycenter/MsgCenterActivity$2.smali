.class  Lcom/pinguo/camera360/mycenter/MsgCenterActivity$2;
.super Ljava/lang/Object;
.source "MsgCenterActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
.method constructor <init>(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$2;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 14
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/mycenter/MsgCenterActivity$2; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v5, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$2;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMessageList:Ljava/util/List;
invoke-static {v5}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Ljava/util/List;
move-result-object v5
invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/mycenter/PGMessage;
iget-object v3, v0, Lcom/pinguo/camera360/mycenter/PGMessage;->logic:Ljava/lang/String;
invoke-static {}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$3()Ljava/lang/String;
move-result-object v5
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "uri = "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:try_start_25
iget-object v5, v0, Lcom/pinguo/camera360/mycenter/PGMessage;->id:Ljava/lang/String;
iget-object v6, v0, Lcom/pinguo/camera360/mycenter/PGMessage;->text:Ljava/lang/String;
invoke-static {v5, v6}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalMessageClick(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$3()Ljava/lang/String;
move-result-object v5
const-string/jumbo v6, "\u5c1d\u8bd5\u89e3\u6790json"
invoke-static {v5, v6}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "url"
invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v5
if-nez v5, :cond_4d
move-object v3, v4
:cond_4d
invoke-static {}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$3()Ljava/lang/String;
move-result-object v5
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "url = "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:try_start_64
:try_end_64
.catch Ljava/lang/Exception; {:try_start_25 .. :try_end_64} :catch_91
:goto_64
iget-boolean v5, v0, Lcom/pinguo/camera360/mycenter/PGMessage;->hasReaded:Z
if-nez v5, :cond_7c
const/4 v5, 0x1
iput-boolean v5, v0, Lcom/pinguo/camera360/mycenter/PGMessage;->hasReaded:Z
iget-object v5, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$2;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMsgAdapter:Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;
invoke-static {v5}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$4(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->notifyDataSetChanged()V
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-result-object v5
const/4 v6, 0x1
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->decNewMessageCount(I)V
:cond_7c
new-instance v5, Lcom/pinguo/camera360/shop/activity/InteractionFactory;
iget-object v6, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$2;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
invoke-direct {v5, v6}, Lcom/pinguo/camera360/shop/activity/InteractionFactory;-><init>(Landroid/app/Activity;)V
invoke-virtual {v5, v3}, Lcom/pinguo/camera360/shop/activity/InteractionFactory;->create(Ljava/lang/String;)Lcom/pinguo/camera360/shop/activity/Interaction;
move-result-object v5
const/4 v6, 0x0
invoke-virtual {v5, v3, v6}, Lcom/pinguo/camera360/shop/activity/Interaction;->onClick(Ljava/lang/String;I)V
iget-object v5, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$2;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
#setter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mClickedPos:I
invoke-static {v5, p3}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$5(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;I)V
:try_end_90
.catch Ljava/lang/Exception; {:try_start_64 .. :try_end_90} :catch_96
:goto_90
const-string v1, " - Lcom/pinguo/camera360/mycenter/MsgCenterActivity$2; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_91
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_64
:catch_96
move-exception v1
iget-object v5, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$2;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
const/4 v6, -0x1
#setter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mClickedPos:I
invoke-static {v5, v6}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$5(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;I)V
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_90
.end method