.class public final Lcom/google/android/gms/maps/model/PolylineOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/q;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;

.field private c:F

.field private d:I

.field private e:F

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/maps/model/q;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/PolylineOptions;->CREATOR:Lcom/google/android/gms/maps/model/q;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x4120

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->c:F

    const/high16 v0, -0x100

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->e:F

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->g:Z

    iput v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->b:Ljava/util/List;

    return-void
.end method

.method constructor <init>(ILjava/util/List;FIFZZ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x4120

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->c:F

    const/high16 v0, -0x100

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->e:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->g:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->a:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->b:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->c:F

    iput p4, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->d:I

    iput p5, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->e:F

    iput-boolean p6, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->f:Z

    iput-boolean p7, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->g:Z

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->a:I

    return v0
.end method

.method public a(F)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->c:F

    return-object p0
.end method

.method public a(I)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->d:I

    return-object p0
.end method

.method public a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;
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

    iget-object v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_16
    return-object p0
.end method

.method public a(Z)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->f:Z

    return-object p0
.end method

.method public varargs a([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public b(F)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->e:F

    return-object p0
.end method

.method public b(Z)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->g:Z

    return-object p0
.end method

.method public b()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->c:F

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->d:I

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->e:F

    return v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->f:Z

    return v0
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->g:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/maps/a/bo;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/af;->a(Lcom/google/android/gms/maps/model/PolylineOptions;Landroid/os/Parcel;I)V

    :goto_9
    return-void

    :cond_a
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/q;->a(Lcom/google/android/gms/maps/model/PolylineOptions;Landroid/os/Parcel;I)V

    goto :goto_9
.end method
