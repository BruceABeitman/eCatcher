.class Lcom/google/android/gms/games/internal/api/PlayersImpl$25;
.super Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadXpStreamResultImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/PlayersImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qe:Ljava/lang/String;

.field final synthetic Qf:I


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$25;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$25;->Qe:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$25;->Qf:I

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->c(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;I)V

    return-void
.end method
