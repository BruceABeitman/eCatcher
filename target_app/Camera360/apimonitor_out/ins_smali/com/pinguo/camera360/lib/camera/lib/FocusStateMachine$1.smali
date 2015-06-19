.class  Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$1;
.super Ljava/lang/Object;
.source "FocusStateMachine.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
.method constructor <init>(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$1;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
const-string/jumbo v0, "FocusStateMachine"
const-string/jumbo v1, "Post focusing timeout message"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$1;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$1;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
const/16 v2, 0x9
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->obtainMessage(I)Landroid/os/Message;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->sendMessage(Landroid/os/Message;)V
return-void
.end method