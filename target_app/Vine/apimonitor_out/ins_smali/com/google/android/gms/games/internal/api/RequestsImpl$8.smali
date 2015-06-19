.class  Lcom/google/android/gms/games/internal/api/RequestsImpl$8;
.super Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestSummariesImpl;
.field final synthetic Qp:Ljava/lang/String;
.field final synthetic Qw:I
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$8;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$8;->Qp:Ljava/lang/String;
iget v1, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$8;->Qw:I
invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->f(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;I)V
return-void
.end method