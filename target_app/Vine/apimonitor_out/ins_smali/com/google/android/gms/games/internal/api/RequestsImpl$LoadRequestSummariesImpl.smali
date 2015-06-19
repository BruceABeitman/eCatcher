.class abstract Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestSummariesImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>()V
return-void
.end method
.method public V(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/request/Requests$LoadRequestSummariesResult;
.registers 3
new-instance v0, Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestSummariesImpl$1;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestSummariesImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestSummariesImpl;Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestSummariesImpl;->V(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/request/Requests$LoadRequestSummariesResult;
move-result-object v0
return-object v0
.end method