.class public Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;
.super Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;
.source "ConnPoolByRoute.java"
.field protected final connPerRoute:Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;
.field private final connTTL:J
.field private final connTTLTimeUnit:Ljava/util/concurrent/TimeUnit;
.field protected final freeConnections:Ljava/util/Queue;
.field protected final leasedConnections:Ljava/util/Set;
.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
.field protected volatile maxTotalConnections:I
.field protected volatile numConnections:I
.field protected final operator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;
.field private final poolLock:Ljava/util/concurrent/locks/Lock;
.field protected final routeToPool:Ljava/util/Map;
.field protected volatile shutdown:Z
.field protected final waitingThreads:Ljava/util/Queue;
.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;I)V
.registers 11
const-wide/16 v4, -0x1
sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v3, p3
invoke-direct/range {v0 .. v6}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;IJLjava/util/concurrent/TimeUnit;)V
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;IJLjava/util/concurrent/TimeUnit;)V
.registers 9
invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;-><init>()V
new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
if-nez p1, :cond_18
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Connection operator may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
if-nez p2, :cond_22
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Connections per route may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_22
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/AbstractConnPool;->leasedConnections:Ljava/util/Set;
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->leasedConnections:Ljava/util/Set;
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->operator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;
iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->connPerRoute:Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;
iput p3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->maxTotalConnections:I
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->createFreeConnQueue()Ljava/util/Queue;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->createWaitingThreadQueue()Ljava/util/Queue;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->createRouteToPoolMap()Ljava/util/Map;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;
iput-wide p4, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->connTTL:J
iput-object p6, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->connTTLTimeUnit:Ljava/util/concurrent/TimeUnit;
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/params/HttpParams;)V
.registers 5
invoke-static {p2}, Lch/boye/httpclientandroidlib/conn/params/ConnManagerParams;->getMaxConnectionsPerRoute(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;
move-result-object v0
invoke-static {p2}, Lch/boye/httpclientandroidlib/conn/params/ConnManagerParams;->getMaxTotalConnections(Lch/boye/httpclientandroidlib/params/HttpParams;)I
move-result v1
invoke-direct {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;I)V
return-void
.end method
.method static synthetic access$000(Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;)Ljava/util/concurrent/locks/Lock;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
return-object v0
.end method
.method private closeConnection(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V
.registers 5
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
move-result-object v0
if-eqz v0, :cond_9
:try_start_6
invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->close()V
:try_end_9
.catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_a
:goto_9
:cond_9
return-void
:catch_a
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v2, "I/O error closing connection"
invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_9
.end method
.method public closeExpiredConnections()V
.registers 10
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v1, "Closing expired connections"
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_10
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_16
:goto_16
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5b
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->isExpired(J)Z
move-result v4
if-eqz v4, :cond_16
iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v4
if-eqz v4, :cond_4d
iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Closing connection expired @ "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
new-instance v6, Ljava/util/Date;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getExpiry()J
move-result-wide v7
invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_4d
invoke-interface {v3}, Ljava/util/Iterator;->remove()V
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->deleteEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V
:try_end_53
.catchall {:try_start_10 .. :try_end_53} :catchall_54
goto :goto_16
:catchall_54
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
:cond_5b
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
.end method
.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
.registers 13
if-nez p3, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Time unit must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
const-wide/16 v0, 0x0
cmp-long v0, p1, v0
if-gez v0, :cond_12
const-wide/16 p1, 0x0
:cond_12
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v0
if-eqz v0, :cond_38
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Closing connections idle longer than "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_38
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
move-result-wide v2
sub-long v1, v0, v2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_47
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_4d
:cond_4d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_94
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getUpdated()J
move-result-wide v4
cmp-long v4, v4, v1
if-gtz v4, :cond_4d
iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v4
if-eqz v4, :cond_86
iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Closing connection last used @ "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
new-instance v6, Ljava/util/Date;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getUpdated()J
move-result-wide v7
invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_86
invoke-interface {v3}, Ljava/util/Iterator;->remove()V
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->deleteEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V
:try_end_8c
.catchall {:try_start_47 .. :try_end_8c} :catchall_8d
goto :goto_4d
:catchall_8d
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
:cond_94
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
.end method
.method protected createEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
.registers 9
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v0
if-eqz v0, :cond_26
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Creating new connection ["
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_26
new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
move-result-object v2
iget-wide v3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->connTTL:J
iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->connTTLTimeUnit:Ljava/util/concurrent/TimeUnit;
move-object v1, p2
invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;JLjava/util/concurrent/TimeUnit;)V
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_39
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->createdEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V
iget v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->leasedConnections:Ljava/util/Set;
invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:try_end_47
.catchall {:try_start_39 .. :try_end_47} :catchall_4d
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-object v0
:catchall_4d
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method protected createFreeConnQueue()Ljava/util/Queue;
.registers 2
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
return-object v0
.end method
.method protected createRouteToPoolMap()Ljava/util/Map;
.registers 2
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
return-object v0
.end method
.method protected createWaitingThreadQueue()Ljava/util/Queue;
.registers 2
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
return-object v0
.end method
.method public deleteClosedConnections()V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_b
:goto_b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
move-result-object v2
invoke-interface {v2}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isOpen()Z
move-result v2
if-nez v2, :cond_b
invoke-interface {v1}, Ljava/util/Iterator;->remove()V
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->deleteEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V
:try_end_27
.catchall {:try_start_5 .. :try_end_27} :catchall_28
goto :goto_b
:catchall_28
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
:cond_2f
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
.end method
.method protected deleteEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V
.registers 6
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
move-result-object v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v1
if-eqz v1, :cond_34
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Deleting connection ["
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "]["
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getState()Ljava/lang/Object;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "]"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_34
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_39
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Z)Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;
move-result-object v1
invoke-virtual {v1, p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->deleteEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)Z
iget v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I
add-int/lit8 v2, v2, -0x1
iput v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I
invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->isUnused()Z
move-result v1
if-eqz v1, :cond_55
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:try_end_55
.catchall {:try_start_39 .. :try_end_55} :catchall_5b
:cond_55
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
:catchall_5b
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method protected deleteLeastUsedEntry()V
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
if-eqz v0, :cond_18
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->deleteEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V
:try_end_12
.catchall {:try_start_5 .. :try_end_12} :catchall_28
:cond_12
:goto_12
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
:cond_18
:try_start_18
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v0
if-eqz v0, :cond_12
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v1, "No free connection to delete"
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:try_end_27
.catchall {:try_start_18 .. :try_end_27} :catchall_28
goto :goto_12
:catchall_28
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method public freeEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V
.registers 12
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
move-result-object v1
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v0
if-eqz v0, :cond_34
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Releasing connection ["
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "]["
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getState()Ljava/lang/Object;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "]"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_34
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_39
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->shutdown:Z
if-eqz v0, :cond_46
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V
:try_end_40
.catchall {:try_start_39 .. :try_end_40} :catchall_c6
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
:goto_45
return-void
:cond_46
:try_start_46
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->leasedConnections:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
const/4 v0, 0x1
invoke-virtual {p0, v1, v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Z)Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;
move-result-object v2
if-eqz p2, :cond_bc
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v0
if-eqz v0, :cond_a5
const-wide/16 v3, 0x0
cmp-long v0, p3, v3
if-lez v0, :cond_b9
new-instance v0, Ljava/lang/StringBuilder;
const-string v3, "for "
invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, " "
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_79
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Pooling connection ["
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v4, "]["
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getState()Ljava/lang/Object;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v4, "]; keep alive "
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_a5
invoke-virtual {v2, p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->freeEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V
invoke-virtual {p1, p3, p4, p5}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->updateExpiry(JLjava/util/concurrent/TimeUnit;)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;
invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
:goto_b0
invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->notifyWaitingThread(Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;)V
:try_end_b3
.catchall {:try_start_46 .. :try_end_b3} :catchall_c6
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
goto :goto_45
:try_start_b9
:cond_b9
const-string v0, "indefinitely"
goto :goto_79
:cond_bc
invoke-virtual {v2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->dropEntry()V
iget v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I
:try_end_c5
.catchall {:try_start_b9 .. :try_end_c5} :catchall_c6
goto :goto_b0
:catchall_c6
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method public getConnectionsInPool()I
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
iget v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I
:try_end_7
.catchall {:try_start_5 .. :try_end_7} :catchall_d
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
return v0
:catchall_d
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method public getConnectionsInPool(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)I
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
const/4 v1, 0x0
:try_start_7
invoke-virtual {p0, p1, v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Z)Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;
move-result-object v1
if-eqz v1, :cond_11
invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->getEntryCount()I
:try_end_10
.catchall {:try_start_7 .. :try_end_10} :catchall_17
move-result v0
:cond_11
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
return v0
:catchall_17
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method protected getEntryBlocking(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThreadAborter;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
.registers 18
const/4 v1, 0x0
const-wide/16 v2, 0x0
cmp-long v2, p3, v2
if-lez v2, :cond_17
new-instance v1, Ljava/util/Date;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
move-object/from16 v0, p5
invoke-virtual {v0, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
move-result-wide v4
add-long/2addr v2, v4
invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V
:cond_17
const/4 v4, 0x0
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V
const/4 v2, 0x1
:try_start_1e
invoke-virtual {p0, p1, v2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Z)Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;
move-result-object v3
const/4 v2, 0x0
move-object v5, v3
move-object v10, v2
move-object v2, v4
move-object v4, v10
:goto_27
if-nez v2, :cond_189
iget-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->shutdown:Z
if-eqz v2, :cond_3c
new-instance v1, Ljava/lang/IllegalStateException;
const-string v2, "Connection pool shut down"
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:catchall_35
:try_end_35
.catchall {:try_start_1e .. :try_end_35} :catchall_35
move-exception v1
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v1
:try_start_3c
:cond_3c
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v2
if-eqz v2, :cond_90
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v3, Ljava/lang/StringBuilder;
const-string v6, "["
invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v6, "] total kept alive: "
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;
invoke-interface {v6}, Ljava/util/Queue;->size()I
move-result v6
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v6, ", total issued: "
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->leasedConnections:Ljava/util/Set;
invoke-interface {v6}, Ljava/util/Set;->size()I
move-result v6
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v6, ", total allocated: "
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget v6, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v6, " out of "
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget v6, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->maxTotalConnections:I
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_90
invoke-virtual {p0, v5, p2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->getFreeEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
move-result-object v2
if-nez v2, :cond_189
invoke-virtual {v5}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->getCapacity()I
move-result v3
if-lez v3, :cond_f5
const/4 v3, 0x1
:goto_9d
iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v6}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v6
if-eqz v6, :cond_e5
iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v7, Ljava/lang/StringBuilder;
const-string v8, "Available capacity: "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->getCapacity()I
move-result v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, " out of "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v5}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->getMaxEntries()I
move-result v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, " ["
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, "]["
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, "]"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_e5
if-eqz v3, :cond_f7
iget v6, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I
iget v7, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->maxTotalConnections:I
if-ge v6, v7, :cond_f7
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->operator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;
invoke-virtual {p0, v5, v2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->createEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
move-result-object v2
goto/16 :goto_27
:cond_f5
const/4 v3, 0x0
goto :goto_9d
:cond_f7
if-eqz v3, :cond_113
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;
invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z
move-result v3
if-nez v3, :cond_113
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->deleteLeastUsedEntry()V
const/4 v2, 0x1
invoke-virtual {p0, p1, v2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Z)Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;
move-result-object v2
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->operator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;
invoke-virtual {p0, v2, v3}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->createEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
move-result-object v3
move-object v5, v2
move-object v2, v3
goto/16 :goto_27
:cond_113
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v3
if-eqz v3, :cond_13f
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "Need to wait for connection ["
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "]["
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "]"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v6}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_13f
if-nez v4, :cond_190
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;
move-result-object v3
invoke-virtual {p0, v3, v5}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->newWaitingThread(Ljava/util/concurrent/locks/Condition;Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;
move-result-object v3
move-object/from16 v0, p6
invoke-virtual {v0, v3}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThreadAborter;->setWaitingThread(Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;)V
:try_start_150
:goto_150
:try_end_150
.catchall {:try_start_3c .. :try_end_150} :catchall_35
invoke-virtual {v5, v3}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->queueThread(Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;)V
iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;
invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
invoke-virtual {v3, v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->await(Ljava/util/Date;)Z
:try_end_15b
.catchall {:try_start_150 .. :try_end_15b} :catchall_17c
move-result v4
:try_start_15c
invoke-virtual {v5, v3}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->removeThread(Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;)V
iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;
invoke-interface {v6, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
if-nez v4, :cond_186
if-eqz v1, :cond_186
invoke-virtual {v1}, Ljava/util/Date;->getTime()J
move-result-wide v6
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v8
cmp-long v4, v6, v8
if-gtz v4, :cond_186
new-instance v1, Lch/boye/httpclientandroidlib/conn/ConnectionPoolTimeoutException;
const-string v2, "Timeout waiting for connection"
invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/conn/ConnectionPoolTimeoutException;-><init>(Ljava/lang/String;)V
throw v1
:catchall_17c
move-exception p1
invoke-virtual {v5, v3}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->removeThread(Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;)V
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;
invoke-interface {v1, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
throw p1
:try_end_186
.catchall {:try_start_15c .. :try_end_186} :catchall_35
:cond_186
move-object v4, v3
goto/16 :goto_27
:cond_189
move-object v1, v2
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-object v1
:cond_190
move-object v3, v4
goto :goto_150
.end method
.method protected getFreeEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
.registers 9
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
const/4 v0, 0x0
:goto_8
if-nez v0, :cond_cf
:try_start_a
invoke-virtual {p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->allocEntry(Ljava/lang/Object;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
move-result-object v2
if-eqz v2, :cond_9c
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v3
if-eqz v3, :cond_40
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Getting free connection ["
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "]["
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "]"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_40
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;
invoke-interface {v3, v2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->isExpired(J)Z
move-result v3
if-eqz v3, :cond_94
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v3
if-eqz v3, :cond_7f
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Closing expired free connection ["
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "]["
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "]"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_7f
invoke-direct {p0, v2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->dropEntry()V
iget v3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I
add-int/lit8 v3, v3, -0x1
iput v3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I
:try_end_8b
.catchall {:try_start_a .. :try_end_8b} :catchall_8d
goto/16 :goto_8
:catchall_8d
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
:cond_94
:try_start_94
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->leasedConnections:Ljava/util/Set;
invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
move v0, v1
goto/16 :goto_8
:cond_9c
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v0
if-eqz v0, :cond_d5
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "No free connections ["
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "]["
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "]"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:try_end_cc
.catchall {:try_start_94 .. :try_end_cc} :catchall_8d
move v0, v1
goto/16 :goto_8
:cond_cf
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-object v2
:cond_d5
move v0, v1
goto/16 :goto_8
.end method
.method protected getLock()Ljava/util/concurrent/locks/Lock;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
return-object v0
.end method
.method public getMaxTotalConnections()I
.registers 2
iget v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->maxTotalConnections:I
return v0
.end method
.method protected getRoutePool(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Z)Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;
.registers 5
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;
if-nez v0, :cond_1a
if-eqz p2, :cond_1a
invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->newRouteSpecificPool(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;
move-result-object v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;
invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_1a
.catchall {:try_start_5 .. :try_end_1a} :catchall_20
:cond_1a
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-object v0
:catchall_20
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method protected handleLostEntry(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
const/4 v0, 0x1
:try_start_6
invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Z)Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;
move-result-object v0
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->dropEntry()V
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->isUnused()Z
move-result v1
if-eqz v1, :cond_18
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_18
iget v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I
add-int/lit8 v1, v1, -0x1
iput v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->notifyWaitingThread(Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;)V
:try_end_21
.catchall {:try_start_6 .. :try_end_21} :catchall_27
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
:catchall_27
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method protected newRouteSpecificPool(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;
.registers 4
new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->connPerRoute:Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;
invoke-direct {v0, p1, v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;-><init>(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;)V
return-object v0
.end method
.method protected newWaitingThread(Ljava/util/concurrent/locks/Condition;Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;
.registers 4
new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;
invoke-direct {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;-><init>(Ljava/util/concurrent/locks/Condition;Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;)V
return-object v0
.end method
.method protected notifyWaitingThread(Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;)V
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
if-eqz p1, :cond_43
:try_start_8
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->hasThread()Z
move-result v1
if-eqz v1, :cond_43
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v0
if-eqz v0, :cond_34
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Notifying thread waiting on pool ["
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_34
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->nextThread()Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;
move-result-object v0
:cond_38
:goto_38
if-eqz v0, :cond_3d
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->wakeup()V
:try_end_3d
.catchall {:try_start_8 .. :try_end_3d} :catchall_73
:cond_3d
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
:cond_43
:try_start_43
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;
invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z
move-result v1
if-nez v1, :cond_63
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v0
if-eqz v0, :cond_5a
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v1, "Notifying thread waiting on any pool"
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_5a
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;
goto :goto_38
:cond_63
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v1
if-eqz v1, :cond_38
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v2, "Notifying no-one, there are no waiting threads"
invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:try_end_72
.catchall {:try_start_43 .. :try_end_72} :catchall_73
goto :goto_38
:catchall_73
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method public requestPoolEntry(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/PoolEntryRequest;
.registers 5
new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThreadAborter;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThreadAborter;-><init>()V
new-instance v1, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute$1;
invoke-direct {v1, p0, v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute$1;-><init>(Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThreadAborter;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)V
return-object v1
.end method
.method public setMaxTotalConnections(I)V
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
iput p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->maxTotalConnections:I
:try_end_7
.catchall {:try_start_5 .. :try_end_7} :catchall_d
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
:catchall_d
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method
.method public shutdown()V
.registers 6
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_5
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->shutdown:Z
:try_end_7
.catchall {:try_start_5 .. :try_end_7} :catchall_2b
if-eqz v0, :cond_f
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
:goto_e
return-void
:cond_f
const/4 v0, 0x1
:try_start_10
iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->shutdown:Z
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->leasedConnections:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_18
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_32
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
invoke-interface {v1}, Ljava/util/Iterator;->remove()V
invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V
:try_end_2a
.catchall {:try_start_10 .. :try_end_2a} :catchall_2b
goto :goto_18
:catchall_2b
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
:try_start_32
:cond_32
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_38
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_7f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
invoke-interface {v1}, Ljava/util/Iterator;->remove()V
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z
move-result v2
if-eqz v2, :cond_7b
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Closing connection ["
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "]["
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getState()Ljava/lang/Object;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "]"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_7b
invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V
goto :goto_38
:cond_7f
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_85
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_98
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;
invoke-interface {v1}, Ljava/util/Iterator;->remove()V
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->wakeup()V
goto :goto_85
:cond_98
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
:try_end_9d
.catchall {:try_start_32 .. :try_end_9d} :catchall_2b
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
goto/16 :goto_e
.end method