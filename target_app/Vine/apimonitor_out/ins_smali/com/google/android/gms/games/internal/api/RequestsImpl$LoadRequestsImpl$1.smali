.class  Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestsImpl$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/request/Requests$LoadRequestsResult;
.field final synthetic QC:Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestsImpl;
.field final synthetic yG:Lcom/google/android/gms/common/api/Status;
.method constructor <init>(Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestsImpl;Lcom/google/android/gms/common/api/Status;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestsImpl$1;->QC:Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestsImpl;
iput-object p2, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestsImpl$1;->yG:Lcom/google/android/gms/common/api/Status;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getRequests(I)Lcom/google/android/gms/games/request/GameRequestBuffer;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestsImpl$1;->yG:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public release()V
.registers 1
return-void
.end method