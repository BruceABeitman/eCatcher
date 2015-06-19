.class public final Lcom/google/android/gms/maps/model/PolylineOptions;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/maps/model/PolylineOptionsCreator;
.field private PP:F
.field private PQ:Z
.field private PU:F
.field private final Qo:Ljava/util/List;
.field private Qq:Z
.field private final wj:I
.field private yX:I
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
iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->PU:F
const/high16 v0, -0x100
iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->yX:I
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->PP:F
iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->PQ:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Qq:Z
iput v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->wj:I
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Qo:Ljava/util/List;
return-void
.end method
.method constructor <init>(ILjava/util/List;FIFZZ)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/high16 v0, 0x4120
iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->PU:F
const/high16 v0, -0x100
iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->yX:I
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->PP:F
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->PQ:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Qq:Z
iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->wj:I
iput-object p2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Qo:Ljava/util/List;
iput p3, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->PU:F
iput p4, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->yX:I
iput p5, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->PP:F
iput-boolean p6, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->PQ:Z
iput-boolean p7, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Qq:Z
return-void
.end method
.method public final add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Qo:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public final varargs add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Qo:Ljava/util/List;
invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
return-object p0
.end method
.method public final addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;
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
iget-object v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Qo:Ljava/util/List;
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_4
:cond_16
return-object p0
.end method
.method public final color(I)Lcom/google/android/gms/maps/model/PolylineOptions;
.registers 2
iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->yX:I
return-object p0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final geodesic(Z)Lcom/google/android/gms/maps/model/PolylineOptions;
.registers 2
iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Qq:Z
return-object p0
.end method
.method public final getColor()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->yX:I
return v0
.end method
.method public final getPoints()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Qo:Ljava/util/List;
return-object v0
.end method
.method final getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->wj:I
return v0
.end method
.method public final getWidth()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->PU:F
return v0
.end method
.method public final getZIndex()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->PP:F
return v0
.end method
.method public final isGeodesic()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Qq:Z
return v0
.end method
.method public final isVisible()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->PQ:Z
return v0
.end method
.method public final visible(Z)Lcom/google/android/gms/maps/model/PolylineOptions;
.registers 2
iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->PQ:Z
return-object p0
.end method
.method public final width(F)Lcom/google/android/gms/maps/model/PolylineOptions;
.registers 2
iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->PU:F
return-object p0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-static {}, Lcom/google/android/gms/maps/internal/r;->hc()Z
move-result v0
if-eqz v0, :cond_a
invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/h;->a(Lcom/google/android/gms/maps/model/PolylineOptions;Landroid/os/Parcel;I)V
:goto_9
return-void
:cond_a
invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/PolylineOptionsCreator;->a(Lcom/google/android/gms/maps/model/PolylineOptions;Landroid/os/Parcel;I)V
goto :goto_9
.end method
.method public final zIndex(F)Lcom/google/android/gms/maps/model/PolylineOptions;
.registers 2
iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->PP:F
return-object p0
.end method