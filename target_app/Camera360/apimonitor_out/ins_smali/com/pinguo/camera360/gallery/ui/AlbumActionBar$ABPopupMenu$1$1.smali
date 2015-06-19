.class  Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$1$1;
.super Ljava/lang/Object;
.source "AlbumActionBar.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$2:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$1;
.method constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$1;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$1$1;->this$2:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$1$1;->this$2:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$1;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$1;->this$1:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$1;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$1;)Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;
move-result-object v0
#calls: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->dismissNoAnimation()V
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;)V
return-void
.end method