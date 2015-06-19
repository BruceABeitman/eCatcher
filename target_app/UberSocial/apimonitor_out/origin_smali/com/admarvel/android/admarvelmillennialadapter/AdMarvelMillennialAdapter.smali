.class public Lcom/admarvel/android/admarvelmillennialadapter/AdMarvelMillennialAdapter;
.super Lcom/admarvel/android/ads/AdMarvelAdapter;


# instance fields
.field private interAdView:Lcom/millennialmedia/android/cd;

.field private internalMillennialInterstitialListener:Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialInterstitialListener;

.field private internalMillennialListener:Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialListener;

.field private userLocation:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/admarvel/android/ads/AdMarvelAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/AdMarvelMillennialAdapter;->userLocation:Landroid/location/Location;

    return-void
.end method

.method private getAdNetworkSDKDate()Ljava/lang/String;
    .registers 2

    const-string v0, "2014-06-02"

    return-object v0
.end method

.method private getAdNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "5.3.0-c3980670.a"

    return-object v0
.end method


# virtual methods
.method protected cleanupView(Landroid/view/View;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/AdMarvelMillennialAdapter;->internalMillennialListener:Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialListener;

    if-eqz v0, :cond_f

    const-string v0, "Millennial Adapter: cleanupView"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/AdMarvelMillennialAdapter;->internalMillennialListener:Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialListener;

    invoke-virtual {v0}, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialListener;->destroyListener()V

    :cond_f
    iput-object v1, p0, Lcom/admarvel/android/admarvelmillennialadapter/AdMarvelMillennialAdapter;->internalMillennialInterstitialListener:Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialInterstitialListener;

    iput-object v1, p0, Lcom/admarvel/android/admarvelmillennialadapter/AdMarvelMillennialAdapter;->internalMillennialListener:Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialListener;

    iput-object v1, p0, Lcom/admarvel/android/admarvelmillennialadapter/AdMarvelMillennialAdapter;->interAdView:Lcom/millennialmedia/android/cd;

    iput-object v1, p0, Lcom/admarvel/android/admarvelmillennialadapter/AdMarvelMillennialAdapter;->userLocation:Landroid/location/Location;

    return-void
.end method

.method protected displayInterstitial(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/AdMarvelMillennialAdapter;->interAdView:Lcom/millennialmedia/android/cd;

    if-eqz v0, :cond_e

    const-string v0, "Millennial Adapter: displayInterstitial"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/AdMarvelMillennialAdapter;->interAdView:Lcom/millennialmedia/android/cd;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cd;->c()Z

    :cond_e
    return-void
.end method

.method protected forceCloseFullScreenAd(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/admarvel/android/admarvelmillennialadapter/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected getAdnetworkSDKVersionInfo()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admarvel_version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/admarvel/android/admarvelmillennialadapter/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; millennial_sdk_version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/admarvel/android/admarvelmillennialadapter/AdMarvelMillennialAdapter;->getAdNetworkSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/admarvel/android/admarvelmillennialadapter/AdMarvelMillennialAdapter;->getAdNetworkSDKDate()Ljava/lang/String;

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
    .registers 8

    const/16 v4, 0x132

    const-string v0, "Millennial Adapter: loadAd"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelXMLReader;->getParsedXMLData()Lcom/admarvel/android/ads/AdMarvelXMLElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v2, "pubid"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_70

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_70

    invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setPubId(Ljava/lang/String;)V

    :goto_22
    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v2, "creativetype"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_ce

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_ce

    const-string v2, "MMBannerAdTop"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setCreativeType(Ljava/lang/String;)V

    :goto_41
    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v2, "width"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_dd

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_dd

    invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setWidth(Ljava/lang/String;)V

    :goto_58
    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_ec

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_ec

    invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setHeight(Ljava/lang/String;)V

    :goto_6f
    return-object p1

    :cond_70
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdType(Lcom/admarvel/android/ads/AdMarvelAd$AdType;)V

    invoke-virtual {p1, v4}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorCode(I)V

    const-string v0, "Missing SDK publisher id"

    invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorReason(Ljava/lang/String;)V

    goto :goto_22

    :cond_7e
    const-string v2, "MMBannerAdBottom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setCreativeType(Ljava/lang/String;)V

    goto :goto_41

    :cond_8a
    const-string v2, "MMBannerAdRectangle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setCreativeType(Ljava/lang/String;)V

    goto :goto_41

    :cond_96
    const-string v2, "MMFullScreenAdLaunch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setCreativeType(Ljava/lang/String;)V

    goto :goto_41

    :cond_a2
    const-string v2, "MMFullScreenAdTransition"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setCreativeType(Ljava/lang/String;)V

    goto :goto_41

    :cond_ae
    sget-object v2, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    invoke-virtual {p1, v2}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdType(Lcom/admarvel/android/ads/AdMarvelAd$AdType;)V

    invoke-virtual {p1, v4}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorCode(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported creative type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorReason(Ljava/lang/String;)V

    goto/16 :goto_41

    :cond_ce
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdType(Lcom/admarvel/android/ads/AdMarvelAd$AdType;)V

    invoke-virtual {p1, v4}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorCode(I)V

    const-string v0, "Missing SDK creative type"

    invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorReason(Ljava/lang/String;)V

    goto/16 :goto_41

    :cond_dd
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdType(Lcom/admarvel/android/ads/AdMarvelAd$AdType;)V

    invoke-virtual {p1, v4}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorCode(I)V

    const-string v0, "Missing SDK width"

    invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorReason(Ljava/lang/String;)V

    goto/16 :goto_58

    :cond_ec
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdType(Lcom/admarvel/android/ads/AdMarvelAd$AdType;)V

    invoke-virtual {p1, v4}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorCode(I)V

    const-string v0, "Missing SDK height"

    invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorReason(Ljava/lang/String;)V

    goto/16 :goto_6f
.end method

.method protected pause(Landroid/app/Activity;Ljava/util/Map;)V
    .registers 3

    return-void
.end method

.method protected requestIntersitialNewAd(Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/util/Map;II)V
    .registers 11

    const-string v0, "Millennial Adapter: requestIntersitialNewAd"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialInterstitialListener;

    invoke-direct {v0, p1, p3}, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialInterstitialListener;-><init>(Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;Lcom/admarvel/android/ads/AdMarvelAd;)V

    iput-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/AdMarvelMillennialAdapter;->internalMillennialInterstitialListener:Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialInterstitialListener;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    if-eqz p4, :cond_1b6

    :try_start_13
    const-string v0, "AGE"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_36

    const-string v0, "AGE"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_36

    const-string v2, "age"

    const-string v0, "AGE"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_36} :catch_1e5

    :cond_36
    :goto_36
    :try_start_36
    const-string v0, "GENDER"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_67

    const-string v0, "GENDER"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_67

    const-string v0, "GENDER"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "m"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_202

    const-string v0, "gender"

    const-string v2, "male"

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_67} :catch_20b

    :cond_67
    :goto_67
    :try_start_67
    const-string v0, "POSTAL_CODE"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8a

    const-string v0, "POSTAL_CODE"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8a

    const-string v2, "zip"

    const-string v0, "POSTAL_CODE"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_8a} :catch_228

    :cond_8a
    :goto_8a
    :try_start_8a
    const-string v0, "MARITAL"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ad

    const-string v0, "MARITAL"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_ad

    const-string v2, "marital"

    const-string v0, "MARITAL"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_ad} :catch_245

    :cond_ad
    :goto_ad
    :try_start_ad
    const-string v0, "ORIENTATION"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d0

    const-string v0, "ORIENTATION"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d0

    const-string v2, "orientation"

    const-string v0, "ORIENTATION"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_d0} :catch_262

    :cond_d0
    :goto_d0
    :try_start_d0
    const-string v0, "ENTHNICITY"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_fd

    const-string v0, "ENTHNICITY"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_fd

    const-string v0, "ENTHNICITY"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27f

    const-string v0, "ethnicity"

    const-string v2, "african american"

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_fd} :catch_290

    :cond_fd
    :goto_fd
    :try_start_fd
    const-string v0, "EDUCATION"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12a

    const-string v0, "EDUCATION"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12a

    const-string v0, "EDUCATION"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e9

    const-string v0, "education"

    const-string v2, "no college"

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_12a} :catch_2fa

    :cond_12a
    :goto_12a
    :try_start_12a
    const-string v0, "CHILDREN"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14d

    const-string v0, "CHILDREN"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14d

    const-string v2, "children"

    const-string v0, "CHILDREN"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_14d} :catch_331

    :cond_14d
    :goto_14d
    :try_start_14d
    const-string v0, "POLITICS"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_170

    const-string v0, "POLITICS"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_170

    const-string v2, "politics"

    const-string v0, "POLITICS"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_170} :catch_34e

    :cond_170
    :goto_170
    :try_start_170
    const-string v0, "INCOME"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_193

    const-string v0, "INCOME"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_193

    const-string v2, "income"

    const-string v0, "INCOME"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_193} :catch_36b

    :cond_193
    :goto_193
    :try_start_193
    const-string v0, "KEYWORDS"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b6

    const-string v0, "KEYWORDS"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1b6

    const-string v2, "keywords"

    const-string v0, "KEYWORDS"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_193 .. :try_end_1b6} :catch_388

    :cond_1b6
    :goto_1b6
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/millennialmedia/android/ck;->a(I)V

    new-instance v0, Lcom/millennialmedia/android/cd;

    invoke-direct {v0, p2}, Lcom/millennialmedia/android/cd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/AdMarvelMillennialAdapter;->interAdView:Lcom/millennialmedia/android/cd;

    iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/AdMarvelMillennialAdapter;->interAdView:Lcom/millennialmedia/android/cd;

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getPubId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/cd;->setApid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/AdMarvelMillennialAdapter;->interAdView:Lcom/millennialmedia/android/cd;

    iget-object v1, p0, Lcom/admarvel/android/admarvelmillennialadapter/AdMarvelMillennialAdapter;->internalMillennialInterstitialListener:Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialInterstitialListener;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/cd;->setListener(Lcom/millennialmedia/android/df;)V

    iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/AdMarvelMillennialAdapter;->interAdView:Lcom/millennialmedia/android/cd;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cd;->b()Z

    move-result v0

    if-eqz v0, :cond_3a5

    if-eqz p1, :cond_1e4

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->MILLENNIAL:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getPubId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1, p3}, Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;->onReceiveInterstitialAd(Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;)V

    :cond_1e4
    :goto_1e4
    return-void

    :catch_1e5
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in setting AGE TargetParam "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_36

    :cond_202
    :try_start_202
    const-string v0, "gender"

    const-string v2, "female"

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_209
    .catch Ljava/lang/Exception; {:try_start_202 .. :try_end_209} :catch_20b

    goto/16 :goto_67

    :catch_20b
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in setting GENDER TargetParam "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_67

    :catch_228
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in setting GENDER TargetParam "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_8a

    :catch_245
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in setting GENDER TargetParam "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_ad

    :catch_262
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in setting ORIENTATION TargetParam "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_d0

    :cond_27f
    :try_start_27f
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ad

    const-string v0, "ethnicity"

    const-string v2, "asian"

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28e
    .catch Ljava/lang/Exception; {:try_start_27f .. :try_end_28e} :catch_290

    goto/16 :goto_fd

    :catch_290
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in setting ENTHNICITY TargetParam "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_fd

    :cond_2ad
    :try_start_2ad
    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2be

    const-string v0, "ethnicity"

    const-string v2, "hispanic"

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_fd

    :cond_2be
    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2cf

    const-string v0, "ethnicity"

    const-string v2, "white"

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_fd

    :cond_2cf
    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e0

    const-string v0, "ethnicity"

    const-string v2, "other"

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_fd

    :cond_2e0
    const-string v0, "ethnicity"

    const-string v2, "other"

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e7
    .catch Ljava/lang/Exception; {:try_start_2ad .. :try_end_2e7} :catch_290

    goto/16 :goto_fd

    :cond_2e9
    :try_start_2e9
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_317

    const-string v0, "education"

    const-string v2, "college"

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f8
    .catch Ljava/lang/Exception; {:try_start_2e9 .. :try_end_2f8} :catch_2fa

    goto/16 :goto_12a

    :catch_2fa
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in setting EDUCATION TargetParam "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_12a

    :cond_317
    :try_start_317
    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_328

    const-string v0, "education"

    const-string v2, "graduate school"

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12a

    :cond_328
    const-string v0, "education"

    const-string v2, "college"

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32f
    .catch Ljava/lang/Exception; {:try_start_317 .. :try_end_32f} :catch_2fa

    goto/16 :goto_12a

    :catch_331
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in setting CHILDREN TargetParam "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_14d

    :catch_34e
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in setting POLITICS TargetParam "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_170

    :catch_36b
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in setting INCOME TargetParam "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_193

    :catch_388
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in setting KEYWORDS TargetParam "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_1b6

    :cond_3a5
    iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/AdMarvelMillennialAdapter;->interAdView:Lcom/millennialmedia/android/cd;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cd;->a()V

    iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/AdMarvelMillennialAdapter;->interAdView:Lcom/millennialmedia/android/cd;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cd;->b()Z

    move-result v0

    if-eqz v0, :cond_1e4

    if-eqz p1, :cond_1e4

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->MILLENNIAL:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getPubId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1, p3}, Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;->onReceiveInterstitialAd(Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;)V

    goto/16 :goto_1e4
