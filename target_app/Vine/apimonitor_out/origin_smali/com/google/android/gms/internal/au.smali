.class public final Lcom/google/android/gms/internal/au;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/au$a;
    }
.end annotation


# static fields
.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String;


# instance fields
.field private final d:Ljava/util/Date;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/location/Location;

.field private final mi:Ljava/lang/String;

.field private final mj:I

.field private final mk:Z

.field private final ml:Landroid/os/Bundle;

.field private final mm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
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

.field private final mn:Ljava/lang/String;

.field private final mo:Lcom/google/android/gms/ads/search/SearchAdRequest;

.field private final mp:I

.field private final mq:Ljava/util/Set;
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

    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/au;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/au$a;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/au;-><init>(Lcom/google/android/gms/internal/au$a;Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/au$a;Lcom/google/android/gms/ads/search/SearchAdRequest;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/au$a;->a(Lcom/google/android/gms/internal/au$a;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/au;->d:Ljava/util/Date;

    invoke-static {p1}, Lcom/google/android/gms/internal/au$a;->b(Lcom/google/android/gms/internal/au$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/au;->mi:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/au$a;->c(Lcom/google/android/gms/internal/au$a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/au;->mj:I

    invoke-static {p1}, Lcom/google/android/gms/internal/au$a;->d(Lcom/google/android/gms/internal/au$a;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/au;->f:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/au$a;->e(Lcom/google/android/gms/internal/au$a;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/au;->h:Landroid/location/Location;

    invoke-static {p1}, Lcom/google/android/gms/internal/au$a;->f(Lcom/google/android/gms/internal/au$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/au;->mk:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/au$a;->g(Lcom/google/android/gms/internal/au$a;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/au;->ml:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/au$a;->h(Lcom/google/android/gms/internal/au$a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/au;->mm:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/internal/au$a;->i(Lcom/google/android/gms/internal/au$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/au;->mn:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/au;->mo:Lcom/google/android/gms/ads/search/SearchAdRequest;

    invoke-static {p1}, Lcom/google/android/gms/internal/au$a;->j(Lcom/google/android/gms/internal/au$a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/au;->mp:I

    invoke-static {p1}, Lcom/google/android/gms/internal/au$a;->k(Lcom/google/android/gms/internal/au$a;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/au;->mq:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public aC()Lcom/google/android/gms/ads/search/SearchAdRequest;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/au;->mo:Lcom/google/android/gms/ads/search/SearchAdRequest;

    return-object v0
.end method

.method public aD()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/au;->mm:Ljava/util/Map;

    return-object v0
.end method

.method public aE()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/au;->ml:Landroid/os/Bundle;

    return-object v0
.end method

.method public aF()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/au;->mp:I

    return v0
.end method

.method public getBirthday()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/au;->d:Ljava/util/Date;

    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/au;->mi:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/au;->ml:Landroid/os/Bundle;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getGender()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/au;->mj:I

    return v0
.end method

.method public getKeywords()Ljava/util/Set;
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

    iget-object v0, p0, Lcom/google/android/gms/internal/au;->f:Ljava/util/Set;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/au;->h:Landroid/location/Location;

    return-object v0
.end method

.method public getManualImpressionsEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/au;->mk:Z

    return v0
.end method

.method public getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/au;->mm:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/mediation/NetworkExtras;

    return-object v0
.end method

.method public getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/au;->ml:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getPublisherProvidedId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/au;->mn:Ljava/lang/String;

    return-object v0
.end method

.method public isTestDevice(Landroid/content/Context;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/au;->mq:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/eu;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
