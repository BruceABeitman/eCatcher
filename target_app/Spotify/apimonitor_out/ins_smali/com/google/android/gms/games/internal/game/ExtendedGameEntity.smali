.class public final Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;
.super Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;
.implements Lcom/google/android/gms/games/internal/game/ExtendedGame;
.field public static final CREATOR:Lcom/google/android/gms/games/internal/game/b;
.field private final a:I
.field private final b:Lcom/google/android/gms/games/GameEntity;
.field private final c:I
.field private final d:Z
.field private final e:I
.field private final f:J
.field private final g:J
.field private final h:Ljava/lang/String;
.field private final i:J
.field private final j:Ljava/lang/String;
.field private final k:Ljava/util/ArrayList;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/games/internal/game/a;
invoke-direct {v0}, Lcom/google/android/gms/games/internal/game/a;-><init>()V
sput-object v0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->CREATOR:Lcom/google/android/gms/games/internal/game/b;
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/games/GameEntity;IZIJJLjava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;)V
.registers 15
invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V
iput p1, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->a:I
iput-object p2, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->b:Lcom/google/android/gms/games/GameEntity;
iput p3, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->c:I
iput-boolean p4, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->d:Z
iput p5, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->e:I
iput-wide p6, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->f:J
iput-wide p8, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->g:J
iput-object p10, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->h:Ljava/lang/String;
iput-wide p11, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->i:J
iput-object p13, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->j:Ljava/lang/String;
iput-object p14, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->k:Ljava/util/ArrayList;
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/games/internal/game/ExtendedGame;)V
.registers 7
invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->a:I
invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->b()Lcom/google/android/gms/games/Game;
move-result-object v1
if-nez v1, :cond_67
const/4 v0, 0x0
:goto_d
iput-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->b:Lcom/google/android/gms/games/GameEntity;
invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->d()I
move-result v0
iput v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->c:I
invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->e()Z
move-result v0
iput-boolean v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->d:Z
invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->f()I
move-result v0
iput v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->e:I
invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->g()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->f:J
invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->h()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->g:J
invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->i()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->h:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->j()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->i:J
invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->k()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->j:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->c()Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v3
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->k:Ljava/util/ArrayList;
const/4 v0, 0x0
move v1, v0
:goto_50
if-ge v1, v3, :cond_6d
iget-object v4, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->k:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/internal/game/GameBadge;
invoke-interface {v0}, Lcom/google/android/gms/games/internal/game/GameBadge;->a()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;
invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_50
:cond_67
new-instance v0, Lcom/google/android/gms/games/GameEntity;
invoke-direct {v0, v1}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V
goto :goto_d
:cond_6d
return-void
.end method
.method static a(Lcom/google/android/gms/games/internal/game/ExtendedGame;)I
.registers 5
const/16 v0, 0x9
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->b()Lcom/google/android/gms/games/Game;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->d()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->e()Z
move-result v2
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x3
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->f()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x4
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->g()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x5
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->h()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x6
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->i()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x7
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->j()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0x8
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->k()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method static a(Lcom/google/android/gms/games/internal/game/ExtendedGame;Ljava/lang/Object;)Z
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
instance-of v2, p1, Lcom/google/android/gms/games/internal/game/ExtendedGame;
if-nez v2, :cond_7
:goto_6
:cond_6
return v0
:cond_7
if-ne p0, p1, :cond_b
move v0, v1
goto :goto_6
:cond_b
check-cast p1, Lcom/google/android/gms/games/internal/game/ExtendedGame;
invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->b()Lcom/google/android/gms/games/Game;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->b()Lcom/google/android/gms/games/Game;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->d()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->d()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->e()Z
move-result v2
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->e()Z
move-result v3
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->f()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->f()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->g()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->g()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->h()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->h()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->i()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->i()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->j()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->j()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->k()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->k()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
move v0, v1
goto/16 :goto_6
.end method
.method static synthetic a(Ljava/lang/Integer;)Z
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->b(Ljava/lang/Integer;)Z
move-result v0
return v0
.end method
.method static synthetic a(Ljava/lang/String;)Z
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->b(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method static b(Lcom/google/android/gms/games/internal/game/ExtendedGame;)Ljava/lang/String;
.registers 5
invoke-static {p0}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "Game"
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->b()Lcom/google/android/gms/games/Game;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "Availability"
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->d()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "Owned"
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->e()Z
move-result v2
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "AchievementUnlockedCount"
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->f()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "LastPlayedServerTimestamp"
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->g()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "PriceMicros"
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->h()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "FormattedPrice"
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->i()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "FullPriceMicros"
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->j()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "FormattedFullPrice"
invoke-interface {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGame;->k()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/he;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic n()Ljava/lang/Integer;
.registers 1
invoke-static {}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->z()Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method public final synthetic a()Ljava/lang/Object;
.registers 1
return-object p0
.end method
.method public final synthetic b()Lcom/google/android/gms/games/Game;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->b:Lcom/google/android/gms/games/GameEntity;
return-object v0
.end method
.method public final c()Ljava/util/ArrayList;
.registers 3
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->k:Ljava/util/ArrayList;
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
return-object v0
.end method
.method public final d()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->c:I
return v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final e()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->d:Z
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->a(Lcom/google/android/gms/games/internal/game/ExtendedGame;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final f()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->e:I
return v0
.end method
.method public final g()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->f:J
return-wide v0
.end method
.method public final h()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->g:J
return-wide v0
.end method
.method public final hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->a(Lcom/google/android/gms/games/internal/game/ExtendedGame;)I
move-result v0
return v0
.end method
.method public final i()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->h:Ljava/lang/String;
return-object v0
.end method
.method public final j()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->i:J
return-wide v0
.end method
.method public final k()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->j:Ljava/lang/String;
return-object v0
.end method
.method public final l()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->a:I
return v0
.end method
.method public final m()Lcom/google/android/gms/games/GameEntity;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->b:Lcom/google/android/gms/games/GameEntity;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->b(Lcom/google/android/gms/games/internal/game/ExtendedGame;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 7
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->A()Z
move-result v0
if-nez v0, :cond_b
invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/internal/game/b;->a(Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;Landroid/os/Parcel;I)V
:cond_a
return-void
:cond_b
iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->b:Lcom/google/android/gms/games/GameEntity;
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/GameEntity;->writeToParcel(Landroid/os/Parcel;I)V
iget v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->c:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-boolean v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->d:Z
if-eqz v0, :cond_54
const/4 v0, 0x1
:goto_1a
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->e:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-wide v2, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->f:J
invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v2, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->g:J
invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->h:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-wide v2, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->i:J
invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->j:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->k:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v2
invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V
:goto_44
if-ge v1, v2, :cond_a
iget-object v0, p0, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->k:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->writeToParcel(Landroid/os/Parcel;I)V
add-int/lit8 v1, v1, 0x1
goto :goto_44
:cond_54
move v0, v1
goto :goto_1a
.end method