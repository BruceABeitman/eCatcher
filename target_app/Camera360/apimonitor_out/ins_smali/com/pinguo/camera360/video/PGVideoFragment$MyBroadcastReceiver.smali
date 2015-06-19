.class  Lcom/pinguo/camera360/video/PGVideoFragment$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PGVideoFragment.java"
.field final synthetic this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
.method private constructor <init>(Lcom/pinguo/camera360/video/PGVideoFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$MyBroadcastReceiver;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/video/PGVideoFragment;Lcom/pinguo/camera360/video/PGVideoFragment$MyBroadcastReceiver;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/video/PGVideoFragment$MyBroadcastReceiver;-><init>(Lcom/pinguo/camera360/video/PGVideoFragment;)V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 8
const/4 v4, 0x1
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "android.intent.action.MEDIA_EJECT"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_19
iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$MyBroadcastReceiver;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
#calls: Lcom/pinguo/camera360/video/PGVideoFragment;->updateAndShowStorageHint()V
invoke-static {v1}, Lcom/pinguo/camera360/video/PGVideoFragment;->access$4(Lcom/pinguo/camera360/video/PGVideoFragment;)V
iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$MyBroadcastReceiver;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
#calls: Lcom/pinguo/camera360/video/PGVideoFragment;->stopVideoRecording()V
invoke-static {v1}, Lcom/pinguo/camera360/video/PGVideoFragment;->access$5(Lcom/pinguo/camera360/video/PGVideoFragment;)V
:cond_18
:goto_18
return-void
:cond_19
const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2d
iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$MyBroadcastReceiver;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
#calls: Lcom/pinguo/camera360/video/PGVideoFragment;->updateAndShowStorageHint()V
invoke-static {v1}, Lcom/pinguo/camera360/video/PGVideoFragment;->access$4(Lcom/pinguo/camera360/video/PGVideoFragment;)V
iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$MyBroadcastReceiver;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
#calls: Lcom/pinguo/camera360/video/PGVideoFragment;->updateThumbnailButton(Z)V
invoke-static {v1, v4}, Lcom/pinguo/camera360/video/PGVideoFragment;->access$6(Lcom/pinguo/camera360/video/PGVideoFragment;Z)V
goto :goto_18
:cond_2d
const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_18
const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_STARTED"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5a
iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$MyBroadcastReceiver;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
invoke-virtual {v1}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment$MyBroadcastReceiver;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
invoke-virtual {v2}, Lcom/pinguo/camera360/video/PGVideoFragment;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f080212
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
goto :goto_18
:cond_5a
const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_FINISHED"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_69
iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$MyBroadcastReceiver;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
#calls: Lcom/pinguo/camera360/video/PGVideoFragment;->updateAndShowStorageHint()V
invoke-static {v1}, Lcom/pinguo/camera360/video/PGVideoFragment;->access$4(Lcom/pinguo/camera360/video/PGVideoFragment;)V
goto :goto_18
:cond_69
const-string/jumbo v1, "com.pinguo.camear360.feedback.update.mycenter"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_18
iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$MyBroadcastReceiver;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
#calls: Lcom/pinguo/camera360/video/PGVideoFragment;->updateMyCenterNewMsgView()V
invoke-static {v1}, Lcom/pinguo/camera360/video/PGVideoFragment;->access$7(Lcom/pinguo/camera360/video/PGVideoFragment;)V
goto :goto_18
.end method