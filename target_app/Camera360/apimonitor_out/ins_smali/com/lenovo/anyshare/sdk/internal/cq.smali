.class public Lcom/lenovo/anyshare/sdk/internal/cq;
.super Ljava/lang/Object;
.source "Task.java"
.field protected d:Ljava/lang/String;
.field protected e:Ljava/lang/Object;
.field protected f:J
.field protected g:J
.field protected h:I
.field protected final i:Ljava/lang/Object;
.field protected final j:Ljava/util/concurrent/atomic/AtomicBoolean;
.method public constructor <init>()V
.registers 5
const-wide/16 v2, 0x0
const/4 v0, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->d:Ljava/lang/String;
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->e:Ljava/lang/Object;
iput-wide v2, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->f:J
iput-wide v2, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->g:J
iput v1, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->h:I
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->i:Ljava/lang/Object;
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->j:Ljava/util/concurrent/atomic/AtomicBoolean;
return-void
.end method
.method public a(Ljava/lang/Object;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->e:Ljava/lang/Object;
return-void
.end method
.method public b(J)V
.registers 3
iput-wide p1, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->f:J
return-void
.end method
.method public b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->d:Ljava/lang/String;
return-void
.end method
.method public c(J)V
.registers 3
iput-wide p1, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->g:J
return-void
.end method
.method public d(J)V
.registers 5
const-wide/16 v0, 0x0
cmp-long v0, p1, v0
if-gtz v0, :cond_7
:goto_6
return-void
:try_start_7
:cond_7
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->i:Ljava/lang/Object;
monitor-enter v1
:try_end_a
.catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_14
:try_start_a
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->i:Ljava/lang/Object;
invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
monitor-exit v1
goto :goto_6
:catchall_11
move-exception v0
monitor-exit v1
:try_end_13
.catchall {:try_start_a .. :try_end_13} :catchall_11
:try_start_13
throw v0
:catch_14
:try_end_14
.catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_14} :catch_14
move-exception v0
goto :goto_6
.end method
.method public e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->d:Ljava/lang/String;
return-object v0
.end method
.method public f()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->e:Ljava/lang/Object;
return-object v0
.end method
.method public g()J
.registers 3
iget-wide v0, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->f:J
return-wide v0
.end method
.method public h()J
.registers 3
iget-wide v0, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->g:J
return-wide v0
.end method
.method public i()I
.registers 2
iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->h:I
return v0
.end method
.method public j()Z
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->j:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
return v0
.end method
.method public k()V
.registers 3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->j:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->i:Ljava/lang/Object;
monitor-enter v1
:try_start_9
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->i:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
monitor-exit v1
return-void
:catchall_10
move-exception v0
monitor-exit v1
:try_end_12
.catchall {:try_start_9 .. :try_end_12} :catchall_10
throw v0
.end method
.method public toString()Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "[id = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->d:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ", length = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->g:J
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->f:J
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ", retry = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->h:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ", cancelled = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cq;->j:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method