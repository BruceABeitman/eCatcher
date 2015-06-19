.class  Lcom/pinguo/album/fragment/PGFullImageFragment$2;
.super Lcom/pinguo/album/SynchronizedHandler;
.source "PGFullImageFragment.java"
.field final synthetic this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
.method constructor <init>(Lcom/pinguo/album/fragment/PGFullImageFragment;Lcom/pinguo/album/views/GLController;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
invoke-direct {p0, p2}, Lcom/pinguo/album/SynchronizedHandler;-><init>(Lcom/pinguo/album/views/GLController;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 10
const/4 v7, 0x0
const/4 v4, 0x0
iget v3, p1, Landroid/os/Message;->what:I
packed-switch v3, :pswitch_data_104
:pswitch_7
new-instance v3, Ljava/lang/AssertionError;
iget v4, p1, Landroid/os/Message;->what:I
invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(I)V
throw v3
:pswitch_f
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
invoke-virtual {v3}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getGLController()Lcom/pinguo/album/views/GLController;
move-result-object v3
invoke-interface {v3}, Lcom/pinguo/album/views/GLController;->unfreeze()V
:pswitch_18
:cond_18
:goto_18
return-void
:pswitch_19
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mDeferUpdateUntil:J
invoke-static {v3}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$1(Lcom/pinguo/album/fragment/PGFullImageFragment;)J
move-result-wide v3
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v5
sub-long v0, v3, v5
const-wide/16 v3, 0x0
cmp-long v3, v0, v3
if-gtz v3, :cond_36
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#setter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mDeferredUpdateWaiting:Z
invoke-static {v3, v7}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$2(Lcom/pinguo/album/fragment/PGFullImageFragment;Z)V
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#calls: Lcom/pinguo/album/fragment/PGFullImageFragment;->updateUIForCurrentPhoto()V
invoke-static {v3}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$3(Lcom/pinguo/album/fragment/PGFullImageFragment;)V
goto :goto_18
:cond_36
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mHandler:Landroid/os/Handler;
invoke-static {v3}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$4(Lcom/pinguo/album/fragment/PGFullImageFragment;)Landroid/os/Handler;
move-result-object v3
const/16 v4, 0x18
invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
goto :goto_18
:pswitch_42
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v3}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$5(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v3
if-eqz v3, :cond_18
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v3}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$5(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v3
iget-object v4, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
invoke-virtual {v4}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
const v5, 0x7f08002f
invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setTitle(Ljava/lang/CharSequence;)V
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v3}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$5(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v3
iget-object v4, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
invoke-virtual {v4}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
const v5, 0x7f080032
invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v3}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$5(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v3
const/4 v4, 0x1
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setIndeterminate(Z)V
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v3}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$5(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v3
invoke-virtual {v3, v7}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v3}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$5(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V
goto :goto_18
:pswitch_93
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v3}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$5(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v3
if-eqz v3, :cond_18
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v3}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$5(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v3
if-eqz v3, :cond_18
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v3}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$5(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#setter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v3, v4}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$6(Lcom/pinguo/album/fragment/PGFullImageFragment;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
const v4, 0x7f080026
invoke-virtual {v3, v4}, Lcom/pinguo/album/fragment/PGFullImageFragment;->showShortToast(I)V
goto/16 :goto_18
:pswitch_bf
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v3}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$5(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v3
if-eqz v3, :cond_18
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v3}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$5(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v3
if-eqz v3, :cond_18
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v3}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$5(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#setter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v3, v4}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$6(Lcom/pinguo/album/fragment/PGFullImageFragment;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
const v4, 0x7f080025
invoke-virtual {v3, v4}, Lcom/pinguo/album/fragment/PGFullImageFragment;->showShortToast(I)V
goto/16 :goto_18
:pswitch_eb
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mCurrentPhoto:Lcom/pinguo/album/data/MediaItem;
invoke-static {v3}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$7(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/album/data/MediaItem;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#setter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mCurrentPhoto:Lcom/pinguo/album/data/MediaItem;
invoke-static {v3, v4}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$8(Lcom/pinguo/album/fragment/PGFullImageFragment;Lcom/pinguo/album/data/MediaItem;)V
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#calls: Lcom/pinguo/album/fragment/PGFullImageFragment;->updateCurrentPhoto(Lcom/pinguo/album/data/MediaItem;)V
invoke-static {v3, v2}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$9(Lcom/pinguo/album/fragment/PGFullImageFragment;Lcom/pinguo/album/data/MediaItem;)V
goto/16 :goto_18
:pswitch_fd
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$2;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#calls: Lcom/pinguo/album/fragment/PGFullImageFragment;->updateUIForCurrentPhoto()V
invoke-static {v3}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$3(Lcom/pinguo/album/fragment/PGFullImageFragment;)V
goto/16 :goto_18
:pswitch_data_104
.packed-switch 0x4
:pswitch_18
:pswitch_7
:pswitch_f
:pswitch_7
:pswitch_18
:pswitch_42
:pswitch_bf
:pswitch_7
:pswitch_93
:pswitch_7
:pswitch_7
:pswitch_7
:pswitch_7
:pswitch_7
:pswitch_7
:pswitch_7
:pswitch_7
:pswitch_eb
:pswitch_fd
:pswitch_7
:pswitch_19
:pswitch_18
:pswitch_18
.end packed-switch
.end method