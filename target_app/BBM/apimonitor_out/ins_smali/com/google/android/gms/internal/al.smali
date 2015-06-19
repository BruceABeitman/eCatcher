.class public final Lcom/google/android/gms/internal/al;
.super Ljava/lang/Object;
.field private final lF:Lcom/google/android/gms/internal/be;
.field private lG:Lcom/google/android/gms/internal/ag;
.field private lc:Lcom/google/android/gms/ads/AdListener;
.field private lq:Lcom/google/android/gms/ads/doubleclick/AppEventListener;
.field private ls:Ljava/lang/String;
.field private final mContext:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/internal/be;
invoke-direct {v0}, Lcom/google/android/gms/internal/be;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/al;->lF:Lcom/google/android/gms/internal/be;
iput-object p1, p0, Lcom/google/android/gms/internal/al;->mContext:Landroid/content/Context;
return-void
.end method
.method private k(Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/internal/al;->ls:Ljava/lang/String;
if-nez v0, :cond_7
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/al;->l(Ljava/lang/String;)V
:cond_7
iget-object v0, p0, Lcom/google/android/gms/internal/al;->mContext:Landroid/content/Context;
new-instance v1, Lcom/google/android/gms/internal/ab;
invoke-direct {v1}, Lcom/google/android/gms/internal/ab;-><init>()V
iget-object v2, p0, Lcom/google/android/gms/internal/al;->ls:Ljava/lang/String;
iget-object v3, p0, Lcom/google/android/gms/internal/al;->lF:Lcom/google/android/gms/internal/be;
invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/y;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ab;Ljava/lang/String;Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/ag;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/al;->lG:Lcom/google/android/gms/internal/ag;
iget-object v0, p0, Lcom/google/android/gms/internal/al;->lc:Lcom/google/android/gms/ads/AdListener;
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/google/android/gms/internal/al;->lG:Lcom/google/android/gms/internal/ag;
new-instance v1, Lcom/google/android/gms/internal/x;
iget-object v2, p0, Lcom/google/android/gms/internal/al;->lc:Lcom/google/android/gms/ads/AdListener;
invoke-direct {v1, v2}, Lcom/google/android/gms/internal/x;-><init>(Lcom/google/android/gms/ads/AdListener;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ag;->a(Lcom/google/android/gms/internal/af;)V
:cond_28
iget-object v0, p0, Lcom/google/android/gms/internal/al;->lq:Lcom/google/android/gms/ads/doubleclick/AppEventListener;
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/google/android/gms/internal/al;->lG:Lcom/google/android/gms/internal/ag;
new-instance v1, Lcom/google/android/gms/internal/ad;
iget-object v2, p0, Lcom/google/android/gms/internal/al;->lq:Lcom/google/android/gms/ads/doubleclick/AppEventListener;
invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ad;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ag;->a(Lcom/google/android/gms/internal/ai;)V
:cond_38
return-void
.end method
.method private l(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/al;->lG:Lcom/google/android/gms/internal/ag;
if-nez v0, :cond_1f
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "The ad unit ID must be set on InterstitialAd before "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " is called."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1f
return-void
.end method
.method public final a(Lcom/google/android/gms/internal/aj;)V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/al;->lG:Lcom/google/android/gms/internal/ag;
if-nez v0, :cond_9
const-string v0, "loadAd"
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/al;->k(Ljava/lang/String;)V
:cond_9
iget-object v0, p0, Lcom/google/android/gms/internal/al;->lG:Lcom/google/android/gms/internal/ag;
new-instance v1, Lcom/google/android/gms/internal/z;
iget-object v2, p0, Lcom/google/android/gms/internal/al;->mContext:Landroid/content/Context;
invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/z;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/aj;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ag;->a(Lcom/google/android/gms/internal/z;)Z
move-result v0
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/google/android/gms/internal/al;->lF:Lcom/google/android/gms/internal/be;
invoke-virtual {p1}, Lcom/google/android/gms/internal/aj;->ak()Ljava/util/Map;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/be;->c(Ljava/util/Map;)V
:goto_21
:cond_21
:try_end_21
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22
return-void
:catch_22
move-exception v0
const-string v1, "Failed to load ad."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_21
.end method
.method public final getAdListener()Lcom/google/android/gms/ads/AdListener;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/al;->lc:Lcom/google/android/gms/ads/AdListener;
return-object v0
.end method
.method public final getAdUnitId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/al;->ls:Ljava/lang/String;
return-object v0
.end method
.method public final getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/al;->lq:Lcom/google/android/gms/ads/doubleclick/AppEventListener;
return-object v0
.end method
.method public final isLoaded()Z
.registers 4
const/4 v0, 0x0
:try_start_1
iget-object v1, p0, Lcom/google/android/gms/internal/al;->lG:Lcom/google/android/gms/internal/ag;
if-nez v1, :cond_6
:goto_5
return v0
:cond_6
iget-object v1, p0, Lcom/google/android/gms/internal/al;->lG:Lcom/google/android/gms/internal/ag;
invoke-interface {v1}, Lcom/google/android/gms/internal/ag;->isReady()Z
:try_end_b
.catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d
move-result v0
goto :goto_5
:catch_d
move-exception v1
const-string v2, "Failed to check if ad is ready."
invoke-static {v2, v1}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5
.end method
.method public final setAdListener(Lcom/google/android/gms/ads/AdListener;)V
.registers 4
:try_start_0
iput-object p1, p0, Lcom/google/android/gms/internal/al;->lc:Lcom/google/android/gms/ads/AdListener;
iget-object v0, p0, Lcom/google/android/gms/internal/al;->lG:Lcom/google/android/gms/internal/ag;
if-eqz v0, :cond_12
iget-object v1, p0, Lcom/google/android/gms/internal/al;->lG:Lcom/google/android/gms/internal/ag;
if-eqz p1, :cond_13
new-instance v0, Lcom/google/android/gms/internal/x;
invoke-direct {v0, p1}, Lcom/google/android/gms/internal/x;-><init>(Lcom/google/android/gms/ads/AdListener;)V
:goto_f
invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ag;->a(Lcom/google/android/gms/internal/af;)V
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
invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_12
.end method
.method public final setAdUnitId(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/al;->ls:Ljava/lang/String;
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "The ad unit ID can only be set once on InterstitialAd."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iput-object p1, p0, Lcom/google/android/gms/internal/al;->ls:Ljava/lang/String;
return-void
.end method
.method public final setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
.registers 4
:try_start_0
iput-object p1, p0, Lcom/google/android/gms/internal/al;->lq:Lcom/google/android/gms/ads/doubleclick/AppEventListener;
iget-object v0, p0, Lcom/google/android/gms/internal/al;->lG:Lcom/google/android/gms/internal/ag;
if-eqz v0, :cond_12
iget-object v1, p0, Lcom/google/android/gms/internal/al;->lG:Lcom/google/android/gms/internal/ag;
if-eqz p1, :cond_13
new-instance v0, Lcom/google/android/gms/internal/ad;
invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ad;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
:goto_f
invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ag;->a(Lcom/google/android/gms/internal/ai;)V
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
invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_12
.end method
.method public final show()V
.registers 3
:try_start_0
const-string v0, "show"
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/al;->l(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/al;->lG:Lcom/google/android/gms/internal/ag;
invoke-interface {v0}, Lcom/google/android/gms/internal/ag;->showInterstitial()V
:try_end_a
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b
:goto_a
return-void
:catch_b
move-exception v0
const-string v1, "Failed to show interstitial."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_a
.end method