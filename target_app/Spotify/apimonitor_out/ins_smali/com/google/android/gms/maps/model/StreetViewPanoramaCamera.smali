.class public Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/maps/model/k;
.field public final a:F
.field public final b:F
.field public final c:F
.field private final d:I
.field private e:Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/maps/model/k;
invoke-direct {v0}, Lcom/google/android/gms/maps/model/k;-><init>()V
sput-object v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->CREATOR:Lcom/google/android/gms/maps/model/k;
return-void
.end method
.method constructor <init>(IFFF)V
.registers 10
const/high16 v4, 0x43b4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/high16 v0, -0x3d4c
cmpg-float v0, v0, p3
if-gtz v0, :cond_41
const/high16 v0, 0x42b4
cmpg-float v0, p3, v0
if-gtz v0, :cond_41
const/4 v0, 0x1
:goto_12
const-string v1, "Tilt needs to be between -90 and 90 inclusive"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hh;->b(ZLjava/lang/Object;)V
iput p1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->d:I
iput p2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->a:F
const/4 v0, 0x0
add-float/2addr v0, p3
iput v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->b:F
float-to-double v0, p4
const-wide/16 v2, 0x0
cmpg-double v0, v0, v2
if-gtz v0, :cond_43
rem-float v0, p4, v4
add-float/2addr v0, v4
:goto_29
rem-float/2addr v0, v4
iput v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->c:F
new-instance v0, Lcom/google/android/gms/maps/model/n;
invoke-direct {v0}, Lcom/google/android/gms/maps/model/n;-><init>()V
iput p3, v0, Lcom/google/android/gms/maps/model/n;->b:F
iput p4, v0, Lcom/google/android/gms/maps/model/n;->a:F
new-instance v1, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
iget v2, v0, Lcom/google/android/gms/maps/model/n;->b:F
iget v0, v0, Lcom/google/android/gms/maps/model/n;->a:F
invoke-direct {v1, v2, v0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;-><init>(FF)V
iput-object v1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->e:Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
return-void
:cond_41
const/4 v0, 0x0
goto :goto_12
:cond_43
move v0, p4
goto :goto_29
.end method
.method final a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->d:I
return v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
instance-of v2, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->a:F
invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v2
iget v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->a:F
invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v3
if-ne v2, v3, :cond_37
iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->b:F
invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v2
iget v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->b:F
invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v3
if-ne v2, v3, :cond_37
iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->c:F
invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v2
iget v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->c:F
invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v3
if-eq v2, v3, :cond_4
:cond_37
move v0, v1
goto :goto_4
.end method
.method public hashCode()I
.registers 4
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->a:F
invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->b:F
invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->c:F
invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 4
invoke-static {p0}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "zoom"
iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->a:F
invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "tilt"
iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->b:F
invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "bearing"
iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->c:F
invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/he;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/maps/model/k;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;Landroid/os/Parcel;)V
return-void
.end method