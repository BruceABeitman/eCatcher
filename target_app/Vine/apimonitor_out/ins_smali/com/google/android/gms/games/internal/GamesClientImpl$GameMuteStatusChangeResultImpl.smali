.class final Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangeResultImpl;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/Notifications$GameMuteStatusChangeResult;
.field private final NI:Ljava/lang/String;
.field private final NJ:Z
.field private final yw:Lcom/google/android/gms/common/api/Status;
.method public constructor <init>(ILjava/lang/String;Z)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/common/api/Status;
invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangeResultImpl;->yw:Lcom/google/android/gms/common/api/Status;
iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangeResultImpl;->NI:Ljava/lang/String;
iput-boolean p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangeResultImpl;->NJ:Z
return-void
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangeResultImpl;->yw:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method