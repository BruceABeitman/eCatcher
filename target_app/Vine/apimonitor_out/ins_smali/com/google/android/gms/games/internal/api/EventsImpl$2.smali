.class  Lcom/google/android/gms/games/internal/api/EventsImpl$2;
.super Lcom/google/android/gms/games/internal/api/EventsImpl$LoadImpl;
.field final synthetic Pb:Z
.field final synthetic Pl:Lcom/google/android/gms/games/internal/api/EventsImpl;
.method constructor <init>(Lcom/google/android/gms/games/internal/api/EventsImpl;Z)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$2;->Pl:Lcom/google/android/gms/games/internal/api/EventsImpl;
iput-boolean p2, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$2;->Pb:Z
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/EventsImpl$LoadImpl;-><init>(Lcom/google/android/gms/games/internal/api/EventsImpl$1;)V
return-void
.end method
.method public bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/EventsImpl$2;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-void
.end method
.method public a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 3
iget-boolean v0, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$2;->Pb:Z
invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->d(Lcom/google/android/gms/common/api/a$d;Z)V
return-void
.end method