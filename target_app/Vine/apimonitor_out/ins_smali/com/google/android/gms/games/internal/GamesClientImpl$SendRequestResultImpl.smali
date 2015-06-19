.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SendRequestResultImpl;
.super Lcom/google/android/gms/common/api/b;
.implements Lcom/google/android/gms/games/request/Requests$SendRequestResult;
.field private final Ox:Lcom/google/android/gms/games/request/GameRequest;
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 4
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
new-instance v1, Lcom/google/android/gms/games/request/GameRequestBuffer;
invoke-direct {v1, p1}, Lcom/google/android/gms/games/request/GameRequestBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
:try_start_8
invoke-virtual {v1}, Lcom/google/android/gms/games/request/GameRequestBuffer;->getCount()I
move-result v0
if-lez v0, :cond_21
const/4 v0, 0x0
invoke-virtual {v1, v0}, Lcom/google/android/gms/games/request/GameRequestBuffer;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/request/GameRequest;
invoke-interface {v0}, Lcom/google/android/gms/games/request/GameRequest;->freeze()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/request/GameRequest;
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SendRequestResultImpl;->Ox:Lcom/google/android/gms/games/request/GameRequest;
:goto_1d
:try_end_1d
.catchall {:try_start_8 .. :try_end_1d} :catchall_25
invoke-virtual {v1}, Lcom/google/android/gms/games/request/GameRequestBuffer;->close()V
return-void
:cond_21
const/4 v0, 0x0
:try_start_22
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SendRequestResultImpl;->Ox:Lcom/google/android/gms/games/request/GameRequest;
:try_end_24
.catchall {:try_start_22 .. :try_end_24} :catchall_25
goto :goto_1d
:catchall_25
move-exception v0
invoke-virtual {v1}, Lcom/google/android/gms/games/request/GameRequestBuffer;->close()V
throw v0
.end method