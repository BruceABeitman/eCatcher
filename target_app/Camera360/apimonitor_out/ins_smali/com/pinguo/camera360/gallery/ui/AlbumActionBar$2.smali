.class  Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$2;
.super Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
.source "AlbumActionBar.java"
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
.method constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$2;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
invoke-direct {p0, p2}, Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;-><init>(Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 6
iget v1, p1, Landroid/os/Message;->what:I
packed-switch v1, :pswitch_data_a4
:goto_5
:cond_5
return-void
:pswitch_6
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$2;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#calls: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->stopTaskAndDismissDialog()V
invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$9(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)V
iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
if-eqz v1, :cond_18
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;
iget v1, p1, Landroid/os/Message;->arg1:I
invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;->onProgressComplete(I)V
:cond_18
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$2;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$6(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
move-result-object v1
if-eqz v1, :cond_35
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$2;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$6(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->inSelectionMode()Z
move-result v1
if-eqz v1, :cond_35
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$2;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$6(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->leaveSelectionMode()V
:cond_35
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$2;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$5(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/SelectionManager;
move-result-object v1
if-eqz v1, :cond_5
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$2;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$5(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/SelectionManager;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->inSelectionMode()Z
move-result v1
if-eqz v1, :cond_5
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$2;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$5(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/SelectionManager;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->leaveSelectionMode()V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$2;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectAllItem:Landroid/widget/TextView;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$10(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Landroid/widget/TextView;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$2;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$4(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/RootActivity;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f080088
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_5
:pswitch_6d
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$2;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$11(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
if-eqz v1, :cond_82
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$2;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$11(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v1
iget v2, p1, Landroid/os/Message;->arg1:I
add-int/lit8 v2, v2, 0x1
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgress(I)V
:cond_82
iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
if-eqz v1, :cond_5
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;
iget v1, p1, Landroid/os/Message;->arg1:I
invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;->onProgressUpdate(I)V
goto/16 :goto_5
:pswitch_91
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$2;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$4(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/RootActivity;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getAndroidContext()Landroid/content/Context;
move-result-object v2
iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v1, Landroid/content/Intent;
invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto/16 :goto_5
:pswitch_data_a4
.packed-switch 0x1
:pswitch_6
:pswitch_6d
:pswitch_91
.end packed-switch
.end method