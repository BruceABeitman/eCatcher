.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SubmitScoreResultImpl;
.super Lcom/google/android/gms/common/api/b;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubmitScoreResultImpl"
.end annotation


# instance fields
.field private final OJ:Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_3
    new-instance v0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SubmitScoreResultImpl;->OJ:Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :catchall_e
    move-exception v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    throw v0
.end method


# virtual methods
.method public getScoreData()Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SubmitScoreResultImpl;->OJ:Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;

    return-object v0
.end method
