.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadSnapshotsResultImpl;
.super Lcom/google/android/gms/common/api/b;

# interfaces
.implements Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadSnapshotsResultImpl"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public getSnapshots()Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadSnapshotsResultImpl;->DD:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-object v0
.end method
