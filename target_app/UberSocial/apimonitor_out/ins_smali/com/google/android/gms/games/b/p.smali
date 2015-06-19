.class public final Lcom/google/android/gms/games/b/p;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/b/c;
.field private final b:J
.field private final c:Ljava/lang/String;
.field private final d:Ljava/lang/String;
.field private final e:J
.field private final f:J
.field private final g:Ljava/lang/String;
.field private final h:Landroid/net/Uri;
.field private final i:Landroid/net/Uri;
.field private final j:Lcom/google/android/gms/games/PlayerEntity;
.field private final k:Ljava/lang/String;
.field private final l:Ljava/lang/String;
.field private final m:Ljava/lang/String;
.method public constructor <init>(Lcom/google/android/gms/games/b/c;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-interface {p1}, Lcom/google/android/gms/games/b/c;->a()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/games/b/p;->b:J
invoke-interface {p1}, Lcom/google/android/gms/games/b/c;->b()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/games/b/p;->c:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/b/c;->c()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/games/b/p;->d:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/b/c;->d()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/games/b/p;->e:J
invoke-interface {p1}, Lcom/google/android/gms/games/b/c;->e()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/games/b/p;->f:J
invoke-interface {p1}, Lcom/google/android/gms/games/b/c;->f()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/b/p;->g:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/b/c;->g()Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/b/p;->h:Landroid/net/Uri;
invoke-interface {p1}, Lcom/google/android/gms/games/b/c;->k()Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/b/p;->i:Landroid/net/Uri;
invoke-interface {p1}, Lcom/google/android/gms/games/b/c;->m()Lcom/google/android/gms/games/Player;
move-result-object v0
if-nez v0, :cond_5b
const/4 v0, 0x0
:goto_46
iput-object v0, p0, Lcom/google/android/gms/games/b/p;->j:Lcom/google/android/gms/games/PlayerEntity;
invoke-interface {p1}, Lcom/google/android/gms/games/b/c;->n()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/b/p;->k:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/b/c;->j()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/b/p;->l:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/b/c;->l()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/b/p;->m:Ljava/lang/String;
return-void
:cond_5b
invoke-interface {v0}, Lcom/google/android/gms/games/Player;->i()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/PlayerEntity;
goto :goto_46
.end method
.method static a(Lcom/google/android/gms/games/b/c;)I
.registers 5
const/16 v0, 0x9
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->a()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->b()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->d()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x3
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->c()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x4
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->e()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x5
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->f()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x6
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->g()Landroid/net/Uri;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x7
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->k()Landroid/net/Uri;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0x8
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->m()Lcom/google/android/gms/games/Player;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/google/android/gms/internal/hq;->a([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method static a(Lcom/google/android/gms/games/b/c;Ljava/lang/Object;)Z
.registers 7
const/4 v0, 0x1
const/4 v1, 0x0
instance-of v2, p1, Lcom/google/android/gms/games/b/c;
if-nez v2, :cond_8
move v0, v1
:cond_7
:goto_7
return v0
:cond_8
if-eq p0, p1, :cond_7
check-cast p1, Lcom/google/android/gms/games/b/c;
invoke-interface {p1}, Lcom/google/android/gms/games/b/c;->a()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->a()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_b0
invoke-interface {p1}, Lcom/google/android/gms/games/b/c;->b()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->b()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_b0
invoke-interface {p1}, Lcom/google/android/gms/games/b/c;->d()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->d()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_b0
invoke-interface {p1}, Lcom/google/android/gms/games/b/c;->c()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->c()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_b0
invoke-interface {p1}, Lcom/google/android/gms/games/b/c;->e()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->e()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_b0
invoke-interface {p1}, Lcom/google/android/gms/games/b/c;->f()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->f()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_b0
invoke-interface {p1}, Lcom/google/android/gms/games/b/c;->g()Landroid/net/Uri;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->g()Landroid/net/Uri;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_b0
invoke-interface {p1}, Lcom/google/android/gms/games/b/c;->k()Landroid/net/Uri;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->k()Landroid/net/Uri;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_b0
invoke-interface {p1}, Lcom/google/android/gms/games/b/c;->m()Lcom/google/android/gms/games/Player;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->m()Lcom/google/android/gms/games/Player;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_b0
invoke-interface {p1}, Lcom/google/android/gms/games/b/c;->n()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->n()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_7
:cond_b0
move v0, v1
goto/16 :goto_7
.end method
.method static b(Lcom/google/android/gms/games/b/c;)Ljava/lang/String;
.registers 5
invoke-static {p0}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "Rank"
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->a()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "DisplayRank"
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "Score"
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->d()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "DisplayScore"
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "Timestamp"
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->e()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "DisplayName"
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "IconImageUri"
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->g()Landroid/net/Uri;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "IconImageUrl"
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->j()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "HiResImageUri"
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->k()Landroid/net/Uri;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "HiResImageUrl"
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->l()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v1
const-string v2, "Player"
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->m()Lcom/google/android/gms/games/Player;
move-result-object v0
if-nez v0, :cond_90
const/4 v0, 0x0
:goto_7d
invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "ScoreTag"
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->n()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/hs;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_90
invoke-interface {p0}, Lcom/google/android/gms/games/b/c;->m()Lcom/google/android/gms/games/Player;
move-result-object v0
goto :goto_7d
.end method
.method public a()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/games/b/p;->b:J
return-wide v0
.end method
.method public a(Landroid/database/CharArrayBuffer;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/b/p;->c:Ljava/lang/String;
invoke-static {v0, p1}, Lcom/google/android/gms/internal/jf;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/b/p;->c:Ljava/lang/String;
return-object v0
.end method
.method public b(Landroid/database/CharArrayBuffer;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/b/p;->d:Ljava/lang/String;
invoke-static {v0, p1}, Lcom/google/android/gms/internal/jf;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/b/p;->d:Ljava/lang/String;
return-object v0
.end method
.method public c(Landroid/database/CharArrayBuffer;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/b/p;->j:Lcom/google/android/gms/games/PlayerEntity;
if-nez v0, :cond_a
iget-object v0, p0, Lcom/google/android/gms/games/b/p;->g:Ljava/lang/String;
invoke-static {v0, p1}, Lcom/google/android/gms/internal/jf;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/google/android/gms/games/b/p;->j:Lcom/google/android/gms/games/PlayerEntity;
invoke-virtual {v0, p1}, Lcom/google/android/gms/games/PlayerEntity;->a(Landroid/database/CharArrayBuffer;)V
goto :goto_9
.end method
.method public d()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/games/b/p;->e:J
return-wide v0
.end method
.method public e()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/games/b/p;->f:J
return-wide v0
.end method
.method public e_()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/b/p;->a(Lcom/google/android/gms/games/b/c;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/b/p;->j:Lcom/google/android/gms/games/PlayerEntity;
if-nez v0, :cond_7
iget-object v0, p0, Lcom/google/android/gms/games/b/p;->g:Ljava/lang/String;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/google/android/gms/games/b/p;->j:Lcom/google/android/gms/games/PlayerEntity;
invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->b()Ljava/lang/String;
move-result-object v0
goto :goto_6
.end method
.method public g()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/b/p;->j:Lcom/google/android/gms/games/PlayerEntity;
if-nez v0, :cond_7
iget-object v0, p0, Lcom/google/android/gms/games/b/p;->h:Landroid/net/Uri;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/google/android/gms/games/b/p;->j:Lcom/google/android/gms/games/PlayerEntity;
invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->d()Landroid/net/Uri;
move-result-object v0
goto :goto_6
.end method
.method public hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/b/p;->a(Lcom/google/android/gms/games/b/c;)I
move-result v0
return v0
.end method
.method public synthetic i()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/games/b/p;->o()Lcom/google/android/gms/games/b/c;
move-result-object v0
return-object v0
.end method
.method public j()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/b/p;->j:Lcom/google/android/gms/games/PlayerEntity;
if-nez v0, :cond_7
iget-object v0, p0, Lcom/google/android/gms/games/b/p;->l:Ljava/lang/String;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/google/android/gms/games/b/p;->j:Lcom/google/android/gms/games/PlayerEntity;
invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->e()Ljava/lang/String;
move-result-object v0
goto :goto_6
.end method
.method public k()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/b/p;->j:Lcom/google/android/gms/games/PlayerEntity;
if-nez v0, :cond_7
iget-object v0, p0, Lcom/google/android/gms/games/b/p;->i:Landroid/net/Uri;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/google/android/gms/games/b/p;->j:Lcom/google/android/gms/games/PlayerEntity;
invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->g()Landroid/net/Uri;
move-result-object v0
goto :goto_6
.end method
.method public l()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/b/p;->j:Lcom/google/android/gms/games/PlayerEntity;
if-nez v0, :cond_7
iget-object v0, p0, Lcom/google/android/gms/games/b/p;->m:Ljava/lang/String;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/google/android/gms/games/b/p;->j:Lcom/google/android/gms/games/PlayerEntity;
invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->j()Ljava/lang/String;
move-result-object v0
goto :goto_6
.end method
.method public m()Lcom/google/android/gms/games/Player;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/b/p;->j:Lcom/google/android/gms/games/PlayerEntity;
return-object v0
.end method
.method public n()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/b/p;->k:Ljava/lang/String;
return-object v0
.end method
.method public o()Lcom/google/android/gms/games/b/c;
.registers 1
return-object p0
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/b/p;->b(Lcom/google/android/gms/games/b/c;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method