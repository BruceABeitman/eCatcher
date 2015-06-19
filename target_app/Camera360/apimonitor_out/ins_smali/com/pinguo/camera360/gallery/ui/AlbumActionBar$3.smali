.class  Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$3;
.super Ljava/lang/Object;
.source "AlbumActionBar.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
.method constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$3;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$3; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$3;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivityState:Lcom/pinguo/camera360/gallery/ActivityState;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$12(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ActivityState;
move-result-object v1
instance-of v1, v1, Lcom/pinguo/camera360/gallery/AlbumSetPage;
if-eqz v1, :cond_15
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$3;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivityState:Lcom/pinguo/camera360/gallery/ActivityState;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$12(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ActivityState;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/gallery/AlbumSetPage;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->hideAlbums()V
:cond_15
invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V
const-string v1, " - Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$3; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method