.class  Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$8;
.super Ljava/lang/Object;
.source "AlbumActionBar.java"
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
.method constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$8;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.registers 4
if-eqz p2, :cond_c
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$8;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPopupMenu:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$13(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->show()V
:goto_b
return-void
:cond_c
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$8;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPopupMenu:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$13(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ABPopupMenu;->dismiss()V
goto :goto_b
.end method