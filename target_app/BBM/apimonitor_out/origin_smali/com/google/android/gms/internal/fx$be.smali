.class final Lcom/google/android/gms/internal/fx$be;
.super Lcom/google/android/gms/internal/fx$av;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fx$av",
        "<",
        "Lcom/google/android/gms/common/api/a$c",
        "<",
        "Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;",
        ">;>;",
        "Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;"
    }
.end annotation


# instance fields
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;

.field private final Hp:Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;",
            ">;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/fx$be;->GJ:Lcom/google/android/gms/internal/fx;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/fx$av;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_5
    new-instance v0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;

    invoke-direct {v0, p3}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fx$be;->Hp:Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    invoke-virtual {p3}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :catchall_10
    move-exception v0

    invoke-virtual {p3}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;",
            ">;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/common/api/a$c;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fx$be;->a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

.method public final getScoreData()Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fx$be;->Hp:Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;

    return-object v0
.end method
