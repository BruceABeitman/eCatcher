.class public Lcom/mologiq/analytics/u;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static b:Lcom/mologiq/analytics/u;
.field private final a:Ljava/lang/ref/WeakReference;
.method private constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/mologiq/analytics/u;->a:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public static a(Landroid/content/Context;)Lcom/mologiq/analytics/u;
.registers 2
sget-object v0, Lcom/mologiq/analytics/u;->b:Lcom/mologiq/analytics/u;
if-nez v0, :cond_b
new-instance v0, Lcom/mologiq/analytics/u;
invoke-direct {v0, p0}, Lcom/mologiq/analytics/u;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/mologiq/analytics/u;->b:Lcom/mologiq/analytics/u;
:cond_b
sget-object v0, Lcom/mologiq/analytics/u;->b:Lcom/mologiq/analytics/u;
return-object v0
.end method
.method private a(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
.registers 10
const/4 v3, 0x0
const/4 v1, 0x0
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_6
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_d
return-object v1
:cond_d
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mologiq/analytics/k;
const/4 v2, 0x1
invoke-virtual {v0}, Lcom/mologiq/analytics/k;->e()Ljava/util/List;
move-result-object v5
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v5
if-lez v5, :cond_31
new-instance v5, Ljava/util/HashSet;
invoke-direct {v5, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
invoke-virtual {v0}, Lcom/mologiq/analytics/k;->e()Ljava/util/List;
move-result-object v6
invoke-interface {v5, v6}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z
invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z
move-result v5
if-eqz v5, :cond_31
move v2, v3
:cond_31
invoke-virtual {v0}, Lcom/mologiq/analytics/k;->d()Ljava/util/List;
move-result-object v5
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v5
if-lez v5, :cond_4e
new-instance v5, Ljava/util/HashSet;
invoke-direct {v5, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
invoke-virtual {v0}, Lcom/mologiq/analytics/k;->d()Ljava/util/List;
move-result-object v6
invoke-interface {v5, v6}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z
invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z
move-result v5
if-nez v5, :cond_4e
move v2, v3
:cond_4e
if-eqz v2, :cond_6
if-nez v1, :cond_57
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
:cond_57
invoke-virtual {v0}, Lcom/mologiq/analytics/k;->f()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_5f
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_6
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mologiq/analytics/ac;
invoke-virtual {v0}, Lcom/mologiq/analytics/ac;->a()Ljava/lang/String;
move-result-object v5
invoke-virtual {v0}, Lcom/mologiq/analytics/ac;->b()Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_5f
.end method
.method public a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
.registers 16
:try_start_0
iget-object v0, p0, Lcom/mologiq/analytics/u;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/content/Context;
if-nez v3, :cond_c
const/4 v0, 0x0
:goto_b
return-object v0
:cond_c
invoke-static {v3}, Lcom/mologiq/analytics/ae;->d(Landroid/content/Context;)Lcom/mologiq/analytics/ae;
move-result-object v2
invoke-virtual {v2}, Lcom/mologiq/analytics/ae;->c()Z
move-result v0
if-eqz v0, :cond_18
const/4 v0, 0x0
goto :goto_b
:cond_18
if-nez p2, :cond_122
new-instance v7, Ljava/util/HashMap;
invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
:goto_1f
invoke-static {}, Lcom/mologiq/analytics/af;->c()Lcom/mologiq/analytics/af;
move-result-object v1
invoke-virtual {v1, v3}, Lcom/mologiq/analytics/af;->a(Landroid/content/Context;)V
invoke-virtual {v2}, Lcom/mologiq/analytics/ae;->t()Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_47
invoke-virtual {v2}, Lcom/mologiq/analytics/ae;->t()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_47
invoke-virtual {v2}, Lcom/mologiq/analytics/ae;->t()Ljava/util/List;
move-result-object v0
invoke-virtual {v1}, Lcom/mologiq/analytics/af;->A()Ljava/util/List;
move-result-object v4
invoke-direct {p0, v0, v4}, Lcom/mologiq/analytics/u;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
move-result-object v0
if-eqz v0, :cond_47
invoke-interface {v7, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
:cond_47
invoke-static {}, Lcom/mologiq/analytics/aa;->c()Lcom/mologiq/analytics/aa;
move-result-object v8
invoke-virtual {v8, v3}, Lcom/mologiq/analytics/aa;->a(Landroid/content/Context;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v9
invoke-virtual {v8}, Lcom/mologiq/analytics/aa;->e()J
move-result-wide v4
sub-long v4, v9, v4
invoke-virtual {v2}, Lcom/mologiq/analytics/ae;->m()J
move-result-wide v11
cmp-long v0, v4, v11
if-lez v0, :cond_dd
new-instance v0, Lcom/mologiq/analytics/ai;
invoke-direct {v0, v3}, Lcom/mologiq/analytics/ai;-><init>(Landroid/content/Context;)V
new-instance v4, Lcom/mologiq/analytics/ad;
invoke-direct {v4}, Lcom/mologiq/analytics/ad;-><init>()V
invoke-virtual {v1}, Lcom/mologiq/analytics/af;->n()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Lcom/mologiq/analytics/ad;->e(Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/mologiq/analytics/af;->o()Z
move-result v5
invoke-virtual {v4, v5}, Lcom/mologiq/analytics/ad;->a(Z)V
invoke-virtual {v1}, Lcom/mologiq/analytics/af;->p()Ljava/lang/String;
move-result-object v1
invoke-virtual {v4, v1}, Lcom/mologiq/analytics/ad;->f(Ljava/lang/String;)V
const-string v1, "1.2.9"
invoke-virtual {v4, v1}, Lcom/mologiq/analytics/ad;->b(Ljava/lang/String;)V
const-string v1, "2014-07-08"
invoke-virtual {v4, v1}, Lcom/mologiq/analytics/ad;->c(Ljava/lang/String;)V
invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_eb
const-string v1, ""
:goto_91
invoke-virtual {v4, v1}, Lcom/mologiq/analytics/ad;->a(Ljava/lang/String;)V
invoke-virtual {v4, p1}, Lcom/mologiq/analytics/ad;->d(Ljava/lang/String;)V
if-eqz v7, :cond_bb
invoke-interface {v7}, Ljava/util/Map;->size()I
move-result v1
if-lez v1, :cond_bb
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v6
:cond_ac
:goto_ac
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-nez v1, :cond_f0
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_bb
invoke-virtual {v4, v5}, Lcom/mologiq/analytics/ad;->a(Ljava/util/List;)V
:cond_bb
invoke-virtual {v2}, Lcom/mologiq/analytics/ae;->h()Ljava/lang/String;
move-result-object v1
invoke-virtual {v4}, Lcom/mologiq/analytics/ad;->i()Ljava/lang/String;
move-result-object v2
const/16 v4, 0x1f4
const/16 v5, 0x3e8
const/4 v6, 0x1
invoke-virtual/range {v0 .. v6}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;IIZ)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_d7
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_d7
invoke-virtual {v8, v0}, Lcom/mologiq/analytics/aa;->b(Ljava/lang/String;)V
:cond_d7
invoke-virtual {v8, v9, v10}, Lcom/mologiq/analytics/aa;->a(J)V
invoke-virtual {v8, v3}, Lcom/mologiq/analytics/aa;->b(Landroid/content/Context;)Z
:cond_dd
invoke-virtual {v8}, Lcom/mologiq/analytics/aa;->d()Ljava/util/Map;
move-result-object v0
if-eqz v7, :cond_e8
if-eqz v0, :cond_e8
invoke-interface {v7, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
:cond_e8
move-object v0, v7
goto/16 :goto_b
:cond_eb
invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
goto :goto_91
:cond_f0
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v11
instance-of v11, v11, Ljava/lang/String;
if-eqz v11, :cond_ac
new-instance v11, Lcom/mologiq/analytics/ac;
invoke-direct {v11}, Lcom/mologiq/analytics/ac;-><init>()V
invoke-virtual {v11, v1}, Lcom/mologiq/analytics/ac;->a(Ljava/lang/String;)V
invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v11, v1}, Lcom/mologiq/analytics/ac;->b(Ljava/lang/String;)V
invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_112
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_112} :catch_113
goto :goto_ac
:catch_113
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;)V
const/4 v0, 0x0
goto/16 :goto_b
:cond_122
move-object v7, p2
goto/16 :goto_1f
.end method
.method public a()V
.registers 1
return-void
.end method
.method public a(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
.registers 13
:try_start_0
iget-object v0, p0, Lcom/mologiq/analytics/u;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/content/Context;
if-nez v1, :cond_b
:goto_a
return-void
:cond_b
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
sget-object v0, Lcom/mologiq/analytics/z;->a:Lcom/mologiq/analytics/z;
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v7, Ljava/lang/Thread;
new-instance v0, Lcom/mologiq/analytics/y;
move-object v3, p3
move-object v4, p1
move v5, p2
move-object v6, p4
invoke-direct/range {v0 .. v6}, Lcom/mologiq/analytics/y;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;)V
invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v7}, Ljava/lang/Thread;->start()V
:try_end_26
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27
goto :goto_a
:catch_27
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;)V
goto :goto_a
.end method
.method public a(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
.registers 14
:try_start_0
iget-object v0, p0, Lcom/mologiq/analytics/u;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/content/Context;
if-nez v1, :cond_b
:goto_a
return-void
:cond_b
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
sget-object v0, Lcom/mologiq/analytics/z;->c:Lcom/mologiq/analytics/z;
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v7, Ljava/lang/Thread;
new-instance v0, Lcom/mologiq/analytics/y;
move-object v3, p3
move-object v4, p1
move v5, p2
move-object v6, p5
invoke-direct/range {v0 .. v6}, Lcom/mologiq/analytics/y;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;)V
invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v7}, Ljava/lang/Thread;->start()V
:try_end_26
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27
goto :goto_a
:catch_27
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;)V
goto :goto_a
.end method
.method public b()V
.registers 1
return-void
.end method
.method public b(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
.registers 13
:try_start_0
iget-object v0, p0, Lcom/mologiq/analytics/u;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/content/Context;
if-nez v1, :cond_b
:goto_a
return-void
:cond_b
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
sget-object v0, Lcom/mologiq/analytics/z;->a:Lcom/mologiq/analytics/z;
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/mologiq/analytics/z;->b:Lcom/mologiq/analytics/z;
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v7, Ljava/lang/Thread;
new-instance v0, Lcom/mologiq/analytics/y;
move-object v3, p3
move-object v4, p1
move v5, p2
move-object v6, p4
invoke-direct/range {v0 .. v6}, Lcom/mologiq/analytics/y;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;)V
invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v7}, Ljava/lang/Thread;->start()V
:try_end_2b
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c
goto :goto_a
:catch_2c
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;)V
goto :goto_a
.end method
.method public c()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/mologiq/analytics/u;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
if-nez v0, :cond_b
:goto_a
return-void
:cond_b
new-instance v1, Ljava/lang/Thread;
new-instance v2, Lcom/mologiq/analytics/v;
invoke-direct {v2, v0}, Lcom/mologiq/analytics/v;-><init>(Landroid/content/Context;)V
invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v1}, Ljava/lang/Thread;->start()V
:try_end_18
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19
goto :goto_a
:catch_19
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "MologiqAnalytics"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;)V
goto :goto_a
.end method
.method public d()V
.registers 2
:try_start_0
iget-object v0, p0, Lcom/mologiq/analytics/u;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
invoke-static {}, Lcom/mologiq/analytics/f;->c()V
:try_end_b
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_e
if-nez v0, :cond_d
:goto_d
:cond_d
return-void
:catch_e
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;)V
goto :goto_d
.end method