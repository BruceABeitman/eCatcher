.class  Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$4;
.super Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$UpdateMatchImpl;
.field final synthetic QS:Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;
.field final synthetic QT:Ljava/lang/String;
.field final synthetic QW:[B
.field final synthetic QX:Ljava/lang/String;
.field final synthetic QY:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;
.method constructor <init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
.registers 7
iput-object p1, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$4;->QS:Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;
iput-object p2, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$4;->QT:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$4;->QW:[B
iput-object p4, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$4;->QX:Ljava/lang/String;
iput-object p5, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$4;->QY:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$UpdateMatchImpl;-><init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$4;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
.registers 8
iget-object v2, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$4;->QT:Ljava/lang/String;
iget-object v3, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$4;->QW:[B
iget-object v4, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$4;->QX:Ljava/lang/String;
iget-object v5, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$4;->QY:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;
move-object v0, p1
move-object v1, p0
invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
return-void
.end method