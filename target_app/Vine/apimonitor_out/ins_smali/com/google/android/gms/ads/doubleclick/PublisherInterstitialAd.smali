.class public final Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;
.super Ljava/lang/Object;
.field private final kw:Lcom/google/android/gms/internal/aw;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/internal/aw;
invoke-direct {v0, p1}, Lcom/google/android/gms/internal/aw;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->kw:Lcom/google/android/gms/internal/aw;
return-void
.end method
.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->kw:Lcom/google/android/gms/internal/aw;
invoke-virtual {v0}, Lcom/google/android/gms/internal/aw;->getAdListener()Lcom/google/android/gms/ads/AdListener;
move-result-object v0
return-object v0
.end method
.method public getAdUnitId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->kw:Lcom/google/android/gms/internal/aw;
invoke-virtual {v0}, Lcom/google/android/gms/internal/aw;->getAdUnitId()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->kw:Lcom/google/android/gms/internal/aw;
invoke-virtual {v0}, Lcom/google/android/gms/internal/aw;->getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
move-result-object v0
return-object v0
.end method
.method public isLoaded()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->kw:Lcom/google/android/gms/internal/aw;
invoke-virtual {v0}, Lcom/google/android/gms/internal/aw;->isLoaded()Z
move-result v0
return v0
.end method
.method public loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->kw:Lcom/google/android/gms/internal/aw;
invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->O()Lcom/google/android/gms/internal/au;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/au;)V
return-void
.end method
.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->kw:Lcom/google/android/gms/internal/aw;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aw;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V
return-void
.end method
.method public setAdUnitId(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->kw:Lcom/google/android/gms/internal/aw;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aw;->setAdUnitId(Ljava/lang/String;)V
return-void
.end method
.method public setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->kw:Lcom/google/android/gms/internal/aw;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aw;->setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
return-void
.end method
.method public show()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->kw:Lcom/google/android/gms/internal/aw;
invoke-virtual {v0}, Lcom/google/android/gms/internal/aw;->show()V
return-void
.end method