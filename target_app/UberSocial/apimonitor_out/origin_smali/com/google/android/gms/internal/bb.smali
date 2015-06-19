.class public final Lcom/google/android/gms/internal/bb;
.super Lcom/google/android/gms/internal/aw;


# instance fields
.field private final a:Lcom/google/ads/mediation/MediationAdapter;

.field private final b:Lcom/google/ads/mediation/NetworkExtras;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/MediationAdapter;Lcom/google/ads/mediation/NetworkExtras;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/aw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/ads/mediation/MediationAdapter;

    iput-object p2, p0, Lcom/google/android/gms/internal/bb;->b:Lcom/google/ads/mediation/NetworkExtras;

    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)Lcom/google/ads/mediation/MediationServerParameters;
    .registers 10

    if-eqz p1, :cond_55

    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_27} :catch_28

    goto :goto_14

    :catch_28
    move-exception v1

    const-string v2, "Could not get MediationServerParameters."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    :cond_34
    move-object v3, v2

    :goto_35
    :try_start_35
    iget-object v1, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/ads/mediation/MediationAdapter;

    invoke-interface {v1}, Lcom/google/ads/mediation/MediationAdapter;->getServerParametersType()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_48

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/mediation/MediationServerParameters;

    invoke-virtual {v1, v3}, Lcom/google/ads/mediation/MediationServerParameters;->load(Ljava/util/Map;)V

    move-object v2, v1

    :cond_48
    instance-of v1, v2, Lcom/google/ads/mediation/admob/AdMobServerParameters;

    if-eqz v1, :cond_54

    move-object v0, v2

    check-cast v0, Lcom/google/ads/mediation/admob/AdMobServerParameters;

    move-object v1, v0

    iput-object p3, v1, Lcom/google/ads/mediation/admob/AdMobServerParameters;->adJson:Ljava/lang/String;

    iput p2, v1, Lcom/google/ads/mediation/admob/AdMobServerParameters;->tagForChildDirectedTreatment:I

    :cond_54
    return-object v2

    :cond_55
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_5b} :catch_28

    move-object v3, v1

    goto :goto_35
.end method


# virtual methods
.method public a()Lcom/google/android/gms/c/d;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/ads/mediation/MediationAdapter;

    instance-of v0, v0, Lcom/google/ads/mediation/MediationBannerAdapter;

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediationAdapter is not a MediationBannerAdapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/ads/mediation/MediationAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/ads/mediation/MediationBannerAdapter;

    invoke-interface {v0}, Lcom/google/ads/mediation/MediationBannerAdapter;->getBannerView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/c/d;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_37} :catch_39

    move-result-object v0

    return-object v0

    :catch_39
    move-exception v0

    const-string v1, "Could not get banner view from adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public a(Lcom/google/android/gms/c/d;Lcom/google/android/gms/internal/ab;Lcom/google/android/gms/internal/z;Ljava/lang/String;Lcom/google/android/gms/internal/ay;)V
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/bb;->a(Lcom/google/android/gms/c/d;Lcom/google/android/gms/internal/ab;Lcom/google/android/gms/internal/z;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ay;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/c/d;Lcom/google/android/gms/internal/ab;Lcom/google/android/gms/internal/z;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ay;)V
    .registers 14

    iget-object v0, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/ads/mediation/MediationAdapter;

    instance-of v0, v0, Lcom/google/ads/mediation/MediationBannerAdapter;

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediationAdapter is not a MediationBannerAdapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/ads/mediation/MediationAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_2c
    const-string v0, "Requesting banner ad from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->a(Ljava/lang/String;)V

    :try_start_31
    iget-object v0, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/ads/mediation/MediationBannerAdapter;

    new-instance v1, Lcom/google/android/gms/internal/bc;

    invoke-direct {v1, p6}, Lcom/google/android/gms/internal/bc;-><init>(Lcom/google/android/gms/internal/ay;)V

    invoke-static {p1}, Lcom/google/android/gms/c/g;->a(Lcom/google/android/gms/c/d;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iget v3, p3, Lcom/google/android/gms/internal/z;->g:I

    invoke-direct {p0, p4, v3, p5}, Lcom/google/android/gms/internal/bb;->a(Ljava/lang/String;ILjava/lang/String;)Lcom/google/ads/mediation/MediationServerParameters;

    move-result-object v3

    invoke-static {p2}, Lcom/google/android/gms/internal/bd;->a(Lcom/google/android/gms/internal/ab;)Lcom/google/ads/AdSize;

    move-result-object v4

    invoke-static {p3}, Lcom/google/android/gms/internal/bd;->a(Lcom/google/android/gms/internal/z;)Lcom/google/ads/mediation/MediationAdRequest;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/bb;->b:Lcom/google/ads/mediation/NetworkExtras;

    invoke-interface/range {v0 .. v6}, Lcom/google/ads/mediation/MediationBannerAdapter;->requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_53} :catch_54

    return-void

    :catch_54
    move-exception v0

    const-string v1, "Could not request banner ad from adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public a(Lcom/google/android/gms/c/d;Lcom/google/android/gms/internal/z;Ljava/lang/String;Lcom/google/android/gms/internal/ay;)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/bb;->a(Lcom/google/android/gms/c/d;Lcom/google/android/gms/internal/z;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ay;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/c/d;Lcom/google/android/gms/internal/z;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ay;)V
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/ads/mediation/MediationAdapter;

    instance-of v0, v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediationAdapter is not a MediationInterstitialAdapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/ads/mediation/MediationAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_2c
    const-string v0, "Requesting interstitial ad from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->a(Ljava/lang/String;)V

    :try_start_31
    iget-object v0, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    new-instance v1, Lcom/google/android/gms/internal/bc;

    invoke-direct {v1, p5}, Lcom/google/android/gms/internal/bc;-><init>(Lcom/google/android/gms/internal/ay;)V

    invoke-static {p1}, Lcom/google/android/gms/c/g;->a(Lcom/google/android/gms/c/d;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iget v3, p2, Lcom/google/android/gms/internal/z;->g:I

    invoke-direct {p0, p3, v3, p4}, Lcom/google/android/gms/internal/bb;->a(Ljava/lang/String;ILjava/lang/String;)Lcom/google/ads/mediation/MediationServerParameters;

    move-result-object v3

    invoke-static {p2}, Lcom/google/android/gms/internal/bd;->a(Lcom/google/android/gms/internal/z;)Lcom/google/ads/mediation/MediationAdRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/bb;->b:Lcom/google/ads/mediation/NetworkExtras;

    invoke-interface/range {v0 .. v5}, Lcom/google/ads/mediation/MediationInterstitialAdapter;->requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_4f} :catch_50

    return-void

    :catch_50
    move-exception v0

    const-string v1, "Could not request interstitial ad from adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/ads/mediation/MediationAdapter;

    instance-of v0, v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediationAdapter is not a MediationInterstitialAdapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/ads/mediation/MediationAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_2c
    const-string v0, "Showing interstitial from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->a(Ljava/lang/String;)V

    :try_start_31
    iget-object v0, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    invoke-interface {v0}, Lcom/google/ads/mediation/MediationInterstitialAdapter;->showInterstitial()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_38} :catch_39

    return-void

    :catch_39
    move-exception v0

    const-string v1, "Could not show interstitial from adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public c()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/ads/mediation/MediationAdapter;

    invoke-interface {v0}, Lcom/google/ads/mediation/MediationAdapter;->destroy()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, "Could not destroy adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method
