.class public final Lcom/google/b/f/a/o;
.super Ljava/lang/Object;
.source "MoreExecutors.java"
.method private static a(Lcom/google/b/f/a/n;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/b/f/a/l;
.registers 6
invoke-interface {p0, p1}, Lcom/google/b/f/a/n;->a(Ljava/util/concurrent/Callable;)Lcom/google/b/f/a/l;
move-result-object v0
new-instance v1, Lcom/google/b/f/a/p;
invoke-direct {v1, p2, v0}, Lcom/google/b/f/a/p;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/b/f/a/l;)V
invoke-static {}, Lcom/google/b/f/a/o;->a()Lcom/google/b/f/a/n;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/google/b/f/a/l;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
return-object v0
.end method
.method public static a()Lcom/google/b/f/a/n;
.registers 2
new-instance v0, Lcom/google/b/f/a/q;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/google/b/f/a/q;-><init>(B)V
return-object v0
.end method
.method static a(Lcom/google/b/f/a/n;Ljava/util/Collection;ZJ)Ljava/lang/Object;
.registers 22
invoke-static/range {p0 .. p0}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I
move-result v2
if-lez v2, :cond_81
const/4 v1, 0x1
:goto_a
invoke-static {v1}, Lcom/google/b/a/o;->a(Z)V
if-ltz v2, :cond_83
const/4 v1, 0x1
:goto_10
invoke-static {v1}, Lcom/google/b/a/o;->a(Z)V
new-instance v11, Ljava/util/ArrayList;
invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(I)V
new-instance v12, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v12}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
const/4 v3, 0x0
if-eqz p2, :cond_85
:try_start_20
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v4
:goto_24
invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v13
invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/concurrent/Callable;
move-object/from16 v0, p0
invoke-static {v0, v1, v12}, Lcom/google/b/f/a/o;->a(Lcom/google/b/f/a/n;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/b/f/a/l;
move-result-object v1
invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v6, v2, -0x1
const/4 v1, 0x1
move v2, v6
move-wide/from16 v9, p3
move-wide v14, v4
move-wide v5, v14
move v4, v1
:goto_40
invoke-interface {v12}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/concurrent/Future;
if-nez v1, :cond_f4
if-lez v2, :cond_88
add-int/lit8 v7, v2, -0x1
invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/concurrent/Callable;
move-object/from16 v0, p0
invoke-static {v0, v2, v12}, Lcom/google/b/f/a/o;->a(Lcom/google/b/f/a/n;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/b/f/a/l;
move-result-object v2
invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_5b
.catchall {:try_start_20 .. :try_end_5b} :catchall_9c
add-int/lit8 v2, v4, 0x1
move-object v14, v1
move v1, v2
move-object v2, v14
move-wide v15, v5
move-wide v4, v15
move v6, v7
move-wide v7, v9
:goto_64
if-eqz v2, :cond_f2
add-int/lit8 v1, v1, -0x1
:try_start_68
invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
:try_end_6b
.catchall {:try_start_68 .. :try_end_6b} :catchall_9c
.catch Ljava/util/concurrent/ExecutionException; {:try_start_68 .. :try_end_6b} :catch_d1
.catch Ljava/lang/RuntimeException; {:try_start_68 .. :try_end_6b} :catch_d9
move-result-object v2
invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_70
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_f1
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/concurrent/Future;
const/4 v4, 0x1
invoke-interface {v1, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z
goto :goto_70
:cond_81
const/4 v1, 0x0
goto :goto_a
:cond_83
const/4 v1, 0x0
goto :goto_10
:cond_85
const-wide/16 v4, 0x0
goto :goto_24
:cond_88
if-eqz v4, :cond_e7
if-eqz p2, :cond_c3
:try_start_8c
sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;
invoke-interface {v12, v9, v10, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/concurrent/Future;
if-nez v1, :cond_b3
new-instance v1, Ljava/util/concurrent/TimeoutException;
invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V
throw v1
:catchall_9c
:try_end_9c
.catchall {:try_start_8c .. :try_end_9c} :catchall_9c
move-exception v1
move-object v2, v1
invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_a2
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_f0
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/concurrent/Future;
const/4 v4, 0x1
invoke-interface {v1, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z
goto :goto_a2
:cond_b3
:try_start_b3
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v7
sub-long v5, v7, v5
sub-long v5, v9, v5
move-object v14, v1
move v1, v4
move-wide v15, v7
move-wide v7, v5
move v6, v2
move-wide v4, v15
move-object v2, v14
goto :goto_64
:cond_c3
invoke-interface {v12}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/concurrent/Future;
move-wide v7, v9
move v14, v4
move-wide v15, v5
move-wide v4, v15
move v6, v2
move-object v2, v1
move v1, v14
goto :goto_64
:catch_d1
move-exception v3
move v2, v6
move-wide v9, v7
move-wide v14, v4
move-wide v5, v14
move v4, v1
goto/16 :goto_40
:catch_d9
move-exception v3
new-instance v2, Ljava/util/concurrent/ExecutionException;
invoke-direct {v2, v3}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V
:goto_df
move-object v3, v2
move-wide v9, v7
move v2, v6
move-wide v14, v4
move-wide v5, v14
move v4, v1
goto/16 :goto_40
:cond_e7
if-nez v3, :cond_ef
new-instance v3, Ljava/util/concurrent/ExecutionException;
const/4 v1, 0x0
invoke-direct {v3, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V
:cond_ef
throw v3
:cond_f0
:try_end_f0
.catchall {:try_start_b3 .. :try_end_f0} :catchall_9c
throw v2
:cond_f1
return-object v2
:cond_f2
move-object v2, v3
goto :goto_df
:cond_f4
move-wide v7, v9
move v14, v4
move-wide v15, v5
move-wide v4, v15
move v6, v2
move-object v2, v1
move v1, v14
goto/16 :goto_64
.end method