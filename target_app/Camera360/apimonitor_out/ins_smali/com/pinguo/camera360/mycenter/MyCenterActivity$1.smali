.class  Lcom/pinguo/camera360/mycenter/MyCenterActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MyCenterActivity.java"
.field final synthetic this$0:Lcom/pinguo/camera360/mycenter/MyCenterActivity;
.method constructor <init>(Lcom/pinguo/camera360/mycenter/MyCenterActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity$1;->this$0:Lcom/pinguo/camera360/mycenter/MyCenterActivity;
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
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity$1;->this$0:Lcom/pinguo/camera360/mycenter/MyCenterActivity;
#calls: Lcom/pinguo/camera360/mycenter/MyCenterActivity;->updateUnread()V
invoke-static {v0}, Lcom/pinguo/camera360/mycenter/MyCenterActivity;->access$0(Lcom/pinguo/camera360/mycenter/MyCenterActivity;)V
:cond_12
return-void
.end method