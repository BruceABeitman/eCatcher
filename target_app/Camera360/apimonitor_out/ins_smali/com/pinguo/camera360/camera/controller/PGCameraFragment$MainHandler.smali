.class  Lcom/pinguo/camera360/camera/controller/PGCameraFragment$MainHandler;
.super Landroid/os/Handler;
.source "PGCameraFragment.java"
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$MainHandler;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 5
invoke-static {}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$1()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "handleMessage msg.what = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p1, Landroid/os/Message;->what:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_4a
:goto_1e
return-void
:pswitch_1f
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$MainHandler;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->setCameraParametersWhenIdle(I)V
goto :goto_1e
:pswitch_26
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$MainHandler;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-result-object v0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->show()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$MainHandler;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
move-result-object v0
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->reset()V
goto :goto_1e
:pswitch_3d
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$MainHandler;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
const/4 v1, 0x1
#setter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->canLoginCloud:Z
invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$10(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;Z)V
goto :goto_1e
:pswitch_44
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$MainHandler;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
#calls: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->startLocationService()V
invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$11(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
goto :goto_1e
:pswitch_data_4a
.packed-switch 0x0
:pswitch_1f
:pswitch_26
:pswitch_3d
:pswitch_44
.end packed-switch
.end method