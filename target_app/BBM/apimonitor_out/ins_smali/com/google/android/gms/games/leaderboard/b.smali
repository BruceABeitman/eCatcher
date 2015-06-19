.class public final Lcom/google/android/gms/games/leaderboard/b;
.super Lcom/google/android/gms/common/data/b;
.implements Lcom/google/android/gms/games/leaderboard/Leaderboard;
.field private final IM:Lcom/google/android/gms/games/Game;
.field private final IN:I
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
.registers 5
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
iput p3, p0, Lcom/google/android/gms/games/leaderboard/b;->IN:I
new-instance v0, Lcom/google/android/gms/games/b;
invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/b;->IM:Lcom/google/android/gms/games/Game;
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/a;->a(Lcom/google/android/gms/games/leaderboard/Leaderboard;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final fW()Lcom/google/android/gms/games/leaderboard/Leaderboard;
.registers 2
new-instance v0, Lcom/google/android/gms/games/leaderboard/a;
invoke-direct {v0, p0}, Lcom/google/android/gms/games/leaderboard/a;-><init>(Lcom/google/android/gms/games/leaderboard/Leaderboard;)V
return-object v0
.end method
.method public final synthetic freeze()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/games/leaderboard/b;->fW()Lcom/google/android/gms/games/leaderboard/Leaderboard;
move-result-object v0
return-object v0
.end method
.method public final getDisplayName()Ljava/lang/String;
.registers 2
const-string v0, "name"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/b;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getDisplayName(Landroid/database/CharArrayBuffer;)V
.registers 3
const-string v0, "name"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/leaderboard/b;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
.end method
.method public final getGame()Lcom/google/android/gms/games/Game;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/b;->IM:Lcom/google/android/gms/games/Game;
return-object v0
.end method
.method public final getIconImageUri()Landroid/net/Uri;
.registers 2
const-string v0, "board_icon_image_uri"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/b;->aa(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public final getIconImageUrl()Ljava/lang/String;
.registers 2
const-string v0, "board_icon_image_url"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/b;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getLeaderboardId()Ljava/lang/String;
.registers 2
const-string v0, "external_leaderboard_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/b;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getScoreOrder()I
.registers 2
const-string v0, "score_order"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/b;->getInteger(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public final getVariants()Ljava/util/ArrayList;
.registers 6
new-instance v1, Ljava/util/ArrayList;
iget v0, p0, Lcom/google/android/gms/games/leaderboard/b;->IN:I
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V
const/4 v0, 0x0
:goto_8
iget v2, p0, Lcom/google/android/gms/games/leaderboard/b;->IN:I
if-ge v0, v2, :cond_1c
new-instance v2, Lcom/google/android/gms/games/leaderboard/g;
iget-object v3, p0, Lcom/google/android/gms/games/leaderboard/b;->zU:Lcom/google/android/gms/common/data/DataHolder;
iget v4, p0, Lcom/google/android/gms/games/leaderboard/b;->zW:I
add-int/2addr v4, v0
invoke-direct {v2, v3, v4}, Lcom/google/android/gms/games/leaderboard/g;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_1c
return-object v1
.end method
.method public final hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/a;->a(Lcom/google/android/gms/games/leaderboard/Leaderboard;)I
move-result v0
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/a;->b(Lcom/google/android/gms/games/leaderboard/Leaderboard;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method