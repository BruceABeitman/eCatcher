.class abstract Lcom/google/android/gms/games/internal/api/RequestsImpl$SendRequestImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>()V
return-void
.end method
.method public X(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/request/Requests$SendRequestResult;
.registers 3
new-instance v0, Lcom/google/android/gms/games/internal/api/RequestsImpl$SendRequestImpl$1;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$SendRequestImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/RequestsImpl$SendRequestImpl;Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$SendRequestImpl;->X(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/request/Requests$SendRequestResult;
move-result-object v0
return-object v0
.end method