.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadAchievementsResultImpl;
.super Lcom/google/android/gms/common/api/b;

# interfaces
.implements Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadAchievementsResultImpl"
.end annotation


# instance fields
.field private final NQ:Lcom/google/android/gms/games/achievement/AchievementBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/achievement/AchievementBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/achievement/AchievementBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadAchievementsResultImpl;->NQ:Lcom/google/android/gms/games/achievement/AchievementBuffer;

    return-void
.end method


# virtual methods
.method public getAchievements()Lcom/google/android/gms/games/achievement/AchievementBuffer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadAchievementsResultImpl;->NQ:Lcom/google/android/gms/games/achievement/AchievementBuffer;

    return-object v0
.end method
