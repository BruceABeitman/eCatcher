.class  Lcom/google/android/gms/tagmanager/cb$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/db$a;
.field final synthetic VO:Lcom/google/android/gms/tagmanager/cb;
.method constructor <init>(Lcom/google/android/gms/tagmanager/cb;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/tagmanager/cb$a;->VO:Lcom/google/android/gms/tagmanager/cb;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/tagmanager/ap;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cb$a;->VO:Lcom/google/android/gms/tagmanager/cb;
invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->ci()J
move-result-wide v1
invoke-static {v0, v1, v2}, Lcom/google/android/gms/tagmanager/cb;->a(Lcom/google/android/gms/tagmanager/cb;J)V
return-void
.end method
.method public b(Lcom/google/android/gms/tagmanager/ap;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cb$a;->VO:Lcom/google/android/gms/tagmanager/cb;
invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->ci()J
move-result-wide v1
invoke-static {v0, v1, v2}, Lcom/google/android/gms/tagmanager/cb;->a(Lcom/google/android/gms/tagmanager/cb;J)V
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Permanent failure dispatching hitId: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->ci()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->v(Ljava/lang/String;)V
return-void
.end method
.method public c(Lcom/google/android/gms/tagmanager/ap;)V
.registers 7
invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->je()J
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v2, v0, v2
if-nez v2, :cond_1e
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cb$a;->VO:Lcom/google/android/gms/tagmanager/cb;
invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->ci()J
move-result-wide v1
iget-object v3, p0, Lcom/google/android/gms/tagmanager/cb$a;->VO:Lcom/google/android/gms/tagmanager/cb;
invoke-static {v3}, Lcom/google/android/gms/tagmanager/cb;->a(Lcom/google/android/gms/tagmanager/cb;)Lcom/google/android/gms/internal/fl;
move-result-object v3
invoke-interface {v3}, Lcom/google/android/gms/internal/fl;->currentTimeMillis()J
move-result-wide v3
invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/tagmanager/cb;->a(Lcom/google/android/gms/tagmanager/cb;JJ)V
:goto_1d
:cond_1d
return-void
:cond_1e
const-wide/32 v2, 0xdbba00
add-long/2addr v0, v2
iget-object v2, p0, Lcom/google/android/gms/tagmanager/cb$a;->VO:Lcom/google/android/gms/tagmanager/cb;
invoke-static {v2}, Lcom/google/android/gms/tagmanager/cb;->a(Lcom/google/android/gms/tagmanager/cb;)Lcom/google/android/gms/internal/fl;
move-result-object v2
invoke-interface {v2}, Lcom/google/android/gms/internal/fl;->currentTimeMillis()J
move-result-wide v2
cmp-long v0, v0, v2
if-gez v0, :cond_1d
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cb$a;->VO:Lcom/google/android/gms/tagmanager/cb;
invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->ci()J
move-result-wide v1
invoke-static {v0, v1, v2}, Lcom/google/android/gms/tagmanager/cb;->a(Lcom/google/android/gms/tagmanager/cb;J)V
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Giving up on failed hitId: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->ci()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->v(Ljava/lang/String;)V
goto :goto_1d
.end method