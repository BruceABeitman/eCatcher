.class public final Lcom/mato/sdk/proxy/i;
.super Ljava/lang/Thread;
.field private static final a:Ljava/lang/String; = "Mato.WatchDogThread"
.field private static final b:I = 0xa
.field private static final c:I = 0x32
.field private static final d:I = 0x7d0
.field private static final e:I = 0x3e8
.field private static final f:I = 0x1388
.field private g:Ljava/util/concurrent/CountDownLatch;
.field private h:Z
.field private i:J
.field private j:Ljava/lang/Object;
.field private k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/mato/sdk/proxy/i;->h:Z
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/mato/sdk/proxy/i;->j:Ljava/lang/Object;
new-instance v0, Ljava/util/concurrent/CountDownLatch;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
iput-object v0, p0, Lcom/mato/sdk/proxy/i;->g:Ljava/util/concurrent/CountDownLatch;
return-void
.end method
.method private f()V
.registers 5
:goto_0
:cond_0
:try_start_0
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->g:Ljava/util/concurrent/CountDownLatch;
const-wide/16 v1, 0x3e8
sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
:try_end_9
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_d
move-result v0
if-eqz v0, :cond_0
return-void
:catch_d
move-exception v0
goto :goto_0
.end method
.method private g()V
.registers 4
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
invoke-virtual {v0}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->isAlive()Z
move-result v0
if-nez v0, :cond_3c
const-string/jumbo v0, "Mato.WatchDogThread"
const-string/jumbo v1, "httpHandler is dead"
invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
invoke-virtual {v0}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->a()V
new-instance v0, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
invoke-direct {v0}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;-><init>()V
iput-object v0, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
invoke-virtual {v0}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->start()V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/mato/sdk/proxy/i;->i:J
invoke-direct {p0}, Lcom/mato/sdk/proxy/i;->i()Z
move-result v0
if-eqz v0, :cond_3d
new-instance v0, Lcom/mato/sdk/proxy/Address;
const-string/jumbo v1, "127.0.0.1"
invoke-static {}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->d()I
move-result v2
invoke-direct {v0, v1, v2}, Lcom/mato/sdk/proxy/Address;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/mato/sdk/proxy/Proxy;->a:Lcom/mato/sdk/proxy/Address;
:goto_3c
:cond_3c
return-void
:cond_3d
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
invoke-virtual {v0}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->a()V
goto :goto_3c
.end method
.method private h()Z
.registers 4
new-instance v0, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
invoke-direct {v0}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;-><init>()V
iput-object v0, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
invoke-virtual {v0}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->start()V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/mato/sdk/proxy/i;->i:J
:try_start_12
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
const-wide/16 v1, 0xa
invoke-virtual {v0, v1, v2}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->join(J)V
:try_end_19
.catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_19} :catch_1e
invoke-direct {p0}, Lcom/mato/sdk/proxy/i;->i()Z
move-result v0
:goto_1d
return v0
:catch_1e
move-exception v0
const-string/jumbo v1, "Mato.WatchDogThread"
invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/Exception;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_1d
.end method
.method private i()Z
.registers 9
const/4 v2, 0x1
const/4 v1, 0x0
move v0, v1
:goto_3
iget-object v3, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
invoke-virtual {v3}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->isAlive()Z
move-result v3
if-eqz v3, :cond_f
const/16 v3, 0x28
if-lt v0, v3, :cond_5f
:cond_f
const-string/jumbo v0, "Mato.WatchDogThread"
const-string/jumbo v2, "on load failed"
invoke-static {v0, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/mato/sdk/proxy/i;->j:Ljava/lang/Object;
monitor-enter v2
const/4 v0, 0x0
:try_start_1c
iput-boolean v0, p0, Lcom/mato/sdk/proxy/i;->h:Z
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->j:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->notify()V
const-string/jumbo v0, "Mato.WatchDogThread"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "HttpHandler start success: time = "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
iget-wide v6, p0, Lcom/mato/sdk/proxy/i;->i:J
sub-long/2addr v4, v6
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Lcom/mato/sdk/utils/f;->c(Ljava/lang/String;Ljava/lang/String;)V
monitor-exit v2
:try_end_41
.catchall {:try_start_1c .. :try_end_41} :catchall_a7
const-string/jumbo v0, "Mato.WatchDogThread"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "HttpHandler start failed: time = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
iget-wide v5, p0, Lcom/mato/sdk/proxy/i;->i:J
sub-long/2addr v3, v5
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/mato/sdk/utils/f;->d(Ljava/lang/String;Ljava/lang/String;)V
:goto_5e
return v1
:cond_5f
invoke-static {}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->d()I
move-result v3
if-eqz v3, :cond_9c
const-string/jumbo v0, "Mato.WatchDogThread"
const-string/jumbo v1, "get bind port not null"
invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->c(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/mato/sdk/proxy/i;->j:Ljava/lang/Object;
monitor-enter v1
const/4 v0, 0x1
:try_start_72
iput-boolean v0, p0, Lcom/mato/sdk/proxy/i;->h:Z
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->j:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->notify()V
const-string/jumbo v0, "Mato.WatchDogThread"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "HttpHandler start success: time = "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
iget-wide v6, p0, Lcom/mato/sdk/proxy/i;->i:J
sub-long/2addr v4, v6
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Lcom/mato/sdk/utils/f;->c(Ljava/lang/String;Ljava/lang/String;)V
monitor-exit v1
:try_end_97
.catchall {:try_start_72 .. :try_end_97} :catchall_99
move v1, v2
goto :goto_5e
:catchall_99
move-exception v0
monitor-exit v1
throw v0
:cond_9c
:try_start_9c
iget-object v3, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
const-wide/16 v4, 0x32
invoke-virtual {v3, v4, v5}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->join(J)V
:try_end_a3
.catch Ljava/lang/InterruptedException; {:try_start_9c .. :try_end_a3} :catch_aa
:goto_a3
add-int/lit8 v0, v0, 0x1
goto/16 :goto_3
:catchall_a7
move-exception v0
monitor-exit v2
throw v0
:catch_aa
move-exception v3
goto :goto_a3
.end method
.method private j()V
.registers 4
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
invoke-virtual {v0}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->a()V
:try_start_9
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
const-wide/16 v1, 0x1388
invoke-virtual {v0, v1, v2}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->join(J)V
:goto_10
:try_end_10
.catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_10} :catch_21
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
invoke-virtual {v0}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->isAlive()Z
move-result v0
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
invoke-virtual {v0}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->interrupt()V
:cond_1d
const/4 v0, 0x0
iput-object v0, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
:cond_20
return-void
:catch_21
move-exception v0
goto :goto_10
.end method
.method private k()Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
.registers 2
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
return-object v0
.end method
.method private l()V
.registers 3
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
sget-object v1, Lcom/mato/sdk/utils/h$b;->a:Lcom/mato/sdk/utils/h$b;
invoke-virtual {v0, v1}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->a(Lcom/mato/sdk/utils/h$b;)V
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
sget-object v1, Lcom/mato/sdk/utils/h$b;->c:Lcom/mato/sdk/utils/h$b;
invoke-virtual {v0, v1}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->a(Lcom/mato/sdk/utils/h$b;)V
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
sget-object v1, Lcom/mato/sdk/utils/h$b;->d:Lcom/mato/sdk/utils/h$b;
invoke-virtual {v0, v1}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->a(Lcom/mato/sdk/utils/h$b;)V
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
sget-object v1, Lcom/mato/sdk/utils/h$b;->e:Lcom/mato/sdk/utils/h$b;
invoke-virtual {v0, v1}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->a(Lcom/mato/sdk/utils/h$b;)V
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
sget-object v1, Lcom/mato/sdk/utils/h$b;->b:Lcom/mato/sdk/utils/h$b;
invoke-virtual {v0, v1}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->a(Lcom/mato/sdk/utils/h$b;)V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
invoke-virtual {v0}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->e()V
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
invoke-virtual {v0, p1, p2}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final a(Z)V
.registers 3
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
invoke-virtual {v0, p1}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->a(Z)V
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->k:Lcom/mato/android/matoid/service/mtunnel/HttpHandler;
invoke-virtual {v0}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->b()V
return-void
.end method
.method public final c()Z
.registers 2
iget-boolean v0, p0, Lcom/mato/sdk/proxy/i;->h:Z
return v0
.end method
.method public final d()V
.registers 2
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->g:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
return-void
.end method
.method public final e()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->j:Ljava/lang/Object;
return-object v0
.end method
.method public final run()V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->g:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-eqz v0, :cond_2e
invoke-direct {p0}, Lcom/mato/sdk/proxy/i;->h()Z
move-result v0
if-eqz v0, :cond_2a
const-string/jumbo v0, "Mato.WatchDogThread"
const-string/jumbo v1, "startThread succeed"
invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->d(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/mato/sdk/proxy/i;->h:Z
:try_start_1e
:try_end_1e
.catchall {:try_start_0 .. :try_end_1e} :catchall_37
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_32
:goto_1e
:cond_1e
iget-object v0, p0, Lcom/mato/sdk/proxy/i;->g:Ljava/util/concurrent/CountDownLatch;
const-wide/16 v1, 0x3e8
sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
:try_end_27
.catchall {:try_start_1e .. :try_end_27} :catchall_37
.catch Ljava/lang/Exception; {:try_start_1e .. :try_end_27} :catch_3c
move-result v0
if-eqz v0, :cond_1e
:goto_2a
:cond_2a
invoke-direct {p0}, Lcom/mato/sdk/proxy/i;->j()V
:goto_2d
return-void
:cond_2e
const/4 v0, 0x0
:try_start_2f
iput-boolean v0, p0, Lcom/mato/sdk/proxy/i;->h:Z
:try_end_31
.catchall {:try_start_2f .. :try_end_31} :catchall_37
.catch Ljava/lang/Exception; {:try_start_2f .. :try_end_31} :catch_32
goto :goto_2a
:catch_32
move-exception v0
invoke-direct {p0}, Lcom/mato/sdk/proxy/i;->j()V
goto :goto_2d
:catchall_37
move-exception v0
invoke-direct {p0}, Lcom/mato/sdk/proxy/i;->j()V
throw v0
:catch_3c
move-exception v0
goto :goto_1e
.end method