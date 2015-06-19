.class  Lcom/google/android/gms/internal/ea$2;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/bd;
.field final synthetic qC:Lcom/google/android/gms/internal/ea;
.method constructor <init>(Lcom/google/android/gms/internal/ea;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/ea$2;->qC:Lcom/google/android/gms/internal/ea;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public b(Lcom/google/android/gms/internal/ey;Ljava/util/Map;)V
.registers 9
iget-object v0, p0, Lcom/google/android/gms/internal/ea$2;->qC:Lcom/google/android/gms/internal/ea;
invoke-static {v0}, Lcom/google/android/gms/internal/ea;->a(Lcom/google/android/gms/internal/ea;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_7
new-instance v2, Lcom/google/android/gms/internal/ec;
invoke-direct {v2, p2}, Lcom/google/android/gms/internal/ec;-><init>(Ljava/util/Map;)V
invoke-virtual {v2}, Lcom/google/android/gms/internal/ec;->getUrl()Ljava/lang/String;
move-result-object v3
if-nez v3, :cond_19
const-string v0, "URL missing in loadAdUrl GMSG."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
monitor-exit v1
:goto_18
return-void
:cond_19
const-string v0, "%40mediation_adapters%40"
invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_53
invoke-virtual {p1}, Lcom/google/android/gms/internal/ey;->getContext()Landroid/content/Context;
move-result-object v4
const-string v0, "check_adapters"
invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v5, p0, Lcom/google/android/gms/internal/ea$2;->qC:Lcom/google/android/gms/internal/ea;
invoke-static {v5}, Lcom/google/android/gms/internal/ea;->b(Lcom/google/android/gms/internal/ea;)Ljava/lang/String;
move-result-object v5
invoke-static {v4, v0, v5}, Lcom/google/android/gms/internal/em;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v4, "%40mediation_adapters%40"
invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Ad request URL modified to "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->C(Ljava/lang/String;)V
:cond_53
iget-object v0, p0, Lcom/google/android/gms/internal/ea$2;->qC:Lcom/google/android/gms/internal/ea;
invoke-static {v0, v2}, Lcom/google/android/gms/internal/ea;->a(Lcom/google/android/gms/internal/ea;Lcom/google/android/gms/internal/ec;)Lcom/google/android/gms/internal/ec;
iget-object v0, p0, Lcom/google/android/gms/internal/ea$2;->qC:Lcom/google/android/gms/internal/ea;
invoke-static {v0}, Lcom/google/android/gms/internal/ea;->a(Lcom/google/android/gms/internal/ea;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->notify()V
monitor-exit v1
goto :goto_18
:catchall_63
move-exception v0
monitor-exit v1
:try_end_65
.catchall {:try_start_7 .. :try_end_65} :catchall_63
throw v0
.end method