.class public final Lcom/google/android/gms/maps/model/CircleOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/f;


# instance fields
.field private final a:I

.field private b:Lcom/google/android/gms/maps/model/LatLng;

.field private c:D

.field private d:F

.field private e:I

.field private f:I

.field private g:F

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/maps/model/f;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/CircleOptions;->CREATOR:Lcom/google/android/gms/maps/model/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->b:Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->c:D

    const/high16 v0, 0x4120

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->d:F

    const/high16 v0, -0x100

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->g:F

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->h:Z

    iput v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->a:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;DFIIFZ)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->b:Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->c:D

    const/high16 v0, 0x4120

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->d:F

    const/high16 v0, -0x100

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->g:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->h:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->a:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->b:Lcom/google/android/gms/maps/model/LatLng;

    iput-wide p3, p0, Lcom/google/android/gms/maps/model/CircleOptions;->c:D

    iput p5, p0, Lcom/google/android/gms/maps/model/CircleOptions;->d:F

    iput p6, p0, Lcom/google/android/gms/maps/model/CircleOptions;->e:I

    iput p7, p0, Lcom/google/android/gms/maps/model/CircleOptions;->f:I

    iput p8, p0, Lcom/google/android/gms/maps/model/CircleOptions;->g:F

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/CircleOptions;->h:Z

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->a:I

    return v0
.end method

.method public a(D)Lcom/google/android/gms/maps/model/CircleOptions;
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->c:D

    return-object p0
.end method

.method public a(F)Lcom/google/android/gms/maps/model/CircleOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->d:F

    return-object p0
.end method

.method public a(I)Lcom/google/android/gms/maps/model/CircleOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->e:I

    return-object p0
.end method

.method public a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->b:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public a(Z)Lcom/google/android/gms/maps/model/CircleOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->h:Z

    return-object p0
.end method

.method public b(F)Lcom/google/android/gms/maps/model/CircleOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->g:F

    return-object p0
.end method

.method public b(I)Lcom/google/android/gms/maps/model/CircleOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->f:I

    return-object p0
.end method

.method public b()Lcom/google/android/gms/maps/model/LatLng;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->b:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public c()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->c:D

    return-wide v0
.end method

.method public d()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->d:F

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->e:I

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->f:I

    return v0
.end method

.method public g()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->g:F

    return v0
.end method

.method public h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->h:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/maps/a/bo;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/z;->a(Lcom/google/android/gms/maps/model/CircleOptions;Landroid/os/Parcel;I)V

    :goto_9
    return-void

    :cond_a
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/f;->a(Lcom/google/android/gms/maps/model/CircleOptions;Landroid/os/Parcel;I)V

    goto :goto_9
.end method
