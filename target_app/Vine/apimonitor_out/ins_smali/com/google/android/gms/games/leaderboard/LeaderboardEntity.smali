.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/leaderboard/Leaderboard;
.field private final Lk:Ljava/lang/String;
.field private final Mo:Landroid/net/Uri;
.field private final Mz:Ljava/lang/String;
.field private final Sm:Ljava/lang/String;
.field private final Sn:I
.field private final So:Ljava/util/ArrayList;
.field private final Sp:Lcom/google/android/gms/games/Game;
.method public constructor <init>(Lcom/google/android/gms/games/leaderboard/Leaderboard;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Sm:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getDisplayName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Lk:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getIconImageUri()Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Mo:Landroid/net/Uri;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getIconImageUrl()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Mz:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getScoreOrder()I
move-result v0
iput v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Sn:I
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getGame()Lcom/google/android/gms/games/Game;
move-result-object v1
if-nez v1, :cond_54
const/4 v0, 0x0
:goto_28
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Sp:Lcom/google/android/gms/games/Game;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getVariants()Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v3
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->So:Ljava/util/ArrayList;
const/4 v0, 0x0
move v1, v0
:goto_3b
if-ge v1, v3, :cond_5a
iget-object v4, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->So:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
invoke-interface {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->freeze()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;
check-cast v0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;
invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_3b
:cond_54
new-instance v0, Lcom/google/android/gms/games/GameEntity;
invoke-direct {v0, v1}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V
goto :goto_28
:cond_5a
return-void
.end method
.method static a(Lcom/google/android/gms/games/leaderboard/Leaderboard;)I
.registers 4
const/4 v0, 0x5
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getDisplayName()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getIconImageUri()Landroid/net/Uri;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x3
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getScoreOrder()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x4
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getVariants()Ljava/util/ArrayList;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/google/android/gms/internal/hl;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method static a(Lcom/google/android/gms/games/leaderboard/Leaderboard;Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
instance-of v2, p1, Lcom/google/android/gms/games/leaderboard/Leaderboard;
if-nez v2, :cond_8
move v0, v1
:cond_7
:goto_7
return v0
:cond_8
if-eq p0, p1, :cond_7
check-cast p1, Lcom/google/android/gms/games/leaderboard/Leaderboard;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5a
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getDisplayName()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getDisplayName()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5a
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getIconImageUri()Landroid/net/Uri;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getIconImageUri()Landroid/net/Uri;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5a
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getScoreOrder()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getScoreOrder()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5a
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getVariants()Ljava/util/ArrayList;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getVariants()Ljava/util/ArrayList;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_7
:cond_5a
move v0, v1
goto :goto_7
.end method
.method static b(Lcom/google/android/gms/games/leaderboard/Leaderboard;)Ljava/lang/String;
.registers 4
invoke-static {p0}, Lcom/google/android/gms/internal/hl;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "LeaderboardId"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "DisplayName"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getDisplayName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "IconImageUri"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getIconImageUri()Landroid/net/Uri;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "IconImageUrl"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getIconImageUrl()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "ScoreOrder"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getScoreOrder()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "Variants"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getVariants()Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/hl$a;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->a(Lcom/google/android/gms/games/leaderboard/Leaderboard;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public synthetic freeze()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->iu()Lcom/google/android/gms/games/leaderboard/Leaderboard;
move-result-object v0
return-object v0
.end method
.method public getDisplayName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Lk:Ljava/lang/String;
return-object v0
.end method
.method public getDisplayName(Landroid/database/CharArrayBuffer;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Lk:Ljava/lang/String;
invoke-static {v0, p1}, Lcom/google/android/gms/internal/il;->b(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
.end method
.method public getGame()Lcom/google/android/gms/games/Game;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Sp:Lcom/google/android/gms/games/Game;
return-object v0
.end method
.method public getIconImageUri()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Mo:Landroid/net/Uri;
return-object v0
.end method
.method public getIconImageUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Mz:Ljava/lang/String;
return-object v0
.end method
.method public getLeaderboardId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Sm:Ljava/lang/String;
return-object v0
.end method
.method public getScoreOrder()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Sn:I
return v0
.end method
.method public getVariants()Ljava/util/ArrayList;
.registers 3
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->So:Ljava/util/ArrayList;
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
return-object v0
.end method
.method public hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->a(Lcom/google/android/gms/games/leaderboard/Leaderboard;)I
move-result v0
return v0
.end method
.method public isDataValid()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public iu()Lcom/google/android/gms/games/leaderboard/Leaderboard;
.registers 1
return-object p0
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->b(Lcom/google/android/gms/games/leaderboard/Leaderboard;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method