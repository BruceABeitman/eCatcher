.class Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$1;
.super Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadGamesImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/GamesMetadataImpl;->loadGame(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pq:Lcom/google/android/gms/games/internal/api/GamesMetadataImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/GamesMetadataImpl;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$1;->Pq:Lcom/google/android/gms/games/internal/api/GamesMetadataImpl;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadGamesImpl;-><init>(Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$1;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->f(Lcom/google/android/gms/common/api/a$d;)V

    return-void
.end method
