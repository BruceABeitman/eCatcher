.class  Lcom/igexin/download/j;
.super Landroid/os/Handler;
.field final synthetic a:Lcom/igexin/download/SdkDownLoader;
.method constructor <init>(Lcom/igexin/download/SdkDownLoader;Landroid/os/Looper;)V
.registers 3
iput-object p1, p0, Lcom/igexin/download/j;->a:Lcom/igexin/download/SdkDownLoader;
invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 7
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_4e
:goto_5
return-void
:pswitch_6
iget-object v0, p0, Lcom/igexin/download/j;->a:Lcom/igexin/download/SdkDownLoader;
invoke-static {v0}, Lcom/igexin/download/SdkDownLoader;->a(Lcom/igexin/download/SdkDownLoader;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_d
iget-object v0, p0, Lcom/igexin/download/j;->a:Lcom/igexin/download/SdkDownLoader;
invoke-static {v0}, Lcom/igexin/download/SdkDownLoader;->b(Lcom/igexin/download/SdkDownLoader;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_4c
iget-object v0, p0, Lcom/igexin/download/j;->a:Lcom/igexin/download/SdkDownLoader;
iget-object v0, v0, Lcom/igexin/download/SdkDownLoader;->updateData:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-lez v0, :cond_4c
iget-object v0, p0, Lcom/igexin/download/j;->a:Lcom/igexin/download/SdkDownLoader;
iget-object v0, v0, Lcom/igexin/download/SdkDownLoader;->updateData:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_2f
:cond_2f
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/download/DownloadInfo;
iget-object v3, p0, Lcom/igexin/download/j;->a:Lcom/igexin/download/SdkDownLoader;
iget-object v4, v0, Lcom/igexin/download/DownloadInfo;->mData8:Ljava/lang/String;
invoke-virtual {v3, v4}, Lcom/igexin/download/SdkDownLoader;->a(Ljava/lang/String;)Lcom/igexin/download/IDownloadCallback;
move-result-object v3
if-eqz v3, :cond_2f
invoke-interface {v3, v0}, Lcom/igexin/download/IDownloadCallback;->update(Lcom/igexin/download/DownloadInfo;)V
goto :goto_2f
:catchall_49
move-exception v0
monitor-exit v1
:try_end_4b
.catchall {:try_start_d .. :try_end_4b} :catchall_49
throw v0
:try_start_4c
:cond_4c
monitor-exit v1
:try_end_4d
.catchall {:try_start_4c .. :try_end_4d} :catchall_49
goto :goto_5
:pswitch_data_4e
.packed-switch 0x2
:pswitch_6
.end packed-switch
.end method