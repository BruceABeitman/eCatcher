.class  Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$1;
.super Ljava/lang/Object;
.source "AlbumActionBar.java"
.implements Landroid/content/DialogInterface$OnShowListener;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
.method constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$1;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onShow(Landroid/content/DialogInterface;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$1;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoPageHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Landroid/os/Handler;
move-result-object v0
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$1;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoPageHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Landroid/os/Handler;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
:cond_12
return-void
.end method