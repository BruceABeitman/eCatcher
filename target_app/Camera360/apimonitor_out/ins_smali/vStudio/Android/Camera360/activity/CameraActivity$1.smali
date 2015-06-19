.class  LvStudio/Android/Camera360/activity/CameraActivity$1;
.super Landroid/os/Handler;
.source "CameraActivity.java"
.field final synthetic this$0:LvStudio/Android/Camera360/activity/CameraActivity;
.method constructor <init>(LvStudio/Android/Camera360/activity/CameraActivity;)V
.registers 2
iput-object p1, p0, LvStudio/Android/Camera360/activity/CameraActivity$1;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 5
const-string/jumbo v0, "CameraActivity"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "msg.what = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p1, Landroid/os/Message;->what:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget v0, p1, Landroid/os/Message;->what:I
sparse-switch v0, :sswitch_data_3e
:goto_1d
invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
:cond_20
return-void
:sswitch_21
iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity$1;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;
invoke-virtual {v0}, LvStudio/Android/Camera360/activity/CameraActivity;->isFinishing()Z
move-result v0
if-nez v0, :cond_20
iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity$1;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;
invoke-virtual {v0}, LvStudio/Android/Camera360/activity/CameraActivity;->hasWindowFocus()Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity$1;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;
invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/AppScreenSaver;->startMe(Landroid/content/Context;)V
goto :goto_1d
:sswitch_37
iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity$1;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;
#calls: LvStudio/Android/Camera360/activity/CameraActivity;->initAllBgTaskAfterStartPreview()V
invoke-static {v0}, LvStudio/Android/Camera360/activity/CameraActivity;->access$0(LvStudio/Android/Camera360/activity/CameraActivity;)V
goto :goto_1d
nop
:sswitch_data_3e
.sparse-switch
0x4 -> :sswitch_37
0xb -> :sswitch_21
.end sparse-switch
.end method