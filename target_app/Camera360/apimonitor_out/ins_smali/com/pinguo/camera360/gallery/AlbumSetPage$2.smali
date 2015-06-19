.class  Lcom/pinguo/camera360/gallery/AlbumSetPage$2;
.super Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
.source "AlbumSetPage.java"
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;
.method constructor <init>(Lcom/pinguo/camera360/gallery/AlbumSetPage;Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$2;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;
invoke-direct {p0, p2}, Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;-><init>(Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 4
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_16
new-instance v0, Ljava/lang/AssertionError;
iget v1, p1, Landroid/os/Message;->what:I
invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V
throw v0
:pswitch_d
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$2;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;
iget v1, p1, Landroid/os/Message;->arg1:I
#calls: Lcom/pinguo/camera360/gallery/AlbumSetPage;->pickAlbum(I)V
invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->access$9(Lcom/pinguo/camera360/gallery/AlbumSetPage;I)V
return-void
nop
:pswitch_data_16
.packed-switch 0x1
:pswitch_d
.end packed-switch
.end method