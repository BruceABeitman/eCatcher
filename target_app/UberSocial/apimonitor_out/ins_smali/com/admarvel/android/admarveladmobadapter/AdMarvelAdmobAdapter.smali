.class public Lcom/admarvel/android/admarveladmobadapter/AdMarvelAdmobAdapter;
.super Lcom/admarvel/android/ads/AdMarvelAdapter;
.field private internalAdmobInterstitialListener:Lcom/admarvel/android/admarveladmobadapter/InternalAdmobInterstitialListener;
.field private internalAdmobListener:Lcom/admarvel/android/admarveladmobadapter/InternalAdmobListener;
.field private interstitialAd:Lcom/google/ads/InterstitialAd;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/admarvel/android/ads/AdMarvelAdapter;-><init>()V
return-void
.end method
.method private getAdNetworkSDKDate()Ljava/lang/String;
.registers 2
const-string v0, "10-19-2012"
return-object v0
.end method
.method private getAdNetworkSDKVersion()Ljava/lang/String;
.registers 2
const-string v0, "6.4.1"
return-object v0
.end method
.method protected cleanupView(Landroid/view/View;)V
.registers 2
return-void
.end method
.method protected displayInterstitial(Landroid/app/Activity;Ljava/lang/String;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/admarvel/android/admarveladmobadapter/AdMarvelAdmobAdapter;->interstitialAd:Lcom/google/ads/InterstitialAd;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/admarvel/android/admarveladmobadapter/AdMarvelAdmobAdapter;->interstitialAd:Lcom/google/ads/InterstitialAd;
invoke-virtual {v0}, Lcom/google/ads/InterstitialAd;->isReady()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/admarvel/android/admarveladmobadapter/AdMarvelAdmobAdapter;->interstitialAd:Lcom/google/ads/InterstitialAd;
invoke-virtual {v0}, Lcom/google/ads/InterstitialAd;->show()V
:cond_11
const/4 v0, 0x0
iput-object v0, p0, Lcom/admarvel/android/admarveladmobadapter/AdMarvelAdmobAdapter;->interstitialAd:Lcom/google/ads/InterstitialAd;
:goto_14
:try_end_14
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15
return-void
:catch_15
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_14
.end method
.method public getAdapterVersion()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/admarvel/android/admarveladmobadapter/g;->a:Ljava/lang/String;
return-object v0
.end method
.method protected getAdnetworkSDKVersionInfo()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "admarvel_version: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Lcom/admarvel/android/admarveladmobadapter/g;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "; admob_sdk_version: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-direct {p0}, Lcom/admarvel/android/admarveladmobadapter/AdMarvelAdmobAdapter;->getAdNetworkSDKVersion()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "; date: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-direct {p0}, Lcom/admarvel/android/admarveladmobadapter/AdMarvelAdmobAdapter;->getAdNetworkSDKDate()Ljava/lang/String;
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
invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelXMLReader;->getParsedXMLData()Lcom/admarvel/android/ads/AdMarvelXMLElement;
move-result-object v1
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "pubid"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_55
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_55
invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setPubId(Ljava/lang/String;)V
:goto_1b
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v2, "testdeviceids"
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_3d
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_3d
const-string v2, ","
invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_3d
array-length v2, v0
if-lez v2, :cond_3d
invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdmobTestDeviceId([Ljava/lang/String;)V
:cond_3d
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v1, "creativetype"
invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_54
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_54
invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setCreativeType(Ljava/lang/String;)V
:cond_54
return-object p1
:cond_55
sget-object v0, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdType(Lcom/admarvel/android/ads/AdMarvelAd$AdType;)V
const/16 v0, 0x132
invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorCode(I)V
const-string v0, "Missing SDK publisher id"
invoke-virtual {p1, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorReason(Ljava/lang/String;)V
goto :goto_1b
.end method
.method protected pause(Landroid/app/Activity;Ljava/util/Map;)V
.registers 3
return-void
.end method
.method protected requestIntersitialNewAd(Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/util/Map;II)V
.registers 13
const/4 v2, 0x0
new-instance v0, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobInterstitialListener;
invoke-direct {v0, p1, p3}, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobInterstitialListener;-><init>(Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;Lcom/admarvel/android/ads/AdMarvelAd;)V
iput-object v0, p0, Lcom/admarvel/android/admarveladmobadapter/AdMarvelAdmobAdapter;->internalAdmobInterstitialListener:Lcom/admarvel/android/admarveladmobadapter/InternalAdmobInterstitialListener;
if-eqz p4, :cond_f5
const-string v0, "GENDER"
invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v1, "KEYWORDS"
invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v2, "DOB"
invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
:goto_22
new-instance v3, Lcom/google/ads/AdRequest;
invoke-direct {v3}, Lcom/google/ads/AdRequest;-><init>()V
if-eqz v0, :cond_40
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v4
if-lez v4, :cond_40
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v4
const-string v5, "m"
invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_d9
sget-object v0, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;
invoke-virtual {v3, v0}, Lcom/google/ads/AdRequest;->setGender(Lcom/google/ads/AdRequest$Gender;)Lcom/google/ads/AdRequest;
:goto_40
:cond_40
if-eqz v2, :cond_7c
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_7c
:try_start_48
invoke-static {v2}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Ljava/sql/Date;->getYear()I
move-result v4
invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/sql/Date;->getMonth()I
move-result v4
invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/sql/Date;->getDay()I
move-result v0
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/google/ads/AdRequest;->setBirthday(Ljava/lang/String;)Lcom/google/ads/AdRequest;
:cond_7c
:goto_7c
:try_end_7c
.catch Ljava/lang/Exception; {:try_start_48 .. :try_end_7c} :catch_ec
if-eqz v1, :cond_96
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_96
new-instance v0, Ljava/util/HashSet;
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
invoke-virtual {v3, v0}, Lcom/google/ads/AdRequest;->setKeywords(Ljava/util/Set;)Lcom/google/ads/AdRequest;
:cond_96
invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdmobTestDeviceId()[Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_bb
invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdmobTestDeviceId()[Ljava/lang/String;
move-result-object v0
array-length v0, v0
if-lez v0, :cond_bb
new-instance v0, Ljava/util/HashSet;
invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdmobTestDeviceId()[Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
if-eqz v0, :cond_bb
invoke-virtual {v0}, Ljava/util/HashSet;->size()I
move-result v1
if-lez v1, :cond_bb
invoke-virtual {v3, v0}, Lcom/google/ads/AdRequest;->setTestDevices(Ljava/util/Set;)Lcom/google/ads/AdRequest;
:cond_bb
instance-of v0, p2, Landroid/app/Activity;
if-eqz v0, :cond_d8
check-cast p2, Landroid/app/Activity;
new-instance v0, Lcom/google/ads/InterstitialAd;
invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getPubId()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, p2, v1}, Lcom/google/ads/InterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
iput-object v0, p0, Lcom/admarvel/android/admarveladmobadapter/AdMarvelAdmobAdapter;->interstitialAd:Lcom/google/ads/InterstitialAd;
iget-object v0, p0, Lcom/admarvel/android/admarveladmobadapter/AdMarvelAdmobAdapter;->interstitialAd:Lcom/google/ads/InterstitialAd;
iget-object v1, p0, Lcom/admarvel/android/admarveladmobadapter/AdMarvelAdmobAdapter;->internalAdmobInterstitialListener:Lcom/admarvel/android/admarveladmobadapter/InternalAdmobInterstitialListener;
invoke-virtual {v0, v1}, Lcom/google/ads/InterstitialAd;->setAdListener(Lcom/google/ads/AdListener;)V
iget-object v0, p0, Lcom/admarvel/android/admarveladmobadapter/AdMarvelAdmobAdapter;->interstitialAd:Lcom/google/ads/InterstitialAd;
invoke-virtual {v0, v3}, Lcom/google/ads/InterstitialAd;->loadAd(Lcom/google/ads/AdRequest;)V
:cond_d8
return-void
:cond_d9
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v4, "f"
invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_40
sget-object v0, Lcom/google/ads/AdRequest$Gender;->FEMALE:Lcom/google/ads/AdRequest$Gender;
invoke-virtual {v3, v0}, Lcom/google/ads/AdRequest;->setGender(Lcom/google/ads/AdRequest$Gender;)Lcom/google/ads/AdRequest;
goto/16 :goto_40
:catch_ec
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_7c
:cond_f5
move-object v1, v2
move-object v0, v2
goto/16 :goto_22
.end method
.method public requestNewAd(Lcom/admarvel/android/ads/AdMarvelAdapterListener;Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/util/Map;II)Landroid/view/View;
.registers 15
const/16 v7, 0xcd
const/4 v3, 0x0
new-instance v0, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobListener;
invoke-direct {v0, p1, p3}, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobListener;-><init>(Lcom/admarvel/android/ads/AdMarvelAdapterListener;Lcom/admarvel/android/ads/AdMarvelAd;)V
iput-object v0, p0, Lcom/admarvel/android/admarveladmobadapter/AdMarvelAdmobAdapter;->internalAdmobListener:Lcom/admarvel/android/admarveladmobadapter/InternalAdmobListener;
if-eqz p4, :cond_147
const-string v0, "GENDER"
invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v1, "KEYWORDS"
invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v2, "DOB"
invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
:goto_24
new-instance v4, Lcom/google/ads/AdRequest;
invoke-direct {v4}, Lcom/google/ads/AdRequest;-><init>()V
if-eqz v0, :cond_42
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v5
if-lez v5, :cond_42
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v5
const-string v6, "m"
invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_f3
sget-object v0, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;
invoke-virtual {v4, v0}, Lcom/google/ads/AdRequest;->setGender(Lcom/google/ads/AdRequest$Gender;)Lcom/google/ads/AdRequest;
:cond_42
:goto_42
if-eqz v2, :cond_7e
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_7e
:try_start_4a
invoke-static {v2}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Ljava/sql/Date;->getYear()I
move-result v5
invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/sql/Date;->getMonth()I
move-result v5
invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/sql/Date;->getDay()I
move-result v0
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Lcom/google/ads/AdRequest;->setBirthday(Ljava/lang/String;)Lcom/google/ads/AdRequest;
:cond_7e
:goto_7e
:try_end_7e
.catch Ljava/lang/Exception; {:try_start_4a .. :try_end_7e} :catch_106
if-eqz v1, :cond_98
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_98
new-instance v0, Ljava/util/HashSet;
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
invoke-virtual {v4, v0}, Lcom/google/ads/AdRequest;->setKeywords(Ljava/util/Set;)Lcom/google/ads/AdRequest;
:cond_98
invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdmobTestDeviceId()[Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_b6
new-instance v0, Ljava/util/HashSet;
invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdmobTestDeviceId()[Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
if-eqz v0, :cond_b6
invoke-virtual {v0}, Ljava/util/HashSet;->size()I
move-result v1
if-lez v1, :cond_b6
invoke-virtual {v4, v0}, Lcom/google/ads/AdRequest;->setTestDevices(Ljava/util/Set;)Lcom/google/ads/AdRequest;
:cond_b6
sget-object v0, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;
invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getCreativeType()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_cc
invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getCreativeType()Ljava/lang/String;
move-result-object v1
const-string v2, "IAB_BANNER"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_110
sget-object v0, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;
:goto_cc
:cond_cc
if-eqz p2, :cond_13d
instance-of v1, p2, Landroid/app/Activity;
if-eqz v1, :cond_13d
check-cast p2, Landroid/app/Activity;
new-instance v3, Lcom/google/ads/AdView;
invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getPubId()Ljava/lang/String;
move-result-object v1
invoke-direct {v3, p2, v0, v1}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
const/4 v1, -0x1
const/4 v2, -0x2
invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v3, v0}, Lcom/google/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v3, p5}, Lcom/google/ads/AdView;->setBackgroundColor(I)V
iget-object v0, p0, Lcom/admarvel/android/admarveladmobadapter/AdMarvelAdmobAdapter;->internalAdmobListener:Lcom/admarvel/android/admarveladmobadapter/InternalAdmobListener;
invoke-virtual {v3, v0}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V
invoke-virtual {v3, v4}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V
:goto_f2
:cond_f2
return-object v3
:cond_f3
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v5, "f"
invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_42
sget-object v0, Lcom/google/ads/AdRequest$Gender;->FEMALE:Lcom/google/ads/AdRequest$Gender;
invoke-virtual {v4, v0}, Lcom/google/ads/AdRequest;->setGender(Lcom/google/ads/AdRequest$Gender;)Lcom/google/ads/AdRequest;
goto/16 :goto_42
:catch_106
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto/16 :goto_7e
:cond_110
invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getCreativeType()Ljava/lang/String;
move-result-object v1
const-string v2, "IAB_LEADERBOARD"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_11f
sget-object v0, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;
goto :goto_cc
:cond_11f
invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getCreativeType()Ljava/lang/String;
move-result-object v1
const-string v2, "IAB_MRECT"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_12e
sget-object v0, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;
goto :goto_cc
:cond_12e
invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelAd;->getCreativeType()Ljava/lang/String;
move-result-object v1
const-string v2, "SMART_BANNER"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_cc
sget-object v0, Lcom/google/ads/AdSize;->SMART_BANNER:Lcom/google/ads/AdSize;
goto :goto_cc
:cond_13d
if-eqz p1, :cond_f2
invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelUtils;->getErrorReason(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
move-result-object v0
invoke-interface {p1, v7, v0, p3}, Lcom/admarvel/android/ads/AdMarvelAdapterListener;->onFailedToReceiveAd(ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Lcom/admarvel/android/ads/AdMarvelAd;)V
goto :goto_f2
:cond_147
move-object v2, v3
move-object v1, v3
move-object v0, v3
goto/16 :goto_24
.end method
.method protected resume(Landroid/app/Activity;Ljava/util/Map;)V
.registers 3
return-void
.end method
.method protected uninitialize(Landroid/app/Activity;Ljava/util/Map;)V
.registers 3
return-void
.end method