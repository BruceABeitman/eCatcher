.class  Lorg/apache/log4j/e;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Lorg/apache/log4j/c;
.field private final b:Ljava/util/List;
.field private final c:Ljava/util/Map;
.field private final d:Lorg/apache/log4j/c/b;
.method public constructor <init>(Lorg/apache/log4j/c;Ljava/util/List;Ljava/util/Map;Lorg/apache/log4j/c/b;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lorg/apache/log4j/e;->a:Lorg/apache/log4j/c;
iput-object p2, p0, Lorg/apache/log4j/e;->b:Ljava/util/List;
iput-object p4, p0, Lorg/apache/log4j/e;->d:Lorg/apache/log4j/c/b;
iput-object p3, p0, Lorg/apache/log4j/e;->c:Ljava/util/Map;
return-void
.end method
.method public run()V
.registers 10
const/4 v1, 0x1
const/4 v2, 0x0
move v6, v1
:cond_3
if-eqz v6, :cond_95
const/4 v3, 0x0
:try_start_6
iget-object v7, p0, Lorg/apache/log4j/e;->b:Ljava/util/List;
monitor-enter v7
:try_end_9
.catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_8d
:try_start_9
iget-object v0, p0, Lorg/apache/log4j/e;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v4
iget-object v0, p0, Lorg/apache/log4j/e;->a:Lorg/apache/log4j/c;
iget-boolean v0, v0, Lorg/apache/log4j/c;->h:Z
if-nez v0, :cond_31
move v0, v1
:goto_16
move v6, v0
move v0, v4
:goto_18
if-nez v0, :cond_35
if-eqz v6, :cond_35
iget-object v0, p0, Lorg/apache/log4j/e;->b:Ljava/util/List;
invoke-virtual {v0}, Ljava/lang/Object;->wait()V
iget-object v0, p0, Lorg/apache/log4j/e;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v4
iget-object v0, p0, Lorg/apache/log4j/e;->a:Lorg/apache/log4j/c;
iget-boolean v0, v0, Lorg/apache/log4j/c;->h:Z
if-nez v0, :cond_33
move v0, v1
:goto_2e
move v6, v0
move v0, v4
goto :goto_18
:cond_31
move v0, v2
goto :goto_16
:cond_33
move v0, v2
goto :goto_2e
:cond_35
if-lez v0, :cond_75
iget-object v3, p0, Lorg/apache/log4j/e;->c:Ljava/util/Map;
invoke-interface {v3}, Ljava/util/Map;->size()I
move-result v3
add-int/2addr v3, v0
new-array v3, v3, [Lorg/apache/log4j/k/k;
iget-object v4, p0, Lorg/apache/log4j/e;->b:Ljava/util/List;
invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
iget-object v4, p0, Lorg/apache/log4j/e;->c:Ljava/util/Map;
invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v4
invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v8
move v4, v0
:goto_50
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_66
add-int/lit8 v5, v4, 0x1
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/d;
invoke-virtual {v0}, Lorg/apache/log4j/d;->a()Lorg/apache/log4j/k/k;
move-result-object v0
aput-object v0, v3, v4
move v4, v5
goto :goto_50
:cond_66
iget-object v0, p0, Lorg/apache/log4j/e;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lorg/apache/log4j/e;->c:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
iget-object v0, p0, Lorg/apache/log4j/e;->b:Ljava/util/List;
invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
:cond_75
monitor-exit v7
:try_end_76
.catchall {:try_start_9 .. :try_end_76} :catchall_8a
if-eqz v3, :cond_3
move v0, v2
:goto_79
:try_start_79
array-length v4, v3
if-ge v0, v4, :cond_3
iget-object v4, p0, Lorg/apache/log4j/e;->d:Lorg/apache/log4j/c/b;
monitor-enter v4
:try_end_7f
.catch Ljava/lang/InterruptedException; {:try_start_79 .. :try_end_7f} :catch_8d
:try_start_7f
iget-object v5, p0, Lorg/apache/log4j/e;->d:Lorg/apache/log4j/c/b;
aget-object v7, v3, v0
invoke-virtual {v5, v7}, Lorg/apache/log4j/c/b;->a(Lorg/apache/log4j/k/k;)I
monitor-exit v4
:try_end_87
.catchall {:try_start_7f .. :try_end_87} :catchall_96
add-int/lit8 v0, v0, 0x1
goto :goto_79
:catchall_8a
move-exception v0
:try_start_8b
monitor-exit v7
:try_start_8c
:try_end_8c
.catchall {:try_start_8b .. :try_end_8c} :catchall_8a
throw v0
:catch_8d
:try_end_8d
.catch Ljava/lang/InterruptedException; {:try_start_8c .. :try_end_8d} :catch_8d
move-exception v0
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
:cond_95
return-void
:catchall_96
move-exception v0
:try_start_97
monitor-exit v4
:try_start_98
:try_end_98
.catchall {:try_start_97 .. :try_end_98} :catchall_96
throw v0
:try_end_99
.catch Ljava/lang/InterruptedException; {:try_start_98 .. :try_end_99} :catch_8d
.end method