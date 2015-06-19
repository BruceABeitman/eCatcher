.class public final Lcom/spotify/mobile/android/util/dn;
.super Lcom/spotify/mobile/android/util/s;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/util/s;-><init>()V
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 11
const/4 v9, 0x1
const/4 v2, 0x0
const/16 v8, 0xa
new-instance v3, Ljava/lang/StringBuilder;
const/16 v0, 0x40
invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v0, "Crashing thread:\n"
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, "All threads:\n"
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;
move-result-object v0
:goto_2e
invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;
move-result-object v1
if-eqz v1, :cond_39
invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;
move-result-object v0
goto :goto_2e
:cond_39
invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I
move-result v1
new-array v4, v1, [Ljava/lang/Thread;
invoke-virtual {v0, v4, v9}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;Z)I
move-result v5
new-instance v6, Ljava/util/concurrent/ConcurrentSkipListMap;
invoke-direct {v6}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V
move v1, v2
:goto_49
if-ge v1, v5, :cond_6c
aget-object v0, v4, v1
invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;
move-result-object v0
new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;
invoke-direct {v7, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
invoke-virtual {v6, v0, v7}, Ljava/util/concurrent/ConcurrentSkipListMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
aget-object v0, v4, v1
invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_49
:cond_6c
invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_74
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_a6
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
move-result v1
if-le v1, v9, :cond_a2
const-string v1, " * "
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_a2
invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_74
:cond_a6
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
const-string v0, "Threads"
return-object v0
.end method