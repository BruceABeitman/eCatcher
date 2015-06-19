.class public final Lcom/google/android/gms/maps/model/PolylineOptions;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/maps/model/PolylineOptionsCreator;
.field private Dg:I
.field private final aaU:Ljava/util/List;
.field private aaW:Z
.field private aau:F
.field private aav:Z
.field private aaz:F
.field private final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/maps/model/PolylineOptionsCreator;
invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolylineOptionsCreator;-><init>()V
sput-object v0, Lcom/google/android/gms/maps/model/PolylineOptions;->CREATOR:Lcom/google/android/gms/maps/model/PolylineOptionsCreator;
return-void
.end method
.method public constructor <init>()V
.registers 3
const/4 v1, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/high16 v0, 0x4120
iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaz:F
const/high16 v0, -0x100
iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Dg:I
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aau:F
iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aav:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaW:Z
iput v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->xJ:I
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaU:Ljava/util/List;
return-void
.end method
.method constructor <init>(ILjava/util/List;FIFZZ)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/high16 v0, 0x4120
iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaz:F
const/high16 v0, -0x100
iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Dg:I
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aau:F
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aav:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaW:Z
iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaU:Ljava/util/List;
iput p3, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaz:F
iput p4, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Dg:I
iput p5, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aau:F
iput-boolean p6, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aav:Z
iput-boolean p7, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaW:Z
return-void
.end method
.method public add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaU:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public varargs add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaU:Ljava/util/List;
invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
return-object p0
.end method
.method public addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;
.registers 5
invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_4
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/model/LatLng;
iget-object v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaU:Ljava/util/List;
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_4
:cond_16
return-object p0
.end method
.method public color(I)Lcom/google/android/gms/maps/model/PolylineOptions;
.registers 2
iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Dg:I
return-object p0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public geodesic(Z)Lcom/google/android/gms/maps/model/PolylineOptions;
.registers 2
iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaW:Z
return-object p0
.end method
.method public getColor()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Dg:I
return v0
.end method
.method public getPoints()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaU:Ljava/util/List;
return-object v0
.end method
.method  getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->xJ:I
return v0
.end method
.method public getWidth()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaz:F
return v0
.end method
.method public getZIndex()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aau:F
return v0
.end method
.method public isGeodesic()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaW:Z
return v0
.end method
.method public isVisible()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aav:Z
return v0
.end method
.method public visible(Z)Lcom/google/android/gms/maps/model/PolylineOptions;
.registers 2
iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aav:Z
return-object p0
.end method
.method public width(F)Lcom/google/android/gms/maps/model/PolylineOptions;
.registers 2
iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aaz:F
return-object p0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-static {}, Lcom/google/android/gms/maps/internal/v;->jG()Z
move-result v0
if-eqz v0, :cond_a
invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/h;->a(Lcom/google/android/gms/maps/model/PolylineOptions;Landroid/os/Parcel;I)V
:goto_9
return-void
:cond_a
invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/PolylineOptionsCreator;->a(Lcom/google/android/gms/maps/model/PolylineOptions;Landroid/os/Parcel;I)V
goto :goto_9
.end method
.method public zIndex(F)Lcom/google/android/gms/maps/model/PolylineOptions;
.registers 2
iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->aau:F
return-object p0
.end method