.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSummariesLoadedBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RequestSummariesLoadedBinderCallbacks"
.end annotation


# instance fields
.field final synthetic NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

.field private final OA:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/request/Requests$LoadRequestSummariesResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/request/Requests$LoadRequestSummariesResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSummariesLoadedBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$d;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSummariesLoadedBinderCallbacks;->OA:Lcom/google/android/gms/common/api/a$d;

    return-void
.end method


# virtual methods
.method public H(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSummariesLoadedBinderCallbacks;->OA:Lcom/google/android/gms/common/api/a$d;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestSummariesResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestSummariesResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    return-void
.end method
