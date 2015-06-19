.class  Lorg/apache/log4j/a/s;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Lorg/apache/log4j/a/q;
.method private constructor <init>(Lorg/apache/log4j/a/q;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/a/s;->a:Lorg/apache/log4j/a/q;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method constructor <init>(Lorg/apache/log4j/a/q;Lorg/apache/log4j/a/r;)V
.registers 3
invoke-direct {p0, p1}, Lorg/apache/log4j/a/s;-><init>(Lorg/apache/log4j/a/q;)V
return-void
.end method
.method public run()V
.registers 9
const/4 v2, 0x1
const/4 v1, 0x0
:goto_2
const-wide/16 v3, 0x3e8
:try_start_4
invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
:goto_7
:try_end_7
.catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_6e
iget-object v0, p0, Lorg/apache/log4j/a/s;->a:Lorg/apache/log4j/a/q;
invoke-static {v0}, Lorg/apache/log4j/a/q;->a(Lorg/apache/log4j/a/q;)Ljava/lang/Object;
move-result-object v5
monitor-enter v5
:try_start_e
iget-object v0, p0, Lorg/apache/log4j/a/s;->a:Lorg/apache/log4j/a/q;
invoke-static {v0}, Lorg/apache/log4j/a/q;->b(Lorg/apache/log4j/a/q;)Z
move-result v0
if-eqz v0, :cond_1b
monitor-exit v5
goto :goto_2
:catchall_18
move-exception v0
monitor-exit v5
:try_end_1a
.catchall {:try_start_e .. :try_end_1a} :catchall_18
throw v0
:try_start_1b
:cond_1b
iget-object v0, p0, Lorg/apache/log4j/a/s;->a:Lorg/apache/log4j/a/q;
invoke-static {v0}, Lorg/apache/log4j/a/q;->c(Lorg/apache/log4j/a/q;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
move v4, v1
move v3, v2
:goto_27
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5c
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/a/j;
iget-object v7, p0, Lorg/apache/log4j/a/s;->a:Lorg/apache/log4j/a/q;
invoke-static {v7}, Lorg/apache/log4j/a/q;->d(Lorg/apache/log4j/a/q;)Ljava/util/SortedSet;
move-result-object v7
invoke-interface {v7, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
if-eqz v3, :cond_58
iget-object v3, p0, Lorg/apache/log4j/a/s;->a:Lorg/apache/log4j/a/q;
invoke-static {v3}, Lorg/apache/log4j/a/q;->d(Lorg/apache/log4j/a/q;)Ljava/util/SortedSet;
move-result-object v3
invoke-interface {v3}, Ljava/util/SortedSet;->first()Ljava/lang/Object;
move-result-object v3
if-ne v0, v3, :cond_58
move v3, v2
:goto_4b
if-nez v4, :cond_55
iget-object v4, p0, Lorg/apache/log4j/a/s;->a:Lorg/apache/log4j/a/q;
invoke-static {v4, v0}, Lorg/apache/log4j/a/q;->a(Lorg/apache/log4j/a/q;Lorg/apache/log4j/a/j;)Z
move-result v0
if-eqz v0, :cond_5a
:cond_55
move v0, v2
:goto_56
move v4, v0
goto :goto_27
:cond_58
move v3, v1
goto :goto_4b
:cond_5a
move v0, v1
goto :goto_56
:cond_5c
iget-object v0, p0, Lorg/apache/log4j/a/s;->a:Lorg/apache/log4j/a/q;
invoke-static {v0}, Lorg/apache/log4j/a/q;->c(Lorg/apache/log4j/a/q;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->clear()V
if-eqz v4, :cond_6c
iget-object v0, p0, Lorg/apache/log4j/a/s;->a:Lorg/apache/log4j/a/q;
invoke-static {v0, v3}, Lorg/apache/log4j/a/q;->a(Lorg/apache/log4j/a/q;Z)V
:cond_6c
monitor-exit v5
:try_end_6d
.catchall {:try_start_1b .. :try_end_6d} :catchall_18
goto :goto_2
:catch_6e
move-exception v0
goto :goto_7
.end method