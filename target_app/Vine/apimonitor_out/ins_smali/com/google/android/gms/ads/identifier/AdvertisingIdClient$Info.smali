.class public final Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
.super Ljava/lang/Object;
.field private final kx:Ljava/lang/String;
.field private final ky:Z
.method public constructor <init>(Ljava/lang/String;Z)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->kx:Ljava/lang/String;
iput-boolean p2, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->ky:Z
return-void
.end method
.method public getId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->kx:Ljava/lang/String;
return-object v0
.end method
.method public isLimitAdTrackingEnabled()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->ky:Z
return v0
.end method