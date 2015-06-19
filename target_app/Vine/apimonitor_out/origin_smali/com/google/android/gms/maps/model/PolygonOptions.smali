.class public final Lcom/google/android/gms/maps/model/PolygonOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/PolygonOptionsCreator;


# instance fields
.field private final aaU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private final aaV:Ljava/util/List;
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

.field private aaW:Z

.field private aar:F

.field private aas:I

.field private aat:I

.field private aau:F

.field private aav:Z

.field private final xJ:I


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

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aar:F

    const/high16 v0, -0x100

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aas:I

    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aat:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aau:F

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aav:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaW:Z

    iput v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->xJ:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaU:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaV:Ljava/util/List;

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

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aar:F

    const/high16 v0, -0x100

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aas:I

    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aat:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aau:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aav:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaW:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaU:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaV:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aar:F

    iput p5, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aas:I

    iput p6, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aat:I

    iput p7, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aau:F

    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aav:Z

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaW:Z

    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaU:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaU:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;
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

    iget-object v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaU:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_16
    return-object p0
.end method

.method public addHole(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;
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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaV:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aat:I

    return-object p0
.end method

.method public geodesic(Z)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaW:Z

    return-object p0
.end method

.method public getFillColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aat:I

    return v0
.end method

.method public getHoles()Ljava/util/List;
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

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaV:Ljava/util/List;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
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

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaU:Ljava/util/List;

    return-object v0
.end method

.method public getStrokeColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aas:I

    return v0
.end method

.method public getStrokeWidth()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aar:F

    return v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->xJ:I

    return v0
.end method

.method public getZIndex()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aau:F

    return v0
.end method

.method public isGeodesic()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaW:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aav:Z

    return v0
.end method

.method jK()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aaV:Ljava/util/List;

    return-object v0
.end method

.method public strokeColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aas:I

    return-object p0
.end method

.method public strokeWidth(F)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aar:F

    return-object p0
.end method

.method public visible(Z)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aav:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/maps/internal/v;->jG()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/g;->a(Lcom/google/android/gms/maps/model/PolygonOptions;Landroid/os/Parcel;I)V

    :goto_9
    return-void

    :cond_a
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/PolygonOptionsCreator;->a(Lcom/google/android/gms/maps/model/PolygonOptions;Landroid/os/Parcel;I)V

    goto :goto_9
.end method

.method public zIndex(F)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->aau:F

    return-object p0
.end method
