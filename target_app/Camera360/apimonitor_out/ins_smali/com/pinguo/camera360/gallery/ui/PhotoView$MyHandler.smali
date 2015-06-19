.class  Lcom/pinguo/camera360/gallery/ui/PhotoView$MyHandler;
.super Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
.source "PhotoView.java"
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
.method public constructor <init>(Lcom/pinguo/camera360/gallery/ui/PhotoView;Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
invoke-direct {p0, p2}, Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;-><init>(Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 4
const/4 v1, 0x0
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_36
:pswitch_6
new-instance v0, Ljava/lang/AssertionError;
iget v1, p1, Landroid/os/Message;->what:I
invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V
throw v0
:pswitch_e
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mGestureRecognizer:Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$0(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/GestureRecognizer;->cancelScale()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/PositionController;->setExtraScalingRange(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#setter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCancelExtraScalingPending:Z
invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$2(Lcom/pinguo/camera360/gallery/ui/PhotoView;Z)V
:goto_25
return-void
:pswitch_26
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->switchFocus()V
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$3(Lcom/pinguo/camera360/gallery/ui/PhotoView;)V
goto :goto_25
:pswitch_2c
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/PositionController;->startDeleteingAnimationIfNeeded()Z
goto :goto_25
:pswitch_data_36
.packed-switch 0x2
:pswitch_e
:pswitch_26
:pswitch_6
:pswitch_6
:pswitch_2c
.end packed-switch
.end method