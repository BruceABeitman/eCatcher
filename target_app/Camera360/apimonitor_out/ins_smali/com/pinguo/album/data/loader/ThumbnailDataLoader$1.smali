.class  Lcom/pinguo/album/data/loader/ThumbnailDataLoader$1;
.super Lcom/pinguo/album/SynchronizedHandler;
.source "ThumbnailDataLoader.java"
.field final synthetic this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;
.method constructor <init>(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;Lcom/pinguo/album/views/GLController;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$1;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;
invoke-direct {p0, p2}, Lcom/pinguo/album/SynchronizedHandler;-><init>(Lcom/pinguo/album/views/GLController;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 7
iget v1, p1, Landroid/os/Message;->what:I
packed-switch v1, :pswitch_data_42
:goto_5
:cond_5
return-void
:pswitch_6
iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v1, Ljava/lang/Runnable;
invoke-interface {v1}, Ljava/lang/Runnable;->run()V
goto :goto_5
:pswitch_e
iget-object v1, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$1;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;
#getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mLoadingListener:Lcom/pinguo/album/data/loader/DataLoadingListener;
invoke-static {v1}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$18(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)Lcom/pinguo/album/data/loader/DataLoadingListener;
move-result-object v1
if-eqz v1, :cond_5
iget-object v1, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$1;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;
#getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mLoadingListener:Lcom/pinguo/album/data/loader/DataLoadingListener;
invoke-static {v1}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$18(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)Lcom/pinguo/album/data/loader/DataLoadingListener;
move-result-object v1
invoke-interface {v1}, Lcom/pinguo/album/data/loader/DataLoadingListener;->onLoadingStarted()V
goto :goto_5
:pswitch_20
iget-object v1, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$1;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;
#getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mLoadingListener:Lcom/pinguo/album/data/loader/DataLoadingListener;
invoke-static {v1}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$18(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)Lcom/pinguo/album/data/loader/DataLoadingListener;
move-result-object v1
if-eqz v1, :cond_5
iget-object v1, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$1;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;
#getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mFailedVersion:J
invoke-static {v1}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$19(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)J
move-result-wide v1
const-wide/16 v3, -0x1
cmp-long v1, v1, v3
if-nez v1, :cond_3f
const/4 v0, 0x1
:goto_35
iget-object v1, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$1;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;
#getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mLoadingListener:Lcom/pinguo/album/data/loader/DataLoadingListener;
invoke-static {v1}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$18(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)Lcom/pinguo/album/data/loader/DataLoadingListener;
move-result-object v1
invoke-interface {v1, v0}, Lcom/pinguo/album/data/loader/DataLoadingListener;->onLoadingFinished(Z)V
goto :goto_5
:cond_3f
const/4 v0, 0x0
goto :goto_35
nop
:pswitch_data_42
.packed-switch 0x1
:pswitch_e
:pswitch_20
:pswitch_6
.end packed-switch
.end method