.class  Lcom/google/android/gms/tagmanager/o$c;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/bg;
.field final synthetic aeP:Lcom/google/android/gms/tagmanager/o;
.method private constructor <init>(Lcom/google/android/gms/tagmanager/o;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/tagmanager/o$c;->aeP:Lcom/google/android/gms/tagmanager/o;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/tagmanager/o$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/o$c;-><init>(Lcom/google/android/gms/tagmanager/o;)V
return-void
.end method
.method public a(Lcom/google/android/gms/tagmanager/bg$a;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$c;->aeP:Lcom/google/android/gms/tagmanager/o;
invoke-static {v0}, Lcom/google/android/gms/tagmanager/o;->f(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/tagmanager/n;
move-result-object v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$c;->aeP:Lcom/google/android/gms/tagmanager/o;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/o$c;->aeP:Lcom/google/android/gms/tagmanager/o;
invoke-static {v1}, Lcom/google/android/gms/tagmanager/o;->f(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/tagmanager/n;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/o;->b(Lcom/google/android/gms/common/api/Result;)V
:goto_13
iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$c;->aeP:Lcom/google/android/gms/tagmanager/o;
const-wide/32 v1, 0x36ee80
invoke-static {v0, v1, v2}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/tagmanager/o;J)V
return-void
:cond_1c
iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$c;->aeP:Lcom/google/android/gms/tagmanager/o;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/o$c;->aeP:Lcom/google/android/gms/tagmanager/o;
sget-object v2, Lcom/google/android/gms/common/api/Status;->En:Lcom/google/android/gms/common/api/Status;
invoke-virtual {v1, v2}, Lcom/google/android/gms/tagmanager/o;->ap(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/o;->b(Lcom/google/android/gms/common/api/Result;)V
goto :goto_13
.end method
.method public b(Lcom/google/android/gms/internal/c$j;)V
.registers 7
iget-object v1, p0, Lcom/google/android/gms/tagmanager/o$c;->aeP:Lcom/google/android/gms/tagmanager/o;
monitor-enter v1
:try_start_3
iget-object v0, p1, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;
if-nez v0, :cond_2a
iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$c;->aeP:Lcom/google/android/gms/tagmanager/o;
invoke-static {v0}, Lcom/google/android/gms/tagmanager/o;->c(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/internal/c$j;
move-result-object v0
iget-object v0, v0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;
if-nez v0, :cond_20
const-string v0, "Current resource is null; network resource is also null"
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$c;->aeP:Lcom/google/android/gms/tagmanager/o;
const-wide/32 v2, 0x36ee80
invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/tagmanager/o;J)V
monitor-exit v1
:goto_1f
return-void
:cond_20
iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$c;->aeP:Lcom/google/android/gms/tagmanager/o;
invoke-static {v0}, Lcom/google/android/gms/tagmanager/o;->c(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/internal/c$j;
move-result-object v0
iget-object v0, v0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;
iput-object v0, p1, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;
:cond_2a
iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$c;->aeP:Lcom/google/android/gms/tagmanager/o;
iget-object v2, p0, Lcom/google/android/gms/tagmanager/o$c;->aeP:Lcom/google/android/gms/tagmanager/o;
invoke-static {v2}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/internal/ik;
move-result-object v2
invoke-interface {v2}, Lcom/google/android/gms/internal/ik;->currentTimeMillis()J
move-result-wide v2
const/4 v4, 0x0
invoke-static {v0, p1, v2, v3, v4}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/internal/c$j;JZ)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "setting refresh time to current time: "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/google/android/gms/tagmanager/o$c;->aeP:Lcom/google/android/gms/tagmanager/o;
invoke-static {v2}, Lcom/google/android/gms/tagmanager/o;->d(Lcom/google/android/gms/tagmanager/o;)J
move-result-wide v2
invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$c;->aeP:Lcom/google/android/gms/tagmanager/o;
invoke-static {v0}, Lcom/google/android/gms/tagmanager/o;->e(Lcom/google/android/gms/tagmanager/o;)Z
move-result v0
if-nez v0, :cond_63
iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$c;->aeP:Lcom/google/android/gms/tagmanager/o;
invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/internal/c$j;)V
:cond_63
monitor-exit v1
goto :goto_1f
:catchall_65
move-exception v0
monitor-exit v1
:try_end_67
.catchall {:try_start_3 .. :try_end_67} :catchall_65
throw v0
.end method
.method public synthetic i(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/c$j;
invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/o$c;->b(Lcom/google/android/gms/internal/c$j;)V
return-void
.end method
.method public lq()V
.registers 1
return-void
.end method