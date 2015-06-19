.class public final Lcom/google/android/gms/internal/x;
.super Lcom/google/android/gms/internal/af$a;
.field private final lc:Lcom/google/android/gms/ads/AdListener;
.method public constructor <init>(Lcom/google/android/gms/ads/AdListener;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/af$a;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/x;->lc:Lcom/google/android/gms/ads/AdListener;
return-void
.end method
.method public final onAdClosed()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/x;->lc:Lcom/google/android/gms/ads/AdListener;
invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V
return-void
.end method
.method public final onAdFailedToLoad(I)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/x;->lc:Lcom/google/android/gms/ads/AdListener;
invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V
return-void
.end method
.method public final onAdLeftApplication()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/x;->lc:Lcom/google/android/gms/ads/AdListener;
invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V
return-void
.end method
.method public final onAdLoaded()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/x;->lc:Lcom/google/android/gms/ads/AdListener;
invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V
return-void
.end method
.method public final onAdOpened()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/x;->lc:Lcom/google/android/gms/ads/AdListener;
invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V
return-void
.end method