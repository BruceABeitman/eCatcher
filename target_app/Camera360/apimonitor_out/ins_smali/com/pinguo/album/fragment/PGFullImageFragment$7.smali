.class  Lcom/pinguo/album/fragment/PGFullImageFragment$7;
.super Ljava/lang/Object;
.source "PGFullImageFragment.java"
.implements Lcom/pinguo/album/data/image/download/PictureDownloaderListener;
.field final synthetic this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
.method constructor <init>(Lcom/pinguo/album/fragment/PGFullImageFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$7;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public downloadErrored(I)V
.registers 2
return-void
.end method
.method public downloadOnCancel()V
.registers 3
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$7;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$4(Lcom/pinguo/album/fragment/PGFullImageFragment;)Landroid/os/Handler;
move-result-object v0
const/16 v1, 0xc
invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
return-void
.end method
.method public downloadProgressUpdated(I)V
.registers 2
return-void
.end method
.method public downloadStart()V
.registers 3
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$7;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$4(Lcom/pinguo/album/fragment/PGFullImageFragment;)Landroid/os/Handler;
move-result-object v0
const/16 v1, 0x9
invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
return-void
.end method
.method public dwonloadCompleted(I)V
.registers 4
if-eqz p1, :cond_11
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$7;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
#getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$4(Lcom/pinguo/album/fragment/PGFullImageFragment;)Landroid/os/Handler;
move-result-object v0
const/16 v1, 0xa
invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
:cond_11
return-void
.end method