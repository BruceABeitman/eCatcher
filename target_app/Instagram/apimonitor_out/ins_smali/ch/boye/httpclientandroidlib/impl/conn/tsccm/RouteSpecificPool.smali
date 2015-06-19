.class public Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;
.super Ljava/lang/Object;
.source "RouteSpecificPool.java"
.field protected final connPerRoute:Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;
.field protected final freeEntries:Ljava/util/LinkedList;
.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
.field protected final maxEntries:I
.field protected numEntries:I
.field protected final route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
.field protected final waitingThreads:Ljava/util/Queue;
.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;I)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
iput p2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->maxEntries:I
new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool$1;
invoke-direct {v0, p0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool$1;-><init>(Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->connPerRoute:Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;
const/4 v0, 0x0
iput v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->connPerRoute:Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;
invoke-interface {p2, p1}, Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;->getMaxForRoute(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)I
move-result v0
iput v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->maxEntries:I
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;
const/4 v0, 0x0
iput v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I
return-void
.end method
.method public allocEntry(Ljava/lang/Object;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
.registers 6
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
move-result v0
if-nez v0, :cond_34
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;
invoke-virtual {v1}, Ljava/util/LinkedList;->size()I
move-result v1
invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;
move-result-object v1
:cond_14
invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z
move-result v0
if-eqz v0, :cond_34
invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getState()Ljava/lang/Object;
move-result-object v2
if-eqz v2, :cond_30
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getState()Ljava/lang/Object;
move-result-object v2
invoke-static {p1, v2}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_14
:cond_30
invoke-interface {v1}, Ljava/util/ListIterator;->remove()V
:goto_33
return-object v0
:cond_34
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->getCapacity()I
move-result v0
if-nez v0, :cond_5e
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
move-result v0
if-nez v0, :cond_5e
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->shutdownEntry()V
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
move-result-object v1
:try_start_51
invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->close()V
:try_end_54
.catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55
goto :goto_33
:catch_55
move-exception v1
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v3, "I/O error closing connection"
invoke-virtual {v2, v3, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_33
:cond_5e
const/4 v0, 0x0
goto :goto_33
.end method
.method public createdEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V
.registers 5
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
move-result-object v1
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_31
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Entry not planned for this pool.\npool: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\nplan: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_31
iget v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I
return-void
.end method
.method public deleteEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)Z
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;
invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e
iget v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I
add-int/lit8 v1, v1, -0x1
iput v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I
:cond_e
return v0
.end method
.method public dropEntry()V
.registers 3
iget v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I
if-gtz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "There is no entry that could be dropped."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I
return-void
.end method
.method public freeEntry(Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;)V
.registers 5
iget v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I
if-gtz v0, :cond_1b
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "No entry created for this pool. "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1b
iget v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;
invoke-virtual {v1}, Ljava/util/LinkedList;->size()I
move-result v1
if-gt v0, v1, :cond_3c
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "No entry allocated from this pool. "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3c
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;
invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public getCapacity()I
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->connPerRoute:Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;->getMaxForRoute(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)I
move-result v0
iget v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I
sub-int/2addr v0, v1
return v0
.end method
.method public final getEntryCount()I
.registers 2
iget v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I
return v0
.end method
.method public final getMaxEntries()I
.registers 2
iget v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->maxEntries:I
return v0
.end method
.method public final getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
return-object v0
.end method
.method public hasThread()Z
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public isUnused()Z
.registers 2
iget v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->numEntries:I
if-gtz v0, :cond_e
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public nextThread()Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;
return-object v0
.end method
.method public queueThread(Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;)V
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Waiting thread must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;
invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public removeThread(Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;)V
.registers 3
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;
invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
goto :goto_2
.end method