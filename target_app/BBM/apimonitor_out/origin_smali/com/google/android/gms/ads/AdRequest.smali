.class public final Lcom/google/android/gms/ads/AdRequest;
.super Ljava/lang/Object;


# static fields
.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String; = null

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final ERROR_CODE_NO_FILL:I = 0x3

.field public static final GENDER_FEMALE:I = 0x2

.field public static final GENDER_MALE:I = 0x1

.field public static final GENDER_UNKNOWN:I


# instance fields
.field private final kA:Lcom/google/android/gms/internal/aj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/aj;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/aj;

    invoke-static {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->a(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/internal/aj$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/aj;-><init>(Lcom/google/android/gms/internal/aj$a;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->kA:Lcom/google/android/gms/internal/aj;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/AdRequest$Builder;Lcom/google/android/gms/ads/AdRequest$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method final N()Lcom/google/android/gms/internal/aj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->kA:Lcom/google/android/gms/internal/aj;

    return-object v0
.end method

.method public final getBirthday()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->kA:Lcom/google/android/gms/internal/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aj;->getBirthday()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final getGender()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->kA:Lcom/google/android/gms/internal/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aj;->getGender()I

    move-result v0

    return v0
.end method

.method public final getKeywords()Ljava/util/Set;
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

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->kA:Lcom/google/android/gms/internal/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aj;->getKeywords()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->kA:Lcom/google/android/gms/internal/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aj;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
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

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->kA:Lcom/google/android/gms/internal/aj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj;->getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;

    move-result-object v0

    return-object v0
.end method

.method public final isTestDevice(Landroid/content/Context;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->kA:Lcom/google/android/gms/internal/aj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj;->isTestDevice(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
