.class public abstract Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;
.super Ljava/lang/Object;
.source "AbstractConnPool.java"
.implements Lch/boye/httpclientandroidlib/impl/conn/tsccm/RefQueueHandler;
.field protected idleConnHandler:Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;
.field protected volatile isShutDown:Z
.field protected issuedConnections:Ljava/util/Set;
.field protected leasedConnections:Ljava/util/Set;
.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
.field protected numConnections:I
.field protected final poolLock:Ljava/util/concurrent/locks/Lock;
.field protected refQueue:Ljava/lang/ref/ReferenceQueue;
.method protected constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->leasedConnections:Ljava/util/Set;
new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->idleConnHandler:Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;
new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;
invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;
return-void
.end method
.method protected closeConnection(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V
.registers 5
if-eqz p1, :cond_5
:try_start_2
invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->close()V
:try_end_5
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6
:cond_5
:goto_5
return-void
:catch_6
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v2, "I/O error closing connection"
invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_5
.end method
.method public closeExpiredConnections()V
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->idleConnHandler:Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;->closeExpiredConnections()V
:try_end_a
.catchall {:try_start_5 .. :try_end_a} :catchall_10
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
:catchall_10
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
.registers 7
if-nez p3, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Time unit must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_f
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->idleConnHandler:Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;
invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;->closeIdleConnections(J)V
:try_end_18
.catchall {:try_start_f .. :try_end_18} :catchall_1e
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
:catchall_1e
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method public abstract deleteClosedConnections()V
.end method
.method public enableConnectionGC()V
.registers 1
return-void
.end method
.method public abstract freeEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V
.end method
.method public final getEntry(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
.registers 7
invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->requestPoolEntry(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/PoolEntryRequest;
move-result-object v0
invoke-interface {v0, p3, p4, p5}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/PoolEntryRequest;->getPoolEntry(JLjava/util/concurrent/TimeUnit;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
move-result-object v0
return-object v0
.end method
.method protected abstract handleLostEntry(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
.end method
.method public handleReference(Ljava/lang/ref/Reference;)V
.registers 2
return-void
.end method
.method public abstract requestPoolEntry(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/PoolEntryRequest;
.end method
.method public shutdown()V
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->isShutDown:Z
:try_end_7
.catchall {:try_start_5 .. :try_end_7} :catchall_2c
if-eqz v0, :cond_f
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
:goto_e
return-void
:cond_f
:try_start_f
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->leasedConnections:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_15
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_33
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
invoke-interface {v1}, Ljava/util/Iterator;->remove()V
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
move-result-object v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->closeConnection(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V
:try_end_2b
.catchall {:try_start_f .. :try_end_2b} :catchall_2c
goto :goto_15
:catchall_2c
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
:cond_33
:try_start_33
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->idleConnHandler:Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler;->removeAll()V
const/4 v0, 0x1
iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->isShutDown:Z
:try_end_3b
.catchall {:try_start_33 .. :try_end_3b} :catchall_2c
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
goto :goto_e
.end method