.end method

.method protected requestNewAd(Lcom/admarvel/android/ads/AdMarvelAdapterListener;Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/util/Map;II)Landroid/view/View;
    .registers 14

    const/4 v6, 0x1

    const/4 v1, 0x0

    const-string v0, "Millennial Adapter: requestNewAd"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialListener;

    invoke-direct {v0, p1, p3}, Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialListener;-><init>(Lcom/admarvel/android/ads/AdMarvelAdapterListener;Lcom/admarvel/android/ads/AdMarvelAd;)V

    iput-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/AdMarvelMillennialAdapter;->internalMillennialListener:Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialListener;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    if-eqz p4, :cond_1ca

    :try_start_15
    const-string v0, "AGE"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_38

    const-string v0, "AGE"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_38

    const-string v3, "age"

    const-string v0, "AGE"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_38} :catch_244

    :cond_38
    :goto_38
    :try_start_38
    const-string v0, "GENDER"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_69

    const-string v0, "GENDER"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_69

    const-string v0, "GENDER"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "m"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_261

    const-string v0, "gender"

    const-string v3, "male"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_69} :catch_26a

    :cond_69
    :goto_69
    :try_start_69
    const-string v0, "POSTAL_CODE"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8c

    const-string v0, "POSTAL_CODE"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8c

    const-string v3, "zip"

    const-string v0, "POSTAL_CODE"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_8c} :catch_287

    :cond_8c
    :goto_8c
    :try_start_8c
    const-string v0, "MARITAL"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_af

    const-string v0, "MARITAL"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_af

    const-string v3, "marital"

    const-string v0, "MARITAL"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_af} :catch_2a4

    :cond_af
    :goto_af
    :try_start_af
    const-string v0, "ORIENTATION"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d2

    const-string v0, "ORIENTATION"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d2

    const-string v3, "orientation"

    const-string v0, "ORIENTATION"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_d2} :catch_2c1

    :cond_d2
    :goto_d2
    :try_start_d2
    const-string v0, "ENTHNICITY"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ff

    const-string v0, "ENTHNICITY"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_ff

    const-string v0, "ENTHNICITY"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2de

    const-string v0, "ethnicity"

    const-string v3, "african american"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_ff} :catch_2ef

    :cond_ff
    :goto_ff
    :try_start_ff
    const-string v0, "EDUCATION"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12c

    const-string v0, "EDUCATION"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12c

    const-string v0, "EDUCATION"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_348

    const-string v0, "education"

    const-string v3, "no college"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_12c} :catch_359

    :cond_12c
    :goto_12c
    :try_start_12c
    const-string v0, "CHILDREN"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14f

    const-string v0, "CHILDREN"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14f

    const-string v3, "children"

    const-string v0, "CHILDREN"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_14f} :catch_390

    :cond_14f
    :goto_14f
    :try_start_14f
    const-string v0, "POLITICS"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_172

    const-string v0, "POLITICS"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_172

    const-string v3, "politics"

    const-string v0, "POLITICS"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_172} :catch_3ad

    :cond_172
    :goto_172
    :try_start_172
    const-string v0, "INCOME"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_195

    const-string v0, "INCOME"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_195

    const-string v3, "income"

    const-string v0, "INCOME"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_195
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_195} :catch_3ca

    :cond_195
    :goto_195
    :try_start_195
    const-string v0, "KEYWORDS"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b8

    const-string v0, "KEYWORDS"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1b8

    const-string v3, "keywords"

    const-string v0, "KEYWORDS"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b8
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_1b8} :catch_3e7

    :cond_1b8
    :goto_1b8
    const-string v0, "LOCATION_OBJECT"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1ca

    :try_start_1c0
    const-string v0, "LOCATION_OBJECT"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/AdMarvelMillennialAdapter;->userLocation:Landroid/location/Location;
    :try_end_1ca
    .catch Ljava/lang/Exception; {:try_start_1c0 .. :try_end_1ca} :catch_404

    :cond_1ca
    :goto_1ca
    if-eqz p3, :cond_40a

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getWidth()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getHeight()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_1dc
    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    int-to-float v4, v1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x3

    invoke-static {v5}, Lcom/millennialmedia/android/ck;->a(I)V

    new-instance v5, Lcom/millennialmedia/android/MMAdView;

    invoke-direct {v5, p2}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Lcom/millennialmedia/android/MMAdView;->setWidth(I)V

    invoke-virtual {v5, v0}, Lcom/millennialmedia/android/MMAdView;->setHeight(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0}, Lcom/millennialmedia/android/MMAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/millennialmedia/android/co;->a()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/millennialmedia/android/MMAdView;->setId(I)V

    if-eqz p3, :cond_21f

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getPubId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/millennialmedia/android/MMAdView;->setApid(Ljava/lang/String;)V

    :cond_21f
    new-instance v0, Lcom/millennialmedia/android/cn;

    invoke-direct {v0}, Lcom/millennialmedia/android/cn;-><init>()V

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/cn;->b(Ljava/util/Map;)V

    const-string v1, "LOCATION_OBJECT"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_238

    iget-object v1, p0, Lcom/admarvel/android/admarvelmillennialadapter/AdMarvelMillennialAdapter;->userLocation:Landroid/location/Location;

    if-eqz v1, :cond_238

    iget-object v1, p0, Lcom/admarvel/android/admarvelmillennialadapter/AdMarvelMillennialAdapter;->userLocation:Landroid/location/Location;

    invoke-static {v1}, Lcom/millennialmedia/android/cn;->a(Landroid/location/Location;)V

    :cond_238
    invoke-virtual {v5, v0}, Lcom/millennialmedia/android/MMAdView;->setMMRequest(Lcom/millennialmedia/android/cn;)V

    iget-object v0, p0, Lcom/admarvel/android/admarvelmillennialadapter/AdMarvelMillennialAdapter;->internalMillennialListener:Lcom/admarvel/android/admarvelmillennialadapter/InternalMillennialListener;

    invoke-virtual {v5, v0}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/df;)V

    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getAd()V

    return-object v5

    :catch_244
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in setting AGE TargetParam "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_38

    :cond_261
    :try_start_261
    const-string v0, "gender"

    const-string v3, "female"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_268
    .catch Ljava/lang/Exception; {:try_start_261 .. :try_end_268} :catch_26a

    goto/16 :goto_69

    :catch_26a
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in setting GENDER TargetParam "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_69

    :catch_287
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in setting POSTAL_CODE TargetParam "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_8c

    :catch_2a4
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in setting MARITAL TargetParam "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_af

    :catch_2c1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in setting ORIENTATION TargetParam "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_d2

    :cond_2de
    :try_start_2de
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30c

    const-string v0, "ethnicity"

    const-string v3, "asian"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2ed
    .catch Ljava/lang/Exception; {:try_start_2de .. :try_end_2ed} :catch_2ef

    goto/16 :goto_ff

    :catch_2ef
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in setting ENTHNICITY TargetParam "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_ff

    :cond_30c
    :try_start_30c
    const-string v3, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31d

    const-string v0, "ethnicity"

    const-string v3, "hispanic"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_ff

    :cond_31d
    const-string v3, "3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32e

    const-string v0, "ethnicity"

    const-string v3, "white"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_ff

    :cond_32e
    const-string v3, "4"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33f

    const-string v0, "ethnicity"

    const-string v3, "other"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_ff

    :cond_33f
    const-string v0, "ethnicity"

    const-string v3, "other"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_346
    .catch Ljava/lang/Exception; {:try_start_30c .. :try_end_346} :catch_2ef

    goto/16 :goto_ff

    :cond_348
    :try_start_348
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_376

    const-string v0, "education"

    const-string v3, "college"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_357
    .catch Ljava/lang/Exception; {:try_start_348 .. :try_end_357} :catch_359

    goto/16 :goto_12c

    :catch_359
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in setting EDUCATION TargetParam "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_12c

    :cond_376
    :try_start_376
    const-string v3, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_387

    const-string v0, "education"

    const-string v3, "graduate school"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12c

    :cond_387
    const-string v0, "education"

    const-string v3, "college"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38e
    .catch Ljava/lang/Exception; {:try_start_376 .. :try_end_38e} :catch_359

    goto/16 :goto_12c

    :catch_390
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in setting CHILDREN TargetParam "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_14f

    :catch_3ad
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in setting POLITICS TargetParam "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_172

    :catch_3ca
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in setting INCOME TargetParam "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_195

    :catch_3e7
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in setting INCOME TargetParam "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_1b8

    :catch_404
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1ca

    :cond_40a
    move v0, v1

    goto/16 :goto_1dc
.end method

.method protected resume(Landroid/app/Activity;Ljava/util/Map;)V
    .registers 3

    return-void
.end method

.method protected uninitialize(Landroid/app/Activity;Ljava/util/Map;)V
    .registers 3

    return-void
.end method
