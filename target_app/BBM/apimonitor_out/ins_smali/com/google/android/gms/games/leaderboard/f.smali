.class public final Lcom/google/android/gms/games/leaderboard/f;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
.field private final Jd:I
.field private final Je:I
.field private final Jf:Z
.field private final Jg:J
.field private final Jh:Ljava/lang/String;
.field private final Ji:J
.field private final Jj:Ljava/lang/String;
.field private final Jk:Ljava/lang/String;
.field private final Jl:J
.field private final Jm:Ljava/lang/String;
.field private final Jn:Ljava/lang/String;
.field private final Jo:Ljava/lang/String;
.method public constructor <init>(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I
move-result v0
iput v0, p0, Lcom/google/android/gms/games/leaderboard/f;->Jd:I
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I
move-result v0
iput v0, p0, Lcom/google/android/gms/games/leaderboard/f;->Je:I
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z
move-result v0
iput-boolean v0, p0, Lcom/google/android/gms/games/leaderboard/f;->Jf:Z
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/f;->Jg:J
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/f;->Jh:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/f;->Ji:J
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/f;->Jj:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerScoreTag()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/f;->Jk:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/f;->Jl:J
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->ga()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/f;->Jm:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->gb()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/f;->Jn:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->gc()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/f;->Jo:Ljava/lang/String;
return-void
.end method
.method static a(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)I
.registers 5
const/16 v0, 0xb
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z
move-result v2
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x3
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x4
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x5
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x6
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x7
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0x8
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->ga()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0x9
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->gc()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0xa
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->gb()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method static a(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;Ljava/lang/Object;)Z
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
instance-of v2, p1, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
if-nez v2, :cond_7
:goto_6
:cond_6
return v0
:cond_7
if-ne p0, p1, :cond_b
move v0, v1
goto :goto_6
:cond_b
check-cast p1, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z
move-result v2
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z
move-result v3
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->ga()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->ga()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->gc()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->gc()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->gb()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->gb()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
move v0, v1
goto/16 :goto_6
.end method
.method static b(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)Ljava/lang/String;
.registers 6
invoke-static {p0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "TimeSpan"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I
move-result v2
invoke-static {v2}, Lcom/google/android/gms/internal/gu;->aW(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "Collection"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I
move-result v2
invoke-static {v2}, Lcom/google/android/gms/internal/gq;->aW(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v1
const-string v2, "RawPlayerScore"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z
move-result v0
if-eqz v0, :cond_99
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
:goto_30
invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v1
const-string v2, "DisplayPlayerScore"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z
move-result v0
if-eqz v0, :cond_9c
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;
move-result-object v0
:goto_40
invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v1
const-string v2, "PlayerRank"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z
move-result v0
if-eqz v0, :cond_9f
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
:goto_54
invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v1
const-string v2, "DisplayPlayerRank"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z
move-result v0
if-eqz v0, :cond_a2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;
move-result-object v0
:goto_64
invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "NumScores"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "TopPageNextToken"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->ga()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "WindowPageNextToken"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->gc()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
const-string v1, "WindowPagePrevToken"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->gb()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/ep$a;->toString()Ljava/lang/String;
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
.method public final equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/f;->a(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final synthetic freeze()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/games/leaderboard/f;->gd()Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
move-result-object v0
return-object v0
.end method
.method public final ga()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/f;->Jm:Ljava/lang/String;
return-object v0
.end method
.method public final gb()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/f;->Jn:Ljava/lang/String;
return-object v0
.end method
.method public final gc()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/f;->Jo:Ljava/lang/String;
return-object v0
.end method
.method public final gd()Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
.registers 1
return-object p0
.end method
.method public final getCollection()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/leaderboard/f;->Je:I
return v0
.end method
.method public final getDisplayPlayerRank()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/f;->Jj:Ljava/lang/String;
return-object v0
.end method
.method public final getDisplayPlayerScore()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/f;->Jh:Ljava/lang/String;
return-object v0
.end method
.method public final getNumScores()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/f;->Jl:J
return-wide v0
.end method
.method public final getPlayerRank()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/f;->Ji:J
return-wide v0
.end method
.method public final getPlayerScoreTag()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/f;->Jk:Ljava/lang/String;
return-object v0
.end method
.method public final getRawPlayerScore()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/f;->Jg:J
return-wide v0
.end method
.method public final getTimeSpan()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/leaderboard/f;->Jd:I
return v0
.end method
.method public final hasPlayerInfo()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/games/leaderboard/f;->Jf:Z
return v0
.end method
.method public final hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/f;->a(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)I
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
invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/f;->b(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method