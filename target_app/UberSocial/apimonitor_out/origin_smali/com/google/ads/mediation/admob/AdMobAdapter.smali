.class public final Lcom/google/ads/mediation/admob/AdMobAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/ads/mediation/MediationInterstitialAdapter;


# instance fields
.field private h:Lcom/google/android/gms/ads/AdView;

.field private i:Lcom/google/android/gms/ads/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/android/gms/ads/b/a/a;Lcom/google/ads/mediation/admob/AdMobServerParameters;)Lcom/google/android/gms/ads/b;
    .registers 9

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/gms/ads/c;

    invoke-direct {v2}, Lcom/google/android/gms/ads/c;-><init>()V

    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/c;->a(Ljava/util/Date;)Lcom/google/android/gms/ads/c;

    :cond_f
    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getGender()Lcom/google/ads/AdRequest$Gender;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {v0}, Lcom/google/android/gms/internal/bd;->a(Lcom/google/ads/AdRequest$Gender;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/c;->a(I)Lcom/google/android/gms/ads/c;

    :cond_1c
    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/c;->a(Ljava/lang/String;)Lcom/google/android/gms/ads/c;

    goto :goto_26

    :cond_36
    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->isTesting()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {p0}, Lcom/google/android/gms/internal/dx;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/c;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/c;

    :cond_43
    iget v0, p3, Lcom/google/ads/mediation/admob/AdMobServerParameters;->tagForChildDirectedTreatment:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_50

    iget v0, p3, Lcom/google/ads/mediation/admob/AdMobServerParameters;->tagForChildDirectedTreatment:I

    if-ne v0, v1, :cond_7e

    move v0, v1

    :goto_4d
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/c;->a(Z)Lcom/google/android/gms/ads/c;

    :cond_50
    if-eqz p2, :cond_80

    :goto_52
    invoke-virtual {p2}, Lcom/google/android/gms/ads/b/a/a;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "gw"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "mad_hac"

    iget-object v4, p3, Lcom/google/ads/mediation/admob/AdMobServerParameters;->allowHouseAds:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p3, Lcom/google/ads/mediation/admob/AdMobServerParameters;->adJson:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_71

    const-string v3, "_ad"

    iget-object v4, p3, Lcom/google/ads/mediation/admob/AdMobServerParameters;->adJson:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    const-string v3, "_noRefresh"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v2, p2}, Lcom/google/android/gms/ads/c;->a(Lcom/google/android/gms/ads/b/a;)Lcom/google/android/gms/ads/c;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/c;->a()Lcom/google/android/gms/ads/b;

    move-result-object v0

    return-object v0

    :cond_7e
    const/4 v0, 0x0

    goto :goto_4d

    :cond_80
    new-instance p2, Lcom/google/android/gms/ads/b/a/a;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p2, v0}, Lcom/google/android/gms/ads/b/a/a;-><init>(Landroid/os/Bundle;)V

    goto :goto_52
.end method


# virtual methods
.method public destroy()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->h:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->h:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->a()V

    iput-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->h:Lcom/google/android/gms/ads/AdView;

    :cond_c
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/e;

    if-eqz v0, :cond_12

    iput-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/e;

    :cond_12
    return-void
.end method

.method public getAdditionalParametersType()Ljava/lang/Class;
    .registers 2

    const-class v0, Lcom/google/android/gms/ads/b/a/a;

    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->h:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method public getServerParametersType()Ljava/lang/Class;
    .registers 2

    const-class v0, Lcom/google/ads/mediation/admob/AdMobServerParameters;

    return-object v0
.end method

.method public bridge synthetic requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
    .registers 14

    move-object v3, p3

    check-cast v3, Lcom/google/ads/mediation/admob/AdMobServerParameters;

    move-object v6, p6

    check-cast v6, Lcom/google/android/gms/ads/b/a/a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/ads/mediation/admob/AdMobAdapter;->requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/admob/AdMobServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/android/gms/ads/b/a/a;)V

    return-void
.end method

.method public requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/admob/AdMobServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/android/gms/ads/b/a/a;)V
    .registers 11

    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p2}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->h:Lcom/google/android/gms/ads/AdView;

    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->h:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/d;

    invoke-virtual {p4}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v2

    invoke-virtual {p4}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/d;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/d;)V

    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->h:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p3, Lcom/google/ads/mediation/admob/AdMobServerParameters;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->h:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/ads/mediation/admob/a;

    invoke-direct {v1, p0, p1}, Lcom/google/ads/mediation/admob/a;-><init>(Lcom/google/ads/mediation/admob/AdMobAdapter;Lcom/google/ads/mediation/MediationBannerListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/a;)V

    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->h:Lcom/google/android/gms/ads/AdView;

    invoke-static {p2, p5, p6, p3}, Lcom/google/ads/mediation/admob/AdMobAdapter;->a(Landroid/content/Context;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/android/gms/ads/b/a/a;Lcom/google/ads/mediation/admob/AdMobServerParameters;)Lcom/google/android/gms/ads/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->a(Lcom/google/android/gms/ads/b;)V

    return-void
.end method

.method public bridge synthetic requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
    .registers 12

    move-object v3, p3

    check-cast v3, Lcom/google/ads/mediation/admob/AdMobServerParameters;

    move-object v5, p5

    check-cast v5, Lcom/google/android/gms/ads/b/a/a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/mediation/admob/AdMobAdapter;->requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/admob/AdMobServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/android/gms/ads/b/a/a;)V

    return-void
.end method

.method public requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/admob/AdMobServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/android/gms/ads/b/a/a;)V
    .registers 8

    new-instance v0, Lcom/google/android/gms/ads/e;

    invoke-direct {v0, p2}, Lcom/google/android/gms/ads/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/e;

    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/e;

    iget-object v1, p3, Lcom/google/ads/mediation/admob/AdMobServerParameters;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/e;

    new-instance v1, Lcom/google/ads/mediation/admob/b;

    invoke-direct {v1, p0, p1}, Lcom/google/ads/mediation/admob/b;-><init>(Lcom/google/ads/mediation/admob/AdMobAdapter;Lcom/google/ads/mediation/MediationInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/e;->a(Lcom/google/android/gms/ads/a;)V

    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/e;

    invoke-static {p2, p4, p5, p3}, Lcom/google/ads/mediation/admob/AdMobAdapter;->a(Landroid/content/Context;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/android/gms/ads/b/a/a;Lcom/google/ads/mediation/admob/AdMobServerParameters;)Lcom/google/android/gms/ads/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/e;->a(Lcom/google/android/gms/ads/b;)V

    return-void
.end method

.method public showInterstitial()V
    .registers 2

    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/e;->d()V

    return-void
.end method
