.class  Lcom/google/android/gms/internal/ck$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/ar;
.field final synthetic oB:Lcom/google/android/gms/internal/ck;
.method constructor <init>(Lcom/google/android/gms/internal/ck;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/ck$1;->oB:Lcom/google/android/gms/internal/ck;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/internal/dd;Ljava/util/Map;)V
.registers 8
iget-object v0, p0, Lcom/google/android/gms/internal/ck$1;->oB:Lcom/google/android/gms/internal/ck;
invoke-static {v0}, Lcom/google/android/gms/internal/ck;->a(Lcom/google/android/gms/internal/ck;)Ljava/lang/Object;
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
invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/ck$1;->oB:Lcom/google/android/gms/internal/ck;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/google/android/gms/internal/ck;->a(Lcom/google/android/gms/internal/ck;I)I
iget-object v0, p0, Lcom/google/android/gms/internal/ck$1;->oB:Lcom/google/android/gms/internal/ck;
invoke-static {v0}, Lcom/google/android/gms/internal/ck;->a(Lcom/google/android/gms/internal/ck;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->notify()V
monitor-exit v2
:try_end_43
.catchall {:try_start_7 .. :try_end_43} :catchall_44
return-void
:catchall_44
move-exception v0
monitor-exit v2
throw v0
.end method