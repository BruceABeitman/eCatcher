.class  Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$1;
.super Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
.source "AlbumSetSlidingWindow.java"
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
.method constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$1;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
invoke-direct {p0, p2}, Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;-><init>(Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 4
const/4 v0, 0x1
iget v1, p1, Landroid/os/Message;->what:I
if-ne v1, v0, :cond_10
:goto_5
invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/Utils;->assertTrue(Z)V
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$EntryUpdater;
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$EntryUpdater;->updateEntry()V
return-void
:cond_10
const/4 v0, 0x0
goto :goto_5
.end method