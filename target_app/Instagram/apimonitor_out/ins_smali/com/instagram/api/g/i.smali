.class public final Lcom/instagram/api/g/i;
.super Ljava/lang/Object;
.source "NetworkTrace.java"
.field private final a:Ljava/lang/String;
.field private final b:Ljava/lang/String;
.field private c:I
.field private d:Z
.field private e:Ljava/lang/String;
.field private f:Ljava/lang/String;
.field private g:Ljava/lang/String;
.field private h:Lcom/instagram/api/g/a;
.field private i:J
.field private j:J
.field private k:J
.field private l:J
.field private m:J
.field private n:J
.field private o:J
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 8
const-wide/16 v3, 0x0
const-wide/16 v1, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/api/g/i;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/instagram/api/g/i;->b:Ljava/lang/String;
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/api/g/i;->e:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/api/g/i;->d:Z
iput-wide v1, p0, Lcom/instagram/api/g/i;->i:J
iput-wide v1, p0, Lcom/instagram/api/g/i;->j:J
iput-wide v1, p0, Lcom/instagram/api/g/i;->k:J
iput-wide v1, p0, Lcom/instagram/api/g/i;->l:J
iput-wide v1, p0, Lcom/instagram/api/g/i;->m:J
iput-wide v3, p0, Lcom/instagram/api/g/i;->n:J
iput-wide v3, p0, Lcom/instagram/api/g/i;->o:J
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/api/g/i;->a:Ljava/lang/String;
return-object v0
.end method
.method final a(I)V
.registers 2
iput p1, p0, Lcom/instagram/api/g/i;->c:I
return-void
.end method
.method final a(J)V
.registers 3
iput-wide p1, p0, Lcom/instagram/api/g/i;->i:J
return-void
.end method
.method final a(Lcom/instagram/api/g/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/api/g/i;->h:Lcom/instagram/api/g/a;
return-void
.end method
.method final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/api/g/i;->e:Ljava/lang/String;
return-void
.end method
.method final a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/api/g/i;->d:Z
return-void
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/api/g/i;->b:Ljava/lang/String;
return-object v0
.end method
.method final b(J)V
.registers 3
iput-wide p1, p0, Lcom/instagram/api/g/i;->j:J
return-void
.end method
.method final b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/api/g/i;->f:Ljava/lang/String;
return-void
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/api/g/i;->e:Ljava/lang/String;
return-object v0
.end method
.method final c(J)V
.registers 3
iput-wide p1, p0, Lcom/instagram/api/g/i;->k:J
return-void
.end method
.method final c(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/api/g/i;->g:Ljava/lang/String;
return-void
.end method
.method final d(J)V
.registers 3
iput-wide p1, p0, Lcom/instagram/api/g/i;->l:J
return-void
.end method
.method public final d()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/api/g/i;->d:Z
return v0
.end method
.method public final e()I
.registers 2
iget v0, p0, Lcom/instagram/api/g/i;->c:I
return v0
.end method
.method final e(J)V
.registers 3
iput-wide p1, p0, Lcom/instagram/api/g/i;->m:J
return-void
.end method
.method public final f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/api/g/i;->f:Ljava/lang/String;
return-object v0
.end method
.method final f(J)V
.registers 3
iput-wide p1, p0, Lcom/instagram/api/g/i;->n:J
return-void
.end method
.method public final g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/api/g/i;->g:Ljava/lang/String;
return-object v0
.end method
.method final g(J)V
.registers 3
iput-wide p1, p0, Lcom/instagram/api/g/i;->o:J
return-void
.end method
.method public final h()J
.registers 3
iget-wide v0, p0, Lcom/instagram/api/g/i;->i:J
return-wide v0
.end method
.method public final i()J
.registers 3
iget-wide v0, p0, Lcom/instagram/api/g/i;->n:J
return-wide v0
.end method
.method public final j()J
.registers 3
iget-wide v0, p0, Lcom/instagram/api/g/i;->o:J
return-wide v0
.end method
.method public final k()Lcom/instagram/api/g/a;
.registers 2
iget-object v0, p0, Lcom/instagram/api/g/i;->h:Lcom/instagram/api/g/a;
return-object v0
.end method
.method public final l()J
.registers 5
iget-wide v0, p0, Lcom/instagram/api/g/i;->k:J
iget-wide v2, p0, Lcom/instagram/api/g/i;->j:J
sub-long/2addr v0, v2
return-wide v0
.end method
.method public final m()J
.registers 5
iget-wide v0, p0, Lcom/instagram/api/g/i;->l:J
iget-wide v2, p0, Lcom/instagram/api/g/i;->k:J
sub-long/2addr v0, v2
return-wide v0
.end method
.method public final n()J
.registers 5
iget-wide v0, p0, Lcom/instagram/api/g/i;->m:J
iget-wide v2, p0, Lcom/instagram/api/g/i;->l:J
sub-long/2addr v0, v2
return-wide v0
.end method
.method public final o()Z
.registers 5
const-wide/16 v2, -0x1
iget-wide v0, p0, Lcom/instagram/api/g/i;->j:J
cmp-long v0, v0, v2
if-eqz v0, :cond_1c
iget-wide v0, p0, Lcom/instagram/api/g/i;->k:J
cmp-long v0, v0, v2
if-eqz v0, :cond_1c
iget-wide v0, p0, Lcom/instagram/api/g/i;->l:J
cmp-long v0, v0, v2
if-eqz v0, :cond_1c
iget-wide v0, p0, Lcom/instagram/api/g/i;->m:J
cmp-long v0, v0, v2
if-eqz v0, :cond_1c
const/4 v0, 0x1
:goto_1b
return v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method
.method public final p()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "NetworkTrace(mRequestUri="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/instagram/api/g/i;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mConnectionType="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/instagram/api/g/i;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", uploadingDuration="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/api/g/i;->l()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", serverLatency="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/api/g/i;->m()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", downloadDuration="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/api/g/i;->n()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x29
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method