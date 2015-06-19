.class  Lcom/google/android/gms/games/internal/api/RequestsImpl$2;
.super Lcom/google/android/gms/games/internal/api/RequestsImpl$UpdateRequestsImpl;
.field final synthetic Qt:[Ljava/lang/String;
.field final synthetic Qu:Lcom/google/android/gms/games/internal/api/RequestsImpl;
.method constructor <init>(Lcom/google/android/gms/games/internal/api/RequestsImpl;[Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$2;->Qu:Lcom/google/android/gms/games/internal/api/RequestsImpl;
iput-object p2, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$2;->Qt:[Ljava/lang/String;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/RequestsImpl$UpdateRequestsImpl;-><init>(Lcom/google/android/gms/games/internal/api/RequestsImpl$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$2;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$2;->Qt:[Ljava/lang/String;
invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->c(Lcom/google/android/gms/common/api/a$d;[Ljava/lang/String;)V
return-void
.end method