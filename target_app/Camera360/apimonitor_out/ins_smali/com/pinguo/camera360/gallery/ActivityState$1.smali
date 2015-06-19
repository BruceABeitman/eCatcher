.class  Lcom/pinguo/camera360/gallery/ActivityState$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityState.java"
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ActivityState;
.method constructor <init>(Lcom/pinguo/camera360/gallery/ActivityState;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ActivityState$1;->this$0:Lcom/pinguo/camera360/gallery/ActivityState;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 6
const/4 v1, 0x0
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2a
const-string/jumbo v2, "plugged"
invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v2
if-eqz v2, :cond_18
const/4 v1, 0x1
:cond_18
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ActivityState$1;->this$0:Lcom/pinguo/camera360/gallery/ActivityState;
#getter for: Lcom/pinguo/camera360/gallery/ActivityState;->mPlugged:Z
invoke-static {v2}, Lcom/pinguo/camera360/gallery/ActivityState;->access$0(Lcom/pinguo/camera360/gallery/ActivityState;)Z
move-result v2
if-eq v1, v2, :cond_2a
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ActivityState$1;->this$0:Lcom/pinguo/camera360/gallery/ActivityState;
#setter for: Lcom/pinguo/camera360/gallery/ActivityState;->mPlugged:Z
invoke-static {v2, v1}, Lcom/pinguo/camera360/gallery/ActivityState;->access$1(Lcom/pinguo/camera360/gallery/ActivityState;Z)V
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ActivityState$1;->this$0:Lcom/pinguo/camera360/gallery/ActivityState;
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ActivityState;->setScreenOnFlags()V
:cond_2a
return-void
.end method