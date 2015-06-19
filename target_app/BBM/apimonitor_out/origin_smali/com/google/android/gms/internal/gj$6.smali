.class Lcom/google/android/gms/internal/gj$6;
.super Lcom/google/android/gms/internal/gj$c;


# instance fields
.field final synthetic HS:Lcom/google/android/gms/internal/gj;

.field final synthetic HW:I

.field final synthetic HX:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

.field final synthetic HY:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gj;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/gj$6;->HS:Lcom/google/android/gms/internal/gj;

    iput-object p2, p0, Lcom/google/android/gms/internal/gj$6;->HX:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    iput p3, p0, Lcom/google/android/gms/internal/gj$6;->HW:I

    iput p4, p0, Lcom/google/android/gms/internal/gj$6;->HY:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gj$c;-><init>(Lcom/google/android/gms/internal/gj$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/fx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gj$6;->a(Lcom/google/android/gms/internal/fx;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fx;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/gj$6;->HX:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    iget v1, p0, Lcom/google/android/gms/internal/gj$6;->HW:I

    iget v2, p0, Lcom/google/android/gms/internal/gj$6;->HY:I

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V

    return-void
.end method
