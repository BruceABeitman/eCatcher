.class public final Lcom/google/android/gms/maps/model/CircleOptions;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/maps/model/CircleOptionsCreator;
.field private aap:Lcom/google/android/gms/maps/model/LatLng;
.field private aaq:D
.field private aar:F
.field private aas:I
.field private aat:I
.field private aau:F
.field private aav:Z
.field private final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/maps/model/CircleOptionsCreator;
invoke-direct {v0}, Lcom/google/android/gms/maps/model/CircleOptionsCreator;-><init>()V
sput-object v0, Lcom/google/android/gms/maps/model/CircleOptions;->CREATOR:Lcom/google/android/gms/maps/model/CircleOptionsCreator;
return-void
.end method
.method public constructor <init>()V
.registers 4
const/4 v2, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aap:Lcom/google/android/gms/maps/model/LatLng;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aaq:D
const/high16 v0, 0x4120
iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aar:F
const/high16 v0, -0x100
iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aas:I
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aat:I
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aau:F
iput-boolean v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aav:Z
iput v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->xJ:I
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;DFIIFZ)V
.registers 12
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aap:Lcom/google/android/gms/maps/model/LatLng;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aaq:D
const/high16 v0, 0x4120
iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aar:F
const/high16 v0, -0x100
iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aas:I
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aat:I
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aau:F
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aav:Z
iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aap:Lcom/google/android/gms/maps/model/LatLng;
iput-wide p3, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aaq:D
iput p5, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aar:F
iput p6, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aas:I
iput p7, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aat:I
iput p8, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aau:F
iput-boolean p9, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aav:Z
return-void
.end method
.method public center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aap:Lcom/google/android/gms/maps/model/LatLng;
return-object p0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;
.registers 2
iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aat:I
return-object p0
.end method
.method public getCenter()Lcom/google/android/gms/maps/model/LatLng;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aap:Lcom/google/android/gms/maps/model/LatLng;
return-object v0
.end method
.method public getFillColor()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aat:I
return v0
.end method
.method public getRadius()D
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aaq:D
return-wide v0
.end method
.method public getStrokeColor()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aas:I
return v0
.end method
.method public getStrokeWidth()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aar:F
return v0
.end method
.method  getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->xJ:I
return v0
.end method
.method public getZIndex()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aau:F
return v0
.end method
.method public isVisible()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aav:Z
return v0
.end method
.method public radius(D)Lcom/google/android/gms/maps/model/CircleOptions;
.registers 3
iput-wide p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aaq:D
return-object p0
.end method
.method public strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;
.registers 2
iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aas:I
return-object p0
.end method
.method public strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;
.registers 2
iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aar:F
return-object p0
.end method
.method public visible(Z)Lcom/google/android/gms/maps/model/CircleOptions;
.registers 2
iput-boolean p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aav:Z
return-object p0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-static {}, Lcom/google/android/gms/maps/internal/v;->jG()Z
move-result v0
if-eqz v0, :cond_a
invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/b;->a(Lcom/google/android/gms/maps/model/CircleOptions;Landroid/os/Parcel;I)V
:goto_9
return-void
:cond_a
invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/CircleOptionsCreator;->a(Lcom/google/android/gms/maps/model/CircleOptions;Landroid/os/Parcel;I)V
goto :goto_9
.end method
.method public zIndex(F)Lcom/google/android/gms/maps/model/CircleOptions;
.registers 2
iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->aau:F
return-object p0
.end method