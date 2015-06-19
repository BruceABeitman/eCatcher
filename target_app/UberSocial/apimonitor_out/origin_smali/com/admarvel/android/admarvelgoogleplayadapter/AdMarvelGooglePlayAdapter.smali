.class public Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;
.super Lcom/admarvel/android/ads/AdMarvelAdapter;


# instance fields
.field private googlePlayViewReference:Ljava/lang/ref/WeakReference;

.field private internalGooglePlayInterstitialListener:Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayInterstitialListener;

.field private internalGooglePlayListener:Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayListener;

.field private interstitialAd:Lcom/google/android/gms/ads/e;

.field private userLocation:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/admarvel/android/ads/AdMarvelAdapter;-><init>()V

    iput-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->googlePlayViewReference:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->userLocation:Landroid/location/Location;

    return-void
.end method

.method private getAdNetworkSDKDate()Ljava/lang/String;
    .registers 2

    const-string v0, "2013-10-31"

    return-object v0
.end method

.method private getAdNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "4.1"

    return-object v0
.end method


# virtual methods
.method protected cleanupView(Landroid/view/View;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->internalGooglePlayListener:Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayListener;

    if-eqz v0, :cond_f

    const-string v0, "GooglePlay Ads Adapter: cleanupView"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->internalGooglePlayListener:Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayListener;

    invoke-virtual {v0}, Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayListener;->destroyListener()V

    :cond_f
    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->googlePlayViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->googlePlayViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->googlePlayViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->a()V

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->googlePlayViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_2b
    iput-object v1, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->internalGooglePlayListener:Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayListener;

    iput-object v1, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->internalGooglePlayInterstitialListener:Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayInterstitialListener;

    iput-object v1, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->interstitialAd:Lcom/google/android/gms/ads/e;

    return-void
.end method

.method protected displayInterstitial(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    const-string v0, "GooglePlay Ads Adapter: displayInterstitial"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->interstitialAd:Lcom/google/android/gms/ads/e;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->interstitialAd:Lcom/google/android/gms/ads/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/e;->c()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->interstitialAd:Lcom/google/android/gms/ads/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/e;->d()V

    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->interstitialAd:Lcom/google/android/gms/ads/e;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_19
.end method

.method protected forceCloseFullScreenAd(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/admarvel/android/admarvelgoogleplayadapter/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected getAdnetworkSDKVersionInfo()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admarvel_version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/admarvel/android/admarvelgoogleplayadapter/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; googleplay_sdk_version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->getAdNetworkSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->getAdNetworkSDKDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initialize(Landroid/app/Activity;Ljava/util/Map;)V
    .registers 3

    return-void
.end method

.method protected loadAd(Lcom/admarvel/android/ads/AdMarvelAd;Lcom/admarvel/android/ads/AdMarvelXMLReader;)Lcom/admarvel/android/ads/AdMarvelAd;
    .registers 6

    const-string v0, "GooglePlay Ads Adapter: loadAd"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelXMLReader;->getParsedXMLData()Lcom/admarvel/android/ads/AdMarvelXMLElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v2, "pubid"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_88

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_88

    invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setPubId(Ljava/lang/String;)V

    :goto_20
    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v2, "testdeviceids"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_42

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    array-length v2, v0

    if-lez v2, :cond_42

    invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdmobTestDeviceId([Ljava/lang/String;)V

    :cond_42
    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v2, "creativetype"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_59

    invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setCreativeType(Ljava/lang/String;)V

    :cond_59
    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v2, "admobextras"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_70

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_70

    invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdMobExtras(Ljava/lang/String;)V

    :cond_70
    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_87

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_87

    invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setGooglePlayLocation(Ljava/lang/String;)V

    :cond_87
    return-object p1

    :cond_88
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdType(Lcom/admarvel/android/ads/AdMarvelAd$AdType;)V

    const/16 v0, 0x132

    invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorCode(I)V

    const-string v0, "Missing SDK publisher id"

    invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorReason(Ljava/lang/String;)V

    goto :goto_20
.end method

.method protected pause(Landroid/app/Activity;Ljava/util/Map;)V
    .registers 4

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->googlePlayViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->googlePlayViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v0, "GooglePlay Ads Adapter: pause"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->googlePlayViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->b()V

    :cond_1c
    return-void
.end method

.method protected requestIntersitialNewAd(Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/util/Map;II)V
    .registers 15

    const-string v0, "GooglePlay Ads Adapter: requestIntersitialNewAd"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayInterstitialListener;

    invoke-direct {v0, p1, p3}, Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayInterstitialListener;-><init>(Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;Lcom/admarvel/android/ads/AdMarvelAd;)V

    iput-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->internalGooglePlayInterstitialListener:Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayInterstitialListener;

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p4, :cond_3e

    :try_start_11
    const-string v0, "GENDER"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19} :catch_d5

    move-object v3, v0

    :goto_1a
    :try_start_1a
    const-string v0, "KEYWORDS"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_22} :catch_f2

    move-object v2, v0

    :goto_23
    :try_start_23
    const-string v0, "DOB"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2b} :catch_10f

    move-object v1, v0

    :goto_2c
    const-string v0, "LOCATION_OBJECT"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3e

    :try_start_34
    const-string v0, "LOCATION_OBJECT"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->userLocation:Landroid/location/Location;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3e} :catch_12c

    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->userLocation:Landroid/location/Location;

    if-nez v0, :cond_8f

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getGooglePlayLocation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8f

    :try_start_48
    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getGooglePlayLocation()Ljava/lang/String;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    const/4 v5, 0x2

    if-ne v0, v5, :cond_8f

    const-string v0, "location"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    new-instance v5, Landroid/location/Location;

    new-instance v6, Landroid/location/Criteria;

    invoke-direct {v6}, Landroid/location/Criteria;-><init>()V

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->userLocation:Landroid/location/Location;

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->userLocation:Landroid/location/Location;

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->userLocation:Landroid/location/Location;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setLongitude(D)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_8f} :catch_149

    :cond_8f
    :goto_8f
    new-instance v4, Lcom/google/android/gms/ads/c;

    invoke-direct {v4}, Lcom/google/android/gms/ads/c;-><init>()V

    if-eqz v3, :cond_ac

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_ac

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v5, "m"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_166

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/ads/c;->a(I)Lcom/google/android/gms/ads/c;

    :cond_ac
    :goto_ac
    if-eqz v1, :cond_bb

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_bb

    :try_start_b4
    invoke-static {v1}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/ads/c;->a(Ljava/util/Date;)Lcom/google/android/gms/ads/c;
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_bb} :catch_178

    :cond_bb
    :goto_bb
    if-eqz v2, :cond_182

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_182

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_cb
    if-ge v0, v2, :cond_182

    aget-object v3, v1, v0

    invoke-virtual {v4, v3}, Lcom/google/android/gms/ads/c;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_cb

    :catch_d5
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in Seting Target option"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_1a

    :catch_f2
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in Seting Target option"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_23

    :catch_10f
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in Seting Target option"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_2c

    :catch_12c
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in Seting userLocation Target option"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_3e

    :catch_149
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in Seting userLocation Target option"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_8f

    :cond_166
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ac

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/google/android/gms/ads/c;->a(I)Lcom/google/android/gms/ads/c;

    goto/16 :goto_ac

    :catch_178
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_bb

    :cond_182
    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdmobTestDeviceId()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19f

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdmobTestDeviceId()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_19f

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdmobTestDeviceId()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_195
    if-ge v0, v2, :cond_19f

    aget-object v3, v1, v0

    invoke-virtual {v4, v3}, Lcom/google/android/gms/ads/c;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_195

    :cond_19f
    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->userLocation:Landroid/location/Location;

    if-eqz v0, :cond_1a8

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->userLocation:Landroid/location/Location;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/ads/c;->a(Landroid/location/Location;)Lcom/google/android/gms/ads/c;

    :cond_1a8
    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_1ce

    check-cast p2, Landroid/app/Activity;

    new-instance v0, Lcom/google/android/gms/ads/e;

    invoke-direct {v0, p2}, Lcom/google/android/gms/ads/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->interstitialAd:Lcom/google/android/gms/ads/e;

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->interstitialAd:Lcom/google/android/gms/ads/e;

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getPubId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->interstitialAd:Lcom/google/android/gms/ads/e;

    iget-object v1, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->internalGooglePlayInterstitialListener:Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayInterstitialListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/e;->a(Lcom/google/android/gms/ads/a;)V

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->interstitialAd:Lcom/google/android/gms/ads/e;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/c;->a()Lcom/google/android/gms/ads/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/e;->a(Lcom/google/android/gms/ads/b;)V

    :cond_1ce
    return-void
