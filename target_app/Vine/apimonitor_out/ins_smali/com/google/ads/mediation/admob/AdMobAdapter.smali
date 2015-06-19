.class public final Lcom/google/ads/mediation/admob/AdMobAdapter;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;
.field private i:Lcom/google/android/gms/ads/AdView;
.field private j:Lcom/google/android/gms/ads/InterstitialAd;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest;
.registers 8
const/4 v1, 0x1
new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;
invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V
invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getBirthday()Ljava/util/Date;
move-result-object v0
if-eqz v0, :cond_f
invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->setBirthday(Ljava/util/Date;)Lcom/google/android/gms/ads/AdRequest$Builder;
:cond_f
invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getGender()I
move-result v0
if-eqz v0, :cond_18
invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;
:cond_18
invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;
move-result-object v0
if-eqz v0, :cond_32
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_22
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_32
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
goto :goto_22
:cond_32
invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->isTesting()Z
move-result v0
if-eqz v0, :cond_3f
invoke-static {p0}, Lcom/google/android/gms/internal/eu;->o(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
:cond_3f
const-string v0, "tagForChildDirectedTreatment"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
const/4 v3, -0x1
if-eq v0, v3, :cond_54
const-string v0, "tagForChildDirectedTreatment"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
if-ne v0, v1, :cond_8c
move v0, v1
:goto_51
invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;
:cond_54
if-eqz p2, :cond_8e
:goto_56
const-string v0, "gw"
invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v0, "mad_hac"
const-string v3, "mad_hac"
invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "adJson"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_7d
const-string v0, "_ad"
const-string v3, "adJson"
invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_7d
const-string v0, "_noRefresh"
invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;
invoke-virtual {v2, v0, p2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;
invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;
move-result-object v0
return-object v0
:cond_8c
const/4 v0, 0x0
goto :goto_51
:cond_8e
new-instance p2, Landroid/os/Bundle;
invoke-direct {p2}, Landroid/os/Bundle;-><init>()V
goto :goto_56
.end method
.method public getBannerView()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;
return-object v0
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/google/ads/mediation/admob/AdMobAdapter; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;
invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V
iput-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;
:cond_c
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->j:Lcom/google/android/gms/ads/InterstitialAd;
if-eqz v0, :cond_12
iput-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->j:Lcom/google/android/gms/ads/InterstitialAd;
:cond_12
const-string v1, " - Lcom/google/ads/mediation/admob/AdMobAdapter; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/google/ads/mediation/admob/AdMobAdapter; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;
invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V
:cond_9
const-string v1, " - Lcom/google/ads/mediation/admob/AdMobAdapter; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/google/ads/mediation/admob/AdMobAdapter; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;
invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V
:cond_9
const-string v1, " - Lcom/google/ads/mediation/admob/AdMobAdapter; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
.registers 11
new-instance v0, Lcom/google/android/gms/ads/AdView;
invoke-direct {v0, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;
new-instance v1, Lcom/google/android/gms/ads/AdSize;
invoke-virtual {p4}, Lcom/google/android/gms/ads/AdSize;->getWidth()I
move-result v2
invoke-virtual {p4}, Lcom/google/android/gms/ads/AdSize;->getHeight()I
move-result v3
invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;
const-string v1, "pubid"
invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;
new-instance v1, Lcom/google/ads/mediation/admob/AdMobAdapter$a;
invoke-direct {v1, p0, p2}, Lcom/google/ads/mediation/admob/AdMobAdapter$a;-><init>(Lcom/google/ads/mediation/admob/AdMobAdapter;Lcom/google/android/gms/ads/mediation/MediationBannerListener;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;
invoke-static {p1, p5, p6, p3}, Lcom/google/ads/mediation/admob/AdMobAdapter;->a(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
return-void
.end method
.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
.registers 8
new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;
invoke-direct {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->j:Lcom/google/android/gms/ads/InterstitialAd;
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->j:Lcom/google/android/gms/ads/InterstitialAd;
const-string v1, "pubid"
invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->j:Lcom/google/android/gms/ads/InterstitialAd;
new-instance v1, Lcom/google/ads/mediation/admob/AdMobAdapter$b;
invoke-direct {v1, p0, p2}, Lcom/google/ads/mediation/admob/AdMobAdapter$b;-><init>(Lcom/google/ads/mediation/admob/AdMobAdapter;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->j:Lcom/google/android/gms/ads/InterstitialAd;
invoke-static {p1, p4, p5, p3}, Lcom/google/ads/mediation/admob/AdMobAdapter;->a(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
return-void
.end method
.method public showInterstitial()V
.registers 2
iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->j:Lcom/google/android/gms/ads/InterstitialAd;
invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V
return-void
.end method