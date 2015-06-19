.class final Lcom/google/android/gms/internal/du$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/ao;
.field final synthetic a:Lcom/google/android/gms/internal/du;
.method constructor <init>(Lcom/google/android/gms/internal/du;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/du$1;->a:Lcom/google/android/gms/internal/du;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/google/android/gms/internal/er;Ljava/util/Map;)V
.registers 8
iget-object v0, p0, Lcom/google/android/gms/internal/du$1;->a:Lcom/google/android/gms/internal/du;
invoke-static {v0}, Lcom/google/android/gms/internal/du;->a(Lcom/google/android/gms/internal/du;)Ljava/lang/Object;
move-result-object v2
monitor-enter v2
:try_start_7
const-string v0, "type"
invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v1, "errors"
invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Invalid "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, " request error: "
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/du$1;->a:Lcom/google/android/gms/internal/du;
invoke-static {v0}, Lcom/google/android/gms/internal/du;->b(Lcom/google/android/gms/internal/du;)I
iget-object v0, p0, Lcom/google/android/gms/internal/du$1;->a:Lcom/google/android/gms/internal/du;
invoke-static {v0}, Lcom/google/android/gms/internal/du;->a(Lcom/google/android/gms/internal/du;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->notify()V
monitor-exit v2
:try_end_42
.catchall {:try_start_7 .. :try_end_42} :catchall_43
return-void
:catchall_43
move-exception v0
monitor-exit v2
throw v0
.end method