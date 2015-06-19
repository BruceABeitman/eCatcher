.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
.field private final SE:I
.field private final SF:I
.field private final SG:Z
.field private final SH:J
.field private final SI:Ljava/lang/String;
.field private final SJ:J
.field private final SK:Ljava/lang/String;
.field private final SL:Ljava/lang/String;
.field private final SM:J
.field private final SN:Ljava/lang/String;
.field private final SO:Ljava/lang/String;
.field private final SP:Ljava/lang/String;
.method public constructor <init>(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I
move-result v0
iput v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SE:I
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I
move-result v0
iput v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SF:I
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z
move-result v0
iput-boolean v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SG:Z
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SH:J
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SI:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SJ:J
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SK:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerScoreTag()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SL:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SM:J
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iy()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SN:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iz()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SO:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iA()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SP:Ljava/lang/String;
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
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iy()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0x9
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iA()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0xa
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iz()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/google/android/gms/internal/hl;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method static a(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;Ljava/lang/Object;)Z
.registers 7
const/4 v0, 0x1
const/4 v1, 0x0
instance-of v2, p1, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
if-nez v2, :cond_8
move v0, v1
:cond_7
:goto_7
return v0
:cond_8
if-eq p0, p1, :cond_7
check-cast p1, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z
move-result v2
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z
move-result v3
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iy()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iy()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iA()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iA()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d6
invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iz()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iz()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_7
:cond_d6
move v0, v1
goto/16 :goto_7
.end method
.method static b(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)Ljava/lang/String;
.registers 6
invoke-static {p0}, Lcom/google/android/gms/internal/hl;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "TimeSpan"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I
move-result v2
invoke-static {v2}, Lcom/google/android/gms/games/internal/constants/TimeSpan;->cm(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "Collection"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I
move-result v2
invoke-static {v2}, Lcom/google/android/gms/games/internal/constants/LeaderboardCollection;->cm(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
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
invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v1
const-string v2, "DisplayPlayerScore"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z
move-result v0
if-eqz v0, :cond_9c
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;
move-result-object v0
:goto_40
invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
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
invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v1
const-string v2, "DisplayPlayerRank"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z
move-result v0
if-eqz v0, :cond_a2
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;
move-result-object v0
:goto_64
invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "NumScores"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "TopPageNextToken"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iy()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "WindowPageNextToken"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iA()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "WindowPagePrevToken"
invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iz()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/hl$a;->toString()Ljava/lang/String;
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
.method public equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->a(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public synthetic freeze()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->iB()Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
move-result-object v0
return-object v0
.end method
.method public getCollection()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SF:I
return v0
.end method
.method public getDisplayPlayerRank()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SK:Ljava/lang/String;
return-object v0
.end method
.method public getDisplayPlayerScore()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SI:Ljava/lang/String;
return-object v0
.end method
.method public getNumScores()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SM:J
return-wide v0
.end method
.method public getPlayerRank()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SJ:J
return-wide v0
.end method
.method public getPlayerScoreTag()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SL:Ljava/lang/String;
return-object v0
.end method
.method public getRawPlayerScore()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SH:J
return-wide v0
.end method
.method public getTimeSpan()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SE:I
return v0
.end method
.method public hasPlayerInfo()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SG:Z
return v0
.end method
.method public hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->a(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)I
move-result v0
return v0
.end method
.method public iA()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SP:Ljava/lang/String;
return-object v0
.end method
.method public iB()Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
.registers 1
return-object p0
.end method
.method public isDataValid()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public iy()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SN:Ljava/lang/String;
return-object v0
.end method
.method public iz()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SO:Ljava/lang/String;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->b(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method