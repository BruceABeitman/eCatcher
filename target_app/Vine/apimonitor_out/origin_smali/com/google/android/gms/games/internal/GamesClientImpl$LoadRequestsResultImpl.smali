.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestsResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/request/Requests$LoadRequestsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadRequestsResultImpl"
.end annotation


# instance fields
.field private final NZ:Landroid/os/Bundle;

.field private final yw:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestsResultImpl;->yw:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestsResultImpl;->NZ:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getRequests(I)Lcom/google/android/gms/games/request/GameRequestBuffer;
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/games/internal/constants/RequestType;->cm(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestsResultImpl;->NZ:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestsResultImpl;->NZ:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    new-instance v1, Lcom/google/android/gms/games/request/GameRequestBuffer;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/request/GameRequestBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    move-object v0, v1

    goto :goto_d
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestsResultImpl;->yw:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestsResultImpl;->NZ:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestsResultImpl;->NZ:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    goto :goto_a

    :cond_24
    return-void
.end method