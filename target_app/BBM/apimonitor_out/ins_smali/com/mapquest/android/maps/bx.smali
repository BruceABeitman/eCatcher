.class final Lcom/mapquest/android/maps/bx;
.super Landroid/os/Handler;
.source "ThreadBasedTileDownloader.java"
.field final a:Ljava/lang/String;
.field final b:Lcom/mapquest/android/maps/MapView;
.field final synthetic c:Lcom/mapquest/android/maps/bw;
.method constructor <init>(Lcom/mapquest/android/maps/bw;)V
.registers 5
iput-object p1, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "mq.maps.downloader_"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Thread;->getId()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/mapquest/android/maps/bx;->a:Ljava/lang/String;
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v0, v0, Lcom/mapquest/android/maps/bw;->k:Lcom/mapquest/android/maps/bt;
iget-object v0, v0, Lcom/mapquest/android/maps/bt;->a:Lcom/mapquest/android/maps/MapView;
iput-object v0, p0, Lcom/mapquest/android/maps/bx;->b:Lcom/mapquest/android/maps/MapView;
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 6
const/4 v1, 0x2
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_1f0
:goto_6
:cond_6
invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
return-void
:pswitch_a
const/4 v0, 0x0
:try_start_b
iget-object v1, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v1, v1, Lcom/mapquest/android/maps/bw;->h:Lcom/mapquest/android/maps/bu;
invoke-virtual {v1}, Lcom/mapquest/android/maps/bu;->clear()V
move v1, v0
:cond_13
:goto_13
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v0, v0, Lcom/mapquest/android/maps/bw;->l:Lcom/mapquest/android/maps/bu;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bu;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/ca;
if-eqz v0, :cond_8f
iget-object v2, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v2, v2, Lcom/mapquest/android/maps/bw;->k:Lcom/mapquest/android/maps/bt;
invoke-static {v2, v0}, Lcom/mapquest/android/maps/bt;->a(Lcom/mapquest/android/maps/bt;Lcom/mapquest/android/maps/ca;)V
iget-object v2, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
invoke-virtual {v2, v0}, Lcom/mapquest/android/maps/bw;->b(Lcom/mapquest/android/maps/ca;)Lcom/mapquest/android/maps/ca;
move-result-object v2
if-eqz v2, :cond_34
invoke-virtual {v2}, Lcom/mapquest/android/maps/ca;->a()Z
move-result v3
if-nez v3, :cond_51
:cond_34
iget-object v2, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v2, v2, Lcom/mapquest/android/maps/bw;->k:Lcom/mapquest/android/maps/bt;
iget-boolean v2, v2, Lcom/mapquest/android/maps/bt;->e:Z
if-eqz v2, :cond_13
iget-object v2, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v2, v2, Lcom/mapquest/android/maps/bw;->h:Lcom/mapquest/android/maps/bu;
invoke-virtual {v2, v0}, Lcom/mapquest/android/maps/bu;->add(Ljava/lang/Object;)Z
iget-object v2, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
invoke-static {v2, v0}, Lcom/mapquest/android/maps/bw;->a(Lcom/mapquest/android/maps/bw;Lcom/mapquest/android/maps/ca;)V
if-nez v1, :cond_13
const/4 v0, 0x2
invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/bx;->removeMessages(I)V
const/4 v0, 0x1
move v1, v0
goto :goto_13
:cond_51
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
invoke-virtual {v0, v2}, Lcom/mapquest/android/maps/bw;->a(Lcom/mapquest/android/maps/ca;)Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
invoke-virtual {v0, v2}, Lcom/mapquest/android/maps/bw;->c(Lcom/mapquest/android/maps/ca;)V
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v0, v0, Lcom/mapquest/android/maps/bw;->k:Lcom/mapquest/android/maps/bt;
invoke-virtual {v0, v2}, Lcom/mapquest/android/maps/bt;->c(Lcom/mapquest/android/maps/ca;)V
:try_end_65
.catchall {:try_start_b .. :try_end_65} :catchall_1b5
.catch Lcom/mapquest/android/maps/bv; {:try_start_b .. :try_end_65} :catch_66
.catch Ljava/io/IOException; {:try_start_b .. :try_end_65} :catch_cd
.catch Lorg/apache/http/HttpException; {:try_start_b .. :try_end_65} :catch_148
.catch Ljava/lang/Exception; {:try_start_b .. :try_end_65} :catch_187
goto :goto_13
:catch_66
move-exception v0
:try_start_67
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v0, v0, Lcom/mapquest/android/maps/bw;->h:Lcom/mapquest/android/maps/bu;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bu;->clear()V
:try_end_6e
.catchall {:try_start_67 .. :try_end_6e} :catchall_1b5
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v0, v0, Lcom/mapquest/android/maps/bw;->h:Lcom/mapquest/android/maps/bu;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bu;->size()I
move-result v0
if-lez v0, :cond_6
:goto_78
:try_start_78
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v0, v0, Lcom/mapquest/android/maps/bw;->h:Lcom/mapquest/android/maps/bu;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bu;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/ca;
if-eqz v0, :cond_6
iget-object v1, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v1, v1, Lcom/mapquest/android/maps/bw;->k:Lcom/mapquest/android/maps/bt;
invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/bt;->b(Lcom/mapquest/android/maps/ca;)V
:try_end_8b
.catch Lcom/mapquest/android/maps/bv; {:try_start_78 .. :try_end_8b} :catch_8c
goto :goto_78
:catch_8c
move-exception v0
goto/16 :goto_6
:cond_8f
:try_start_8f
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
invoke-static {v0}, Lcom/mapquest/android/maps/bw;->a(Lcom/mapquest/android/maps/bw;)V
:goto_94
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v0, v0, Lcom/mapquest/android/maps/bw;->h:Lcom/mapquest/android/maps/bu;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bu;->peek()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/ca;
if-eqz v0, :cond_11c
iget-object v1, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v2, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v2, v2, Lcom/mapquest/android/maps/bw;->g:Lorg/apache/http/impl/io/HttpResponseParser;
invoke-static {v1, v2}, Lcom/mapquest/android/maps/bw;->a(Lcom/mapquest/android/maps/bw;Lorg/apache/http/impl/io/HttpResponseParser;)[B
move-result-object v1
iput-object v1, v0, Lcom/mapquest/android/maps/ca;->h:[B
iget-object v1, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/bw;->a(Lcom/mapquest/android/maps/ca;)Z
move-result v1
if-eqz v1, :cond_c5
iget-object v1, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/bw;->c(Lcom/mapquest/android/maps/ca;)V
iget-object v1, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/bw;->d(Lcom/mapquest/android/maps/ca;)V
iget-object v1, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v1, v1, Lcom/mapquest/android/maps/bw;->k:Lcom/mapquest/android/maps/bt;
invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/bt;->c(Lcom/mapquest/android/maps/ca;)V
:cond_c5
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v0, v0, Lcom/mapquest/android/maps/bw;->h:Lcom/mapquest/android/maps/bu;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bu;->poll()Ljava/lang/Object;
:try_end_cc
.catchall {:try_start_8f .. :try_end_cc} :catchall_1b5
.catch Lcom/mapquest/android/maps/bv; {:try_start_8f .. :try_end_cc} :catch_66
.catch Ljava/io/IOException; {:try_start_8f .. :try_end_cc} :catch_cd
.catch Lorg/apache/http/HttpException; {:try_start_8f .. :try_end_cc} :catch_148
.catch Ljava/lang/Exception; {:try_start_8f .. :try_end_cc} :catch_187
goto :goto_94
:catch_cd
move-exception v0
:try_start_ce
iget-object v1, p0, Lcom/mapquest/android/maps/bx;->a:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "IO Error while processing http request "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "; isNetworkAvailable: "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v2, v2, Lcom/mapquest/android/maps/bw;->k:Lcom/mapquest/android/maps/bt;
iget-boolean v2, v2, Lcom/mapquest/android/maps/bt;->e:Z
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bw;->a()V
:try_end_fb
.catchall {:try_start_ce .. :try_end_fb} :catchall_1b5
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v0, v0, Lcom/mapquest/android/maps/bw;->h:Lcom/mapquest/android/maps/bu;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bu;->size()I
move-result v0
if-lez v0, :cond_6
:goto_105
:try_start_105
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v0, v0, Lcom/mapquest/android/maps/bw;->h:Lcom/mapquest/android/maps/bu;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bu;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/ca;
if-eqz v0, :cond_6
iget-object v1, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v1, v1, Lcom/mapquest/android/maps/bw;->k:Lcom/mapquest/android/maps/bt;
invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/bt;->b(Lcom/mapquest/android/maps/ca;)V
:try_end_118
.catch Lcom/mapquest/android/maps/bv; {:try_start_105 .. :try_end_118} :catch_119
goto :goto_105
:catch_119
move-exception v0
goto/16 :goto_6
:cond_11c
const/4 v0, 0x2
:try_start_11d
iget-object v1, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
invoke-static {v1}, Lcom/mapquest/android/maps/bw;->b(Lcom/mapquest/android/maps/bw;)I
move-result v1
int-to-long v1, v1
invoke-virtual {p0, v0, v1, v2}, Lcom/mapquest/android/maps/bx;->sendEmptyMessageDelayed(IJ)Z
:try_end_127
.catchall {:try_start_11d .. :try_end_127} :catchall_1b5
.catch Lcom/mapquest/android/maps/bv; {:try_start_11d .. :try_end_127} :catch_66
.catch Ljava/io/IOException; {:try_start_11d .. :try_end_127} :catch_cd
.catch Lorg/apache/http/HttpException; {:try_start_11d .. :try_end_127} :catch_148
.catch Ljava/lang/Exception; {:try_start_11d .. :try_end_127} :catch_187
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v0, v0, Lcom/mapquest/android/maps/bw;->h:Lcom/mapquest/android/maps/bu;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bu;->size()I
move-result v0
if-lez v0, :cond_6
:try_start_131
:goto_131
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v0, v0, Lcom/mapquest/android/maps/bw;->h:Lcom/mapquest/android/maps/bu;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bu;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/ca;
if-eqz v0, :cond_6
iget-object v1, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v1, v1, Lcom/mapquest/android/maps/bw;->k:Lcom/mapquest/android/maps/bt;
invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/bt;->b(Lcom/mapquest/android/maps/ca;)V
:try_end_144
.catch Lcom/mapquest/android/maps/bv; {:try_start_131 .. :try_end_144} :catch_145
goto :goto_131
:catch_145
move-exception v0
goto/16 :goto_6
:catch_148
move-exception v0
:try_start_149
iget-object v1, p0, Lcom/mapquest/android/maps/bx;->a:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Http Error while processing http request"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bw;->a()V
:try_end_166
.catchall {:try_start_149 .. :try_end_166} :catchall_1b5
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v0, v0, Lcom/mapquest/android/maps/bw;->h:Lcom/mapquest/android/maps/bu;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bu;->size()I
move-result v0
if-lez v0, :cond_6
:try_start_170
:goto_170
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v0, v0, Lcom/mapquest/android/maps/bw;->h:Lcom/mapquest/android/maps/bu;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bu;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/ca;
if-eqz v0, :cond_6
iget-object v1, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v1, v1, Lcom/mapquest/android/maps/bw;->k:Lcom/mapquest/android/maps/bt;
invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/bt;->b(Lcom/mapquest/android/maps/ca;)V
:try_end_183
.catch Lcom/mapquest/android/maps/bv; {:try_start_170 .. :try_end_183} :catch_184
goto :goto_170
:catch_184
move-exception v0
goto/16 :goto_6
:catch_187
move-exception v0
:try_start_188
iget-object v1, p0, Lcom/mapquest/android/maps/bx;->a:Ljava/lang/String;
const-string v2, "Fatal Error while processing http request"
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bw;->a()V
:try_end_194
.catchall {:try_start_188 .. :try_end_194} :catchall_1b5
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v0, v0, Lcom/mapquest/android/maps/bw;->h:Lcom/mapquest/android/maps/bu;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bu;->size()I
move-result v0
if-lez v0, :cond_6
:goto_19e
:try_start_19e
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v0, v0, Lcom/mapquest/android/maps/bw;->h:Lcom/mapquest/android/maps/bu;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bu;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/ca;
if-eqz v0, :cond_6
iget-object v1, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v1, v1, Lcom/mapquest/android/maps/bw;->k:Lcom/mapquest/android/maps/bt;
invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/bt;->b(Lcom/mapquest/android/maps/ca;)V
:try_end_1b1
.catch Lcom/mapquest/android/maps/bv; {:try_start_19e .. :try_end_1b1} :catch_1b2
goto :goto_19e
:catch_1b2
move-exception v0
goto/16 :goto_6
:catchall_1b5
move-exception v0
move-object v1, v0
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v0, v0, Lcom/mapquest/android/maps/bw;->h:Lcom/mapquest/android/maps/bu;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bu;->size()I
move-result v0
if-lez v0, :cond_1d8
:try_start_1c1
:goto_1c1
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v0, v0, Lcom/mapquest/android/maps/bw;->h:Lcom/mapquest/android/maps/bu;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bu;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/ca;
if-eqz v0, :cond_1d8
iget-object v2, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v2, v2, Lcom/mapquest/android/maps/bw;->k:Lcom/mapquest/android/maps/bt;
invoke-virtual {v2, v0}, Lcom/mapquest/android/maps/bt;->b(Lcom/mapquest/android/maps/ca;)V
:try_end_1d4
.catch Lcom/mapquest/android/maps/bv; {:try_start_1c1 .. :try_end_1d4} :catch_1d5
goto :goto_1c1
:catch_1d5
move-exception v0
goto/16 :goto_6
:cond_1d8
throw v1
:pswitch_1d9
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v0, v0, Lcom/mapquest/android/maps/bw;->i:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
iget-object v0, v0, Lcom/mapquest/android/maps/bw;->i:Landroid/os/Handler;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/mapquest/android/maps/bx;->c:Lcom/mapquest/android/maps/bw;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bw;->a()V
goto/16 :goto_6
nop
:pswitch_data_1f0
.packed-switch 0x1
:pswitch_a
:pswitch_1d9
:pswitch_1d9
.end packed-switch
.end method