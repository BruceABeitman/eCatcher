.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CommitSnapshotResultImpl;
.super Lcom/google/android/gms/common/api/b;

# interfaces
.implements Lcom/google/android/gms/games/snapshot/Snapshots$CommitSnapshotResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CommitSnapshotResultImpl"
.end annotation


# instance fields
.field private final NG:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_8
    invoke-virtual {v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_1e

    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CommitSnapshotResultImpl;->NG:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_22

    :goto_1a
    invoke-virtual {v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->close()V

    return-void

    :cond_1e
    const/4 v0, 0x0

    :try_start_1f
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CommitSnapshotResultImpl;->NG:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_22

    goto :goto_1a

    :catchall_22
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->close()V

    throw v0
.end method


# virtual methods
.method public getSnapshotMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CommitSnapshotResultImpl;->NG:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    return-object v0
.end method
