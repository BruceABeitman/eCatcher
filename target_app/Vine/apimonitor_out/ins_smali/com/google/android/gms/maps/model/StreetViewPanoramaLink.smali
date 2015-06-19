.class public Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/maps/model/StreetViewPanoramaLinkCreator;
.field public final bearing:F
.field public final panoId:Ljava/lang/String;
.field private final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLinkCreator;
invoke-direct {v0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaLinkCreator;-><init>()V
sput-object v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->CREATOR:Lcom/google/android/gms/maps/model/StreetViewPanoramaLinkCreator;
return-void
.end method
.method constructor <init>(ILjava/lang/String;F)V
.registers 9
const/high16 v4, 0x43b4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->panoId:Ljava/lang/String;
float-to-double v0, p3
const-wide/16 v2, 0x0
cmpg-double v0, v0, v2
if-gtz v0, :cond_14
rem-float v0, p3, v4
add-float p3, v0, v4
:cond_14
rem-float v0, p3, v4
iput v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->bearing:F
return-void
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
:cond_4
:goto_4
return v0
:cond_5
instance-of v2, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;
iget-object v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->panoId:Ljava/lang/String;
iget-object v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->panoId:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_25
iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->bearing:F
invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v2
iget v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->bearing:F
invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v3
if-eq v2, v3, :cond_4
:cond_25
move v0, v1
goto :goto_4
.end method
.method  getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->xJ:I
return v0
.end method
.method public hashCode()I
.registers 4
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget-object v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->panoId:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->bearing:F
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
const-string v1, "panoId"
iget-object v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->panoId:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;
move-result-object v0
const-string v1, "bearing"
iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->bearing:F
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
invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/StreetViewPanoramaLinkCreator;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;Landroid/os/Parcel;I)V
return-void
.end method