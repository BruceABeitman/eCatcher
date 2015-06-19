.class  Lcom/google/android/gms/games/internal/api/InvitationsImpl$1;
.super Lcom/google/android/gms/games/internal/api/InvitationsImpl$LoadInvitationsImpl;
.field final synthetic PB:I
.field final synthetic PC:Lcom/google/android/gms/games/internal/api/InvitationsImpl;
.method constructor <init>(Lcom/google/android/gms/games/internal/api/InvitationsImpl;I)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/games/internal/api/InvitationsImpl$1;->PC:Lcom/google/android/gms/games/internal/api/InvitationsImpl;
iput p2, p0, Lcom/google/android/gms/games/internal/api/InvitationsImpl$1;->PB:I
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/InvitationsImpl$LoadInvitationsImpl;-><init>(Lcom/google/android/gms/games/internal/api/InvitationsImpl$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/InvitationsImpl$1;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 3
iget v0, p0, Lcom/google/android/gms/games/internal/api/InvitationsImpl$1;->PB:I
invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->c(Lcom/google/android/gms/common/api/a$d;I)V
return-void
.end method