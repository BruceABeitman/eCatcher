.class  Lcom/google/android/gms/internal/df$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/y;
.field final synthetic a:Lcom/google/android/gms/internal/df;
.method constructor <init>(Lcom/google/android/gms/internal/df;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/df$1;->a:Lcom/google/android/gms/internal/df;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/internal/ec;Ljava/util/Map;)V
.registers 8
iget-object v0, p0, Lcom/google/android/gms/internal/df$1;->a:Lcom/google/android/gms/internal/df;
invoke-static {v0}, Lcom/google/android/gms/internal/df;->a(Lcom/google/android/gms/internal/df;)Ljava/lang/Object;
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
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Invalid "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, " request error: "
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/df$1;->a:Lcom/google/android/gms/internal/df;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/google/android/gms/internal/df;->a(Lcom/google/android/gms/internal/df;I)I
iget-object v0, p0, Lcom/google/android/gms/internal/df$1;->a:Lcom/google/android/gms/internal/df;
invoke-static {v0}, Lcom/google/android/gms/internal/df;->a(Lcom/google/android/gms/internal/df;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->notify()V
monitor-exit v2
return-void
:catchall_48
move-exception v0
monitor-exit v2
:try_end_4a
.catchall {:try_start_7 .. :try_end_4a} :catchall_48
throw v0
.end method