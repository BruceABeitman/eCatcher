.class  Lcom/google/android/gms/games/internal/api/RequestsImpl$3;
.super Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestsImpl;
.field final synthetic PB:I
.field final synthetic Qu:Lcom/google/android/gms/games/internal/api/RequestsImpl;
.field final synthetic Qv:I
.field final synthetic Qw:I
.method constructor <init>(Lcom/google/android/gms/games/internal/api/RequestsImpl;III)V
.registers 6
iput-object p1, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->Qu:Lcom/google/android/gms/games/internal/api/RequestsImpl;
iput p2, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->Qv:I
iput p3, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->Qw:I
iput p4, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->PB:I
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestsImpl;-><init>(Lcom/google/android/gms/games/internal/api/RequestsImpl$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 5
iget v0, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->Qv:I
iget v1, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->Qw:I
iget v2, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->PB:I
invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;III)V
return-void
.end method