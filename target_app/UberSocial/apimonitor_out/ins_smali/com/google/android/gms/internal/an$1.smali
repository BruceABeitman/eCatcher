.class  Lcom/google/android/gms/internal/an$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/google/android/gms/internal/al;
.field final synthetic b:Lcom/google/android/gms/internal/an;
.method constructor <init>(Lcom/google/android/gms/internal/an;Lcom/google/android/gms/internal/al;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/an$1;->b:Lcom/google/android/gms/internal/an;
iput-object p2, p0, Lcom/google/android/gms/internal/an$1;->a:Lcom/google/android/gms/internal/al;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/an$1;->b:Lcom/google/android/gms/internal/an;
invoke-static {v0}, Lcom/google/android/gms/internal/an;->a(Lcom/google/android/gms/internal/an;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_7
iget-object v0, p0, Lcom/google/android/gms/internal/an$1;->b:Lcom/google/android/gms/internal/an;
invoke-static {v0}, Lcom/google/android/gms/internal/an;->b(Lcom/google/android/gms/internal/an;)I
move-result v0
const/4 v2, -0x2
if-eq v0, v2, :cond_12
monitor-exit v1
:goto_11
return-void
:cond_12
iget-object v0, p0, Lcom/google/android/gms/internal/an$1;->b:Lcom/google/android/gms/internal/an;
iget-object v2, p0, Lcom/google/android/gms/internal/an$1;->b:Lcom/google/android/gms/internal/an;
invoke-static {v2}, Lcom/google/android/gms/internal/an;->c(Lcom/google/android/gms/internal/an;)Lcom/google/android/gms/internal/av;
move-result-object v2
invoke-static {v0, v2}, Lcom/google/android/gms/internal/an;->a(Lcom/google/android/gms/internal/an;Lcom/google/android/gms/internal/av;)Lcom/google/android/gms/internal/av;
iget-object v0, p0, Lcom/google/android/gms/internal/an$1;->b:Lcom/google/android/gms/internal/an;
invoke-static {v0}, Lcom/google/android/gms/internal/an;->d(Lcom/google/android/gms/internal/an;)Lcom/google/android/gms/internal/av;
move-result-object v0
if-nez v0, :cond_30
iget-object v0, p0, Lcom/google/android/gms/internal/an$1;->b:Lcom/google/android/gms/internal/an;
const/4 v2, 0x4
invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/an;->a(I)V
monitor-exit v1
goto :goto_11
:catchall_2d
move-exception v0
monitor-exit v1
:try_end_2f
.catchall {:try_start_7 .. :try_end_2f} :catchall_2d
throw v0
:cond_30
:try_start_30
iget-object v0, p0, Lcom/google/android/gms/internal/an$1;->a:Lcom/google/android/gms/internal/al;
iget-object v2, p0, Lcom/google/android/gms/internal/an$1;->b:Lcom/google/android/gms/internal/an;
invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/al;->a(Lcom/google/android/gms/internal/ap;)V
iget-object v0, p0, Lcom/google/android/gms/internal/an$1;->b:Lcom/google/android/gms/internal/an;
iget-object v2, p0, Lcom/google/android/gms/internal/an$1;->a:Lcom/google/android/gms/internal/al;
invoke-static {v0, v2}, Lcom/google/android/gms/internal/an;->a(Lcom/google/android/gms/internal/an;Lcom/google/android/gms/internal/al;)V
monitor-exit v1
:try_end_3f
.catchall {:try_start_30 .. :try_end_3f} :catchall_2d
goto :goto_11
.end method