.class  Lcom/google/android/gms/internal/nz$7;
.super Lcom/google/android/gms/internal/of;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:[B
.field final synthetic c:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;
.field final synthetic d:Lcom/google/android/gms/internal/nz;
.method constructor <init>(Lcom/google/android/gms/internal/nz;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
.registers 6
iput-object p1, p0, Lcom/google/android/gms/internal/nz$7;->d:Lcom/google/android/gms/internal/nz;
iput-object p2, p0, Lcom/google/android/gms/internal/nz$7;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/internal/nz$7;->b:[B
iput-object p4, p0, Lcom/google/android/gms/internal/nz$7;->c:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/of;-><init>(Lcom/google/android/gms/internal/nz$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/jy;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nz$7;->a(Lcom/google/android/gms/internal/jy;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/jy;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/nz$7;->a:Ljava/lang/String;
iget-object v1, p0, Lcom/google/android/gms/internal/nz$7;->b:[B
iget-object v2, p0, Lcom/google/android/gms/internal/nz$7;->c:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;
invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/common/api/t;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
return-void
.end method