.class public final Lcom/google/android/gms/maps/model/PolygonOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/PolygonOptionsCreator;


# instance fields
.field private PM:F

.field private PN:I

.field private PO:I

.field private PP:F

.field private PQ:Z

.field private final Qo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private final Qp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation
.end field

.field private Qq:Z

.field private final wj:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/maps/model/PolygonOptionsCreator;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolygonOptionsCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/PolygonOptions;->CREATOR:Lcom/google/android/gms/maps/model/PolygonOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x4120

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->PM:F

    const/high16 v0, -0x100

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->PN:I

    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->PO:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->PP:F

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->PQ:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Qq:Z

    iput v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->wj:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Qo:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Qp:Ljava/util/List;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/util/List;FIIFZZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;",
            "Ljava/util/List;",
            "FIIFZZ)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x4120

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->PM:F

    const/high16 v0, -0x100

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->PN:I

    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->PO:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->PP:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->PQ:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Qq:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->wj:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Qo:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Qp:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->PM:F

    iput p5, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->PN:I

    iput p6, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->PO:I

    iput p7, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->PP:F

    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->PQ:Z

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Qq:Z

    return-void
.end method


# virtual methods
.method public final add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Qo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final varargs add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Qo:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Lcom/google/android/gms/maps/model/PolygonOptions;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Qo:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_16
    return-object p0
.end method

.method public final addHole(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Lcom/google/android/gms/maps/model/PolygonOptions;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Qp:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->PO:I

    return-object p0
.end method

.method public final geodesic(Z)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Qq:Z

    return-object p0
.end method

.method public final getFillColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->PO:I

    return v0
.end method

.method public final getHoles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Qp:Ljava/util/List;

    return-object v0
.end method

.method public final getPoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Qo:Ljava/util/List;

    return-object v0
.end method

.method public final getStrokeColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->PN:I

    return v0
.end method

.method public final getStrokeWidth()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->PM:F

    return v0
.end method

.method final getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->wj:I

    return v0
.end method

.method public final getZIndex()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->PP:F

    return v0
.end method

.method final hg()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Qp:Ljava/util/List;

    return-object v0
.end method

.method public final isGeodesic()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Qq:Z

    return v0
.end method

.method public final isVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->PQ:Z

    return v0
.end method

.method public final strokeColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->PN:I

    return-object p0
.end method

.method public final strokeWidth(F)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->PM:F

    return-object p0
.end method

.method public final visible(Z)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->PQ:Z

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/maps/internal/r;->hc()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/g;->a(Lcom/google/android/gms/maps/model/PolygonOptions;Landroid/os/Parcel;I)V

    :goto_9
    return-void

    :cond_a
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/PolygonOptionsCreator;->a(Lcom/google/android/gms/maps/model/PolygonOptions;Landroid/os/Parcel;I)V

    goto :goto_9
.end method

.method public final zIndex(F)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->PP:F

    return-object p0
.end method
