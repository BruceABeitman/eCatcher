.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadEventResultImpl;
.super Lcom/google/android/gms/common/api/b;
.implements Lcom/google/android/gms/games/event/Events$LoadEventsResult;
.field private final NR:Lcom/google/android/gms/games/event/EventBuffer;
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
new-instance v0, Lcom/google/android/gms/games/event/EventBuffer;
invoke-direct {v0, p1}, Lcom/google/android/gms/games/event/EventBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadEventResultImpl;->NR:Lcom/google/android/gms/games/event/EventBuffer;
return-void
.end method
.method public getEvents()Lcom/google/android/gms/games/event/EventBuffer;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadEventResultImpl;->NR:Lcom/google/android/gms/games/event/EventBuffer;
return-object v0
.end method