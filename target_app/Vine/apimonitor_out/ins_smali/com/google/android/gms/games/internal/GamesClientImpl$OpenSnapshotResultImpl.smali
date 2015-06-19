.class final Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;
.super Lcom/google/android/gms/common/api/b;
.implements Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
.field private final Oj:Lcom/google/android/gms/games/snapshot/Snapshot;
.field private final Ok:Ljava/lang/String;
.field private final Ol:Lcom/google/android/gms/games/snapshot/Snapshot;
.field private final Om:Lcom/google/android/gms/drive/Contents;
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/Contents;)V
.registers 9
const/4 v2, 0x0
move-object v0, p0
move-object v1, p1
move-object v3, p2
move-object v4, v2
move-object v5, v2
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V
return-void
.end method
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V
.registers 11
const/4 v0, 0x1
const/4 v1, 0x0
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
new-instance v2, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;
invoke-direct {v2, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
:try_start_a
invoke-virtual {v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->getCount()I
move-result v3
if-nez v3, :cond_1e
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->Oj:Lcom/google/android/gms/games/snapshot/Snapshot;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->Ol:Lcom/google/android/gms/games/snapshot/Snapshot;
:try_end_16
.catchall {:try_start_a .. :try_end_16} :catchall_44
:goto_16
invoke-virtual {v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->close()V
iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->Ok:Ljava/lang/String;
iput-object p5, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->Om:Lcom/google/android/gms/drive/Contents;
return-void
:try_start_1e
:cond_1e
invoke-virtual {v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->getCount()I
move-result v3
if-ne v3, v0, :cond_4b
invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I
move-result v3
const/16 v4, 0xfa4
if-eq v3, v4, :cond_49
:goto_2c
invoke-static {v0}, Lcom/google/android/gms/internal/gy;->A(Z)V
new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;
const/4 v1, 0x0
invoke-virtual {v2, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V
new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotEntity;
invoke-direct {v1, v0, p3}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/drive/Contents;)V
iput-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->Oj:Lcom/google/android/gms/games/snapshot/Snapshot;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->Ol:Lcom/google/android/gms/games/snapshot/Snapshot;
:try_end_43
.catchall {:try_start_1e .. :try_end_43} :catchall_44
goto :goto_16
:catchall_44
move-exception v0
invoke-virtual {v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->close()V
throw v0
:cond_49
move v0, v1
goto :goto_2c
:cond_4b
:try_start_4b
new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;
const/4 v1, 0x0
invoke-virtual {v2, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V
new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotEntity;
invoke-direct {v1, v0, p3}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/drive/Contents;)V
iput-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->Oj:Lcom/google/android/gms/games/snapshot/Snapshot;
new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;
const/4 v1, 0x1
invoke-virtual {v2, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V
new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotEntity;
invoke-direct {v1, v0, p4}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/drive/Contents;)V
iput-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->Ol:Lcom/google/android/gms/games/snapshot/Snapshot;
:try_end_6d
.catchall {:try_start_4b .. :try_end_6d} :catchall_44
goto :goto_16
.end method
.method public getConflictId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->Ok:Ljava/lang/String;
return-object v0
.end method
.method public getConflictingSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->Ol:Lcom/google/android/gms/games/snapshot/Snapshot;
return-object v0
.end method
.method public getResolutionContents()Lcom/google/android/gms/drive/Contents;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->Om:Lcom/google/android/gms/drive/Contents;
return-object v0
.end method
.method public getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->Oj:Lcom/google/android/gms/games/snapshot/Snapshot;
return-object v0
.end method