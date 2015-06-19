.class public final Lcom/google/android/gms/games/leaderboard/d;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
.field private final IQ:J
.field private final IR:Ljava/lang/String;
.field private final IS:Ljava/lang/String;
.field private final IT:J
.field private final IU:J
.field private final IV:Ljava/lang/String;
.field private final IW:Landroid/net/Uri;
.field private final IX:Landroid/net/Uri;
.field private final IY:Lcom/google/android/gms/games/PlayerEntity;
.field private final IZ:Ljava/lang/String;
.field private final Ja:Ljava/lang/String;
.field private final Jb:Ljava/lang/String;
.method public constructor <init>(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRank()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IQ:J
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayRank()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IR:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayScore()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IS:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRawScore()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IT:J
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getTimestampMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IU:J
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderDisplayName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IV:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderIconImageUri()Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IW:Landroid/net/Uri;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderHiResImageUri()Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IX:Landroid/net/Uri;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolder()Lcom/google/android/gms/games/Player;
move-result-object v0
if-nez v0, :cond_5b
const/4 v0, 0x0
:goto_46
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IY:Lcom/google/android/gms/games/PlayerEntity;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreTag()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IZ:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderIconImageUrl()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->Ja:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderHiResImageUrl()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->Jb:Ljava/lang/String;
return-void
:cond_5b
invoke-interface {v0}, Lcom/google/android/gms/games/Player;->freeze()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/PlayerEntity;
goto :goto_46
.end method
.method static a(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)I
.registers 5
const/16 v0, 0x9
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRank()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayRank()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRawScore()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x3
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayScore()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x4
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getTimestampMillis()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x5
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderDisplayName()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x6
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderIconImageUri()Landroid/net/Uri;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x7
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderHiResImageUri()Landroid/net/Uri;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0x8
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolder()Lcom/google/android/gms/games/Player;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method static a(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;Ljava/lang/Object;)Z
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
instance-of v2, p1, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
if-nez v2, :cond_7
:goto_6
:cond_6
return v0
:cond_7
if-ne p0, p1, :cond_b
move v0, v1
goto :goto_6
:cond_b
check-cast p1, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRank()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRank()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayRank()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayRank()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRawScore()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRawScore()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayScore()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayScore()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getTimestampMillis()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getTimestampMillis()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderDisplayName()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderDisplayName()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderIconImageUri()Landroid/net/Uri;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderIconImageUri()Landroid/net/Uri;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderHiResImageUri()Landroid/net/Uri;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderHiResImageUri()Landroid/net/Uri;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolder()Lcom/google/android/gms/games/Player;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolder()Lcom/google/android/gms/games/Player;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreTag()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreTag()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
move v0, v1
goto/16 :goto_6
.end method
.method static b(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)Ljava/lang/String;
.registers 5
invoke-static {p0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "Rank"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRank()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "DisplayRank"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayRank()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "Score"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRawScore()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "DisplayScore"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayScore()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "Timestamp"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getTimestampMillis()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "DisplayName"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderDisplayName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "IconImageUri"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderIconImageUri()Landroid/net/Uri;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "IconImageUrl"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderIconImageUrl()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "HiResImageUri"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderHiResImageUri()Landroid/net/Uri;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "HiResImageUrl"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolderHiResImageUrl()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v1
const-string v2, "Player"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolder()Lcom/google/android/gms/games/Player;
move-result-object v0
if-nez v0, :cond_90
const/4 v0, 0x0
:goto_7d
invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "ScoreTag"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreTag()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/ep$a;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_90
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolder()Lcom/google/android/gms/games/Player;
move-result-object v0
goto :goto_7d
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/d;->a(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final fZ()Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
.registers 1
return-object p0
.end method
.method public final synthetic freeze()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/games/leaderboard/d;->fZ()Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
move-result-object v0
return-object v0
.end method
.method public final getDisplayRank()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IR:Ljava/lang/String;
return-object v0
.end method
.method public final getDisplayRank(Landroid/database/CharArrayBuffer;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IR:Ljava/lang/String;
invoke-static {v0, p1}, Lcom/google/android/gms/internal/fm;->b(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
.end method
.method public final getDisplayScore()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IS:Ljava/lang/String;
return-object v0
.end method
.method public final getDisplayScore(Landroid/database/CharArrayBuffer;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IS:Ljava/lang/String;
invoke-static {v0, p1}, Lcom/google/android/gms/internal/fm;->b(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
.end method
.method public final getRank()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IQ:J
return-wide v0
.end method
.method public final getRawScore()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IT:J
return-wide v0
.end method
.method public final getScoreHolder()Lcom/google/android/gms/games/Player;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IY:Lcom/google/android/gms/games/PlayerEntity;
return-object v0
.end method
.method public final getScoreHolderDisplayName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IY:Lcom/google/android/gms/games/PlayerEntity;
if-nez v0, :cond_7
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IV:Ljava/lang/String;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IY:Lcom/google/android/gms/games/PlayerEntity;
invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->getDisplayName()Ljava/lang/String;
move-result-object v0
goto :goto_6
.end method
.method public final getScoreHolderDisplayName(Landroid/database/CharArrayBuffer;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IY:Lcom/google/android/gms/games/PlayerEntity;
if-nez v0, :cond_a
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IV:Ljava/lang/String;
invoke-static {v0, p1}, Lcom/google/android/gms/internal/fm;->b(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IY:Lcom/google/android/gms/games/PlayerEntity;
invoke-virtual {v0, p1}, Lcom/google/android/gms/games/PlayerEntity;->getDisplayName(Landroid/database/CharArrayBuffer;)V
goto :goto_9
.end method
.method public final getScoreHolderHiResImageUri()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IY:Lcom/google/android/gms/games/PlayerEntity;
if-nez v0, :cond_7
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IX:Landroid/net/Uri;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IY:Lcom/google/android/gms/games/PlayerEntity;
invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->getHiResImageUri()Landroid/net/Uri;
move-result-object v0
goto :goto_6
.end method
.method public final getScoreHolderHiResImageUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IY:Lcom/google/android/gms/games/PlayerEntity;
if-nez v0, :cond_7
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->Jb:Ljava/lang/String;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IY:Lcom/google/android/gms/games/PlayerEntity;
invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->getHiResImageUrl()Ljava/lang/String;
move-result-object v0
goto :goto_6
.end method
.method public final getScoreHolderIconImageUri()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IY:Lcom/google/android/gms/games/PlayerEntity;
if-nez v0, :cond_7
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IW:Landroid/net/Uri;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IY:Lcom/google/android/gms/games/PlayerEntity;
invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->getIconImageUri()Landroid/net/Uri;
move-result-object v0
goto :goto_6
.end method
.method public final getScoreHolderIconImageUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IY:Lcom/google/android/gms/games/PlayerEntity;
if-nez v0, :cond_7
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->Ja:Ljava/lang/String;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IY:Lcom/google/android/gms/games/PlayerEntity;
invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->getIconImageUrl()Ljava/lang/String;
move-result-object v0
goto :goto_6
.end method
.method public final getScoreTag()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IZ:Ljava/lang/String;
return-object v0
.end method
.method public final getTimestampMillis()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/d;->IU:J
return-wide v0
.end method
.method public final hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/d;->a(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)I
move-result v0
return v0
.end method
.method public final isDataValid()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/d;->b(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method