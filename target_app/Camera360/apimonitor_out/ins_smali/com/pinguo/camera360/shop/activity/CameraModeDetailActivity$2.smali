.class  Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$2;
.super Ljava/lang/Object;
.source "CameraModeDetailActivity.java"
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$2;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$2; onItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$2;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mIsPlaying:Z
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$5(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$2;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
#calls: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->stopMp3()V
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$6(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)V
:cond_d
const-string v1, " - Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$2; onItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onNothingSelected(Landroid/widget/AdapterView;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$2; onNothingSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$2; onNothingSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method