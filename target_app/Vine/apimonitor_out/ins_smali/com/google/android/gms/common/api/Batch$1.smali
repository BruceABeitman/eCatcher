.class  Lcom/google/android/gms/common/api/Batch$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/PendingResult$a;
.field final synthetic DA:Lcom/google/android/gms/common/api/Batch;
.method constructor <init>(Lcom/google/android/gms/common/api/Batch;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/common/api/Batch$1;->DA:Lcom/google/android/gms/common/api/Batch;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public n(Lcom/google/android/gms/common/api/Status;)V
.registers 7
iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->DA:Lcom/google/android/gms/common/api/Batch;
invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->a(Lcom/google/android/gms/common/api/Batch;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_7
iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->DA:Lcom/google/android/gms/common/api/Batch;
invoke-virtual {v0}, Lcom/google/android/gms/common/api/Batch;->isCanceled()Z
move-result v0
if-eqz v0, :cond_11
monitor-exit v1
:goto_10
return-void
:cond_11
invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isCanceled()Z
move-result v0
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->DA:Lcom/google/android/gms/common/api/Batch;
const/4 v2, 0x1
invoke-static {v0, v2}, Lcom/google/android/gms/common/api/Batch;->a(Lcom/google/android/gms/common/api/Batch;Z)Z
:goto_1d
:cond_1d
iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->DA:Lcom/google/android/gms/common/api/Batch;
invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->b(Lcom/google/android/gms/common/api/Batch;)I
iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->DA:Lcom/google/android/gms/common/api/Batch;
invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->c(Lcom/google/android/gms/common/api/Batch;)I
move-result v0
if-nez v0, :cond_37
iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->DA:Lcom/google/android/gms/common/api/Batch;
invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->d(Lcom/google/android/gms/common/api/Batch;)Z
move-result v0
if-eqz v0, :cond_49
iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->DA:Lcom/google/android/gms/common/api/Batch;
invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->e(Lcom/google/android/gms/common/api/Batch;)V
:goto_37
:cond_37
monitor-exit v1
goto :goto_10
:catchall_39
move-exception v0
monitor-exit v1
:try_end_3b
.catchall {:try_start_7 .. :try_end_3b} :catchall_39
throw v0
:try_start_3c
:cond_3c
invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z
move-result v0
if-nez v0, :cond_1d
iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->DA:Lcom/google/android/gms/common/api/Batch;
const/4 v2, 0x1
invoke-static {v0, v2}, Lcom/google/android/gms/common/api/Batch;->b(Lcom/google/android/gms/common/api/Batch;Z)Z
goto :goto_1d
:cond_49
iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->DA:Lcom/google/android/gms/common/api/Batch;
invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->f(Lcom/google/android/gms/common/api/Batch;)Z
move-result v0
if-eqz v0, :cond_69
new-instance v0, Lcom/google/android/gms/common/api/Status;
const/16 v2, 0xd
invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
:goto_58
iget-object v2, p0, Lcom/google/android/gms/common/api/Batch$1;->DA:Lcom/google/android/gms/common/api/Batch;
new-instance v3, Lcom/google/android/gms/common/api/BatchResult;
iget-object v4, p0, Lcom/google/android/gms/common/api/Batch$1;->DA:Lcom/google/android/gms/common/api/Batch;
invoke-static {v4}, Lcom/google/android/gms/common/api/Batch;->g(Lcom/google/android/gms/common/api/Batch;)[Lcom/google/android/gms/common/api/PendingResult;
move-result-object v4
invoke-direct {v3, v0, v4}, Lcom/google/android/gms/common/api/BatchResult;-><init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/PendingResult;)V
invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/Batch;->b(Lcom/google/android/gms/common/api/Result;)V
goto :goto_37
:cond_69
sget-object v0, Lcom/google/android/gms/common/api/Status;->Ek:Lcom/google/android/gms/common/api/Status;
:try_end_6b
.catchall {:try_start_3c .. :try_end_6b} :catchall_39
goto :goto_58
.end method