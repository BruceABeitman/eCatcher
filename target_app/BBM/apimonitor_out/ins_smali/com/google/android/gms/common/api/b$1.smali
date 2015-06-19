.class  Lcom/google/android/gms/common/api/b$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/b$a;
.field final synthetic zN:Lcom/google/android/gms/common/api/b;
.method constructor <init>(Lcom/google/android/gms/common/api/b;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/common/api/b$1;->zN:Lcom/google/android/gms/common/api/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public b(Lcom/google/android/gms/common/api/b$c;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/common/api/b$1;->zN:Lcom/google/android/gms/common/api/b;
invoke-static {v0}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/b;)Ljava/util/concurrent/locks/Lock;
move-result-object v0
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_9
iget-object v0, p0, Lcom/google/android/gms/common/api/b$1;->zN:Lcom/google/android/gms/common/api/b;
iget-object v0, v0, Lcom/google/android/gms/common/api/b;->zK:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
:try_end_10
.catchall {:try_start_9 .. :try_end_10} :catchall_1a
iget-object v0, p0, Lcom/google/android/gms/common/api/b$1;->zN:Lcom/google/android/gms/common/api/b;
invoke-static {v0}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/b;)Ljava/util/concurrent/locks/Lock;
move-result-object v0
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
:catchall_1a
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/b$1;->zN:Lcom/google/android/gms/common/api/b;
invoke-static {v1}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/b;)Ljava/util/concurrent/locks/Lock;
move-result-object v1
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method