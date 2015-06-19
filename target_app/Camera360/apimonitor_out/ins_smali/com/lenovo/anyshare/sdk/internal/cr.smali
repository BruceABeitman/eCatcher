.class public Lcom/lenovo/anyshare/sdk/internal/cr;
.super Ljava/lang/Object;
.source "TaskScheduler.java"
.field protected a:Lcom/lenovo/anyshare/sdk/internal/cn;
.field protected b:Lcom/lenovo/anyshare/sdk/internal/co;
.field protected final c:Ljava/util/List;
.method protected constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cr;->a:Lcom/lenovo/anyshare/sdk/internal/cn;
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cr;->b:Lcom/lenovo/anyshare/sdk/internal/co;
new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cr;->c:Ljava/util/List;
return-void
.end method
.method public a(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/cq;
.registers 3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cr;->b:Lcom/lenovo/anyshare/sdk/internal/co;
invoke-interface {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/co;->a(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/cq;
move-result-object v0
return-object v0
.end method
.method protected a(Lcom/lenovo/anyshare/sdk/internal/cn;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/cr;->a:Lcom/lenovo/anyshare/sdk/internal/cn;
return-void
.end method
.method protected a(Lcom/lenovo/anyshare/sdk/internal/co;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/cr;->b:Lcom/lenovo/anyshare/sdk/internal/co;
return-void
.end method
.method public a(Lcom/lenovo/anyshare/sdk/internal/cp;)V
.registers 3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cr;->c:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method protected a(Lcom/lenovo/anyshare/sdk/internal/cq;I)V
.registers 7
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/cr;->c:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_1e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/lenovo/anyshare/sdk/internal/cp;
:try_start_12
invoke-interface {v2, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/cp;->a(Lcom/lenovo/anyshare/sdk/internal/cq;I)V
:try_end_15
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16
goto :goto_6
:catch_16
move-exception v0
const-string/jumbo v3, "Task.Scheduler"
invoke-static {v3, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_6
:cond_1e
return-void
.end method
.method protected a(Lcom/lenovo/anyshare/sdk/internal/cq;JJ)V
.registers 14
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cr;->c:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v7
:goto_6
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_21
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/anyshare/sdk/internal/cp;
move-object v1, p1
move-wide v2, p2
move-wide v4, p4
:try_start_15
invoke-interface/range {v0 .. v5}, Lcom/lenovo/anyshare/sdk/internal/cp;->a(Lcom/lenovo/anyshare/sdk/internal/cq;JJ)V
:try_end_18
.catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19
goto :goto_6
:catch_19
move-exception v6
const-string/jumbo v1, "Task.Scheduler"
invoke-static {v1, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_6
:cond_21
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cr;->b:Lcom/lenovo/anyshare/sdk/internal/co;
invoke-interface {v1, p1}, Lcom/lenovo/anyshare/sdk/internal/co;->d(Lcom/lenovo/anyshare/sdk/internal/cq;)Z
move-result v1
if-eqz v1, :cond_2c
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/cr;->d()V
:cond_2c
return-void
.end method
.method protected a(Lcom/lenovo/anyshare/sdk/internal/cq;Ljava/lang/Exception;)Z
.registers 8
const/4 v3, 0x0
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/cr;->c:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_7
:cond_7
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_23
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/lenovo/anyshare/sdk/internal/cp;
:try_start_13
invoke-interface {v2, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/cp;->a(Lcom/lenovo/anyshare/sdk/internal/cq;Ljava/lang/Exception;)Z
:try_end_16
.catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_1b
move-result v4
if-eqz v4, :cond_7
const/4 v3, 0x1
goto :goto_7
:catch_1b
move-exception v0
const-string/jumbo v4, "Task.Scheduler"
invoke-static {v4, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_7
:cond_23
return v3
.end method
.method public b(Lcom/lenovo/anyshare/sdk/internal/cq;)V
.registers 5
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/cq;->j()Z
move-result v0
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Z)V
const-string/jumbo v0, "Task.Scheduler"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "task added: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/cq;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cr;->b:Lcom/lenovo/anyshare/sdk/internal/co;
invoke-interface {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/co;->a(Lcom/lenovo/anyshare/sdk/internal/cq;)V
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/cr;->d()V
return-void
.end method
.method public c()V
.registers 3
const-string/jumbo v0, "Task.Scheduler"
const-string/jumbo v1, "tasks cleared"
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cr;->b:Lcom/lenovo/anyshare/sdk/internal/co;
invoke-interface {v0}, Lcom/lenovo/anyshare/sdk/internal/co;->a()V
return-void
.end method
.method public c(Lcom/lenovo/anyshare/sdk/internal/cq;)V
.registers 5
const-string/jumbo v0, "Task.Scheduler"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "task removed: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/cq;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/cq;->k()V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cr;->b:Lcom/lenovo/anyshare/sdk/internal/co;
invoke-interface {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/co;->b(Lcom/lenovo/anyshare/sdk/internal/cq;)V
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/cr;->d()V
return-void
.end method
.method protected final d()V
.registers 7
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/cr;->b:Lcom/lenovo/anyshare/sdk/internal/co;
invoke-interface {v3}, Lcom/lenovo/anyshare/sdk/internal/co;->b()Ljava/util/Collection;
move-result-object v2
if-eqz v2, :cond_e
invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z
move-result v3
if-eqz v3, :cond_f
:cond_e
return-void
:cond_f
const-string/jumbo v3, "Task.Scheduler"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "scheduling "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-interface {v2}, Ljava/util/Collection;->size()I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, " tasks"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_38
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_e
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/lenovo/anyshare/sdk/internal/cq;
new-instance v3, Lcom/lenovo/anyshare/sdk/internal/cr$1;
invoke-direct {v3, p0, v1}, Lcom/lenovo/anyshare/sdk/internal/cr$1;-><init>(Lcom/lenovo/anyshare/sdk/internal/cr;Lcom/lenovo/anyshare/sdk/internal/cq;)V
invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/be;->a(Ljava/lang/Runnable;)V
goto :goto_38
.end method
.method protected final d(Lcom/lenovo/anyshare/sdk/internal/cq;)Z
.registers 13
const-wide/16 v9, 0x0
const/4 v4, 0x1
const/4 v3, 0x0
:try_start_4
invoke-virtual {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/cr;->e(Lcom/lenovo/anyshare/sdk/internal/cq;)Z
move-result v0
if-nez v0, :cond_29
const-string/jumbo v4, "Task.Scheduler"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "prepare task failed: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/cq;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_28
return v3
:cond_29
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/cq;->g()J
move-result-wide v5
cmp-long v5, v5, v9
if-ltz v5, :cond_e2
move v5, v4
:goto_32
invoke-static {v5}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/cq;->h()J
move-result-wide v5
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/cq;->g()J
move-result-wide v7
cmp-long v5, v5, v7
if-gtz v5, :cond_e5
move v5, v4
:goto_42
invoke-static {v5}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/cq;->h()J
move-result-wide v5
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/cq;->g()J
move-result-wide v7
cmp-long v5, v5, v7
if-nez v5, :cond_e8
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/cq;->g()J
move-result-wide v5
cmp-long v5, v5, v9
if-eqz v5, :cond_e8
move v1, v4
:goto_5a
if-nez v1, :cond_9d
const-string/jumbo v5, "Task.Scheduler"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "executing task: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/cq;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/cr;->a:Lcom/lenovo/anyshare/sdk/internal/cn;
invoke-interface {v5, p1}, Lcom/lenovo/anyshare/sdk/internal/cn;->a(Lcom/lenovo/anyshare/sdk/internal/cq;)V
const-string/jumbo v5, "Task.Scheduler"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "task completed: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/cq;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
:cond_9d
if-eqz v1, :cond_eb
:goto_9f
invoke-virtual {p0, p1, v4}, Lcom/lenovo/anyshare/sdk/internal/cr;->a(Lcom/lenovo/anyshare/sdk/internal/cq;I)V
:try_end_a2
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a2} :catch_a3
goto :goto_28
:catch_a3
move-exception v2
invoke-virtual {p0, p1, v2}, Lcom/lenovo/anyshare/sdk/internal/cr;->a(Lcom/lenovo/anyshare/sdk/internal/cq;Ljava/lang/Exception;)Z
move-result v3
const-string/jumbo v4, "Task.Scheduler"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "task execute failed: retry = "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, ", error = "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, ", task = "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/cq;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_28
:cond_e2
move v5, v3
goto/16 :goto_32
:cond_e5
move v5, v3
goto/16 :goto_42
:cond_e8
move v1, v3
goto/16 :goto_5a
:cond_eb
move v4, v3
goto :goto_9f
.end method
.method protected e(Lcom/lenovo/anyshare/sdk/internal/cq;)Z
.registers 7
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/cr;->c:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_6
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_23
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/lenovo/anyshare/sdk/internal/cp;
const/4 v0, 0x0
:try_start_13
invoke-interface {v3, p1}, Lcom/lenovo/anyshare/sdk/internal/cp;->a(Lcom/lenovo/anyshare/sdk/internal/cq;)Z
:try_end_16
.catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_1b
move-result v0
:goto_17
if-nez v0, :cond_6
const/4 v4, 0x0
:goto_1a
return v4
:catch_1b
move-exception v1
const-string/jumbo v4, "Task.Scheduler"
invoke-static {v4, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_17
:cond_23
const/4 v4, 0x1
goto :goto_1a
.end method