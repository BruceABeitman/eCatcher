.class public final Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
.super Ljava/lang/Object;
.field private Mm:Ljava/lang/String;
.field private Ue:Landroid/net/Uri;
.field private Ug:Ljava/lang/Long;
.field private Uh:Lcom/google/android/gms/common/data/a;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public build()Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
.registers 6
new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
iget-object v1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Mm:Ljava/lang/String;
iget-object v2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Ug:Ljava/lang/Long;
iget-object v3, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Uh:Lcom/google/android/gms/common/data/a;
iget-object v4, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Ue:Landroid/net/Uri;
invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;-><init>(Ljava/lang/String;Ljava/lang/Long;Lcom/google/android/gms/common/data/a;Landroid/net/Uri;)V
return-object v0
.end method
.method public fromMetadata(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
.registers 7
const/4 v4, 0x0
invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getDescription()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Mm:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getPlayedTime()J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Ug:Ljava/lang/Long;
iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Ug:Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-nez v0, :cond_1f
iput-object v4, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Ug:Ljava/lang/Long;
:cond_1f
invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageUri()Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Ue:Landroid/net/Uri;
iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Ue:Landroid/net/Uri;
if-eqz v0, :cond_2b
iput-object v4, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Uh:Lcom/google/android/gms/common/data/a;
:cond_2b
return-object p0
.end method
.method public setCoverImage(Landroid/graphics/Bitmap;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
.registers 3
new-instance v0, Lcom/google/android/gms/common/data/a;
invoke-direct {v0, p1}, Lcom/google/android/gms/common/data/a;-><init>(Landroid/graphics/Bitmap;)V
iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Uh:Lcom/google/android/gms/common/data/a;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Ue:Landroid/net/Uri;
return-object p0
.end method
.method public setDescription(Ljava/lang/String;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Mm:Ljava/lang/String;
return-object p0
.end method
.method public setPlayedTimeMillis(J)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
.registers 4
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Ug:Ljava/lang/Long;
return-object p0
.end method