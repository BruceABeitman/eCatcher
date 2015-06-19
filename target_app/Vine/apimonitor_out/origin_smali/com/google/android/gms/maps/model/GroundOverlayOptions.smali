.class public final Lcom/google/android/gms/maps/model/GroundOverlayOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator; = null

.field public static final NO_DIMENSION:F = -1.0f


# instance fields
.field private aaA:F

.field private aaB:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private aaC:F

.field private aaD:F

.field private aaE:F

.field private aan:F

.field private aau:F

.field private aav:Z

.field private aax:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private aay:Lcom/google/android/gms/maps/model/LatLng;

.field private aaz:F

.field private final xJ:I


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

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aav:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaC:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaD:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaE:F

    iput v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->xJ:I

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/maps/model/LatLng;FFLcom/google/android/gms/maps/model/LatLngBounds;FFZFFF)V
    .registers 15

    const/high16 v1, 0x3f00

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aav:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaC:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaD:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaE:F

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->xJ:I

    new-instance v0, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/d;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aax:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aay:Lcom/google/android/gms/maps/model/LatLng;

    iput p4, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaz:F

    iput p5, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaA:F

    iput-object p6, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaB:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput p7, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aan:F

    iput p8, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aau:F

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aav:Z

    iput p10, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaC:F

    iput p11, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaD:F

    iput p12, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaE:F

    return-void
.end method

.method private a(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aay:Lcom/google/android/gms/maps/model/LatLng;

    iput p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaz:F

    iput p3, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaA:F

    return-object p0
.end method


# virtual methods
.method public anchor(FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 3

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaD:F

    iput p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaE:F

    return-object p0
.end method

.method public bearing(F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 4

    const/high16 v1, 0x43b4

    rem-float v0, p1, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aan:F

    return-object p0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAnchorU()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaD:F

    return v0
.end method

.method public getAnchorV()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaE:F

    return v0
.end method

.method public getBearing()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aan:F

    return v0
.end method

.method public getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaB:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getHeight()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaA:F

    return v0
.end method

.method public getImage()Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aax:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public getLocation()Lcom/google/android/gms/maps/model/LatLng;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aay:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getTransparency()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaC:F

    return v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->xJ:I

    return v0
.end method

.method public getWidth()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaz:F

    return v0
.end method

.method public getZIndex()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aau:F

    return v0
.end method

.method public image(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aax:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object p0
.end method

.method public isVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aav:Z

    return v0
.end method

.method jI()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aax:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptor;->ji()Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public position(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaB:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-nez v0, :cond_25

    move v0, v1

    :goto_7
    const-string v3, "Position has already been set using positionFromBounds"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V

    if-eqz p1, :cond_27

    move v0, v1

    :goto_f
    const-string v3, "Location must be specified"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hn;->b(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_29

    :goto_19
    const-string v0, "Width must be non-negative"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hn;->b(ZLjava/lang/Object;)V

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

.method public position(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 9

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaB:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-nez v0, :cond_2d

    move v0, v1

    :goto_8
    const-string v3, "Position has already been set using positionFromBounds"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V

    if-eqz p1, :cond_2f

    move v0, v1

    :goto_10
    const-string v3, "Location must be specified"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hn;->b(ZLjava/lang/Object;)V

    cmpl-float v0, p2, v4

    if-ltz v0, :cond_31

    move v0, v1

    :goto_1a
    const-string v3, "Width must be non-negative"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hn;->b(ZLjava/lang/Object;)V

    cmpl-float v0, p3, v4

    if-ltz v0, :cond_33

    :goto_23
    const-string v0, "Height must be non-negative"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hn;->b(ZLjava/lang/Object;)V

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

.method public positionFromBounds(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aay:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v0, :cond_15

    move v0, v1

    :goto_7
    const-string v3, "Position has already been set using position: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aay:Lcom/google/android/gms/maps/model/LatLng;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaB:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p0

    :cond_15
    move v0, v2

    goto :goto_7
.end method

.method public transparency(F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
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

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->b(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aaC:F

    return-object p0

    :cond_14
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public visible(Z)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aav:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/maps/internal/v;->jG()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/c;->a(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V

    :goto_9
    return-void

    :cond_a
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator;->a(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V

    goto :goto_9
.end method

.method public zIndex(F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->aau:F

    return-object p0
.end method
