.class Lcom/google/android/gms/games/internal/api/RequestsImpl$6;
.super Lcom/google/android/gms/games/internal/api/RequestsImpl$UpdateRequestsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/RequestsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pe:Ljava/lang/String;

.field final synthetic Qp:Ljava/lang/String;

.field final synthetic Qt:[Ljava/lang/String;


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$6;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$6;->Pe:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$6;->Qp:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$6;->Qt:[Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
