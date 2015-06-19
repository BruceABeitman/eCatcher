.class  LvStudio/Android/Camera360/activity/CameraActivity$4;
.super Ljava/lang/Object;
.source "CameraActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:LvStudio/Android/Camera360/activity/CameraActivity;
.method constructor <init>(LvStudio/Android/Camera360/activity/CameraActivity;)V
.registers 2
iput-object p1, p0, LvStudio/Android/Camera360/activity/CameraActivity$4;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + LvStudio/Android/Camera360/activity/CameraActivity$4; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity$4;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;
#calls: LvStudio/Android/Camera360/activity/CameraActivity;->startPartnerAppDownLoad()V
invoke-static {v0}, LvStudio/Android/Camera360/activity/CameraActivity;->access$4(LvStudio/Android/Camera360/activity/CameraActivity;)V
invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->stop()V
iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity$4;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;
invoke-virtual {v0}, LvStudio/Android/Camera360/activity/CameraActivity;->finish()V
const-string v1, " - LvStudio/Android/Camera360/activity/CameraActivity$4; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method