.class public final Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;
.super Ljava/lang/Object;
.field private final kE:Lcom/google/android/gms/internal/al;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/internal/al;
invoke-direct {v0, p1}, Lcom/google/android/gms/internal/al;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->kE:Lcom/google/android/gms/internal/al;
return-void
.end method
.method public final getAdListener()Lcom/google/android/gms/ads/AdListener;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->kE:Lcom/google/android/gms/internal/al;
invoke-virtual {v0}, Lcom/google/android/gms/internal/al;->getAdListener()Lcom/google/android/gms/ads/AdListener;
move-result-object v0
return-object v0
.end method
.method public final getAdUnitId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->kE:Lcom/google/android/gms/internal/al;
invoke-virtual {v0}, Lcom/google/android/gms/internal/al;->getAdUnitId()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->kE:Lcom/google/android/gms/internal/al;
invoke-virtual {v0}, Lcom/google/android/gms/internal/al;->getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
move-result-object v0
return-object v0
.end method
.method public final isLoaded()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->kE:Lcom/google/android/gms/internal/al;
invoke-virtual {v0}, Lcom/google/android/gms/internal/al;->isLoaded()Z
move-result v0
return v0
.end method
.method public final loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->kE:Lcom/google/android/gms/internal/al;
invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->N()Lcom/google/android/gms/internal/aj;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/al;->a(Lcom/google/android/gms/internal/aj;)V
return-void
.end method
.method public final setAdListener(Lcom/google/android/gms/ads/AdListener;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->kE:Lcom/google/android/gms/internal/al;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/al;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V
return-void
.end method
.method public final setAdUnitId(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->kE:Lcom/google/android/gms/internal/al;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/al;->setAdUnitId(Ljava/lang/String;)V
return-void
.end method
.method public final setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->kE:Lcom/google/android/gms/internal/al;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/al;->setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
return-void
.end method
.method public final show()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->kE:Lcom/google/android/gms/internal/al;
invoke-virtual {v0}, Lcom/google/android/gms/internal/al;->show()V
return-void
.end method