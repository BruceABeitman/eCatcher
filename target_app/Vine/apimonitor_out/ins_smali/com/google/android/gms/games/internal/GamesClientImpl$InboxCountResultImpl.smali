.class final Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountResultImpl;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/Notifications$InboxCountResult;
.field private final NK:Landroid/os/Bundle;
.field private final yw:Lcom/google/android/gms/common/api/Status;
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/os/Bundle;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountResultImpl;->yw:Lcom/google/android/gms/common/api/Status;
iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountResultImpl;->NK:Landroid/os/Bundle;
return-void
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountResultImpl;->yw:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method