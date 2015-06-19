.class public final Lcom/google/android/gms/internal/ac;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/Date;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/location/Location;

.field private final g:Z

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/b/b;",
            ">;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;

.field private final j:Ljava/lang/String;

.field private final k:Lcom/google/android/gms/ads/search/a;

.field private final l:I

.field private final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "emulator"

    invoke-static {v0}, Lcom/google/android/gms/internal/eo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ac;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ad;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ac;-><init>(Lcom/google/android/gms/internal/ad;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ad;B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ad;->a(Lcom/google/android/gms/internal/ad;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->b:Ljava/util/Date;

    invoke-static {p1}, Lcom/google/android/gms/internal/ad;->b(Lcom/google/android/gms/internal/ad;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ad;->c(Lcom/google/android/gms/internal/ad;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ac;->d:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ad;->d(Lcom/google/android/gms/internal/ad;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->e:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/ad;->e(Lcom/google/android/gms/internal/ad;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->f:Landroid/location/Location;

    invoke-static {p1}, Lcom/google/android/gms/internal/ad;->f(Lcom/google/android/gms/internal/ad;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ac;->g:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ad;->g(Lcom/google/android/gms/internal/ad;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->h:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/internal/ad;->h(Lcom/google/android/gms/internal/ad;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->i:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/internal/ad;->i(Lcom/google/android/gms/internal/ad;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->k:Lcom/google/android/gms/ads/search/a;

    invoke-static {p1}, Lcom/google/android/gms/internal/ad;->j(Lcom/google/android/gms/internal/ad;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ac;->l:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ad;->k(Lcom/google/android/gms/internal/ad;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->m:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/b/b;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public final a()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->b:Ljava/util/Date;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->m:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/eo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ac;->d:I

    return v0
.end method

.method public final d()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->e:Ljava/util/Set;

    return-object v0
.end method

.method public final e()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->f:Landroid/location/Location;

    return-object v0
.end method

.method public final f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ac;->g:Z

    return v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/ads/search/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->k:Lcom/google/android/gms/ads/search/a;

    return-object v0
.end method

.method public final i()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->i:Ljava/util/Map;

    return-object v0
.end method

.method public final j()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/b/b;",
            ">;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->h:Ljava/util/Map;

    return-object v0
.end method

.method public final k()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ac;->l:I

    return v0
.end method
