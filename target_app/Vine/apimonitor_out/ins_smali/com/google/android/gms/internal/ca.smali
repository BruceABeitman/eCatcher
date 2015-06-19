.class public final Lcom/google/android/gms/internal/ca;
.super Lcom/google/android/gms/internal/bv$a;
.field private final nS:Lcom/google/ads/mediation/MediationAdapter;
.field private final nT:Lcom/google/ads/mediation/NetworkExtras;
.method public constructor <init>(Lcom/google/ads/mediation/MediationAdapter;Lcom/google/ads/mediation/NetworkExtras;)V
.registers 3
invoke-direct {p0}, Lcom/google/android/gms/internal/bv$a;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/ca;->nS:Lcom/google/ads/mediation/MediationAdapter;
iput-object p2, p0, Lcom/google/android/gms/internal/ca;->nT:Lcom/google/ads/mediation/NetworkExtras;
return-void
.end method
.method private b(Ljava/lang/String;ILjava/lang/String;)Lcom/google/ads/mediation/MediationServerParameters;
.registers 9
if-eqz p1, :cond_34
:try_start_2
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/util/HashMap;
invoke-virtual {v2}, Lorg/json/JSONObject;->length()I
move-result v0
invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V
invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v3
:goto_14
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3b
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_27
.catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_27} :catch_28
goto :goto_14
:catch_28
move-exception v0
const-string v1, "Could not get MediationServerParameters."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
:cond_34
:try_start_34
new-instance v0, Ljava/util/HashMap;
const/4 v1, 0x0
invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
move-object v1, v0
:cond_3b
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->nS:Lcom/google/ads/mediation/MediationAdapter;
invoke-interface {v0}, Lcom/google/ads/mediation/MediationAdapter;->getServerParametersType()Ljava/lang/Class;
move-result-object v2
const/4 v0, 0x0
if-eqz v2, :cond_4d
invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/ads/mediation/MediationServerParameters;
invoke-virtual {v0, v1}, Lcom/google/ads/mediation/MediationServerParameters;->load(Ljava/util/Map;)V
:try_end_4d
.catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_4d} :catch_28
:cond_4d
return-object v0
.end method
.method public a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/aj;Ljava/lang/String;Lcom/google/android/gms/internal/bw;)V
.registers 11
const/4 v4, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v5, p4
invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ca;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/aj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bw;)V
return-void
.end method
.method public a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/aj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bw;)V
.registers 12
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->nS:Lcom/google/ads/mediation/MediationAdapter;
instance-of v0, v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;
if-nez v0, :cond_2c
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "MediationAdapter is not a MediationInterstitialAdapter: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/internal/ca;->nS:Lcom/google/ads/mediation/MediationAdapter;
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
:cond_2c
const-string v0, "Requesting interstitial ad from adapter."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
:try_start_31
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->nS:Lcom/google/ads/mediation/MediationAdapter;
check-cast v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;
new-instance v1, Lcom/google/android/gms/internal/cb;
invoke-direct {v1, p5}, Lcom/google/android/gms/internal/cb;-><init>(Lcom/google/android/gms/internal/bw;)V
invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/app/Activity;
iget v3, p2, Lcom/google/android/gms/internal/aj;->lU:I
invoke-direct {p0, p3, v3, p4}, Lcom/google/android/gms/internal/ca;->b(Ljava/lang/String;ILjava/lang/String;)Lcom/google/ads/mediation/MediationServerParameters;
move-result-object v3
invoke-static {p2}, Lcom/google/android/gms/internal/cc;->e(Lcom/google/android/gms/internal/aj;)Lcom/google/ads/mediation/MediationAdRequest;
move-result-object v4
iget-object v5, p0, Lcom/google/android/gms/internal/ca;->nT:Lcom/google/ads/mediation/NetworkExtras;
invoke-interface/range {v0 .. v5}, Lcom/google/ads/mediation/MediationInterstitialAdapter;->requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
:try_end_4f
.catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_4f} :catch_50
return-void
:catch_50
move-exception v0
const-string v1, "Could not request interstitial ad from adapter."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
.end method
.method public a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/am;Lcom/google/android/gms/internal/aj;Ljava/lang/String;Lcom/google/android/gms/internal/bw;)V
.registers 13
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v6, p5
invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ca;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/am;Lcom/google/android/gms/internal/aj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bw;)V
return-void
.end method
.method public a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/am;Lcom/google/android/gms/internal/aj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bw;)V
.registers 14
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->nS:Lcom/google/ads/mediation/MediationAdapter;
instance-of v0, v0, Lcom/google/ads/mediation/MediationBannerAdapter;
if-nez v0, :cond_2c
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "MediationAdapter is not a MediationBannerAdapter: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/internal/ca;->nS:Lcom/google/ads/mediation/MediationAdapter;
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
:cond_2c
const-string v0, "Requesting banner ad from adapter."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
:try_start_31
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->nS:Lcom/google/ads/mediation/MediationAdapter;
check-cast v0, Lcom/google/ads/mediation/MediationBannerAdapter;
new-instance v1, Lcom/google/android/gms/internal/cb;
invoke-direct {v1, p6}, Lcom/google/android/gms/internal/cb;-><init>(Lcom/google/android/gms/internal/bw;)V
invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/app/Activity;
iget v3, p3, Lcom/google/android/gms/internal/aj;->lU:I
invoke-direct {p0, p4, v3, p5}, Lcom/google/android/gms/internal/ca;->b(Ljava/lang/String;ILjava/lang/String;)Lcom/google/ads/mediation/MediationServerParameters;
move-result-object v3
invoke-static {p2}, Lcom/google/android/gms/internal/cc;->b(Lcom/google/android/gms/internal/am;)Lcom/google/ads/AdSize;
move-result-object v4
invoke-static {p3}, Lcom/google/android/gms/internal/cc;->e(Lcom/google/android/gms/internal/aj;)Lcom/google/ads/mediation/MediationAdRequest;
move-result-object v5
iget-object v6, p0, Lcom/google/android/gms/internal/ca;->nT:Lcom/google/ads/mediation/NetworkExtras;
invoke-interface/range {v0 .. v6}, Lcom/google/ads/mediation/MediationBannerAdapter;->requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
:try_end_53
.catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_53} :catch_54
return-void
:catch_54
move-exception v0
const-string v1, "Could not request banner ad from adapter."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
.end method
.method public destroy()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->nS:Lcom/google/ads/mediation/MediationAdapter;
invoke-interface {v0}, Lcom/google/ads/mediation/MediationAdapter;->destroy()V
:try_end_5
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
const-string v1, "Could not destroy adapter."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
.end method
.method public getView()Lcom/google/android/gms/dynamic/d;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->nS:Lcom/google/ads/mediation/MediationAdapter;
instance-of v0, v0, Lcom/google/ads/mediation/MediationBannerAdapter;
if-nez v0, :cond_2c
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "MediationAdapter is not a MediationBannerAdapter: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/internal/ca;->nS:Lcom/google/ads/mediation/MediationAdapter;
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
:try_start_2c
:cond_2c
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->nS:Lcom/google/ads/mediation/MediationAdapter;
check-cast v0, Lcom/google/ads/mediation/MediationBannerAdapter;
invoke-interface {v0}, Lcom/google/ads/mediation/MediationBannerAdapter;->getBannerView()Landroid/view/View;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;
:try_end_37
.catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_37} :catch_39
move-result-object v0
return-object v0
:catch_39
move-exception v0
const-string v1, "Could not get banner view from adapter."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
.end method
.method public pause()V
.registers 2
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
.end method
.method public resume()V
.registers 2
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
.end method
.method public showInterstitial()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->nS:Lcom/google/ads/mediation/MediationAdapter;
instance-of v0, v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;
if-nez v0, :cond_2c
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "MediationAdapter is not a MediationInterstitialAdapter: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/internal/ca;->nS:Lcom/google/ads/mediation/MediationAdapter;
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
:cond_2c
const-string v0, "Showing interstitial from adapter."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
:try_start_31
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->nS:Lcom/google/ads/mediation/MediationAdapter;
check-cast v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;
invoke-interface {v0}, Lcom/google/ads/mediation/MediationInterstitialAdapter;->showInterstitial()V
:try_end_38
.catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_38} :catch_39
return-void
:catch_39
move-exception v0
const-string v1, "Could not show interstitial from adapter."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
.end method