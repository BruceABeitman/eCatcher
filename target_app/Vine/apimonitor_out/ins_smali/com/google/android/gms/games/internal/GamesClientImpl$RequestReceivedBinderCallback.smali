.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;
.field final synthetic NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
.field private final Ow:Lcom/google/android/gms/games/request/OnRequestReceivedListener;
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/request/OnRequestReceivedListener;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V
iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;->Ow:Lcom/google/android/gms/games/request/OnRequestReceivedListener;
return-void
.end method
.method public o(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 7
new-instance v1, Lcom/google/android/gms/games/request/GameRequestBuffer;
invoke-direct {v1, p1}, Lcom/google/android/gms/games/request/GameRequestBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
const/4 v0, 0x0
:try_start_6
invoke-virtual {v1}, Lcom/google/android/gms/games/request/GameRequestBuffer;->getCount()I
move-result v2
if-lez v2, :cond_19
const/4 v0, 0x0
invoke-virtual {v1, v0}, Lcom/google/android/gms/games/request/GameRequestBuffer;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/request/GameRequest;
invoke-interface {v0}, Lcom/google/android/gms/games/request/GameRequest;->freeze()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/request/GameRequest;
:try_end_19
.catchall {:try_start_6 .. :try_end_19} :catchall_2d
:cond_19
invoke-virtual {v1}, Lcom/google/android/gms/games/request/GameRequestBuffer;->close()V
if-eqz v0, :cond_2c
iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedCallback;
iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
iget-object v4, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;->Ow:Lcom/google/android/gms/games/request/OnRequestReceivedListener;
invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/request/OnRequestReceivedListener;Lcom/google/android/gms/games/request/GameRequest;)V
invoke-virtual {v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hc$b;)V
:cond_2c
return-void
:catchall_2d
move-exception v0
invoke-virtual {v1}, Lcom/google/android/gms/games/request/GameRequestBuffer;->close()V
throw v0
.end method
.method public onRequestRemoved(Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestRemovedCallback;
iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;->Ow:Lcom/google/android/gms/games/request/OnRequestReceivedListener;
invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestRemovedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/request/OnRequestReceivedListener;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hc$b;)V
return-void
.end method