.class final Lcom/google/android/gms/internal/ds$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/content/Context;
.method constructor <init>(Landroid/content/Context;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/ds$1;->a:Landroid/content/Context;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
invoke-static {}, Lcom/google/android/gms/internal/ds;->d()Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_5
iget-object v0, p0, Lcom/google/android/gms/internal/ds$1;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/google/android/gms/internal/ds;->c(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ds;->b(Ljava/lang/String;)Ljava/lang/String;
invoke-static {}, Lcom/google/android/gms/internal/ds;->d()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
monitor-exit v1
return-void
:catchall_17
move-exception v0
monitor-exit v1
:try_end_19
.catchall {:try_start_5 .. :try_end_19} :catchall_17
throw v0
.end method