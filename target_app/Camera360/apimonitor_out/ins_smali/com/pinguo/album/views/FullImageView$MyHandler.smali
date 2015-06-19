.class  Lcom/pinguo/album/views/FullImageView$MyHandler;
.super Lcom/pinguo/album/SynchronizedHandler;
.source "FullImageView.java"
.field final synthetic this$0:Lcom/pinguo/album/views/FullImageView;
.method public constructor <init>(Lcom/pinguo/album/views/FullImageView;Lcom/pinguo/album/views/GLController;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/album/views/FullImageView$MyHandler;->this$0:Lcom/pinguo/album/views/FullImageView;
invoke-direct {p0, p2}, Lcom/pinguo/album/SynchronizedHandler;-><init>(Lcom/pinguo/album/views/GLController;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 10
const/4 v7, 0x6
const/4 v3, 0x1
const/4 v4, 0x0
iget v2, p1, Landroid/os/Message;->what:I
packed-switch v2, :pswitch_data_c0
:goto_8
:cond_8
return-void
:pswitch_9
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyHandler;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mGestureRecognizer:Lcom/pinguo/album/views/utils/GestureRecognizer;
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$0(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/utils/GestureRecognizer;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/album/views/utils/GestureRecognizer;->cancelScale()V
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyHandler;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;
move-result-object v2
invoke-virtual {v2, v4}, Lcom/pinguo/album/views/layout/FullImageLayout;->setExtraScalingRange(Z)V
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyHandler;->this$0:Lcom/pinguo/album/views/FullImageView;
#setter for: Lcom/pinguo/album/views/FullImageView;->mCancelExtraScalingPending:Z
invoke-static {v2, v4}, Lcom/pinguo/album/views/FullImageView;->access$2(Lcom/pinguo/album/views/FullImageView;Z)V
goto :goto_8
:pswitch_21
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyHandler;->this$0:Lcom/pinguo/album/views/FullImageView;
#calls: Lcom/pinguo/album/views/FullImageView;->switchFocus()V
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$3(Lcom/pinguo/album/views/FullImageView;)V
goto :goto_8
:pswitch_27
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyHandler;->this$0:Lcom/pinguo/album/views/FullImageView;
iget v3, p1, Landroid/os/Message;->arg1:I
#calls: Lcom/pinguo/album/views/FullImageView;->captureAnimationDone(I)V
invoke-static {v2, v3}, Lcom/pinguo/album/views/FullImageView;->access$4(Lcom/pinguo/album/views/FullImageView;I)V
goto :goto_8
:pswitch_2f
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyHandler;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mListener:Lcom/pinguo/album/views/FullImageView$Listener;
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$5(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Listener;
move-result-object v5
iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v2, Lcom/pinguo/album/data/MediaPath;
iget v6, p1, Landroid/os/Message;->arg1:I
invoke-interface {v5, v2, v6}, Lcom/pinguo/album/views/FullImageView$Listener;->onDeleteImage(Lcom/pinguo/album/data/MediaPath;I)V
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyHandler;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mHandler:Lcom/pinguo/album/SynchronizedHandler;
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$6(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/SynchronizedHandler;
move-result-object v2
invoke-virtual {v2, v7}, Lcom/pinguo/album/SynchronizedHandler;->removeMessages(I)V
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyHandler;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mHandler:Lcom/pinguo/album/SynchronizedHandler;
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$6(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/SynchronizedHandler;
move-result-object v2
invoke-virtual {v2, v7}, Lcom/pinguo/album/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;
move-result-object v0
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyHandler;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mHandler:Lcom/pinguo/album/SynchronizedHandler;
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$6(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/SynchronizedHandler;
move-result-object v2
const-wide/16 v5, 0x7d0
invoke-virtual {v2, v0, v5, v6}, Lcom/pinguo/album/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyHandler;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mNextBound:I
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$7(Lcom/pinguo/album/views/FullImageView;)I
move-result v2
iget-object v5, p0, Lcom/pinguo/album/views/FullImageView$MyHandler;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPrevBound:I
invoke-static {v5}, Lcom/pinguo/album/views/FullImageView;->access$8(Lcom/pinguo/album/views/FullImageView;)I
move-result v5
sub-int/2addr v2, v5
add-int/lit8 v1, v2, 0x1
const/4 v2, 0x2
if-ne v1, v2, :cond_94
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyHandler;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$9(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Model;
move-result-object v2
iget-object v5, p0, Lcom/pinguo/album/views/FullImageView$MyHandler;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mNextBound:I
invoke-static {v5}, Lcom/pinguo/album/views/FullImageView;->access$7(Lcom/pinguo/album/views/FullImageView;)I
move-result v5
invoke-interface {v2, v5}, Lcom/pinguo/album/views/FullImageView$Model;->isCamera(I)Z
move-result v2
if-nez v2, :cond_92
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyHandler;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$9(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Model;
move-result-object v2
iget-object v5, p0, Lcom/pinguo/album/views/FullImageView$MyHandler;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mPrevBound:I
invoke-static {v5}, Lcom/pinguo/album/views/FullImageView;->access$8(Lcom/pinguo/album/views/FullImageView;)I
move-result v5
invoke-interface {v2, v5}, Lcom/pinguo/album/views/FullImageView$Model;->isCamera(I)Z
move-result v2
if-eqz v2, :cond_94
:cond_92
add-int/lit8 v1, v1, -0x1
:cond_94
iget-object v5, p0, Lcom/pinguo/album/views/FullImageView$MyHandler;->this$0:Lcom/pinguo/album/views/FullImageView;
if-gt v1, v3, :cond_9e
move v2, v3
:goto_99
#calls: Lcom/pinguo/album/views/FullImageView;->showUndoBar(Z)V
invoke-static {v5, v2}, Lcom/pinguo/album/views/FullImageView;->access$10(Lcom/pinguo/album/views/FullImageView;Z)V
goto/16 :goto_8
:cond_9e
move v2, v4
goto :goto_99
:pswitch_a0
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyHandler;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mHandler:Lcom/pinguo/album/SynchronizedHandler;
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$6(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/SynchronizedHandler;
move-result-object v2
const/4 v3, 0x5
invoke-virtual {v2, v3}, Lcom/pinguo/album/SynchronizedHandler;->hasMessages(I)Z
move-result v2
if-nez v2, :cond_8
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyHandler;->this$0:Lcom/pinguo/album/views/FullImageView;
#getter for: Lcom/pinguo/album/views/FullImageView;->mHolding:I
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$11(Lcom/pinguo/album/views/FullImageView;)I
move-result v3
and-int/lit8 v3, v3, -0x5
#setter for: Lcom/pinguo/album/views/FullImageView;->mHolding:I
invoke-static {v2, v3}, Lcom/pinguo/album/views/FullImageView;->access$12(Lcom/pinguo/album/views/FullImageView;I)V
iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$MyHandler;->this$0:Lcom/pinguo/album/views/FullImageView;
#calls: Lcom/pinguo/album/views/FullImageView;->snapback()V
invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$13(Lcom/pinguo/album/views/FullImageView;)V
goto/16 :goto_8
nop
:pswitch_data_c0
.packed-switch 0x2
:pswitch_9
:pswitch_21
:pswitch_27
:pswitch_2f
:pswitch_a0
.end packed-switch
.end method