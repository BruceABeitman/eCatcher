.class public final Lcom/google/android/gms/maps/model/LatLng;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/maps/model/g;
.field public final a:D
.field public final b:D
.field private final c:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/maps/model/g;
invoke-direct {v0}, Lcom/google/android/gms/maps/model/g;-><init>()V
sput-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/g;
return-void
.end method
.method public constructor <init>(DD)V
.registers 11
const/4 v1, 0x1
move-object v0, p0
move-wide v2, p1
move-wide v4, p3
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(IDD)V
return-void
.end method
.method constructor <init>(IDD)V
.registers 12
const-wide v4, 0x4076800000000000L
const-wide v2, 0x4066800000000000L
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/maps/model/LatLng;->c:I
const-wide v0, -0x3f99800000000000L
cmpg-double v0, v0, p4
if-gtz v0, :cond_33
cmpg-double v0, p4, v2
if-gez v0, :cond_33
iput-wide p4, p0, Lcom/google/android/gms/maps/model/LatLng;->b:D
:goto_1e
const-wide v0, -0x3fa9800000000000L
const-wide v2, 0x4056800000000000L
invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(DD)D
move-result-wide v2
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->a:D
return-void
:cond_33
sub-double v0, p4, v2
rem-double/2addr v0, v4
add-double/2addr v0, v4
rem-double/2addr v0, v4
sub-double/2addr v0, v2
iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->b:D
goto :goto_1e
.end method
.method final a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/LatLng;->c:I
return v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:cond_4
:goto_4
return v0
:cond_5
instance-of v2, p1, Lcom/google/android/gms/maps/model/LatLng;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/google/android/gms/maps/model/LatLng;
iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->a:D
invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J
move-result-wide v2
iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->a:D
invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J
move-result-wide v4
cmp-long v2, v2, v4
if-nez v2, :cond_2d
iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->b:D
invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J
move-result-wide v2
iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->b:D
invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J
move-result-wide v4
cmp-long v2, v2, v4
if-eqz v2, :cond_4
:cond_2d
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 6
const/16 v4, 0x20
iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->a:D
invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J
move-result-wide v0
ushr-long v2, v0, v4
xor-long/2addr v0, v2
long-to-int v0, v0
add-int/lit8 v0, v0, 0x1f
iget-wide v1, p0, Lcom/google/android/gms/maps/model/LatLng;->b:D
invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J
move-result-wide v1
mul-int/lit8 v0, v0, 0x1f
ushr-long v3, v1, v4
xor-long/2addr v1, v3
long-to-int v1, v1
add-int/2addr v0, v1
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "lat/lng: ("
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-wide v1, p0, Lcom/google/android/gms/maps/model/LatLng;->a:D
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ","
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/google/android/gms/maps/model/LatLng;->b:D
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 7
invoke-static {}, Lcom/google/android/gms/maps/a/b;->a()Z
move-result v0
if-eqz v0, :cond_20
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/maps/model/LatLng;->c:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->a:D
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ID)V
const/4 v1, 0x3
iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->b:D
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ID)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
:goto_1f
return-void
:cond_20
invoke-static {p0, p1}, Lcom/google/android/gms/maps/model/g;->a(Lcom/google/android/gms/maps/model/LatLng;Landroid/os/Parcel;)V
goto :goto_1f
.end method