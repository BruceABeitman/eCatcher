.class public final Lcom/google/android/gms/maps/model/TileOverlayOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/TileOverlayOptionsCreator;


# instance fields
.field private PP:F

.field private PQ:Z

.field private Qt:Lcom/google/android/gms/maps/model/internal/g;

.field private Qu:Lcom/google/android/gms/maps/model/TileProvider;

.field private Qv:Z

.field private final wj:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/maps/model/TileOverlayOptionsCreator;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/TileOverlayOptionsCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->CREATOR:Lcom/google/android/gms/maps/model/TileOverlayOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->PQ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Qv:Z

    iput v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->wj:I

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;ZFZ)V
    .registers 7

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->PQ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Qv:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->wj:I

    invoke-static {p2}, Lcom/google/android/gms/maps/model/internal/g$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Qt:Lcom/google/android/gms/maps/model/internal/g;

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Qt:Lcom/google/android/gms/maps/model/internal/g;

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    :goto_15
    iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Qu:Lcom/google/android/gms/maps/model/TileProvider;

    iput-boolean p3, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->PQ:Z

    iput p4, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->PP:F

    iput-boolean p5, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Qv:Z

    return-void

    :cond_1e
    new-instance v0, Lcom/google/android/gms/maps/model/TileOverlayOptions$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions$1;-><init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V

    goto :goto_15
.end method

.method static synthetic a(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/internal/g;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Qt:Lcom/google/android/gms/maps/model/internal/g;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final fadeIn(Z)Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Qv:Z

    return-object p0
.end method

.method public final getFadeIn()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Qv:Z

    return v0
.end method

.method public final getTileProvider()Lcom/google/android/gms/maps/model/TileProvider;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Qu:Lcom/google/android/gms/maps/model/TileProvider;

    return-object v0
.end method

.method final getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->wj:I

    return v0
.end method

.method public final getZIndex()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->PP:F

    return v0
.end method

.method final hh()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Qt:Lcom/google/android/gms/maps/model/internal/g;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/g;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final isVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->PQ:Z

    return v0
.end method

.method public final tileProvider(Lcom/google/android/gms/maps/model/TileProvider;)Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Qu:Lcom/google/android/gms/maps/model/TileProvider;

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Qu:Lcom/google/android/gms/maps/model/TileProvider;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_7
    iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Qt:Lcom/google/android/gms/maps/model/internal/g;

    return-object p0

    :cond_a
    new-instance v0, Lcom/google/android/gms/maps/model/TileOverlayOptions$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/maps/model/TileOverlayOptions$2;-><init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;Lcom/google/android/gms/maps/model/TileProvider;)V

    goto :goto_7
.end method

.method public final visible(Z)Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->PQ:Z

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/maps/internal/r;->hc()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/j;->a(Lcom/google/android/gms/maps/model/TileOverlayOptions;Landroid/os/Parcel;I)V

    :goto_9
    return-void

    :cond_a
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/TileOverlayOptionsCreator;->a(Lcom/google/android/gms/maps/model/TileOverlayOptions;Landroid/os/Parcel;I)V

    goto :goto_9
.end method

.method public final zIndex(F)Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->PP:F

    return-object p0
.end method
