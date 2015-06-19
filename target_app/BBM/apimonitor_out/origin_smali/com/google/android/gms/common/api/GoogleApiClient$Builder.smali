.class public final Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private vi:Ljava/lang/String;

.field private final zn:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zo:I

.field private zp:Landroid/view/View;

.field private zq:Ljava/lang/String;

.field private final zr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;",
            ">;"
        }
    .end annotation
.end field

.field private zs:Landroid/os/Looper;

.field private final zt:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final zu:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zn:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zr:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zt:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zu:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zs:Landroid/os/Looper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zq:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Must provide a connected listener"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zt:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "Must provide a connection failed listener"

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zu:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zr:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->dq()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_f
    if-ge v1, v3, :cond_24

    iget-object v4, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zn:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Scope;->dD()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_24
    return-object p0
.end method

.method public final addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zt:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zu:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zn:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Scope;->dD()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final build()Lcom/google/android/gms/common/api/GoogleApiClient;
    .registers 8

    new-instance v0, Lcom/google/android/gms/common/api/b;

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zs:Landroid/os/Looper;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->dx()Lcom/google/android/gms/internal/ee;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zr:Ljava/util/Map;

    iget-object v5, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zt:Ljava/util/Set;

    iget-object v6, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zu:Ljava/util/Set;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/api/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public final dx()Lcom/google/android/gms/internal/ee;
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/ee;

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->vi:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zn:Ljava/util/Set;

    iget v3, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zo:I

    iget-object v4, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zp:Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zq:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ee;-><init>(Ljava/lang/String;Ljava/util/Collection;ILandroid/view/View;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->vi:Ljava/lang/String;

    return-object p0
.end method

.method public final setGravityForPopups(I)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zo:I

    return-object p0
.end method

.method public final setHandler(Landroid/os/Handler;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 3

    const-string v0, "Handler must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zs:Landroid/os/Looper;

    return-object p0
.end method

.method public final setViewForPopups(Landroid/view/View;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zp:Landroid/view/View;

    return-object p0
.end method

.method public final useDefaultAccount()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 2

    const-string v0, "<<default account>>"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    return-object v0
.end method
