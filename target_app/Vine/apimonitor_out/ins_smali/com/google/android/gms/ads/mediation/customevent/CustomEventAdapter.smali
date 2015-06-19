.class public final Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;
.field private n:Landroid/view/View;
.field private sT:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;
.field private sU:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Ljava/lang/String;)Ljava/lang/Object;
.registers 4
:try_start_0
invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
:try_end_7
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9
move-result-object v0
:goto_8
return-object v0
:catch_9
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Could not instantiate custom event adapter: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ". "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_8
.end method
.method private a(Landroid/view/View;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->n:Landroid/view/View;
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;Landroid/view/View;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->a(Landroid/view/View;)V
return-void
.end method
.method public getBannerView()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->n:Landroid/view/View;
return-object v0
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sT:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sT:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;
invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;->onDestroy()V
:cond_9
iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sU:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sU:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;
invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;->onDestroy()V
:cond_12
const-string v1, " - Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sT:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sT:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;
invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;->onPause()V
:cond_9
iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sU:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sU:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;
invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;->onPause()V
:cond_12
const-string v1, " - Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sT:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sT:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;
invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;->onResume()V
:cond_9
iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sU:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sU:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;
invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;->onResume()V
:cond_12
const-string v1, " - Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
.registers 14
const-string v0, "class_name"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->a(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;
iput-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sT:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;
iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sT:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;
if-nez v0, :cond_17
const/4 v0, 0x0
invoke-interface {p2, p0, v0}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V
:goto_16
return-void
:cond_17
if-nez p6, :cond_2e
const/4 v6, 0x0
:goto_1a
iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sT:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;
new-instance v2, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a;
invoke-direct {v2, p0, p2}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a;-><init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;Lcom/google/android/gms/ads/mediation/MediationBannerListener;)V
const-string v1, "parameter"
invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
move-object v1, p1
move-object v4, p4
move-object v5, p5
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;->requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
goto :goto_16
:cond_2e
const-string v0, "class_name"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p6, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v6
goto :goto_1a
.end method
.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
.registers 12
const-string v0, "class_name"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->a(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;
iput-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sU:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;
iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sU:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;
if-nez v0, :cond_17
const/4 v0, 0x0
invoke-interface {p2, p0, v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V
:goto_16
return-void
:cond_17
if-nez p5, :cond_2d
const/4 v5, 0x0
:goto_1a
iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sU:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;
new-instance v2, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;
invoke-direct {v2, p0, p0, p2}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;-><init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;)V
const-string v1, "parameter"
invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
move-object v1, p1
move-object v4, p4
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;->requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
goto :goto_16
:cond_2d
const-string v0, "class_name"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p5, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v5
goto :goto_1a
.end method
.method public showInterstitial()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sU:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;
invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;->showInterstitial()V
return-void
.end method