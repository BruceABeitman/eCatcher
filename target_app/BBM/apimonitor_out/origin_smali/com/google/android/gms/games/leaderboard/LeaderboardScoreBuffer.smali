.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;
.super Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/DataBuffer",
        "<",
        "Lcom/google/android/gms/games/leaderboard/LeaderboardScore;",
        ">;"
    }
.end annotation


# instance fields
.field private final IO:Lcom/google/android/gms/games/leaderboard/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/DataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/leaderboard/c;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/leaderboard/c;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->IO:Lcom/google/android/gms/games/leaderboard/c;

    return-void
.end method


# virtual methods
.method public final fX()Lcom/google/android/gms/games/leaderboard/c;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->IO:Lcom/google/android/gms/games/leaderboard/c;

    return-object v0
.end method

.method public final get(I)Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
    .registers 4

    new-instance v0, Lcom/google/android/gms/games/leaderboard/e;

    iget-object v1, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->zU:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/games/leaderboard/e;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->get(I)Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    move-result-object v0

    return-object v0
.end method
