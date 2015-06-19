.class public final Lcom/google/android/gms/maps/model/CameraPosition;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/maps/model/c;
.field public final a:Lcom/google/android/gms/maps/model/LatLng;
.field public final b:F
.field public final c:F
.field public final d:F
.field private final e:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/maps/model/c;
invoke-direct {v0}, Lcom/google/android/gms/maps/model/c;-><init>()V
sput-object v0, Lcom/google/android/gms/maps/model/CameraPosition;->CREATOR:Lcom/google/android/gms/maps/model/c;
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;FFF)V
.registers 11
const/4 v2, 0x0
const/high16 v4, 0x43b4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "null camera target"
invoke-static {p2, v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
cmpg-float v0, v2, p4
if-gtz v0, :cond_35
const/high16 v0, 0x42b4
cmpg-float v0, p4, v0
if-gtz v0, :cond_35
const/4 v0, 0x1
:goto_16
const-string v1, "Tilt needs to be between 0 and 90 inclusive"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hh;->b(ZLjava/lang/Object;)V
iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition;->e:I
iput-object p2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->a:Lcom/google/android/gms/maps/model/LatLng;
iput p3, p0, Lcom/google/android/gms/maps/model/CameraPosition;->b:F
add-float v0, p4, v2
iput v0, p0, Lcom/google/android/gms/maps/model/CameraPosition;->c:F
float-to-double v0, p5
const-wide/16 v2, 0x0
cmpg-double v0, v0, v2
if-gtz v0, :cond_30
rem-float v0, p5, v4
add-float p5, v0, v4
:cond_30
rem-float v0, p5, v4
iput v0, p0, Lcom/google/android/gms/maps/model/CameraPosition;->d:F
return-void
:cond_35
const/4 v0, 0x0
goto :goto_16
.end method
.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V
.registers 11
const/4 v1, 0x1
move-object v0, p0
move-object v2, p1
move v3, p2
move v4, p3
move v5, p4
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(ILcom/google/android/gms/maps/model/LatLng;FFF)V
return-void
.end method
.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/model/CameraPosition;
.registers 13
const/4 v10, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v9, 0x1
const/4 v1, 0x0
if-nez p1, :cond_9
const/4 v0, 0x0
:goto_8
return-object v0
:cond_9
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget-object v2, Lcom/google/android/gms/e;->b:[I
invoke-virtual {v0, p1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v3
invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v0
if-eqz v0, :cond_66
invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F
move-result v0
:goto_1d
invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v2
if-eqz v2, :cond_64
invoke-virtual {v3, v5, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F
move-result v2
:goto_27
new-instance v4, Lcom/google/android/gms/maps/model/LatLng;
float-to-double v5, v0
float-to-double v7, v2
invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V
new-instance v0, Lcom/google/android/gms/maps/model/b;
invoke-direct {v0}, Lcom/google/android/gms/maps/model/b;-><init>()V
invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/b;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/b;
const/4 v2, 0x5
invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v2
if-eqz v2, :cond_45
const/4 v2, 0x5
invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F
move-result v2
invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/b;->a(F)Lcom/google/android/gms/maps/model/b;
:cond_45
invoke-virtual {v3, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v2
if-eqz v2, :cond_52
invoke-virtual {v3, v9, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F
move-result v2
invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/b;->c(F)Lcom/google/android/gms/maps/model/b;
:cond_52
invoke-virtual {v3, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v2
if-eqz v2, :cond_5f
invoke-virtual {v3, v10, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F
move-result v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/b;->b(F)Lcom/google/android/gms/maps/model/b;
:cond_5f
invoke-virtual {v0}, Lcom/google/android/gms/maps/model/b;->a()Lcom/google/android/gms/maps/model/CameraPosition;
move-result-object v0
goto :goto_8
:cond_64
move v2, v1
goto :goto_27
:cond_66
move v0, v1
goto :goto_1d
.end method
.method final a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/CameraPosition;->e:I
return v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:cond_4
:goto_4
return v0
:cond_5
instance-of v2, p1, Lcom/google/android/gms/maps/model/CameraPosition;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/google/android/gms/maps/model/CameraPosition;
iget-object v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->a:Lcom/google/android/gms/maps/model/LatLng;
iget-object v3, p1, Lcom/google/android/gms/maps/model/CameraPosition;->a:Lcom/google/android/gms/maps/model/LatLng;
invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_41
iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->b:F
invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v2
iget v3, p1, Lcom/google/android/gms/maps/model/CameraPosition;->b:F
invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v3
if-ne v2, v3, :cond_41
iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->c:F
invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v2
iget v3, p1, Lcom/google/android/gms/maps/model/CameraPosition;->c:F
invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v3
if-ne v2, v3, :cond_41
iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->d:F
invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v2
iget v3, p1, Lcom/google/android/gms/maps/model/CameraPosition;->d:F
invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v3
if-eq v2, v3, :cond_4
:cond_41
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 4
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget-object v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->a:Lcom/google/android/gms/maps/model/LatLng;
aput-object v2, v0, v1
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->b:F
invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->c:F
invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x3
iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->d:F
invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 4
invoke-static {p0}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "target"
iget-object v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->a:Lcom/google/android/gms/maps/model/LatLng;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "zoom"
iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->b:F
invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "tilt"
iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->c:F
invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "bearing"
iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->d:F
invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/he;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 7
invoke-static {}, Lcom/google/android/gms/maps/a/b;->a()Z
move-result v0
if-eqz v0, :cond_2d
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->e:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->a:Lcom/google/android/gms/maps/model/LatLng;
const/4 v3, 0x0
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/4 v1, 0x3
iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->b:F
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
const/4 v1, 0x4
iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->c:F
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
const/4 v1, 0x5
iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->d:F
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
:goto_2c
return-void
:cond_2d
invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/c;->a(Lcom/google/android/gms/maps/model/CameraPosition;Landroid/os/Parcel;I)V
goto :goto_2c
.end method