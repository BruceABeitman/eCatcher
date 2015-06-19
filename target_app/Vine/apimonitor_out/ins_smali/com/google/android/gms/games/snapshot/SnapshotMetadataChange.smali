.class public final Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;
.field public static final EMPTY_CHANGE:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
.field private final Mm:Ljava/lang/String;
.field private final Ud:Ljava/lang/Long;
.field private final Ue:Landroid/net/Uri;
.field private Uf:Lcom/google/android/gms/common/data/a;
.field private final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;
invoke-direct {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;-><init>()V
sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->CREATOR:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;
new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
invoke-direct {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;-><init>()V
sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->EMPTY_CHANGE:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
return-void
.end method
.method constructor <init>()V
.registers 7
const/4 v2, 0x0
const/4 v1, 0x4
move-object v0, p0
move-object v3, v2
move-object v4, v2
move-object v5, v2
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;-><init>(ILjava/lang/String;Ljava/lang/Long;Lcom/google/android/gms/common/data/a;Landroid/net/Uri;)V
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/Long;Lcom/google/android/gms/common/data/a;Landroid/net/Uri;)V
.registers 9
const/4 v0, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Mm:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Ud:Ljava/lang/Long;
iput-object p4, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Uf:Lcom/google/android/gms/common/data/a;
iput-object p5, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Ue:Landroid/net/Uri;
iget-object v2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Uf:Lcom/google/android/gms/common/data/a;
if-eqz v2, :cond_1f
iget-object v2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Ue:Landroid/net/Uri;
if-nez v2, :cond_1d
:goto_17
const-string v1, "Cannot set both a URI and an image"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V
:goto_1c
:cond_1c
return-void
:cond_1d
move v0, v1
goto :goto_17
:cond_1f
iget-object v2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Ue:Landroid/net/Uri;
if-eqz v2, :cond_1c
iget-object v2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Uf:Lcom/google/android/gms/common/data/a;
if-nez v2, :cond_2d
:goto_27
const-string v1, "Cannot set both a URI and an image"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V
goto :goto_1c
:cond_2d
move v0, v1
goto :goto_27
.end method
.method constructor <init>(Ljava/lang/String;Ljava/lang/Long;Lcom/google/android/gms/common/data/a;Landroid/net/Uri;)V
.registers 11
const/4 v1, 0x4
move-object v0, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;-><init>(ILjava/lang/String;Ljava/lang/Long;Lcom/google/android/gms/common/data/a;Landroid/net/Uri;)V
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getCoverImage()Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Uf:Lcom/google/android/gms/common/data/a;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Uf:Lcom/google/android/gms/common/data/a;
invoke-virtual {v0}, Lcom/google/android/gms/common/data/a;->eN()Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_5
.end method
.method public getCoverImageUri()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Ue:Landroid/net/Uri;
return-object v0
.end method
.method public getDescription()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Mm:Ljava/lang/String;
return-object v0
.end method
.method public getPlayedTimeMillis()Ljava/lang/Long;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Ud:Ljava/lang/Long;
return-object v0
.end method
.method public getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->xJ:I
return v0
.end method
.method public iI()Lcom/google/android/gms/common/data/a;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->Uf:Lcom/google/android/gms/common/data/a;
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;->a(Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Landroid/os/Parcel;I)V
return-void
.end method