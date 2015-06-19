.class public final Lcom/google/android/gms/internal/aw;
.super Ljava/lang/Object;
.field private lO:Lcom/google/android/gms/ads/AdListener;
.field private mA:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;
.field private final mContext:Landroid/content/Context;
.field private mf:Lcom/google/android/gms/ads/doubleclick/AppEventListener;
.field private mh:Ljava/lang/String;
.field private final mu:Lcom/google/android/gms/internal/bt;
.field private final mv:Lcom/google/android/gms/internal/al;
.field private mw:Lcom/google/android/gms/internal/ar;
.field private mx:Ljava/lang/String;
.field private mz:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-static {}, Lcom/google/android/gms/internal/al;->aA()Lcom/google/android/gms/internal/al;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/aw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/al;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/al;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/internal/bt;
invoke-direct {v0}, Lcom/google/android/gms/internal/bt;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/aw;->mu:Lcom/google/android/gms/internal/bt;
iput-object p1, p0, Lcom/google/android/gms/internal/aw;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/google/android/gms/internal/aw;->mv:Lcom/google/android/gms/internal/al;
return-void
.end method
.method private k(Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mh:Ljava/lang/String;
if-nez v0, :cond_7
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aw;->l(Ljava/lang/String;)V
:cond_7
iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mContext:Landroid/content/Context;
new-instance v1, Lcom/google/android/gms/internal/am;
invoke-direct {v1}, Lcom/google/android/gms/internal/am;-><init>()V
iget-object v2, p0, Lcom/google/android/gms/internal/aw;->mh:Ljava/lang/String;
iget-object v3, p0, Lcom/google/android/gms/internal/aw;->mu:Lcom/google/android/gms/internal/bt;
invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ai;->a(Landroid/content/Context;Lcom/google/android/gms/internal/am;Ljava/lang/String;Lcom/google/android/gms/internal/bt;)Lcom/google/android/gms/internal/ar;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;
iget-object v0, p0, Lcom/google/android/gms/internal/aw;->lO:Lcom/google/android/gms/ads/AdListener;
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;
new-instance v1, Lcom/google/android/gms/internal/ah;
iget-object v2, p0, Lcom/google/android/gms/internal/aw;->lO:Lcom/google/android/gms/ads/AdListener;
invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ah;-><init>(Lcom/google/android/gms/ads/AdListener;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/aq;)V
:cond_28
iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mf:Lcom/google/android/gms/ads/doubleclick/AppEventListener;
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;
new-instance v1, Lcom/google/android/gms/internal/ao;
iget-object v2, p0, Lcom/google/android/gms/internal/aw;->mf:Lcom/google/android/gms/ads/doubleclick/AppEventListener;
invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ao;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/at;)V
:cond_38
iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mz:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
if-eqz v0, :cond_48
iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;
new-instance v1, Lcom/google/android/gms/internal/di;
iget-object v2, p0, Lcom/google/android/gms/internal/aw;->mz:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
invoke-direct {v1, v2}, Lcom/google/android/gms/internal/di;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/dd;)V
:cond_48
iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mA:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;
if-eqz v0, :cond_5a
iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;
new-instance v1, Lcom/google/android/gms/internal/dm;
iget-object v2, p0, Lcom/google/android/gms/internal/aw;->mA:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;
invoke-direct {v1, v2}, Lcom/google/android/gms/internal/dm;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V
iget-object v2, p0, Lcom/google/android/gms/internal/aw;->mx:Ljava/lang/String;
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/dh;Ljava/lang/String;)V
:cond_5a
return-void
.end method
.method private l(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;
if-nez v0, :cond_23
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "The ad unit ID must be set on InterstitialAd before "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " is called."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_23
return-void
.end method
.method public a(Lcom/google/android/gms/internal/au;)V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;
if-nez v0, :cond_9
const-string v0, "loadAd"
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aw;->k(Ljava/lang/String;)V
:cond_9
iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;
iget-object v1, p0, Lcom/google/android/gms/internal/aw;->mv:Lcom/google/android/gms/internal/al;
iget-object v2, p0, Lcom/google/android/gms/internal/aw;->mContext:Landroid/content/Context;
invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/al;->a(Landroid/content/Context;Lcom/google/android/gms/internal/au;)Lcom/google/android/gms/internal/aj;
move-result-object v1
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/aj;)Z
move-result v0
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mu:Lcom/google/android/gms/internal/bt;
invoke-virtual {p1}, Lcom/google/android/gms/internal/au;->aD()Ljava/util/Map;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bt;->c(Ljava/util/Map;)V
:goto_22
:cond_22
:try_end_22
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_23
return-void
:catch_23
move-exception v0
const-string v1, "Failed to load ad."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_22
.end method
.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/aw;->lO:Lcom/google/android/gms/ads/AdListener;
return-object v0
.end method
.method public getAdUnitId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mh:Ljava/lang/String;
return-object v0
.end method
.method public getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mf:Lcom/google/android/gms/ads/doubleclick/AppEventListener;
return-object v0
.end method
.method public getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mz:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
return-object v0
.end method
.method public isLoaded()Z
.registers 4
const/4 v0, 0x0
:try_start_1
iget-object v1, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;
if-nez v1, :cond_6
:goto_5
return v0
:cond_6
iget-object v1, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;
invoke-interface {v1}, Lcom/google/android/gms/internal/ar;->isReady()Z
:try_end_b
.catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d
move-result v0
goto :goto_5
:catch_d
move-exception v1
const-string v2, "Failed to check if ad is ready."
invoke-static {v2, v1}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5
.end method
.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
.registers 4
:try_start_0
iput-object p1, p0, Lcom/google/android/gms/internal/aw;->lO:Lcom/google/android/gms/ads/AdListener;
iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;
if-eqz v0, :cond_12
iget-object v1, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;
if-eqz p1, :cond_13
new-instance v0, Lcom/google/android/gms/internal/ah;
invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ah;-><init>(Lcom/google/android/gms/ads/AdListener;)V
:goto_f
invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/aq;)V
:cond_12
:goto_12
:try_end_12
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_15
return-void
:cond_13
const/4 v0, 0x0
goto :goto_f
:catch_15
move-exception v0
const-string v1, "Failed to set the AdListener."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_12
.end method
.method public setAdUnitId(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mh:Ljava/lang/String;
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "The ad unit ID can only be set once on InterstitialAd."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iput-object p1, p0, Lcom/google/android/gms/internal/aw;->mh:Ljava/lang/String;
return-void
.end method
.method public setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
.registers 4
:try_start_0
iput-object p1, p0, Lcom/google/android/gms/internal/aw;->mf:Lcom/google/android/gms/ads/doubleclick/AppEventListener;
iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;
if-eqz v0, :cond_12
iget-object v1, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;
if-eqz p1, :cond_13
new-instance v0, Lcom/google/android/gms/internal/ao;
invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ao;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
:goto_f
invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/at;)V
:cond_12
:goto_12
:try_end_12
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_15
return-void
:cond_13
const/4 v0, 0x0
goto :goto_f
:catch_15
move-exception v0
const-string v1, "Failed to set the AppEventListener."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_12
.end method
.method public setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mA:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Play store purchase parameter has already been set."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
:try_start_c
iput-object p1, p0, Lcom/google/android/gms/internal/aw;->mz:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;
if-eqz v0, :cond_1e
iget-object v1, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;
if-eqz p1, :cond_1f
new-instance v0, Lcom/google/android/gms/internal/di;
invoke-direct {v0, p1}, Lcom/google/android/gms/internal/di;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
:goto_1b
invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/dd;)V
:try_end_1e
.catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1e} :catch_21
:goto_1e
:cond_1e
return-void
:cond_1f
const/4 v0, 0x0
goto :goto_1b
:catch_21
move-exception v0
const-string v1, "Failed to set the InAppPurchaseListener."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_1e
.end method
.method public setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V
.registers 5
:try_start_0
iput-object p1, p0, Lcom/google/android/gms/internal/aw;->mA:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;
iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;
if-eqz v0, :cond_12
iget-object v1, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;
if-eqz p1, :cond_13
new-instance v0, Lcom/google/android/gms/internal/dm;
invoke-direct {v0, p1}, Lcom/google/android/gms/internal/dm;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V
:goto_f
invoke-interface {v1, v0, p2}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/dh;Ljava/lang/String;)V
:cond_12
:goto_12
:try_end_12
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_15
return-void
:cond_13
const/4 v0, 0x0
goto :goto_f
:catch_15
move-exception v0
const-string v1, "Failed to set the play store purchase parameter."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_12
.end method
.method public show()V
.registers 3
:try_start_0
const-string v0, "show"
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aw;->l(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;
invoke-interface {v0}, Lcom/google/android/gms/internal/ar;->showInterstitial()V
:try_end_a
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b
:goto_a
return-void
:catch_b
move-exception v0
const-string v1, "Failed to show interstitial."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_a
.end method