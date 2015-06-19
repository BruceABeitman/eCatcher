.class public final Lcom/google/android/gms/games/b/q;
.super Lcom/google/android/gms/common/data/j;
.implements Lcom/google/android/gms/games/b/c;
.field private final c:Lcom/google/android/gms/games/d;
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/j;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
new-instance v0, Lcom/google/android/gms/games/d;
invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
iput-object v0, p0, Lcom/google/android/gms/games/b/q;->c:Lcom/google/android/gms/games/d;
return-void
.end method
.method public a()J
.registers 3
const-string v0, "rank"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/q;->b(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public a(Landroid/database/CharArrayBuffer;)V
.registers 3
const-string v0, "display_rank"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/b/q;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
.end method
.method public b()Ljava/lang/String;
.registers 2
const-string v0, "display_rank"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/q;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public b(Landroid/database/CharArrayBuffer;)V
.registers 3
const-string v0, "display_score"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/b/q;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
.end method
.method public c()Ljava/lang/String;
.registers 2
const-string v0, "display_score"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/q;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public c(Landroid/database/CharArrayBuffer;)V
.registers 3
const-string v0, "external_player_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/q;->h(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_e
const-string v0, "default_display_name"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/b/q;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
:goto_d
return-void
:cond_e
iget-object v0, p0, Lcom/google/android/gms/games/b/q;->c:Lcom/google/android/gms/games/d;
invoke-virtual {v0, p1}, Lcom/google/android/gms/games/d;->a(Landroid/database/CharArrayBuffer;)V
goto :goto_d
.end method
.method public d()J
.registers 3
const-string v0, "raw_score"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/q;->b(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public e()J
.registers 3
const-string v0, "achieved_timestamp"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/q;->b(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/b/p;->a(Lcom/google/android/gms/games/b/c;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public f()Ljava/lang/String;
.registers 2
const-string v0, "external_player_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/q;->h(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f
const-string v0, "default_display_name"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/q;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_e
return-object v0
:cond_f
iget-object v0, p0, Lcom/google/android/gms/games/b/q;->c:Lcom/google/android/gms/games/d;
invoke-virtual {v0}, Lcom/google/android/gms/games/d;->b()Ljava/lang/String;
move-result-object v0
goto :goto_e
.end method
.method public g()Landroid/net/Uri;
.registers 2
const-string v0, "external_player_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/q;->h(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f
const-string v0, "default_display_image_uri"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/q;->g(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
:goto_e
return-object v0
:cond_f
iget-object v0, p0, Lcom/google/android/gms/games/b/q;->c:Lcom/google/android/gms/games/d;
invoke-virtual {v0}, Lcom/google/android/gms/games/d;->d()Landroid/net/Uri;
move-result-object v0
goto :goto_e
.end method
.method public hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/b/p;->a(Lcom/google/android/gms/games/b/c;)I
move-result v0
return v0
.end method
.method public synthetic i()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/games/b/q;->o()Lcom/google/android/gms/games/b/c;
move-result-object v0
return-object v0
.end method
.method public j()Ljava/lang/String;
.registers 2
const-string v0, "external_player_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/q;->h(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f
const-string v0, "default_display_image_url"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/q;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_e
return-object v0
:cond_f
iget-object v0, p0, Lcom/google/android/gms/games/b/q;->c:Lcom/google/android/gms/games/d;
invoke-virtual {v0}, Lcom/google/android/gms/games/d;->e()Ljava/lang/String;
move-result-object v0
goto :goto_e
.end method
.method public k()Landroid/net/Uri;
.registers 2
const-string v0, "external_player_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/q;->h(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
iget-object v0, p0, Lcom/google/android/gms/games/b/q;->c:Lcom/google/android/gms/games/d;
invoke-virtual {v0}, Lcom/google/android/gms/games/d;->g()Landroid/net/Uri;
move-result-object v0
goto :goto_9
.end method
.method public l()Ljava/lang/String;
.registers 2
const-string v0, "external_player_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/q;->h(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
iget-object v0, p0, Lcom/google/android/gms/games/b/q;->c:Lcom/google/android/gms/games/d;
invoke-virtual {v0}, Lcom/google/android/gms/games/d;->j()Ljava/lang/String;
move-result-object v0
goto :goto_9
.end method
.method public m()Lcom/google/android/gms/games/Player;
.registers 2
const-string v0, "external_player_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/q;->h(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
iget-object v0, p0, Lcom/google/android/gms/games/b/q;->c:Lcom/google/android/gms/games/d;
goto :goto_9
.end method
.method public n()Ljava/lang/String;
.registers 2
const-string v0, "score_tag"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/q;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public o()Lcom/google/android/gms/games/b/c;
.registers 2
new-instance v0, Lcom/google/android/gms/games/b/p;
invoke-direct {v0, p0}, Lcom/google/android/gms/games/b/p;-><init>(Lcom/google/android/gms/games/b/c;)V
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/b/p;->b(Lcom/google/android/gms/games/b/c;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method