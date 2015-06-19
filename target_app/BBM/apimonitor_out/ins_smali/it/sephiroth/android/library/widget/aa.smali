.class final Lit/sephiroth/android/library/widget/aa;
.super Ljava/lang/Object;
.source "ExpandableHListConnector.java"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 7
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v1
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v2
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
invoke-static {v0, v1, v2, v3, v4}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a(IIIJ)Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
return-object v0
.end method