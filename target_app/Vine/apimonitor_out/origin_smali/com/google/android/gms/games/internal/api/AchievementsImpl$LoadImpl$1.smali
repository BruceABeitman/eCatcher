.class Lcom/google/android/gms/games/internal/api/AchievementsImpl$LoadImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/AchievementsImpl$LoadImpl;->v(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ph:Lcom/google/android/gms/games/internal/api/AchievementsImpl$LoadImpl;

.field final synthetic yG:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/AchievementsImpl$LoadImpl;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$LoadImpl$1;->Ph:Lcom/google/android/gms/games/internal/api/AchievementsImpl$LoadImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$LoadImpl$1;->yG:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAchievements()Lcom/google/android/gms/games/achievement/AchievementBuffer;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/achievement/AchievementBuffer;

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/google/android/gms/common/data/DataHolder;->af(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/achievement/AchievementBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$LoadImpl$1;->yG:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .registers 1

    return-void
.end method
