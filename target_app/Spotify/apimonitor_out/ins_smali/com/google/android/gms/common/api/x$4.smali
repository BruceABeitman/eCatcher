.class final Lcom/google/android/gms/common/api/x$4;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/l;
.field final synthetic a:Lcom/google/android/gms/common/api/g;
.field final synthetic b:Lcom/google/android/gms/common/api/x;
.method constructor <init>(Lcom/google/android/gms/common/api/x;Lcom/google/android/gms/common/api/g;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/common/api/x$4;->b:Lcom/google/android/gms/common/api/x;
iput-object p2, p0, Lcom/google/android/gms/common/api/x$4;->a:Lcom/google/android/gms/common/api/g;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/google/android/gms/common/a;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/common/api/x$4;->b:Lcom/google/android/gms/common/api/x;
invoke-static {v0}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;)Ljava/util/concurrent/locks/Lock;
move-result-object v0
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
:try_start_9
iget-object v0, p0, Lcom/google/android/gms/common/api/x$4;->b:Lcom/google/android/gms/common/api/x;
invoke-static {v0}, Lcom/google/android/gms/common/api/x;->i(Lcom/google/android/gms/common/api/x;)Lcom/google/android/gms/common/a;
move-result-object v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/google/android/gms/common/api/x$4;->a:Lcom/google/android/gms/common/api/g;
const/4 v0, 0x2
iget-object v1, p0, Lcom/google/android/gms/common/api/x$4;->b:Lcom/google/android/gms/common/api/x;
invoke-static {v1}, Lcom/google/android/gms/common/api/x;->j(Lcom/google/android/gms/common/api/x;)I
move-result v1
if-ge v0, v1, :cond_28
:cond_1c
iget-object v0, p0, Lcom/google/android/gms/common/api/x$4;->b:Lcom/google/android/gms/common/api/x;
invoke-static {v0, p1}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;Lcom/google/android/gms/common/a;)Lcom/google/android/gms/common/a;
iget-object v0, p0, Lcom/google/android/gms/common/api/x$4;->b:Lcom/google/android/gms/common/api/x;
iget-object v1, p0, Lcom/google/android/gms/common/api/x$4;->a:Lcom/google/android/gms/common/api/g;
invoke-static {v0}, Lcom/google/android/gms/common/api/x;->k(Lcom/google/android/gms/common/api/x;)I
:cond_28
iget-object v0, p0, Lcom/google/android/gms/common/api/x$4;->b:Lcom/google/android/gms/common/api/x;
invoke-static {v0}, Lcom/google/android/gms/common/api/x;->d(Lcom/google/android/gms/common/api/x;)V
:try_end_2d
.catchall {:try_start_9 .. :try_end_2d} :catchall_37
iget-object v0, p0, Lcom/google/android/gms/common/api/x$4;->b:Lcom/google/android/gms/common/api/x;
invoke-static {v0}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;)Ljava/util/concurrent/locks/Lock;
move-result-object v0
invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
return-void
:catchall_37
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/common/api/x$4;->b:Lcom/google/android/gms/common/api/x;
invoke-static {v1}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;)Ljava/util/concurrent/locks/Lock;
move-result-object v1
invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
throw v0
.end method