.class public Lcom/google/android/gms/games/internal/game/ExtendedGameRef;
.super Lcom/google/android/gms/common/data/d;
.implements Lcom/google/android/gms/games/internal/game/ExtendedGame;
.field private final c:Lcom/google/android/gms/games/GameRef;
.field private final d:I
.method private l()Lcom/google/android/gms/games/internal/game/ExtendedGame;
.registers 2
new-instance v0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;
invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;-><init>(Lcom/google/android/gms/games/internal/game/ExtendedGame;)V
return-object v0
.end method
.method public final synthetic a()Ljava/lang/Object;
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->l()Lcom/google/android/gms/games/internal/game/ExtendedGame;
move-result-object v0
return-object v0
.end method
.method public final b()Lcom/google/android/gms/games/Game;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->c:Lcom/google/android/gms/games/GameRef;
return-object v0
.end method
.method public final c()Ljava/util/ArrayList;
.registers 7
const/4 v0, 0x0
iget-object v1, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->a:Lcom/google/android/gms/common/data/DataHolder;
const-string v2, "badge_title"
iget v3, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->b:I
iget-object v4, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->a:Lcom/google/android/gms/common/data/DataHolder;
iget v5, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->b:I
invoke-virtual {v4, v5}, Lcom/google/android/gms/common/data/DataHolder;->a(I)I
move-result v4
invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_1c
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V
move-object v0, v1
:goto_1b
return-object v0
:cond_1c
new-instance v1, Ljava/util/ArrayList;
iget v2, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->d:I
invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V
:goto_23
iget v2, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->d:I
if-ge v0, v2, :cond_37
new-instance v2, Lcom/google/android/gms/games/internal/game/GameBadgeRef;
iget-object v3, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->a:Lcom/google/android/gms/common/data/DataHolder;
iget v4, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->b:I
add-int/2addr v4, v0
invoke-direct {v2, v3, v4}, Lcom/google/android/gms/games/internal/game/GameBadgeRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_23
:cond_37
move-object v0, v1
goto :goto_1b
.end method
.method public final d()I
.registers 2
const-string v0, "availability"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->c(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final e()Z
.registers 2
const-string v0, "owned"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->d(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->a(Lcom/google/android/gms/games/internal/game/ExtendedGame;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final f()I
.registers 2
const-string v0, "achievement_unlocked_count"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->c(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public final g()J
.registers 3
const-string v0, "last_played_server_time"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->b(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public final h()J
.registers 3
const-string v0, "price_micros"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->b(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->a(Lcom/google/android/gms/games/internal/game/ExtendedGame;)I
move-result v0
return v0
.end method
.method public final i()Ljava/lang/String;
.registers 2
const-string v0, "formatted_price"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final j()J
.registers 3
const-string v0, "full_price_micros"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->b(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public final k()Ljava/lang/String;
.registers 2
const-string v0, "formatted_full_price"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->b(Lcom/google/android/gms/games/internal/game/ExtendedGame;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-direct {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameRef;->l()Lcom/google/android/gms/games/internal/game/ExtendedGame;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->writeToParcel(Landroid/os/Parcel;I)V
return-void
.end method