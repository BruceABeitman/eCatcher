.class public final Lcom/google/android/gms/ads/AdRequest$Builder;
.super Ljava/lang/Object;


# instance fields
.field private final kB:Lcom/google/android/gms/internal/aj$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/aj$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aj$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/internal/aj$a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;

    return-object v0
.end method


# virtual methods
.method public final addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj$a;->g(Ljava/lang/String;)V

    return-object p0
.end method

.method public final addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj$a;->a(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V

    return-object p0
.end method

.method public final addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj$a;->h(Ljava/lang/String;)V

    return-object p0
.end method

.method public final build()Lcom/google/android/gms/ads/AdRequest;
    .registers 3

    new-instance v0, Lcom/google/android/gms/ads/AdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$Builder;Lcom/google/android/gms/ads/AdRequest$1;)V

    return-object v0
.end method

.method public final setBirthday(Ljava/util/Date;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj$a;->a(Ljava/util/Date;)V

    return-object p0
.end method

.method public final setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj$a;->d(I)V

    return-object p0
.end method

.method public final setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj$a;->a(Landroid/location/Location;)V

    return-object p0
.end method

.method public final tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj$a;->e(Z)V

    return-object p0
.end method
