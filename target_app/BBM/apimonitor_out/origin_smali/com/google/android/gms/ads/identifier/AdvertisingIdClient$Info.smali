.class public final Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
.super Ljava/lang/Object;


# instance fields
.field private final kF:Ljava/lang/String;

.field private final kG:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->kF:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->kG:Z

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->kF:Ljava/lang/String;

    return-object v0
.end method

.method public final isLimitAdTrackingEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->kG:Z

    return v0
.end method
