.class public final Lcom/google/android/gms/maps/model/GroundOverlayOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator; = null

.field public static final NO_DIMENSION:F = -1.0f


# instance fields
.field private PI:F

.field private PP:F

.field private PQ:Z

.field private PS:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private PT:Lcom/google/android/gms/maps/model/LatLng;

.field private PU:F

.field private PV:F

.field private PW:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private PX:F

.field private PY:F

.field private PZ:F

.field private final wj:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->CREATOR:Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/high16 v1, 0x3f00

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PQ:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PX:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PY:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PZ:F

    iput v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->wj:I

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/maps/model/LatLng;FFLcom/google/android/gms/maps/model/LatLngBounds;FFZFFF)V
    .registers 15

    const/high16 v1, 0x3f00

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PQ:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PX:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PY:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PZ:F

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->wj:I

    new-instance v0, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/b$a;->G(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/b;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PS:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PT:Lcom/google/android/gms/maps/model/LatLng;

    iput p4, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PU:F

    iput p5, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PV:F

    iput-object p6, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PW:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput p7, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PI:F

    iput p8, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PP:F

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PQ:Z

    iput p10, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PX:F

    iput p11, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PY:F

    iput p12, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PZ:F

    return-void
.end method

.method private a(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PT:Lcom/google/android/gms/maps/model/LatLng;

    iput p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PU:F

    iput p3, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PV:F

    return-object p0
.end method


# virtual methods
.method public final anchor(FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 3

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PY:F

    iput p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PZ:F

    return-object p0
.end method

.method public final bearing(F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 4

    const/high16 v1, 0x43b4

    rem-float v0, p1, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PI:F

    return-object p0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getAnchorU()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PY:F

    return v0
.end method

.method public final getAnchorV()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PZ:F

    return v0
.end method

.method public final getBearing()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PI:F

    return v0
.end method

.method public final getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PW:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public final getHeight()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PV:F

    return v0
.end method

.method public final getImage()Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PS:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public final getLocation()Lcom/google/android/gms/maps/model/LatLng;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PT:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final getTransparency()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PX:F

    return v0
.end method

.method final getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->wj:I

    return v0
.end method

.method public final getWidth()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PU:F

    return v0
.end method

.method public final getZIndex()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PP:F

    return v0
.end method

.method final he()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PS:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptor;->gK()Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final image(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PS:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object p0
.end method

.method public final isVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PQ:Z

    return v0
.end method

.method public final position(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PW:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-nez v0, :cond_25

    move v0, v1

    :goto_7
    const-string v3, "Position has already been set using positionFromBounds"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V

    if-eqz p1, :cond_27

    move v0, v1

    :goto_f
    const-string v3, "Location must be specified"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/er;->b(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_29

    :goto_19
    const-string v0, "Width must be non-negative"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/er;->b(ZLjava/lang/Object;)V

    const/high16 v0, -0x4080

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->a(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v0

    return-object v0

    :cond_25
    move v0, v2

    goto :goto_7

    :cond_27
    move v0, v2

    goto :goto_f

    :cond_29
    move v1, v2

    goto :goto_19
.end method

.method public final position(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 9

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PW:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-nez v0, :cond_2d

    move v0, v1

    :goto_8
    const-string v3, "Position has already been set using positionFromBounds"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V

    if-eqz p1, :cond_2f

    move v0, v1

    :goto_10
    const-string v3, "Location must be specified"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/er;->b(ZLjava/lang/Object;)V

    cmpl-float v0, p2, v4

    if-ltz v0, :cond_31

    move v0, v1

    :goto_1a
    const-string v3, "Width must be non-negative"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/er;->b(ZLjava/lang/Object;)V

    cmpl-float v0, p3, v4

    if-ltz v0, :cond_33

    :goto_23
    const-string v0, "Height must be non-negative"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/er;->b(ZLjava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->a(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v0

    return-object v0

    :cond_2d
    move v0, v2

    goto :goto_8

    :cond_2f
    move v0, v2

    goto :goto_10

    :cond_31
    move v0, v2

    goto :goto_1a

    :cond_33
    move v1, v2

    goto :goto_23
.end method

.method public final positionFromBounds(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PT:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Position has already been set using position: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PT:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PW:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final transparency(F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_14

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_14

    const/4 v0, 0x1

    :goto_c
    const-string v1, "Transparency must be in the range [0..1]"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->b(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PX:F

    return-object p0

    :cond_14
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final visible(Z)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PQ:Z

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/maps/internal/r;->hc()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/c;->a(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V

    :goto_9
    return-void

    :cond_a
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator;->a(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V

    goto :goto_9
.end method

.method public final zIndex(F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->PP:F

    return-object p0
.end method
