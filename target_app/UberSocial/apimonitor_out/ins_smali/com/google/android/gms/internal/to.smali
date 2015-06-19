.class public final Lcom/google/android/gms/internal/to;
.super Lcom/google/android/gms/internal/f;
.field private final a:Lcom/google/android/gms/ads/a;
.method public constructor <init>(Lcom/google/android/gms/ads/a;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/f;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/to;->a:Lcom/google/android/gms/ads/a;
return-void
.end method
.method public a()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/to;->a:Lcom/google/android/gms/ads/a;
invoke-virtual {v0}, Lcom/google/android/gms/ads/a;->onAdClosed()V
return-void
.end method
.method public a(I)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/to;->a:Lcom/google/android/gms/ads/a;
invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/a;->onAdFailedToLoad(I)V
return-void
.end method
.method public b()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/to;->a:Lcom/google/android/gms/ads/a;
invoke-virtual {v0}, Lcom/google/android/gms/ads/a;->onAdLeftApplication()V
return-void
.end method
.method public c()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/to;->a:Lcom/google/android/gms/ads/a;
invoke-virtual {v0}, Lcom/google/android/gms/ads/a;->onAdLoaded()V
return-void
.end method
.method public d()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/to;->a:Lcom/google/android/gms/ads/a;
invoke-virtual {v0}, Lcom/google/android/gms/ads/a;->onAdOpened()V
return-void
.end method