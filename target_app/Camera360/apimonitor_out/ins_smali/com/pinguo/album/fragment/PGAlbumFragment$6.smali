.class  Lcom/pinguo/album/fragment/PGAlbumFragment$6;
.super Lcom/pinguo/album/SynchronizedHandler;
.source "PGAlbumFragment.java"
.field final synthetic this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
.method constructor <init>(Lcom/pinguo/album/fragment/PGAlbumFragment;Lcom/pinguo/album/views/GLController;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-direct {p0, p2}, Lcom/pinguo/album/SynchronizedHandler;-><init>(Lcom/pinguo/album/views/GLController;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 10
const/4 v3, 0x0
const/4 v7, 0x1
const/4 v6, 0x0
iget v1, p1, Landroid/os/Message;->what:I
sparse-switch v1, :sswitch_data_12e
new-instance v1, Ljava/lang/AssertionError;
iget v2, p1, Landroid/os/Message;->what:I
invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V
throw v1
:sswitch_10
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
iget v2, p1, Landroid/os/Message;->arg1:I
#calls: Lcom/pinguo/album/fragment/PGAlbumFragment;->pickPhoto(I)V
invoke-static {v1, v2}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$31(Lcom/pinguo/album/fragment/PGAlbumFragment;I)V
:cond_17
:goto_17
return-void
:sswitch_18
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$32(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
if-eqz v1, :cond_17
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$32(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
const v2, 0x7f08002f
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setTitle(I)V
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$32(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-virtual {v2}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
const v3, 0x7f080032
invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$32(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
invoke-virtual {v1, v7}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setIndeterminate(Z)V
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$32(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
invoke-virtual {v1, v6}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$32(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V
goto :goto_17
:sswitch_5e
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-virtual {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/lib/network/NetworkUtils;->isAvailableNetWork(Landroid/content/Context;)Z
move-result v1
if-nez v1, :cond_a9
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
iget-object v1, v1, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSelector:Lcom/pinguo/album/selectors/PhotoSelector;
if-eqz v1, :cond_a9
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
iget-object v1, v1, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSelector:Lcom/pinguo/album/selectors/PhotoSelector;
invoke-virtual {v1}, Lcom/pinguo/album/selectors/PhotoSelector;->getSelectedPaths()Ljava/util/ArrayList;
move-result-object v0
if-eqz v0, :cond_a9
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
iget v2, p1, Landroid/os/Message;->arg1:I
if-eq v1, v2, :cond_a9
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
const v2, 0x7f080104
invoke-virtual {v1, v2}, Lcom/pinguo/album/fragment/PGAlbumFragment;->showShortToast(I)V
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$32(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
if-eqz v1, :cond_17
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$32(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v1
if-eqz v1, :cond_17
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$32(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
goto/16 :goto_17
:cond_a9
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$32(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
if-eqz v1, :cond_17
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$32(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v1
if-eqz v1, :cond_17
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$32(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#setter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1, v3}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$33(Lcom/pinguo/album/fragment/PGAlbumFragment;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
const v2, 0x7f080025
invoke-virtual {v1, v2}, Lcom/pinguo/album/fragment/PGAlbumFragment;->showShortToast(I)V
goto/16 :goto_17
:sswitch_d5
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$32(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
const v3, 0x7f080033
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
iget v5, p1, Landroid/os/Message;->arg1:I
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v6
iget-object v5, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
iget-object v5, v5, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSelector:Lcom/pinguo/album/selectors/PhotoSelector;
invoke-virtual {v5}, Lcom/pinguo/album/selectors/PhotoSelector;->getSelectedCount()I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v7
invoke-virtual {v2, v3, v4}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
goto/16 :goto_17
:sswitch_102
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$32(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
if-eqz v1, :cond_17
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$32(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v1
if-eqz v1, :cond_17
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$32(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#setter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1, v3}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$33(Lcom/pinguo/album/fragment/PGAlbumFragment;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$6;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
const v2, 0x7f080026
invoke-virtual {v1, v2}, Lcom/pinguo/album/fragment/PGAlbumFragment;->showShortToast(I)V
goto/16 :goto_17
:sswitch_data_12e
.sparse-switch
0x0 -> :sswitch_10
0x9 -> :sswitch_18
0xa -> :sswitch_5e
0xb -> :sswitch_d5
0xc -> :sswitch_102
.end sparse-switch
.end method