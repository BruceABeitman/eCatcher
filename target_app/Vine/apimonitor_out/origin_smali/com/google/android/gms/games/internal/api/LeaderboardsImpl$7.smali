.class Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$SubmitScoreImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;->submitScoreImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic PF:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

.field final synthetic PG:Ljava/lang/String;

.field final synthetic PM:J

.field final synthetic PN:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;Ljava/lang/String;JLjava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->PF:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->PG:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->PM:J

    iput-object p5, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->PN:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$SubmitScoreImpl;-><init>()V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 8

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->PG:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->PM:J

    iget-object v5, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->PN:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
