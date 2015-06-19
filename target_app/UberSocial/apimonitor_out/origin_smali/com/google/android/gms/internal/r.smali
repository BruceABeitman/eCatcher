.class public final Lcom/google/android/gms/internal/r;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/HashSet;

.field private final b:Ljava/util/HashMap;

.field private final c:Ljava/util/HashSet;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Landroid/location/Location;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/r;->a:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/r;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/r;->c:Ljava/util/HashSet;

    iput v1, p0, Lcom/google/android/gms/internal/r;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/r;->h:Z

    iput v1, p0, Lcom/google/android/gms/internal/r;->j:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/r;)Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->d:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/r;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/r;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/r;->f:I

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/r;)Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->a:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/r;)Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->g:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/r;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/r;->h:Z

    return v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/r;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/r;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/r;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/r;->j:I

    return v0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/r;)Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->c:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/r;->f:I

    return-void
.end method

.method public a(Landroid/location/Location;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/r;->g:Landroid/location/Location;

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/b/a;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/r;->d:Ljava/util/Date;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/r;->h:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Z)V
    .registers 3

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput v0, p0, Lcom/google/android/gms/internal/r;->j:I

    return-void

    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/r;->e:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/r;->i:Ljava/lang/String;

    return-void
.end method
