.class  Lcom/google/android/gms/internal/ck$2;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/ar;
.field final synthetic oB:Lcom/google/android/gms/internal/ck;
.method constructor <init>(Lcom/google/android/gms/internal/ck;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/ck$2;->oB:Lcom/google/android/gms/internal/ck;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/internal/dd;Ljava/util/Map;)V
.registers 8
iget-object v0, p0, Lcom/google/android/gms/internal/ck$2;->oB:Lcom/google/android/gms/internal/ck;
invoke-static {v0}, Lcom/google/android/gms/internal/ck;->a(Lcom/google/android/gms/internal/ck;)Ljava/lang/Object;
move-result-object v2
monitor-enter v2
:try_start_7
const-string v0, "url"
invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-nez v0, :cond_18
const-string v0, "URL missing in loadAdUrl GMSG."
invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V
monitor-exit v2
:goto_17
return-void
:cond_18
const-string v1, "%40mediation_adapters%40"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_4e
invoke-virtual {p1}, Lcom/google/android/gms/internal/dd;->getContext()Landroid/content/Context;
move-result-object v3
const-string v1, "check_adapters"
invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
iget-object v4, p0, Lcom/google/android/gms/internal/ck$2;->oB:Lcom/google/android/gms/internal/ck;
invoke-static {v4}, Lcom/google/android/gms/internal/ck;->b(Lcom/google/android/gms/internal/ck;)Ljava/lang/String;
move-result-object v4
invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/cs;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v3, "%40mediation_adapters%40"
invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Ad request URL modified to "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/internal/da;->v(Ljava/lang/String;)V
:cond_4e
iget-object v1, p0, Lcom/google/android/gms/internal/ck$2;->oB:Lcom/google/android/gms/internal/ck;
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ck;->a(Lcom/google/android/gms/internal/ck;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/google/android/gms/internal/ck$2;->oB:Lcom/google/android/gms/internal/ck;
invoke-static {v0}, Lcom/google/android/gms/internal/ck;->a(Lcom/google/android/gms/internal/ck;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->notify()V
monitor-exit v2
:try_end_5d
.catchall {:try_start_7 .. :try_end_5d} :catchall_5e
goto :goto_17
:catchall_5e
move-exception v0
monitor-exit v2
throw v0
.end method