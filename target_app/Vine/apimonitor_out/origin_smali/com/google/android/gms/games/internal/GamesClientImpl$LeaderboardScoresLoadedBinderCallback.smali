.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LeaderboardScoresLoadedBinderCallback"
.end annotation


# instance fields
.field final synthetic NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

.field private final yO:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$d;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;->yO:Lcom/google/android/gms/common/api/a$d;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;->yO:Lcom/google/android/gms/common/api/a$d;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadScoresResultImpl;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadScoresResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    return-void
.end method
