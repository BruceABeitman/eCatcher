.class public final Lcom/google/android/gms/maps/model/GroundOverlayOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/h; = null

.field public static final a:F = -1.0f


# instance fields
.field private final b:I

.field private c:Lcom/google/android/gms/maps/model/a;

.field private d:Lcom/google/android/gms/maps/model/LatLng;

.field private e:F

.field private f:F

.field private g:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private h:F

.field private i:F

.field private j:Z

.field private k:F

.field private l:F

.field private m:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/maps/model/h;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->CREATOR:Lcom/google/android/gms/maps/model/h;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/high16 v1, 0x3f00

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->j:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->k:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->l:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->m:F

    iput v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->b:I

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/maps/model/LatLng;FFLcom/google/android/gms/maps/model/LatLngBounds;FFZFFF)V
    .registers 15

    const/high16 v1, 0x3f00

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->j:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->k:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->l:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->m:F

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->b:I

    new-instance v0, Lcom/google/android/gms/maps/model/a;

    invoke-static {p2}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/c/d;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->c:Lcom/google/android/gms/maps/model/a;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->d:Lcom/google/android/gms/maps/model/LatLng;

    iput p4, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->e:F

    iput p5, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->f:F

    iput-object p6, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->g:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput p7, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->h:F

    iput p8, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->i:F

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->j:Z

    iput p10, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->k:F

    iput p11, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->l:F

    iput p12, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->m:F

    return-void
.end method

.method private b(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->d:Lcom/google/android/gms/maps/model/LatLng;

    iput p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->e:F

    iput p3, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->f:F

    return-object p0
.end method


# virtual methods
.method a()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->c:Lcom/google/android/gms/maps/model/a;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/a;->a()Lcom/google/android/gms/c/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public a(F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 4

    const/high16 v1, 0x43b4

    rem-float v0, p1, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->h:F

    return-object p0
.end method

.method public a(FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 3

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->l:F

    iput p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->m:F

    return-object p0
.end method

.method public a(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->g:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-nez v0, :cond_25

    move v0, v1

    :goto_7
    const-string v3, "Position has already been set using positionFromBounds"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V

    if-eqz p1, :cond_27

    move v0, v1

    :goto_f
    const-string v3, "Location must be specified"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_29

    :goto_19
    const-string v0, "Width must be non-negative"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V

    const/high16 v0, -0x4080

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->b(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

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

.method public a(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 9

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->g:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-nez v0, :cond_2d

    move v0, v1

    :goto_8
    const-string v3, "Position has already been set using positionFromBounds"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V

    if-eqz p1, :cond_2f

    move v0, v1

    :goto_10
    const-string v3, "Location must be specified"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V

    cmpl-float v0, p2, v4

    if-ltz v0, :cond_31

    move v0, v1

    :goto_1a
    const-string v3, "Width must be non-negative"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V

    cmpl-float v0, p3, v4

    if-ltz v0, :cond_33

    :goto_23
    const-string v0, "Height must be non-negative"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->b(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

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

.method public a(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->d:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v0, :cond_20

    const/4 v0, 0x1

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Position has already been set using position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->d:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->g:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p0

    :cond_20
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->c:Lcom/google/android/gms/maps/model/a;

    return-object p0
.end method

.method public a(Z)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->j:Z

    return-object p0
.end method

.method b()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->b:I

    return v0
.end method

.method public b(F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->i:F

    return-object p0
.end method

.method public c(F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
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

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->k:F

    return-object p0

    :cond_14
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public c()Lcom/google/android/gms/maps/model/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->c:Lcom/google/android/gms/maps/model/a;

    return-object v0
.end method

.method public d()Lcom/google/android/gms/maps/model/LatLng;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->d:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->e:F

    return v0
.end method

.method public f()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->f:F

    return v0
.end method

.method public g()Lcom/google/android/gms/maps/model/LatLngBounds;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->g:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public h()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->h:F

    return v0
.end method

.method public i()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->i:F

    return v0
.end method

.method public j()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->k:F

    return v0
.end method

.method public k()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->l:F

    return v0
.end method

.method public l()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->m:F

    return v0
.end method

.method public m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->j:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/maps/a/bo;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/aa;->a(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V

    :goto_9
    return-void

    :cond_a
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/h;->a(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V

    goto :goto_9
.end method
