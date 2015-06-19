.class public final Lcom/google/android/gms/games/b/r;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/b/e;
.field private final j:I
.field private final k:I
.field private final l:Z
.field private final m:J
.field private final n:Ljava/lang/String;
.field private final o:J
.field private final p:Ljava/lang/String;
.field private final q:Ljava/lang/String;
.field private final r:J
.field private final s:Ljava/lang/String;
.field private final t:Ljava/lang/String;
.field private final u:Ljava/lang/String;
.method public constructor <init>(Lcom/google/android/gms/games/b/e;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-interface {p1}, Lcom/google/android/gms/games/b/e;->a()I
move-result v0
iput v0, p0, Lcom/google/android/gms/games/b/r;->j:I
invoke-interface {p1}, Lcom/google/android/gms/games/b/e;->b()I
move-result v0
iput v0, p0, Lcom/google/android/gms/games/b/r;->k:I
invoke-interface {p1}, Lcom/google/android/gms/games/b/e;->c()Z
move-result v0
iput-boolean v0, p0, Lcom/google/android/gms/games/b/r;->l:Z
invoke-interface {p1}, Lcom/google/android/gms/games/b/e;->d()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/games/b/r;->m:J
invoke-interface {p1}, Lcom/google/android/gms/games/b/e;->e()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/b/r;->n:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/b/e;->f()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/games/b/r;->o:J
invoke-interface {p1}, Lcom/google/android/gms/games/b/e;->g()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/b/r;->p:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/b/e;->j()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/b/r;->q:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/b/e;->k()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/games/b/r;->r:J
invoke-interface {p1}, Lcom/google/android/gms/games/b/e;->l()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/b/r;->s:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/b/e;->m()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/b/r;->t:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/b/e;->n()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/b/r;->u:Ljava/lang/String;
return-void
.end method
.method static a(Lcom/google/android/gms/games/b/e;)I
.registers 5
const/16 v0, 0xb
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->a()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->b()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->c()Z
move-result v2
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x3
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->d()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x4
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->e()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x5
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->f()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x6
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->g()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x7
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->k()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0x8
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->l()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0x9
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->n()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0xa
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->m()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/google/android/gms/internal/hq;->a([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method static a(Lcom/google/android/gms/games/b/e;Ljava/lang/Object;)Z
.registers 7
const/4 v0, 0x1
const/4 v1, 0x0
instance-of v2, p1, Lcom/google/android/gms/games/b/e;
if-nez v2, :cond_8
move v0, v1
:cond_7
:goto_7
return v0
:cond_8
if-eq p0, p1, :cond_7
check-cast p1, Lcom/google/android/gms/games/b/e;
invoke-interface {p1}, Lcom/google/android/gms/games/b/e;->a()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->a()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d6
invoke-interface {p1}, Lcom/google/android/gms/games/b/e;->b()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->b()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d6
invoke-interface {p1}, Lcom/google/android/gms/games/b/e;->c()Z
move-result v2
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->c()Z
move-result v3
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d6
invoke-interface {p1}, Lcom/google/android/gms/games/b/e;->d()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->d()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d6
invoke-interface {p1}, Lcom/google/android/gms/games/b/e;->e()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->e()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d6
invoke-interface {p1}, Lcom/google/android/gms/games/b/e;->f()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->f()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d6
invoke-interface {p1}, Lcom/google/android/gms/games/b/e;->g()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->g()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d6
invoke-interface {p1}, Lcom/google/android/gms/games/b/e;->k()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->k()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d6
invoke-interface {p1}, Lcom/google/android/gms/games/b/e;->l()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->l()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d6
invoke-interface {p1}, Lcom/google/android/gms/games/b/e;->n()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->n()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d6
invoke-interface {p1}, Lcom/google/android/gms/games/b/e;->m()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->m()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_7
:cond_d6
move v0, v1
goto/16 :goto_7
.end method
.method static b(Lcom/google/android/gms/games/b/e;)Ljava/lang/String;
.registers 6
invoke-static {p0}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "TimeSpan"
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->a()I
move-result v2
invoke-static {v2}, Lcom/google/android/gms/internal/ok;->a(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "Collection"
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->b()I
move-result v2
invoke-static {v2}, Lcom/google/android/gms/internal/og;->a(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v1
const-string v2, "RawPlayerScore"
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->c()Z
move-result v0
if-eqz v0, :cond_99
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->d()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
:goto_30
invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v1
const-string v2, "DisplayPlayerScore"
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->c()Z
move-result v0
if-eqz v0, :cond_9c
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->e()Ljava/lang/String;
move-result-object v0
:goto_40
invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v1
const-string v2, "PlayerRank"
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->c()Z
move-result v0
if-eqz v0, :cond_9f
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->f()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
:goto_54
invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v1
const-string v2, "DisplayPlayerRank"
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->c()Z
move-result v0
if-eqz v0, :cond_a2
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->g()Ljava/lang/String;
move-result-object v0
:goto_64
invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "NumScores"
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->k()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "TopPageNextToken"
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->l()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "WindowPageNextToken"
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->n()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "WindowPagePrevToken"
invoke-interface {p0}, Lcom/google/android/gms/games/b/e;->m()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/hs;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_99
const-string v0, "none"
goto :goto_30
:cond_9c
const-string v0, "none"
goto :goto_40
:cond_9f
const-string v0, "none"
goto :goto_54
:cond_a2
const-string v0, "none"
goto :goto_64
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/b/r;->j:I
return v0
.end method
.method public b()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/b/r;->k:I
return v0
.end method
.method public c()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/games/b/r;->l:Z
return v0
.end method
.method public d()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/games/b/r;->m:J
return-wide v0
.end method
.method public e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/b/r;->n:Ljava/lang/String;
return-object v0
.end method
.method public e_()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/b/r;->a(Lcom/google/android/gms/games/b/e;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public f()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/games/b/r;->o:J
return-wide v0
.end method
.method public g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/b/r;->p:Ljava/lang/String;
return-object v0
.end method
.method public hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/b/r;->a(Lcom/google/android/gms/games/b/e;)I
move-result v0
return v0
.end method
.method public synthetic i()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/games/b/r;->o()Lcom/google/android/gms/games/b/e;
move-result-object v0
return-object v0
.end method
.method public j()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/b/r;->q:Ljava/lang/String;
return-object v0
.end method
.method public k()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/games/b/r;->r:J
return-wide v0
.end method
.method public l()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/b/r;->s:Ljava/lang/String;
return-object v0
.end method
.method public m()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/b/r;->t:Ljava/lang/String;
return-object v0
.end method
.method public n()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/b/r;->u:Ljava/lang/String;
return-object v0
.end method
.method public o()Lcom/google/android/gms/games/b/e;
.registers 1
return-object p0
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/b/r;->b(Lcom/google/android/gms/games/b/e;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method