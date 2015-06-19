.class public final Lcom/google/android/gms/games/b/s;
.super Lcom/google/android/gms/common/data/j;
.implements Lcom/google/android/gms/games/b/e;
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/j;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
return-void
.end method
.method public a()I
.registers 2
const-string v0, "timespan"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/s;->c(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public b()I
.registers 2
const-string v0, "collection"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/s;->c(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public c()Z
.registers 2
const-string v0, "player_raw_score"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/s;->h(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public d()J
.registers 3
const-string v0, "player_raw_score"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/s;->h(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_b
const-wide/16 v0, -0x1
:goto_a
return-wide v0
:cond_b
const-string v0, "player_raw_score"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/s;->b(Ljava/lang/String;)J
move-result-wide v0
goto :goto_a
.end method
.method public e()Ljava/lang/String;
.registers 2
const-string v0, "player_display_score"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/s;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/b/r;->a(Lcom/google/android/gms/games/b/e;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public f()J
.registers 3
const-string v0, "player_rank"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/s;->h(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_b
const-wide/16 v0, -0x1
:goto_a
return-wide v0
:cond_b
const-string v0, "player_rank"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/s;->b(Ljava/lang/String;)J
move-result-wide v0
goto :goto_a
.end method
.method public g()Ljava/lang/String;
.registers 2
const-string v0, "player_display_rank"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/s;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
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
invoke-virtual {p0}, Lcom/google/android/gms/games/b/s;->o()Lcom/google/android/gms/games/b/e;
move-result-object v0
return-object v0
.end method
.method public j()Ljava/lang/String;
.registers 2
const-string v0, "player_score_tag"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/s;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public k()J
.registers 3
const-string v0, "total_scores"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/s;->h(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_b
const-wide/16 v0, -0x1
:goto_a
return-wide v0
:cond_b
const-string v0, "total_scores"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/s;->b(Ljava/lang/String;)J
move-result-wide v0
goto :goto_a
.end method
.method public l()Ljava/lang/String;
.registers 2
const-string v0, "top_page_token_next"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/s;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public m()Ljava/lang/String;
.registers 2
const-string v0, "window_page_token_prev"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/s;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public n()Ljava/lang/String;
.registers 2
const-string v0, "window_page_token_next"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/s;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public o()Lcom/google/android/gms/games/b/e;
.registers 2
new-instance v0, Lcom/google/android/gms/games/b/r;
invoke-direct {v0, p0}, Lcom/google/android/gms/games/b/r;-><init>(Lcom/google/android/gms/games/b/e;)V
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/b/r;->b(Lcom/google/android/gms/games/b/e;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method