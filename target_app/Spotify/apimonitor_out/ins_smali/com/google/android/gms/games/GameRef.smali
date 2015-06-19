.class public final Lcom/google/android/gms/games/GameRef;
.super Lcom/google/android/gms/common/data/d;
.implements Lcom/google/android/gms/games/Game;
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
return-void
.end method
.method private x()Lcom/google/android/gms/games/Game;
.registers 2
new-instance v0, Lcom/google/android/gms/games/GameEntity;
invoke-direct {v0, p0}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V
return-object v0
.end method
.method public final synthetic a()Ljava/lang/Object;
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/games/GameRef;->x()Lcom/google/android/gms/games/Game;
move-result-object v0
return-object v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
const-string v0, "external_game_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
const-string v0, "display_name"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final d()Ljava/lang/String;
.registers 2
const-string v0, "primary_category"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final e()Ljava/lang/String;
.registers 2
const-string v0, "secondary_category"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/GameEntity;->a(Lcom/google/android/gms/games/Game;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final f()Ljava/lang/String;
.registers 2
const-string v0, "game_description"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final g()Ljava/lang/String;
.registers 2
const-string v0, "developer_name"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final h()Landroid/net/Uri;
.registers 2
const-string v0, "game_icon_image_uri"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->g(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public final hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->a(Lcom/google/android/gms/games/Game;)I
move-result v0
return v0
.end method
.method public final i()Ljava/lang/String;
.registers 2
const-string v0, "game_icon_image_url"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final j()Landroid/net/Uri;
.registers 2
const-string v0, "game_hi_res_image_uri"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->g(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public final k()Ljava/lang/String;
.registers 2
const-string v0, "game_hi_res_image_url"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final l()Landroid/net/Uri;
.registers 2
const-string v0, "featured_image_uri"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->g(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public final m()Ljava/lang/String;
.registers 2
const-string v0, "featured_image_url"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final n()Z
.registers 2
const-string v0, "play_enabled_game"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->d(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public final o()Z
.registers 2
const-string v0, "muted"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->d(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public final p()Z
.registers 2
const-string v0, "identity_sharing_confirmed"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->d(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public final q()Z
.registers 2
const-string v0, "installed"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->c(Ljava/lang/String;)I
move-result v0
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final r()Ljava/lang/String;
.registers 2
const-string v0, "package_name"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final s()I
.registers 2
const-string v0, "gameplay_acl_status"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->c(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public final t()I
.registers 2
const-string v0, "achievement_total_count"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->c(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->b(Lcom/google/android/gms/games/Game;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final u()I
.registers 2
const-string v0, "leaderboard_count"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->c(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public final v()Z
.registers 2
const-string v0, "real_time_support"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->c(Ljava/lang/String;)I
move-result v0
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final w()Z
.registers 2
const-string v0, "turn_based_support"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/GameRef;->c(Ljava/lang/String;)I
move-result v0
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-direct {p0}, Lcom/google/android/gms/games/GameRef;->x()Lcom/google/android/gms/games/Game;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/GameEntity;
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/GameEntity;->writeToParcel(Landroid/os/Parcel;I)V
return-void
.end method