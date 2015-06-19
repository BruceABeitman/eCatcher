.class  Lcom/pinguo/album/data/download/IncrementDataDownloader$1;
.super Landroid/os/Handler;
.source "IncrementDataDownloader.java"
.field final synthetic this$0:Lcom/pinguo/album/data/download/IncrementDataDownloader;
.method constructor <init>(Lcom/pinguo/album/data/download/IncrementDataDownloader;Landroid/os/Looper;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader$1;->this$0:Lcom/pinguo/album/data/download/IncrementDataDownloader;
invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 4
const/4 v1, 0x0
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_36
:goto_6
return-void
:pswitch_7
iget-object v0, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader$1;->this$0:Lcom/pinguo/album/data/download/IncrementDataDownloader;
#getter for: Lcom/pinguo/album/data/download/IncrementDataDownloader;->mExternalListener:Lcom/pinguo/album/data/download/IncrementDataDownloader$IncrementDataLoadingListener;
invoke-static {v0}, Lcom/pinguo/album/data/download/IncrementDataDownloader;->access$0(Lcom/pinguo/album/data/download/IncrementDataDownloader;)Lcom/pinguo/album/data/download/IncrementDataDownloader$IncrementDataLoadingListener;
move-result-object v0
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader$1;->this$0:Lcom/pinguo/album/data/download/IncrementDataDownloader;
#getter for: Lcom/pinguo/album/data/download/IncrementDataDownloader;->mExternalListener:Lcom/pinguo/album/data/download/IncrementDataDownloader$IncrementDataLoadingListener;
invoke-static {v0}, Lcom/pinguo/album/data/download/IncrementDataDownloader;->access$0(Lcom/pinguo/album/data/download/IncrementDataDownloader;)Lcom/pinguo/album/data/download/IncrementDataDownloader$IncrementDataLoadingListener;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/album/data/download/IncrementDataDownloader$IncrementDataLoadingListener;->onDownloadFinished()V
:cond_18
iget-object v0, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader$1;->this$0:Lcom/pinguo/album/data/download/IncrementDataDownloader;
#setter for: Lcom/pinguo/album/data/download/IncrementDataDownloader;->mWorkThread:Lcom/pinguo/album/data/download/IncrementDataDownloader$WorkThread;
invoke-static {v0, v1}, Lcom/pinguo/album/data/download/IncrementDataDownloader;->access$1(Lcom/pinguo/album/data/download/IncrementDataDownloader;Lcom/pinguo/album/data/download/IncrementDataDownloader$WorkThread;)V
goto :goto_6
:pswitch_1e
iget-object v0, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader$1;->this$0:Lcom/pinguo/album/data/download/IncrementDataDownloader;
#getter for: Lcom/pinguo/album/data/download/IncrementDataDownloader;->mExternalListener:Lcom/pinguo/album/data/download/IncrementDataDownloader$IncrementDataLoadingListener;
invoke-static {v0}, Lcom/pinguo/album/data/download/IncrementDataDownloader;->access$0(Lcom/pinguo/album/data/download/IncrementDataDownloader;)Lcom/pinguo/album/data/download/IncrementDataDownloader$IncrementDataLoadingListener;
move-result-object v0
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader$1;->this$0:Lcom/pinguo/album/data/download/IncrementDataDownloader;
#getter for: Lcom/pinguo/album/data/download/IncrementDataDownloader;->mExternalListener:Lcom/pinguo/album/data/download/IncrementDataDownloader$IncrementDataLoadingListener;
invoke-static {v0}, Lcom/pinguo/album/data/download/IncrementDataDownloader;->access$0(Lcom/pinguo/album/data/download/IncrementDataDownloader;)Lcom/pinguo/album/data/download/IncrementDataDownloader$IncrementDataLoadingListener;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/album/data/download/IncrementDataDownloader$IncrementDataLoadingListener;->onDownloadFailed()V
:cond_2f
iget-object v0, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader$1;->this$0:Lcom/pinguo/album/data/download/IncrementDataDownloader;
#setter for: Lcom/pinguo/album/data/download/IncrementDataDownloader;->mWorkThread:Lcom/pinguo/album/data/download/IncrementDataDownloader$WorkThread;
invoke-static {v0, v1}, Lcom/pinguo/album/data/download/IncrementDataDownloader;->access$1(Lcom/pinguo/album/data/download/IncrementDataDownloader;Lcom/pinguo/album/data/download/IncrementDataDownloader$WorkThread;)V
goto :goto_6
nop
:pswitch_data_36
.packed-switch 0x1
:pswitch_7
:pswitch_1e
.end packed-switch
.end method