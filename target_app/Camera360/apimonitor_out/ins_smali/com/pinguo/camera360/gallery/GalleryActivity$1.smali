.class  Lcom/pinguo/camera360/gallery/GalleryActivity$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"
.implements Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/GalleryActivity;
.method constructor <init>(Lcom/pinguo/camera360/gallery/GalleryActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/GalleryActivity$1;->this$0:Lcom/pinguo/camera360/gallery/GalleryActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onStatusChanged(ILjava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/GalleryActivity$1;->this$0:Lcom/pinguo/camera360/gallery/GalleryActivity;
iget-object v0, v0, Lcom/pinguo/camera360/gallery/GalleryActivity;->mAlbumActionBar:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->updateCloudAlbumStatus(I)V
return-void
.end method