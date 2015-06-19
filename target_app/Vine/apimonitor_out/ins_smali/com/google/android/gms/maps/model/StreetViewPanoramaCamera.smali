.class public Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/maps/model/StreetViewPanoramaCameraCreator;
.field private aaY:Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
.field public final bearing:F
.field public final tilt:F
.field private final xJ:I
.field public final zoom:F
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCameraCreator;
invoke-direct {v0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCameraCreator;-><init>()V
sput-object v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->CREATOR:Lcom/google/android/gms/maps/model/StreetViewPanoramaCameraCreator;
return-void
.end method
.method public constructor <init>(FFF)V
.registers 5
const/4 v0, 0x1
invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;-><init>(IFFF)V
return-void
.end method
.method constructor <init>(IFFF)V
.registers 10
const/high16 v4, 0x43b4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/high16 v0, -0x3d4c
cmpg-float v0, v0, p3
if-gtz v0, :cond_40
const/high16 v0, 0x42b4
cmpg-float v0, p3, v0
if-gtz v0, :cond_40
const/4 v0, 0x1
:goto_12
const-string v1, "Tilt needs to be between -90 and 90 inclusive"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->b(ZLjava/lang/Object;)V
iput p1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->xJ:I
iput p2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->zoom:F
const/4 v0, 0x0
add-float/2addr v0, p3
iput v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->tilt:F
float-to-double v0, p4
const-wide/16 v2, 0x0
cmpg-double v0, v0, v2
if-gtz v0, :cond_42
rem-float v0, p4, v4
add-float/2addr v0, v4
:goto_29
rem-float/2addr v0, v4
iput v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->bearing:F
new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;
invoke-direct {v0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;-><init>()V
invoke-virtual {v0, p3}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;->tilt(F)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;
move-result-object v0
invoke-virtual {v0, p4}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;->bearing(F)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;->build()Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->aaY:Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
return-void
:cond_40
const/4 v0, 0x0
goto :goto_12
:cond_42
move v0, p4
goto :goto_29
.end method
.method public static builder()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;
.registers 1
new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;
invoke-direct {v0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;-><init>()V
return-object v0
.end method
.method public static builder(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;
.registers 2
new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;
invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;-><init>(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)V
return-object v0
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
iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->zoom:F
invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v2
iget v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->zoom:F
invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v3
if-ne v2, v3, :cond_37
iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->tilt:F
invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v2
iget v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->tilt:F
invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v3
if-ne v2, v3, :cond_37
iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->bearing:F
invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v2
iget v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->bearing:F
invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v3
if-eq v2, v3, :cond_4
:cond_37
move v0, v1
goto :goto_4
.end method
.method public getOrientation()Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->aaY:Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
return-object v0
.end method
.method  getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->xJ:I
return v0
.end method
.method public hashCode()I
.registers 4
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->zoom:F
invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->tilt:F
invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->bearing:F
invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/google/android/gms/internal/hl;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 4
invoke-static {p0}, Lcom/google/android/gms/internal/hl;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "zoom"
iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->zoom:F
invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "tilt"
iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->tilt:F
invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "bearing"
iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->bearing:F
invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/hl$a;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCameraCreator;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;Landroid/os/Parcel;I)V
return-void
.end method