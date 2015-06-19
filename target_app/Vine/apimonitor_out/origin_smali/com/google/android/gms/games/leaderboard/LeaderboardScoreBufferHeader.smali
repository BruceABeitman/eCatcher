.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader$1;,
        Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader$Builder;
    }
.end annotation


# instance fields
.field private final HJ:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_a

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_a
    iput-object p1, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader;->HJ:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public iw()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader;->HJ:Landroid/os/Bundle;

    return-object v0
.end method
