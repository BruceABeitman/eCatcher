.class  Lcom/pinguo/album/fragment/PGAlbumFragment$11;
.super Ljava/lang/Object;
.source "PGAlbumFragment.java"
.implements Lcom/pinguo/album/data/image/download/PictureDownloaderListener;
.field final synthetic this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
.method constructor <init>(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$11;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public downloadErrored(I)V
.registers 2
return-void
.end method
.method public downloadOnCancel()V
.registers 3
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$11;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mHandler:Lcom/pinguo/album/SynchronizedHandler;
invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$2(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/SynchronizedHandler;
move-result-object v0
const/16 v1, 0xc
invoke-virtual {v0, v1}, Lcom/pinguo/album/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
return-void
.end method
.method public downloadProgressUpdated(I)V
.registers 5
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$11;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mHandler:Lcom/pinguo/album/SynchronizedHandler;
invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$2(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/SynchronizedHandler;
move-result-object v0
const/16 v1, 0xb
const/4 v2, 0x0
invoke-virtual {v0, v1, p1, v2}, Lcom/pinguo/album/SynchronizedHandler;->obtainMessage(III)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
return-void
.end method
.method public downloadStart()V
.registers 3
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$11;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mHandler:Lcom/pinguo/album/SynchronizedHandler;
invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$2(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/SynchronizedHandler;
move-result-object v0
const/16 v1, 0x9
invoke-virtual {v0, v1}, Lcom/pinguo/album/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
return-void
.end method
.method public dwonloadCompleted(I)V
.registers 5
iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$11;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mHandler:Lcom/pinguo/album/SynchronizedHandler;
invoke-static {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$2(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/SynchronizedHandler;
move-result-object v1
const/16 v2, 0xa
invoke-virtual {v1, v2}, Lcom/pinguo/album/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;
move-result-object v0
iput p1, v0, Landroid/os/Message;->arg1:I
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
return-void
.end method