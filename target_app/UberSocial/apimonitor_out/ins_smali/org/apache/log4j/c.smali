.class public Lorg/apache/log4j/c;
.super Lorg/apache/log4j/b;
.source "SourceFile"
.implements Lorg/apache/log4j/k/a;
.field public static final a:I = 0x80
.field  i:Lorg/apache/log4j/c/b;
.field private final j:Ljava/util/List;
.field private final k:Ljava/util/Map;
.field private l:I
.field private final m:Lorg/apache/log4j/c/b;
.field private final n:Ljava/lang/Thread;
.field private o:Z
.field private p:Z
.method public constructor <init>()V
.registers 7
const/4 v5, 0x1
invoke-direct {p0}, Lorg/apache/log4j/b;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/c;->j:Ljava/util/List;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/c;->k:Ljava/util/Map;
const/16 v0, 0x80
iput v0, p0, Lorg/apache/log4j/c;->l:I
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/apache/log4j/c;->o:Z
iput-boolean v5, p0, Lorg/apache/log4j/c;->p:Z
new-instance v0, Lorg/apache/log4j/c/b;
invoke-direct {v0}, Lorg/apache/log4j/c/b;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/c;->m:Lorg/apache/log4j/c/b;
iget-object v0, p0, Lorg/apache/log4j/c;->m:Lorg/apache/log4j/c/b;
iput-object v0, p0, Lorg/apache/log4j/c;->i:Lorg/apache/log4j/c/b;
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lorg/apache/log4j/e;
iget-object v2, p0, Lorg/apache/log4j/c;->j:Ljava/util/List;
iget-object v3, p0, Lorg/apache/log4j/c;->k:Ljava/util/Map;
iget-object v4, p0, Lorg/apache/log4j/c;->m:Lorg/apache/log4j/c/b;
invoke-direct {v1, p0, v2, v3, v4}, Lorg/apache/log4j/e;-><init>(Lorg/apache/log4j/c;Ljava/util/List;Ljava/util/Map;Lorg/apache/log4j/c/b;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
iput-object v0, p0, Lorg/apache/log4j/c;->n:Ljava/lang/Thread;
iget-object v0, p0, Lorg/apache/log4j/c;->n:Ljava/lang/Thread;
invoke-virtual {v0, v5}, Ljava/lang/Thread;->setDaemon(Z)V
iget-object v0, p0, Lorg/apache/log4j/c;->n:Ljava/lang/Thread;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "AsyncAppender-Dispatcher-"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
iget-object v2, p0, Lorg/apache/log4j/c;->n:Ljava/lang/Thread;
invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
iget-object v0, p0, Lorg/apache/log4j/c;->n:Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
return-void
.end method
.method public a()V
.registers 5
iget-object v1, p0, Lorg/apache/log4j/c;->j:Ljava/util/List;
monitor-enter v1
const/4 v0, 0x1
:try_start_4
iput-boolean v0, p0, Lorg/apache/log4j/c;->h:Z
iget-object v0, p0, Lorg/apache/log4j/c;->j:Ljava/util/List;
invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
monitor-exit v1
:try_start_c
:try_end_c
.catchall {:try_start_4 .. :try_end_c} :catchall_33
iget-object v0, p0, Lorg/apache/log4j/c;->n:Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->join()V
:try_end_11
.catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_36
:goto_11
iget-object v1, p0, Lorg/apache/log4j/c;->m:Lorg/apache/log4j/c/b;
monitor-enter v1
:try_start_14
iget-object v0, p0, Lorg/apache/log4j/c;->m:Lorg/apache/log4j/c/b;
invoke-virtual {v0}, Lorg/apache/log4j/c/b;->c()Ljava/util/Enumeration;
move-result-object v2
if-eqz v2, :cond_44
:goto_1c
:cond_1c
invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_44
invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
instance-of v3, v0, Lorg/apache/log4j/a;
if-eqz v3, :cond_1c
check-cast v0, Lorg/apache/log4j/a;
invoke-interface {v0}, Lorg/apache/log4j/a;->a()V
goto :goto_1c
:catchall_30
move-exception v0
monitor-exit v1
:try_end_32
.catchall {:try_start_14 .. :try_end_32} :catchall_30
throw v0
:catchall_33
move-exception v0
:try_start_34
monitor-exit v1
:try_end_35
.catchall {:try_start_34 .. :try_end_35} :catchall_33
throw v0
:catch_36
move-exception v0
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
const-string v1, "Got an InterruptedException while waiting for the dispatcher to finish."
invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_11
:cond_44
:try_start_44
monitor-exit v1
:try_end_45
.catchall {:try_start_44 .. :try_end_45} :catchall_30
return-void
.end method
.method public a(I)V
.registers 4
const/4 v0, 0x1
if-gez p1, :cond_b
new-instance v0, Ljava/lang/NegativeArraySizeException;
const-string v1, "size"
invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
iget-object v1, p0, Lorg/apache/log4j/c;->j:Ljava/util/List;
monitor-enter v1
if-ge p1, v0, :cond_11
move p1, v0
:cond_11
:try_start_11
iput p1, p0, Lorg/apache/log4j/c;->l:I
iget-object v0, p0, Lorg/apache/log4j/c;->j:Ljava/util/List;
invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
monitor-exit v1
return-void
:catchall_1a
move-exception v0
monitor-exit v1
:try_end_1c
.catchall {:try_start_11 .. :try_end_1c} :catchall_1a
throw v0
.end method
.method public a(Lorg/apache/log4j/a;)V
.registers 4
iget-object v1, p0, Lorg/apache/log4j/c;->m:Lorg/apache/log4j/c/b;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lorg/apache/log4j/c;->m:Lorg/apache/log4j/c/b;
invoke-virtual {v0, p1}, Lorg/apache/log4j/c/b;->a(Lorg/apache/log4j/a;)V
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v0
.end method
.method public a(Lorg/apache/log4j/k/k;)V
.registers 6
iget-object v0, p0, Lorg/apache/log4j/c;->n:Ljava/lang/Thread;
if-eqz v0, :cond_10
iget-object v0, p0, Lorg/apache/log4j/c;->n:Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z
move-result v0
if-eqz v0, :cond_10
iget v0, p0, Lorg/apache/log4j/c;->l:I
if-gtz v0, :cond_1d
:cond_10
iget-object v1, p0, Lorg/apache/log4j/c;->m:Lorg/apache/log4j/c/b;
monitor-enter v1
:try_start_13
iget-object v0, p0, Lorg/apache/log4j/c;->m:Lorg/apache/log4j/c/b;
invoke-virtual {v0, p1}, Lorg/apache/log4j/c/b;->a(Lorg/apache/log4j/k/k;)I
monitor-exit v1
:goto_19
return-void
:catchall_1a
move-exception v0
monitor-exit v1
:try_end_1c
.catchall {:try_start_13 .. :try_end_1c} :catchall_1a
throw v0
:cond_1d
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->f()Ljava/lang/String;
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->j()Ljava/lang/String;
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->g()V
iget-boolean v0, p0, Lorg/apache/log4j/c;->o:Z
if-eqz v0, :cond_2d
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->a()Lorg/apache/log4j/k/h;
:cond_2d
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->h()Ljava/lang/String;
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->l()[Ljava/lang/String;
iget-object v1, p0, Lorg/apache/log4j/c;->j:Ljava/util/List;
monitor-enter v1
:cond_36
:try_start_36
iget-object v0, p0, Lorg/apache/log4j/c;->j:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
iget v2, p0, Lorg/apache/log4j/c;->l:I
if-ge v0, v2, :cond_51
iget-object v2, p0, Lorg/apache/log4j/c;->j:Ljava/util/List;
invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
if-nez v0, :cond_4c
iget-object v0, p0, Lorg/apache/log4j/c;->j:Ljava/util/List;
invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
:goto_4c
:cond_4c
monitor-exit v1
goto :goto_19
:catchall_4e
move-exception v0
monitor-exit v1
:try_end_50
.catchall {:try_start_36 .. :try_end_50} :catchall_4e
throw v0
:cond_51
const/4 v0, 0x1
:try_start_52
iget-boolean v2, p0, Lorg/apache/log4j/c;->p:Z
if-eqz v2, :cond_6a
invoke-static {}, Ljava/lang/Thread;->interrupted()Z
move-result v2
if-nez v2, :cond_6a
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
iget-object v3, p0, Lorg/apache/log4j/c;->n:Ljava/lang/Thread;
:try_end_62
.catchall {:try_start_52 .. :try_end_62} :catchall_4e
if-eq v2, v3, :cond_6a
:try_start_64
iget-object v2, p0, Lorg/apache/log4j/c;->j:Ljava/util/List;
invoke-virtual {v2}, Ljava/lang/Object;->wait()V
:try_end_69
.catchall {:try_start_64 .. :try_end_69} :catchall_4e
.catch Ljava/lang/InterruptedException; {:try_start_64 .. :try_end_69} :catch_85
const/4 v0, 0x0
:goto_6a
:cond_6a
if-eqz v0, :cond_36
:try_start_6c
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->c()Ljava/lang/String;
move-result-object v2
iget-object v0, p0, Lorg/apache/log4j/c;->k:Ljava/util/Map;
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/d;
if-nez v0, :cond_8e
new-instance v0, Lorg/apache/log4j/d;
invoke-direct {v0, p1}, Lorg/apache/log4j/d;-><init>(Lorg/apache/log4j/k/k;)V
iget-object v3, p0, Lorg/apache/log4j/c;->k:Ljava/util/Map;
invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_4c
:catch_85
move-exception v2
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
goto :goto_6a
:cond_8e
invoke-virtual {v0, p1}, Lorg/apache/log4j/d;->a(Lorg/apache/log4j/k/k;)V
:try_end_91
.catchall {:try_start_6c .. :try_end_91} :catchall_4e
goto :goto_4c
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lorg/apache/log4j/c;->o:Z
return-void
.end method
.method public b(Ljava/lang/String;)Lorg/apache/log4j/a;
.registers 4
iget-object v1, p0, Lorg/apache/log4j/c;->m:Lorg/apache/log4j/c/b;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lorg/apache/log4j/c;->m:Lorg/apache/log4j/c/b;
invoke-virtual {v0, p1}, Lorg/apache/log4j/c/b;->b(Ljava/lang/String;)Lorg/apache/log4j/a;
move-result-object v0
monitor-exit v1
return-object v0
:catchall_b
move-exception v0
monitor-exit v1
:try_end_d
.catchall {:try_start_3 .. :try_end_d} :catchall_b
throw v0
.end method
.method public b(Z)V
.registers 4
iget-object v1, p0, Lorg/apache/log4j/c;->j:Ljava/util/List;
monitor-enter v1
:try_start_3
iput-boolean p1, p0, Lorg/apache/log4j/c;->p:Z
iget-object v0, p0, Lorg/apache/log4j/c;->j:Ljava/util/List;
invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
monitor-exit v1
return-void
:catchall_c
move-exception v0
monitor-exit v1
:try_end_e
.catchall {:try_start_3 .. :try_end_e} :catchall_c
throw v0
.end method
.method public b()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public b(Lorg/apache/log4j/a;)Z
.registers 4
iget-object v1, p0, Lorg/apache/log4j/c;->m:Lorg/apache/log4j/c/b;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lorg/apache/log4j/c;->m:Lorg/apache/log4j/c/b;
invoke-virtual {v0, p1}, Lorg/apache/log4j/c/b;->b(Lorg/apache/log4j/a;)Z
move-result v0
monitor-exit v1
return v0
:catchall_b
move-exception v0
monitor-exit v1
:try_end_d
.catchall {:try_start_3 .. :try_end_d} :catchall_b
throw v0
.end method
.method public c()Ljava/util/Enumeration;
.registers 3
iget-object v1, p0, Lorg/apache/log4j/c;->m:Lorg/apache/log4j/c/b;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lorg/apache/log4j/c;->m:Lorg/apache/log4j/c/b;
invoke-virtual {v0}, Lorg/apache/log4j/c/b;->c()Ljava/util/Enumeration;
move-result-object v0
monitor-exit v1
return-object v0
:catchall_b
move-exception v0
monitor-exit v1
:try_end_d
.catchall {:try_start_3 .. :try_end_d} :catchall_b
throw v0
.end method
.method public c(Ljava/lang/String;)V
.registers 4
iget-object v1, p0, Lorg/apache/log4j/c;->m:Lorg/apache/log4j/c/b;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lorg/apache/log4j/c;->m:Lorg/apache/log4j/c/b;
invoke-virtual {v0, p1}, Lorg/apache/log4j/c/b;->c(Ljava/lang/String;)V
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v0
.end method
.method public c(Lorg/apache/log4j/a;)V
.registers 4
iget-object v1, p0, Lorg/apache/log4j/c;->m:Lorg/apache/log4j/c/b;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lorg/apache/log4j/c;->m:Lorg/apache/log4j/c/b;
invoke-virtual {v0, p1}, Lorg/apache/log4j/c/b;->c(Lorg/apache/log4j/a;)V
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v0
.end method
.method public l()Z
.registers 2
iget-boolean v0, p0, Lorg/apache/log4j/c;->o:Z
return v0
.end method
.method public m()V
.registers 3
iget-object v1, p0, Lorg/apache/log4j/c;->m:Lorg/apache/log4j/c/b;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lorg/apache/log4j/c;->m:Lorg/apache/log4j/c/b;
invoke-virtual {v0}, Lorg/apache/log4j/c/b;->m()V
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v0
.end method
.method public n()I
.registers 2
iget v0, p0, Lorg/apache/log4j/c;->l:I
return v0
.end method
.method public o()Z
.registers 2
iget-boolean v0, p0, Lorg/apache/log4j/c;->p:Z
return v0
.end method