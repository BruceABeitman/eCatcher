.class final Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateRequestsResultImpl;
.super Lcom/google/android/gms/common/api/b;
.implements Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;
.field private final OR:Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-static {p1}, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;->U(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateRequestsResultImpl;->OR:Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;
return-void
.end method
.method public getRequestIds()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateRequestsResultImpl;->OR:Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;
invoke-virtual {v0}, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;->getRequestIds()Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public getRequestOutcome(Ljava/lang/String;)I
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateRequestsResultImpl;->OR:Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;
invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;->getRequestOutcome(Ljava/lang/String;)I
move-result v0
return v0
.end method