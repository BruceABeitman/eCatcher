.class public Lcom/lenovo/anyshare/sdk/internal/w;
.super Ljava/lang/Object;
.source "ServerPipeAcceptor.java"
.field protected final a:Ljava/util/concurrent/atomic/AtomicBoolean;
.field protected b:Ljava/net/ServerSocket;
.field protected c:I
.field protected final d:Ljava/util/List;
.field protected final e:Ljava/util/concurrent/BlockingQueue;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x0
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/w;->a:Ljava/util/concurrent/atomic/AtomicBoolean;
new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/w;->d:Ljava/util/List;
new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/w;->e:Ljava/util/concurrent/BlockingQueue;
return-void
.end method
.method public a(I)V
.registers 8
const-string/jumbo v3, "PipeAcceptor.Server"
const-string/jumbo v4, "start Socket Server for pipe."
invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->c(Ljava/lang/String;Ljava/lang/String;)V
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/w;->a:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v4, 0x0
const/4 v5, 0x1
invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
move-result v3
if-nez v3, :cond_14
:goto_13
return-void
:cond_14
iput p1, p0, Lcom/lenovo/anyshare/sdk/internal/w;->c:I
new-instance v2, Lcom/lenovo/anyshare/sdk/internal/w$1;
invoke-direct {v2, p0}, Lcom/lenovo/anyshare/sdk/internal/w$1;-><init>(Lcom/lenovo/anyshare/sdk/internal/w;)V
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/w$2;
invoke-direct {v1, p0}, Lcom/lenovo/anyshare/sdk/internal/w$2;-><init>(Lcom/lenovo/anyshare/sdk/internal/w;)V
monitor-enter p0
:try_start_21
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/w;->d()V
:try_end_24
.catchall {:try_start_21 .. :try_end_24} :catchall_2c
:try_start_24
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/be;->b(Ljava/lang/Runnable;)V
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/be;->b(Ljava/lang/Runnable;)V
:try_start_2a
:try_end_2a
.catchall {:try_start_24 .. :try_end_2a} :catchall_2c
.catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_24 .. :try_end_2a} :catch_2f
monitor-exit p0
goto :goto_13
:catchall_2c
move-exception v3
monitor-exit p0
:try_end_2e
.catchall {:try_start_2a .. :try_end_2e} :catchall_2c
throw v3
:catch_2f
move-exception v0
:try_start_30
const-string/jumbo v3, "PipeAcceptor.Server"
invoke-static {v3, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/w;->b()V
new-instance v3, Ljava/io/IOException;
invoke-direct {v3}, Ljava/io/IOException;-><init>()V
throw v3
:try_end_3f
.catchall {:try_start_30 .. :try_end_3f} :catchall_2c
.end method
.method protected a(Lcom/lenovo/anyshare/sdk/internal/s;)V
.registers 7
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/w;->d:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_22
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/lenovo/anyshare/sdk/internal/w$a;
:try_start_12
invoke-interface {v2, p1}, Lcom/lenovo/anyshare/sdk/internal/w$a;->c(Lcom/lenovo/anyshare/sdk/internal/s;)V
:try_end_15
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16
goto :goto_6
:catch_16
move-exception v0
const-string/jumbo v3, "PipeAcceptor.Server"
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6
:cond_22
return-void
.end method
.method public a(Lcom/lenovo/anyshare/sdk/internal/w$a;)V
.registers 3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/w;->d:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public a()Z
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/w;->a:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
return v0
.end method
.method public b()V
.registers 4
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/w;->a:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
move-result v0
if-nez v0, :cond_b
:goto_a
return-void
:cond_b
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/w;->c()V
goto :goto_a
.end method
.method public b(Lcom/lenovo/anyshare/sdk/internal/w$a;)V
.registers 3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/w;->d:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method protected declared-synchronized c()V
.registers 6
monitor-enter p0
:try_start_1
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/w;->b:Ljava/net/ServerSocket;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_49
if-eqz v1, :cond_27
:try_start_5
invoke-static {v1}, Ldroidbox/java/net/ServerSocket;->close(Ljava/net/ServerSocket;)V
const-string/jumbo v2, "PipeAcceptor.Server"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
iget v4, p0, Lcom/lenovo/anyshare/sdk/internal/w;->c:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " socket server closed."
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->c(Ljava/lang/String;Ljava/lang/String;)V
:goto_24
:try_end_24
.catchall {:try_start_5 .. :try_end_24} :catchall_49
.catch Ljava/io/IOException; {:try_start_5 .. :try_end_24} :catch_29
const/4 v2, 0x0
:try_start_25
iput-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/w;->b:Ljava/net/ServerSocket;
:cond_27
:try_end_27
.catchall {:try_start_25 .. :try_end_27} :catchall_49
monitor-exit p0
return-void
:catch_29
move-exception v0
:try_start_2a
const-string/jumbo v2, "PipeAcceptor.Server"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, ""
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_48
.catchall {:try_start_2a .. :try_end_48} :catchall_49
goto :goto_24
:catchall_49
move-exception v2
monitor-exit p0
throw v2
.end method
.method protected d()V
.registers 10
const/16 v8, 0x3a98
const-string/jumbo v5, "PipeAcceptor.Server"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "openServerSocket at "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
iget v7, p0, Lcom/lenovo/anyshare/sdk/internal/w;->c:I
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, " socket timeout: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v4, 0x0
:goto_2a
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/w;->a:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v5
if-eqz v5, :cond_49
const/4 v2, 0x0
:try_start_33
new-instance v3, Ljava/net/ServerSocket;
iget v5, p0, Lcom/lenovo/anyshare/sdk/internal/w;->c:I
invoke-direct {v3, v5}, Ljava/net/ServerSocket;-><init>(I)V
:try_end_3a
.catchall {:try_start_33 .. :try_end_3a} :catchall_74
.catch Ljava/io/IOException; {:try_start_33 .. :try_end_3a} :catch_4a
const/16 v5, 0x3a98
:try_start_3c
invoke-virtual {v3, v5}, Ljava/net/ServerSocket;->setSoTimeout(I)V
const/4 v4, 0x1
iput-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/w;->b:Ljava/net/ServerSocket;
:try_end_42
.catchall {:try_start_3c .. :try_end_42} :catchall_d2
.catch Ljava/io/IOException; {:try_start_3c .. :try_end_42} :catch_d5
if-nez v4, :cond_49
if-eqz v3, :cond_49
:try_start_46
invoke-static {v3}, Ldroidbox/java/net/ServerSocket;->close(Ljava/net/ServerSocket;)V
:try_end_49
.catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_b5
:cond_49
:goto_49
return-void
:catch_4a
move-exception v1
:goto_4b
:try_start_4b
const-string/jumbo v5, "PipeAcceptor.Server"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "create Socket server Exception: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
:try_end_65
.catchall {:try_start_4b .. :try_end_65} :catchall_74
if-nez v4, :cond_6c
if-eqz v2, :cond_6c
:try_start_69
invoke-static {v2}, Ldroidbox/java/net/ServerSocket;->close(Ljava/net/ServerSocket;)V
:goto_6c
:cond_6c
:try_end_6c
.catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_99
const-wide/16 v5, 0x7d0
:try_start_6e
invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
:try_end_71
.catch Ljava/lang/InterruptedException; {:try_start_6e .. :try_end_71} :catch_72
goto :goto_2a
:catch_72
move-exception v5
goto :goto_2a
:catchall_74
move-exception v5
:goto_75
if-nez v4, :cond_7c
if-eqz v2, :cond_7c
:try_start_79
invoke-static {v2}, Ldroidbox/java/net/ServerSocket;->close(Ljava/net/ServerSocket;)V
:try_end_7c
.catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d
:cond_7c
:goto_7c
throw v5
:catch_7d
move-exception v0
const-string/jumbo v6, "PipeAcceptor.Server"
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v8, "Socket close Exception: "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_7c
:catch_99
move-exception v0
const-string/jumbo v5, "PipeAcceptor.Server"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "Socket close Exception: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6c
:catch_b5
move-exception v0
const-string/jumbo v5, "PipeAcceptor.Server"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "Socket close Exception: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_49
:catchall_d2
move-exception v5
move-object v2, v3
goto :goto_75
:catch_d5
move-exception v1
move-object v2, v3
goto/16 :goto_4b
.end method
.method protected e()V
.registers 13
const-string/jumbo v6, "PipeAcceptor.Server"
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v8, "handleServerSocket started at "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget v8, p0, Lcom/lenovo/anyshare/sdk/internal/w;->c:I
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, "!"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
const-wide/16 v0, 0x0
const/4 v5, 0x0
const/4 v4, 0x0
monitor-enter p0
:try_start_28
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/w;->b:Ljava/net/ServerSocket;
if-nez v4, :cond_2e
monitor-exit p0
:cond_2d
return-void
:cond_2e
monitor-exit p0
:try_end_2f
.catchall {:try_start_28 .. :try_end_2f} :catchall_69
:goto_2f
:cond_2f
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/w;->a()Z
move-result v6
if-eqz v6, :cond_2d
invoke-virtual {v4}, Ljava/net/ServerSocket;->isClosed()Z
move-result v6
if-nez v6, :cond_2d
:try_start_3b
invoke-static {v4}, Ldroidbox/java/net/ServerSocket;->accept(Ljava/net/ServerSocket;)Ljava/net/Socket;
move-result-object v5
new-instance v3, Lcom/lenovo/anyshare/sdk/internal/v;
invoke-direct {v3, v5}, Lcom/lenovo/anyshare/sdk/internal/v;-><init>(Ljava/net/Socket;)V
iget-object v6, p0, Lcom/lenovo/anyshare/sdk/internal/w;->e:Ljava/util/concurrent/BlockingQueue;
invoke-interface {v6, v3}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
const-string/jumbo v6, "PipeAcceptor.Server"
const-string/jumbo v7, "(%d) accepted a client %s"
const/4 v8, 0x2
new-array v8, v8, [Ljava/lang/Object;
const/4 v9, 0x0
const-wide/16 v10, 0x1
add-long/2addr v0, v10
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v10
aput-object v10, v8, v9
const/4 v9, 0x1
invoke-virtual {v3}, Lcom/lenovo/anyshare/sdk/internal/v;->f()Ljava/lang/String;
move-result-object v10
aput-object v10, v8, v9
invoke-static {v6, v7, v8}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
:try_end_66
.catch Ljava/net/SocketTimeoutException; {:try_start_3b .. :try_end_66} :catch_67
.catch Ljava/io/IOException; {:try_start_3b .. :try_end_66} :catch_6c
.catch Ljava/lang/Exception; {:try_start_3b .. :try_end_66} :catch_78
goto :goto_2f
:catch_67
move-exception v2
goto :goto_2f
:catchall_69
move-exception v6
:try_start_6a
monitor-exit p0
:try_end_6b
.catchall {:try_start_6a .. :try_end_6b} :catchall_69
throw v6
:catch_6c
move-exception v2
const-string/jumbo v6, "PipeAcceptor.Server"
invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2f
:catch_78
move-exception v2
const-string/jumbo v6, "PipeAcceptor.Server"
invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v5, :cond_2f
invoke-virtual {v5}, Ljava/net/Socket;->isConnected()Z
move-result v6
if-eqz v6, :cond_2f
:try_start_8b
invoke-static {v5}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
:try_end_8e
.catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f
goto :goto_2f
:catch_8f
move-exception v6
goto :goto_2f
.end method
.method protected f()V
.registers 7
:goto_0
:cond_0
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/w;->a()Z
move-result v2
if-eqz v2, :cond_1f
:try_start_6
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/w;->e:Ljava/util/concurrent/BlockingQueue;
const-wide/16 v3, 0x2
sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/lenovo/anyshare/sdk/internal/v;
if-eqz v1, :cond_0
invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/v;->a()Z
move-result v2
if-nez v2, :cond_0
invoke-virtual {p0, v1}, Lcom/lenovo/anyshare/sdk/internal/w;->a(Lcom/lenovo/anyshare/sdk/internal/s;)V
:try_end_1d
.catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_1d} :catch_1e
goto :goto_0
:catch_1e
move-exception v0
:cond_1f
return-void
.end method