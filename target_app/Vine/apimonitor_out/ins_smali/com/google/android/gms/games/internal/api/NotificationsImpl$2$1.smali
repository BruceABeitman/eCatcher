.class  Lcom/google/android/gms/games/internal/api/NotificationsImpl$2$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/Notifications$GameMuteStatusChangeResult;
.field final synthetic PU:Lcom/google/android/gms/games/internal/api/NotificationsImpl$2;
.field final synthetic yG:Lcom/google/android/gms/common/api/Status;
.method constructor <init>(Lcom/google/android/gms/games/internal/api/NotificationsImpl$2;Lcom/google/android/gms/common/api/Status;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/games/internal/api/NotificationsImpl$2$1;->PU:Lcom/google/android/gms/games/internal/api/NotificationsImpl$2;
iput-object p2, p0, Lcom/google/android/gms/games/internal/api/NotificationsImpl$2$1;->yG:Lcom/google/android/gms/common/api/Status;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/api/NotificationsImpl$2$1;->yG:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method