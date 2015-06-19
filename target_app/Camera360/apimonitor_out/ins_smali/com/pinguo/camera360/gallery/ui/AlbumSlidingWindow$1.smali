.class  Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$1;
.super Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
.source "AlbumSlidingWindow.java"
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;
.method constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$1;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;
invoke-direct {p0, p2}, Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;-><init>(Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 4
iget v0, p1, Landroid/os/Message;->what:I
if-nez v0, :cond_c
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->updateEntry()V
:goto_b
:cond_b
return-void
:cond_c
iget v0, p1, Landroid/os/Message;->what:I
const/4 v1, 0x1
if-ne v0, v1, :cond_b
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;->updateEntry()V
goto :goto_b
.end method