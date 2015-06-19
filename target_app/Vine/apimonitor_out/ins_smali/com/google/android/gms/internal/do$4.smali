.class  Lcom/google/android/gms/internal/do$4;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic pE:Lcom/google/android/gms/internal/do;
.field final synthetic pG:Lcom/google/android/gms/internal/dp;
.method constructor <init>(Lcom/google/android/gms/internal/do;Lcom/google/android/gms/internal/dp;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/do$4;->pE:Lcom/google/android/gms/internal/do;
iput-object p2, p0, Lcom/google/android/gms/internal/do$4;->pG:Lcom/google/android/gms/internal/dp;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/do$4;->pE:Lcom/google/android/gms/internal/do;
invoke-static {v0}, Lcom/google/android/gms/internal/do;->a(Lcom/google/android/gms/internal/do;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_7
iget-object v0, p0, Lcom/google/android/gms/internal/do$4;->pE:Lcom/google/android/gms/internal/do;
invoke-static {v0}, Lcom/google/android/gms/internal/do;->c(Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/dv;
move-result-object v0
iget v0, v0, Lcom/google/android/gms/internal/dv;->errorCode:I
const/4 v2, -0x2
if-eq v0, v2, :cond_14
monitor-exit v1
:goto_13
return-void
:cond_14
iget-object v0, p0, Lcom/google/android/gms/internal/do$4;->pE:Lcom/google/android/gms/internal/do;
invoke-static {v0}, Lcom/google/android/gms/internal/do;->d(Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/ey;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bW()Lcom/google/android/gms/internal/ez;
move-result-object v0
iget-object v2, p0, Lcom/google/android/gms/internal/do$4;->pE:Lcom/google/android/gms/internal/do;
invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ez;->a(Lcom/google/android/gms/internal/ez$a;)V
iget-object v0, p0, Lcom/google/android/gms/internal/do$4;->pG:Lcom/google/android/gms/internal/dp;
iget-object v2, p0, Lcom/google/android/gms/internal/do$4;->pE:Lcom/google/android/gms/internal/do;
invoke-static {v2}, Lcom/google/android/gms/internal/do;->c(Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/dv;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/dp;->b(Lcom/google/android/gms/internal/dv;)V
monitor-exit v1
goto :goto_13
:catchall_30
move-exception v0
monitor-exit v1
:try_end_32
.catchall {:try_start_7 .. :try_end_32} :catchall_30
throw v0
.end method