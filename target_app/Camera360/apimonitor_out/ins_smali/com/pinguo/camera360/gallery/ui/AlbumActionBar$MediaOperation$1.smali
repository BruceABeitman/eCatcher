.class  Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation$1;
.super Ljava/lang/Object;
.source "AlbumActionBar.java"
.implements Lcom/pinguo/camera360/gallery/data/MediaObject$SyncListener;
.field final synthetic this$1:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;
.method constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation$1;->this$1:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onDelete(I)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation$1;->this$1:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation$1;->this$1:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->access$1(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;)Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;
move-result-object v1
#calls: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->onProgressUpdate(ILcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;)V
invoke-static {v0, p1, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->access$2(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;ILcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;)V
return-void
.end method
.method public onDeleteCancel()V
.registers 1
return-void
.end method
.method public onDeleteFinish()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation$1;->this$1:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;
#calls: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->setRefreshEvent()V
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;->access$3(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$MediaOperation;)V
return-void
.end method