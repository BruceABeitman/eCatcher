.class public final Lcom/google/android/gms/internal/aj$a;
.super Ljava/lang/Object;


# instance fields
.field private d:Ljava/util/Date;

.field private lA:I

.field private final lC:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final lD:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation
.end field

.field private final lE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lt:Ljava/lang/String;

.field private lu:I

.field private lv:Landroid/location/Location;

.field private lw:Z

.field private ly:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aj$a;->lC:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aj$a;->lD:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aj$a;->lE:Ljava/util/HashSet;

    iput v1, p0, Lcom/google/android/gms/internal/aj$a;->lu:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aj$a;->lw:Z

    iput v1, p0, Lcom/google/android/gms/internal/aj$a;->lA:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/aj$a;)Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aj$a;->d:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/aj$a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aj$a;->lt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/aj$a;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/aj$a;->lu:I

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/aj$a;)Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aj$a;->lC:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/aj$a;)Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aj$a;->lv:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/aj$a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/aj$a;->lw:Z

    return v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/aj$a;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aj$a;->lD:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/aj$a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aj$a;->ly:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/aj$a;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/aj$a;->lA:I

    return v0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/aj$a;)Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aj$a;->lE:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/aj$a;->lv:Landroid/location/Location;

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/aj$a;->lD:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/Date;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/aj$a;->d:Ljava/util/Date;

    return-void
.end method

.method public final d(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/aj$a;->lu:I

    return-void
.end method

.method public final d(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/aj$a;->lw:Z

    return-void
.end method

.method public final e(Z)V
    .registers 3

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput v0, p0, Lcom/google/android/gms/internal/aj$a;->lA:I

    return-void

    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final g(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/aj$a;->lC:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/aj$a;->lE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/aj$a;->lt:Ljava/lang/String;

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/aj$a;->ly:Ljava/lang/String;

    return-void
.end method
