.class  Lcom/google/android/gms/common/api/u$4;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/i;
.field final synthetic a:Lcom/google/android/gms/common/api/c;
.field final synthetic b:Lcom/google/android/gms/common/api/u;
.method constructor <init>(Lcom/google/android/gms/common/api/u;Lcom/google/android/gms/common/api/c;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/common/api/u$4;->b:Lcom/google/android/gms/common/api/u;
iput-object p2, p0, Lcom/google/android/gms/common/api/u$4;->a:Lcom/google/android/gms/common/api/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/common/b;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/common/api/u$4;->b:Lcom/google/android/gms/common/api/u;
invoke-static {v0}, Lcom/google/android/gms/common/api/u;->a(Lcom/google/android/gms/common/api/u;)Ljava/util/concurrent/locks/Lock;
move-result-object v0
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_9
iget-object v0, p0, Lcom/google/android/gms/common/api/u$4;->b:Lcom/google/android/gms/common/api/u;
invoke-static {v0}, Lcom/google/android/gms/common/api/u;->h(Lcom/google/android/gms/common/api/u;)Lcom/google/android/gms/common/b;
move-result-object v0
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/google/android/gms/common/api/u$4;->a:Lcom/google/android/gms/common/api/c;
invoke-interface {v0}, Lcom/google/android/gms/common/api/c;->a()I
move-result v0
iget-object v1, p0, Lcom/google/android/gms/common/api/u$4;->b:Lcom/google/android/gms/common/api/u;
invoke-static {v1}, Lcom/google/android/gms/common/api/u;->i(Lcom/google/android/gms/common/api/u;)I
move-result v1
if-ge v0, v1, :cond_2f
:cond_1f
iget-object v0, p0, Lcom/google/android/gms/common/api/u$4;->b:Lcom/google/android/gms/common/api/u;
invoke-static {v0, p1}, Lcom/google/android/gms/common/api/u;->a(Lcom/google/android/gms/common/api/u;Lcom/google/android/gms/common/b;)Lcom/google/android/gms/common/b;
iget-object v0, p0, Lcom/google/android/gms/common/api/u$4;->b:Lcom/google/android/gms/common/api/u;
iget-object v1, p0, Lcom/google/android/gms/common/api/u$4;->a:Lcom/google/android/gms/common/api/c;
invoke-interface {v1}, Lcom/google/android/gms/common/api/c;->a()I
move-result v1
invoke-static {v0, v1}, Lcom/google/android/gms/common/api/u;->c(Lcom/google/android/gms/common/api/u;I)I
:cond_2f
iget-object v0, p0, Lcom/google/android/gms/common/api/u$4;->b:Lcom/google/android/gms/common/api/u;
invoke-static {v0}, Lcom/google/android/gms/common/api/u;->d(Lcom/google/android/gms/common/api/u;)V
:try_end_34
.catchall {:try_start_9 .. :try_end_34} :catchall_3e
iget-object v0, p0, Lcom/google/android/gms/common/api/u$4;->b:Lcom/google/android/gms/common/api/u;
invoke-static {v0}, Lcom/google/android/gms/common/api/u;->a(Lcom/google/android/gms/common/api/u;)Ljava/util/concurrent/locks/Lock;
move-result-object v0
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
:catchall_3e
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/u$4;->b:Lcom/google/android/gms/common/api/u;
invoke-static {v1}, Lcom/google/android/gms/common/api/u;->a(Lcom/google/android/gms/common/api/u;)Ljava/util/concurrent/locks/Lock;
move-result-object v1
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method