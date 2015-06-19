.class abstract Lcom/google/android/gms/games/internal/api/RequestsImpl$UpdateRequestsImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/games/internal/api/RequestsImpl$1;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/games/internal/api/RequestsImpl$UpdateRequestsImpl;-><init>()V
return-void
.end method
.method public Y(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;
.registers 3
new-instance v0, Lcom/google/android/gms/games/internal/api/RequestsImpl$UpdateRequestsImpl$1;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$UpdateRequestsImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/RequestsImpl$UpdateRequestsImpl;Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$UpdateRequestsImpl;->Y(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;
move-result-object v0
return-object v0
.end method