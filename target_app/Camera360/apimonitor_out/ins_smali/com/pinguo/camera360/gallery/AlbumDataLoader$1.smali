.class  Lcom/pinguo/camera360/gallery/AlbumDataLoader$1;
.super Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
.source "AlbumDataLoader.java"
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;
.method constructor <init>(Lcom/pinguo/camera360/gallery/AlbumDataLoader;Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;
invoke-direct {p0, p2}, Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;-><init>(Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 3
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_32
:goto_5
:cond_5
return-void
:pswitch_6
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
goto :goto_5
:pswitch_e
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;
#getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mLoadingListener:Lcom/pinguo/camera360/gallery/LoadingListener;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$18(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)Lcom/pinguo/camera360/gallery/LoadingListener;
move-result-object v0
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;
#getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mLoadingListener:Lcom/pinguo/camera360/gallery/LoadingListener;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$18(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)Lcom/pinguo/camera360/gallery/LoadingListener;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/LoadingListener;->onLoadingStarted()V
goto :goto_5
:pswitch_20
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;
#getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mLoadingListener:Lcom/pinguo/camera360/gallery/LoadingListener;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$18(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)Lcom/pinguo/camera360/gallery/LoadingListener;
move-result-object v0
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;
#getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mLoadingListener:Lcom/pinguo/camera360/gallery/LoadingListener;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$18(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)Lcom/pinguo/camera360/gallery/LoadingListener;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/LoadingListener;->onLoadingFinished()V
goto :goto_5
:pswitch_data_32
.packed-switch 0x1
:pswitch_e
:pswitch_20
:pswitch_6
.end packed-switch
.end method