.end method

.method public requestNewAd(Lcom/admarvel/android/ads/AdMarvelAdapterListener;Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/util/Map;II)Landroid/view/View;
    .registers 16

    const-string v0, "GooglePlay Ads Adapter: requestNewAd"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    if-eqz p3, :cond_2c5

    new-instance v0, Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayListener;

    invoke-direct {v0, p1, p3}, Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayListener;-><init>(Lcom/admarvel/android/ads/AdMarvelAdapterListener;Lcom/admarvel/android/ads/AdMarvelAd;)V

    iput-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->internalGooglePlayListener:Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayListener;

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p4, :cond_4a

    :try_start_14
    const-string v0, "GENDER"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1c} :catch_e1

    move-object v4, v0

    :goto_1d
    :try_start_1d
    const-string v0, "KEYWORDS"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_fe

    move-object v3, v0

    :goto_26
    :try_start_26
    const-string v0, "DOB"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2e} :catch_11b

    move-object v2, v0

    :goto_2f
    :try_start_2f
    const-string v0, "ADMOBEXTRAS"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_37} :catch_138

    move-object v1, v0

    :goto_38
    const-string v0, "LOCATION_OBJECT"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4a

    :try_start_40
    const-string v0, "LOCATION_OBJECT"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->userLocation:Landroid/location/Location;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4a} :catch_155

    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->userLocation:Landroid/location/Location;

    if-nez v0, :cond_9b

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getGooglePlayLocation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9b

    :try_start_54
    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getGooglePlayLocation()Ljava/lang/String;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v0, v5

    const/4 v6, 0x2

    if-ne v0, v6, :cond_9b

    const-string v0, "location"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    new-instance v6, Landroid/location/Location;

    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->userLocation:Landroid/location/Location;

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->userLocation:Landroid/location/Location;

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->userLocation:Landroid/location/Location;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/location/Location;->setLongitude(D)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_9b} :catch_172

    :cond_9b
    :goto_9b
    new-instance v5, Lcom/google/android/gms/ads/c;

    invoke-direct {v5}, Lcom/google/android/gms/ads/c;-><init>()V

    if-eqz v4, :cond_b8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b8

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v6, "m"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18f

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/ads/c;->a(I)Lcom/google/android/gms/ads/c;

    :cond_b8
    :goto_b8
    if-eqz v2, :cond_c7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c7

    :try_start_c0
    invoke-static {v2}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/ads/c;->a(Ljava/util/Date;)Lcom/google/android/gms/ads/c;
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c7} :catch_1a1

    :cond_c7
    :goto_c7
    if-eqz v3, :cond_1ab

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1ab

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_d7
    if-ge v0, v3, :cond_1ab

    aget-object v4, v2, v0

    invoke-virtual {v5, v4}, Lcom/google/android/gms/ads/c;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_d7

    :catch_e1
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in setting gender target param "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_1d

    :catch_fe
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in setting keywords target param "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_26

    :catch_11b
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in setting dob target param "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_2f

    :catch_138
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in setting admobextrasParams target param "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_38

    :catch_155
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in Seting userLocation Target option"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_4a

    :catch_172
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in Seting userLocation Target option"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_9b

    :cond_18f
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "f"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b8

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/google/android/gms/ads/c;->a(I)Lcom/google/android/gms/ads/c;

    goto/16 :goto_b8

    :catch_1a1
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_c7

    :cond_1ab
    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdmobTestDeviceId()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c1

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdmobTestDeviceId()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1b7
    if-ge v0, v3, :cond_1c1

    aget-object v4, v2, v0

    invoke-virtual {v5, v4}, Lcom/google/android/gms/ads/c;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b7

    :cond_1c1
    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->userLocation:Landroid/location/Location;

    if-eqz v0, :cond_1ca

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->userLocation:Landroid/location/Location;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/ads/c;->a(Landroid/location/Location;)Lcom/google/android/gms/ads/c;

    :cond_1ca
    sget-object v0, Lcom/google/android/gms/ads/d;->c:Lcom/google/android/gms/ads/d;

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getCreativeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e0

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getCreativeType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IAB_BANNER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_248

    sget-object v0, Lcom/google/android/gms/ads/d;->c:Lcom/google/android/gms/ads/d;

    :cond_1e0
    :goto_1e0
    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdMobExtras()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f4

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdMobExtras()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1f4

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdMobExtras()Ljava/lang/String;

    move-result-object v1

    :cond_1f4
    if-eqz v1, :cond_284

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_284

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_284

    array-length v1, v3

    if-lez v1, :cond_284

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    :goto_20d
    array-length v2, v3

    if-ge v1, v2, :cond_27c

    aget-object v2, v3, v1

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_245

    array-length v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_245

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_245

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_245

    const/4 v6, 0x0

    :try_start_231
    aget-object v6, v2, v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v2, v2, v7

    const-string v7, "UTF-8"

    invoke-static {v2, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_245
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_231 .. :try_end_245} :catch_277

    :cond_245
    :goto_245
    add-int/lit8 v1, v1, 0x1

    goto :goto_20d

    :cond_248
    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getCreativeType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IAB_LEADERBOARD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_257

    sget-object v0, Lcom/google/android/gms/ads/d;->e:Lcom/google/android/gms/ads/d;

    goto :goto_1e0

    :cond_257
    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getCreativeType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IAB_MRECT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_267

    sget-object v0, Lcom/google/android/gms/ads/d;->f:Lcom/google/android/gms/ads/d;

    goto/16 :goto_1e0

    :cond_267
    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getCreativeType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SMART_BANNER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e0

    sget-object v0, Lcom/google/android/gms/ads/d;->h:Lcom/google/android/gms/ads/d;

    goto/16 :goto_1e0

    :catch_277
    move-exception v2

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_245

    :cond_27c
    new-instance v1, Lcom/google/android/gms/ads/b/a/a;

    invoke-direct {v1, v4}, Lcom/google/android/gms/ads/b/a/a;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v5, v1}, Lcom/google/android/gms/ads/c;->a(Lcom/google/android/gms/ads/b/a;)Lcom/google/android/gms/ads/c;

    :cond_284
    if-eqz p2, :cond_2b6

    instance-of v1, p2, Landroid/app/Activity;

    if-eqz v1, :cond_2b6

    check-cast p2, Landroid/app/Activity;

    new-instance v1, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v1, p2}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getPubId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/d;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p5}, Lcom/google/android/gms/ads/AdView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->internalGooglePlayListener:Lcom/admarvel/android/admarvelgoogleplayadapter/InternalGooglePlayListener;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/a;)V

    invoke-virtual {v5}, Lcom/google/android/gms/ads/c;->a()Lcom/google/android/gms/ads/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->a(Lcom/google/android/gms/ads/b;)V

    move-object v0, v1

    :goto_2b5
    return-object v0

    :cond_2b6
    if-eqz p1, :cond_2c3

    const/16 v0, 0xcd

    const/16 v1, 0xcd

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelUtils;->getErrorReason(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/admarvel/android/ads/AdMarvelAdapterListener;->onFailedToReceiveAd(ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)V

    :cond_2c3
    const/4 v0, 0x0

    goto :goto_2b5

    :cond_2c5
    const/4 v0, 0x0

    goto :goto_2b5
.end method

.method protected resume(Landroid/app/Activity;Ljava/util/Map;)V
    .registers 4

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->googlePlayViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->googlePlayViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v0, "GooglePlay Ads Adapter: resume"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/admarvelgoogleplayadapter/AdMarvelGooglePlayAdapter;->googlePlayViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->c()V

    :cond_1c
    return-void
.end method

.method protected uninitialize(Landroid/app/Activity;Ljava/util/Map;)V
    .registers 3

    return-void
.end method
