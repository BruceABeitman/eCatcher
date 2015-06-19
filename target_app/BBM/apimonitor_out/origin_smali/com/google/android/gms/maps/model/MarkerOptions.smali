.class public final Lcom/google/android/gms/maps/model/MarkerOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/MarkerOptionsCreator;


# instance fields
.field private CX:Ljava/lang/String;

.field private PQ:Z

.field private PY:F

.field private PZ:F

.field private Qf:Lcom/google/android/gms/maps/model/LatLng;

.field private Qg:Ljava/lang/String;

.field private Qh:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private Qi:Z

.field private Qj:Z

.field private Qk:F

.field private Ql:F

.field private Qm:F

.field private mAlpha:F

.field private final wj:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptionsCreator;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptionsCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/MarkerOptions;->CREATOR:Lcom/google/android/gms/maps/model/MarkerOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x1

    const/high16 v3, 0x3f80

    const/high16 v2, 0x3f00

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->PY:F

    iput v3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->PZ:F

    iput-boolean v4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->PQ:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qj:Z

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qk:F

    iput v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ql:F

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qm:F

    iput v3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    iput v4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->wj:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;FFZZZFFFF)V
    .registers 18

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, 0x3f00

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->PY:F

    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->PZ:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->PQ:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qj:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qk:F

    const/high16 v1, 0x3f00

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ql:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qm:F

    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->wj:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qf:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CX:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qg:Ljava/lang/String;

    if-nez p5, :cond_43

    const/4 v1, 0x0

    :goto_2a
    iput-object v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qh:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    iput p6, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->PY:F

    iput p7, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->PZ:F

    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qi:Z

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->PQ:Z

    iput-boolean p10, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qj:Z

    iput p11, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qk:F

    iput p12, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ql:F

    move/from16 v0, p13

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qm:F

    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    return-void

    :cond_43
    new-instance v1, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-static {p5}, Lcom/google/android/gms/dynamic/b$a;->G(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/b;)V

    goto :goto_2a
.end method


# virtual methods
.method public final alpha(F)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    return-object p0
.end method

.method public final anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 3

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->PY:F

    iput p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->PZ:F

    return-object p0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qi:Z

    return-object p0
.end method

.method public final flat(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qj:Z

    return-object p0
.end method

.method public final getAlpha()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    return v0
.end method

.method public final getAnchorU()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->PY:F

    return v0
.end method

.method public final getAnchorV()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->PZ:F

    return v0
.end method

.method public final getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qh:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public final getInfoWindowAnchorU()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ql:F

    return v0
.end method

.method public final getInfoWindowAnchorV()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qm:F

    return v0
.end method

.method public final getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qf:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final getRotation()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qk:F

    return v0
.end method

.method public final getSnippet()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qg:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CX:Ljava/lang/String;

    return-object v0
.end method

.method final getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->wj:I

    return v0
.end method

.method final hf()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qh:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qh:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptor;->gK()Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_5
.end method

.method public final icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qh:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object p0
.end method

.method public final infoWindowAnchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 3

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ql:F

    iput p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qm:F

    return-object p0
.end method

.method public final isDraggable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qi:Z

    return v0
.end method

.method public final isFlat()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qj:Z

    return v0
.end method

.method public final isVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->PQ:Z

    return v0
.end method

.method public final position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qf:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public final rotation(F)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qk:F

    return-object p0
.end method

.method public final snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Qg:Ljava/lang/String;

    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CX:Ljava/lang/String;

    return-object p0
.end method

.method public final visible(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->PQ:Z

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/maps/internal/r;->hc()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/f;->a(Lcom/google/android/gms/maps/model/MarkerOptions;Landroid/os/Parcel;I)V

    :goto_9
    return-void

    :cond_a
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/MarkerOptionsCreator;->a(Lcom/google/android/gms/maps/model/MarkerOptions;Landroid/os/Parcel;I)V

    goto :goto_9
.end method
