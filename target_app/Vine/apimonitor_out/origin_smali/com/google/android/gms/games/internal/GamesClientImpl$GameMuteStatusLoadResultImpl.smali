.class final Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/Notifications$GameMuteStatusLoadResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GameMuteStatusLoadResultImpl"
.end annotation


# instance fields
.field private final NI:Ljava/lang/String;

.field private final NJ:Z

.field private final yw:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl;->yw:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v0

    if-lez v0, :cond_2c

    const-string v0, "external_game_id"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl;->NI:Ljava/lang/String;

    const-string v0, "muted"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->d(Ljava/lang/String;II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl;->NJ:Z
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_33

    :goto_28
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :cond_2c
    const/4 v0, 0x0

    :try_start_2d
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl;->NI:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl;->NJ:Z
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_33

    goto :goto_28

    :catchall_33
    move-exception v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    throw v0
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl;->yw:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
