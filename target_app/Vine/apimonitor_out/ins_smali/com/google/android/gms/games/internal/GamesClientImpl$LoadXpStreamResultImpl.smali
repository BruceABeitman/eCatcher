.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpStreamResultImpl;
.super Lcom/google/android/gms/common/api/b;
.implements Lcom/google/android/gms/games/Players$LoadXpStreamResult;
.field private final Oe:Lcom/google/android/gms/games/internal/experience/ExperienceEventBuffer;
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
new-instance v0, Lcom/google/android/gms/games/internal/experience/ExperienceEventBuffer;
invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEventBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpStreamResultImpl;->Oe:Lcom/google/android/gms/games/internal/experience/ExperienceEventBuffer;
return-void
.end method