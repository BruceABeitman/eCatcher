.class  Lcom/pinguo/camera360/camera/controller/PGCameraFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "PGCameraFragment.java"
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "com.pinguo.camear360.feedback.update.mycenter"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
#calls: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->updateMyCenterNewMsgView()V
invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$0(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
:cond_12
return-void
.end method