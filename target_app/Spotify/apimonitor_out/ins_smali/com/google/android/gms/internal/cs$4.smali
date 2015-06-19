.class final Lcom/google/android/gms/internal/cs$4;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/google/android/gms/internal/dc;
.field final synthetic b:Lcom/google/android/gms/internal/cs;
.method constructor <init>(Lcom/google/android/gms/internal/cs;Lcom/google/android/gms/internal/dc;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/cs$4;->b:Lcom/google/android/gms/internal/cs;
iput-object p2, p0, Lcom/google/android/gms/internal/cs$4;->a:Lcom/google/android/gms/internal/dc;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/cs$4;->b:Lcom/google/android/gms/internal/cs;
invoke-static {v0}, Lcom/google/android/gms/internal/cs;->a(Lcom/google/android/gms/internal/cs;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_7
iget-object v0, p0, Lcom/google/android/gms/internal/cs$4;->b:Lcom/google/android/gms/internal/cs;
invoke-static {v0}, Lcom/google/android/gms/internal/cs;->c(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/internal/cz;
move-result-object v0
iget v0, v0, Lcom/google/android/gms/internal/cz;->e:I
const/4 v2, -0x2
if-eq v0, v2, :cond_14
monitor-exit v1
:goto_13
return-void
:cond_14
iget-object v0, p0, Lcom/google/android/gms/internal/cs$4;->b:Lcom/google/android/gms/internal/cs;
invoke-static {v0}, Lcom/google/android/gms/internal/cs;->d(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/internal/er;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->f()Lcom/google/android/gms/internal/eu;
move-result-object v0
iget-object v2, p0, Lcom/google/android/gms/internal/cs$4;->b:Lcom/google/android/gms/internal/cs;
invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/eu;->a(Lcom/google/android/gms/internal/ev;)V
iget-object v0, p0, Lcom/google/android/gms/internal/cs$4;->a:Lcom/google/android/gms/internal/dc;
iget-object v2, p0, Lcom/google/android/gms/internal/cs$4;->b:Lcom/google/android/gms/internal/cs;
invoke-static {v2}, Lcom/google/android/gms/internal/cs;->c(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/internal/cz;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/dc;->a(Lcom/google/android/gms/internal/cz;)V
monitor-exit v1
:try_end_2f
.catchall {:try_start_7 .. :try_end_2f} :catchall_30
goto :goto_13
:catchall_30
move-exception v0
monitor-exit v1
throw v0
.end method