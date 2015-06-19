.class final Lcom/mapquest/android/maps/v;
.super Ljava/lang/Thread;
.source "HttpConnectionPool.java"
.field volatile a:Z
.field private final b:Lorg/apache/http/conn/ClientConnectionManager;
.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
iput-object p1, p0, Lcom/mapquest/android/maps/v;->b:Lorg/apache/http/conn/ClientConnectionManager;
return-void
.end method
.method public final run()V
.registers 5
:goto_0
:try_start_0
iget-boolean v0, p0, Lcom/mapquest/android/maps/v;->a:Z
if-nez v0, :cond_22
monitor-enter p0
:try_end_5
.catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_21
const-wide/16 v0, 0xbb8
:try_start_7
invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
iget-boolean v0, p0, Lcom/mapquest/android/maps/v;->a:Z
if-nez v0, :cond_1c
iget-object v0, p0, Lcom/mapquest/android/maps/v;->b:Lorg/apache/http/conn/ClientConnectionManager;
invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V
iget-object v0, p0, Lcom/mapquest/android/maps/v;->b:Lorg/apache/http/conn/ClientConnectionManager;
const-wide/16 v1, 0x1388
sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
:cond_1c
monitor-exit p0
:try_end_1d
.catchall {:try_start_7 .. :try_end_1d} :catchall_1e
goto :goto_0
:catchall_1e
move-exception v0
:try_start_1f
monitor-exit p0
throw v0
:catch_21
:try_end_21
.catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_21} :catch_21
move-exception v0
:cond_22
return-void
.end method