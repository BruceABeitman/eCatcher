.class  Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$1;
.super Ljava/lang/Object;
.source "AlbumActionBar.java"
.implements Landroid/view/animation/Animation$AnimationListener;
.field final synthetic this$1:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;
.method constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$1;->this$1:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$1;)Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$1;->this$1:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;
return-object v0
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$1;->this$1:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->access$1(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;)Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
move-result-object v0
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$7(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$1$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$1$1;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu$1;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method
.method public onAnimationStart(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method