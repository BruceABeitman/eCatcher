.class  Lcom/admarvel/android/ads/j;
.super Landroid/os/AsyncTask;
.source "SourceFile"
.field private a:Ljava/util/Map;
.field private b:Lcom/admarvel/android/ads/AdMarvelInterstitialAds;
.field private final c:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/j;->c:Ljava/lang/ref/WeakReference;
return-void
.end method
.method protected varargs a([Ljava/lang/Object;)Lcom/admarvel/android/ads/AdMarvelAd;
.registers 22
const/4 v1, 0x0
aget-object v1, p1, v1
check-cast v1, Ljava/util/Map;
move-object/from16 v0, p0
iput-object v1, v0, Lcom/admarvel/android/ads/j;->a:Ljava/util/Map;
const/4 v1, 0x1
aget-object v8, p1, v1
check-cast v8, Ljava/lang/String;
const/4 v1, 0x2
aget-object v9, p1, v1
check-cast v9, Ljava/lang/String;
const/4 v1, 0x3
aget-object v4, p1, v1
check-cast v4, Ljava/lang/String;
const/4 v1, 0x4
aget-object v1, p1, v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v5
const/4 v1, 0x5
aget-object v6, p1, v1
check-cast v6, Ljava/lang/String;
const/4 v1, 0x6
aget-object v1, p1, v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;
move-object/from16 v0, p0
iput-object v1, v0, Lcom/admarvel/android/ads/j;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAds;
const/4 v1, 0x7
aget-object v1, p1, v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v10
const/16 v1, 0x8
aget-object v11, p1, v1
check-cast v11, Ljava/lang/String;
const/16 v1, 0x9
aget-object v13, p1, v1
check-cast v13, Landroid/os/Handler;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/admarvel/android/ads/j;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/content/Context;
new-instance v1, Lcom/admarvel/android/ads/a;
invoke-direct {v1}, Lcom/admarvel/android/ads/a;-><init>()V
if-nez v3, :cond_57
const/4 v10, 0x0
:goto_56
:cond_56
return-object v10
:cond_57
:try_start_57
const-string v2, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"
invoke-static {v2, v3}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;
move-result-object v2
move-object/from16 v0, p0
iget-object v7, v0, Lcom/admarvel/android/ads/j;->a:Ljava/util/Map;
invoke-virtual {v2, v9, v7}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->getEnhancedTargetParams(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
:try_end_64
.catch Ljava/lang/Exception; {:try_start_57 .. :try_end_64} :catch_12f
move-result-object v2
:goto_65
if-eqz v2, :cond_74
move-object/from16 v0, p0
iget-object v7, v0, Lcom/admarvel/android/ads/j;->a:Ljava/util/Map;
if-eqz v7, :cond_133
move-object/from16 v0, p0
iget-object v7, v0, Lcom/admarvel/android/ads/j;->a:Ljava/util/Map;
invoke-interface {v7, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
:cond_74
:goto_74
sget-boolean v2, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableOfflineSDK:Z
if-eqz v2, :cond_139
sget-object v2, Lcom/admarvel/android/ads/a$a;->b:Lcom/admarvel/android/ads/a$a;
move-object/from16 v0, p0
iget-object v7, v0, Lcom/admarvel/android/ads/j;->a:Ljava/util/Map;
const/4 v12, 0x0
const/4 v14, 0x0
move-object/from16 v0, p0
iget-object v15, v0, Lcom/admarvel/android/ads/j;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAds;
invoke-virtual {v15}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->isAutoScalingEnabled()Z
move-result v15
invoke-virtual/range {v1 .. v15}, Lcom/admarvel/android/ads/a;->a(Lcom/admarvel/android/ads/a$a;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/os/Handler;ZZ)Ljava/lang/String;
move-result-object v11
:goto_8c
new-instance v10, Lcom/admarvel/android/ads/AdMarvelAd;
move-object/from16 v0, p0
iget-object v12, v0, Lcom/admarvel/android/ads/j;->a:Ljava/util/Map;
const/16 v18, 0x0
invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v19
move-object v13, v8
move-object v14, v9
move-object v15, v4
move/from16 v16, v5
move-object/from16 v17, v6
invoke-direct/range {v10 .. v19}, Lcom/admarvel/android/ads/AdMarvelAd;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V
invoke-virtual {v1}, Lcom/admarvel/android/ads/a;->a()Lorg/json/JSONObject;
move-result-object v1
invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setRequestJson(Lorg/json/JSONObject;)V
sget-boolean v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableOfflineSDK:Z
if-eqz v1, :cond_106
const-string v1, "admarvel_preferences"
const/4 v2, 0x0
invoke-virtual {v3, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
const-string v2, "banner_folder"
const-string v3, "NULL"
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "file://"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "childDirectory"
const-string v5, "NULL"
invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "/"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v10, v3}, Lcom/admarvel/android/ads/AdMarvelAd;->setOfflineBaseUrl(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "childDirectory"
const-string v5, "NULL"
invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, "/"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setOfflinekeyUrl(Ljava/lang/String;)V
:cond_106
if-eqz v11, :cond_192
const/4 v1, 0x0
:try_start_109
invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->loadAd(Ljava/io/File;)Lcom/admarvel/android/ads/AdMarvelXMLReader;
move-result-object v1
if-eqz v1, :cond_186
invoke-virtual {v10}, Lcom/admarvel/android/ads/AdMarvelAd;->getSdkNetwork()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_56
invoke-virtual {v10}, Lcom/admarvel/android/ads/AdMarvelAd;->getSdkNetwork()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
:try_end_11c
.catch Ljava/lang/Exception; {:try_start_109 .. :try_end_11c} :catch_165
move-result v2
if-lez v2, :cond_56
:try_start_11f
const-string v2, "ADMARVELGUID"
invoke-virtual {v10}, Lcom/admarvel/android/ads/AdMarvelAd;->getSdkNetwork()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v2
invoke-virtual {v2, v10, v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->loadAd(Lcom/admarvel/android/ads/AdMarvelAd;Lcom/admarvel/android/ads/AdMarvelXMLReader;)Lcom/admarvel/android/ads/AdMarvelAd;
:try_end_12c
.catch Ljava/lang/Exception; {:try_start_11f .. :try_end_12c} :catch_151
move-result-object v10
goto/16 :goto_56
:catch_12f
move-exception v2
const/4 v2, 0x0
goto/16 :goto_65
:cond_133
move-object/from16 v0, p0
iput-object v2, v0, Lcom/admarvel/android/ads/j;->a:Ljava/util/Map;
goto/16 :goto_74
:cond_139
sget-object v2, Lcom/admarvel/android/ads/a$a;->b:Lcom/admarvel/android/ads/a$a;
move-object/from16 v0, p0
iget-object v7, v0, Lcom/admarvel/android/ads/j;->a:Ljava/util/Map;
const/4 v12, 0x0
const/4 v14, 0x0
move-object/from16 v0, p0
iget-object v15, v0, Lcom/admarvel/android/ads/j;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAds;
invoke-virtual {v15}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->isAutoScalingEnabled()Z
move-result v15
const/16 v16, 0x0
invoke-virtual/range {v1 .. v16}, Lcom/admarvel/android/ads/a;->a(Lcom/admarvel/android/ads/a$a;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/os/Handler;ZZZ)Ljava/lang/String;
move-result-object v11
goto/16 :goto_8c
:catch_151
move-exception v1
:try_start_152
invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdType(Lcom/admarvel/android/ads/AdMarvelAd$AdType;)V
const/16 v1, 0x12f
invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorCode(I)V
:try_end_163
.catch Ljava/lang/Exception; {:try_start_152 .. :try_end_163} :catch_165
goto/16 :goto_56
:catch_165
move-exception v1
:try_start_166
invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdType(Lcom/admarvel/android/ads/AdMarvelAd$AdType;)V
const/16 v1, 0x12f
invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorCode(I)V
:try_end_177
.catch Ljava/lang/Exception; {:try_start_166 .. :try_end_177} :catch_179
goto/16 :goto_56
:catch_179
move-exception v1
sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdType(Lcom/admarvel/android/ads/AdMarvelAd$AdType;)V
const/16 v1, 0x12f
invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorCode(I)V
goto/16 :goto_56
:try_start_186
:cond_186
sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdType(Lcom/admarvel/android/ads/AdMarvelAd$AdType;)V
const/16 v1, 0x12f
invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorCode(I)V
:try_end_190
.catch Ljava/lang/Exception; {:try_start_186 .. :try_end_190} :catch_165
goto/16 :goto_56
:try_start_192
:cond_192
sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdType(Lcom/admarvel/android/ads/AdMarvelAd$AdType;)V
const/16 v1, 0x12f
invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorCode(I)V
:try_end_19c
.catch Ljava/lang/Exception; {:try_start_192 .. :try_end_19c} :catch_179
goto/16 :goto_56
.end method
.method protected a(Lcom/admarvel/android/ads/AdMarvelAd;)V
.registers 13
const/4 v10, 0x0
:try_start_1
invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdType()Lcom/admarvel/android/ads/AdMarvelAd$AdType;
move-result-object v0
sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
if-ne v0, v1, :cond_3c
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getErrorCode()I
move-result v0
invoke-static {v0}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
move-result-object v5
invoke-static {v5}, Lcom/admarvel/android/ads/ab;->a(Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)I
move-result v4
iget-object v0, p0, Lcom/admarvel/android/ads/j;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/content/Context;
if-eqz v1, :cond_3b
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;
move-result-object v0
const/4 v2, 0x0
const/4 v3, 0x0
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;
move-result-object v6
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I
move-result v7
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;
move-result-object v8
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;
move-result-object v9
invoke-virtual/range {v0 .. v9}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
:goto_3b
:cond_3b
return-void
:cond_3c
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdType()Lcom/admarvel/android/ads/AdMarvelAd$AdType;
move-result-object v0
sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->SDKCALL:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
if-ne v0, v1, :cond_b4
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getSdkNetwork()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_94
iget-object v0, p0, Lcom/admarvel/android/ads/j;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
iget-object v1, p0, Lcom/admarvel/android/ads/j;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAds;
iget-object v2, p0, Lcom/admarvel/android/ads/j;->a:Ljava/util/Map;
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getSdkNetwork()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, p1, v3, v0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->requestPendingAdapterAd(Ljava/util/Map;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;Landroid/content/Context;)V
:try_end_5d
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5d} :catch_5e
goto :goto_3b
:catch_5e
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
const/16 v0, 0x12f
invoke-static {v0}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
move-result-object v5
invoke-static {v5}, Lcom/admarvel/android/ads/ab;->a(Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)I
move-result v4
iget-object v0, p0, Lcom/admarvel/android/ads/j;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/content/Context;
if-eqz v1, :cond_3b
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;
move-result-object v0
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;
move-result-object v6
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I
move-result v7
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;
move-result-object v8
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;
move-result-object v9
move-object v2, v10
move-object v3, v10
invoke-virtual/range {v0 .. v9}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
goto :goto_3b
:cond_94
:try_start_94
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->isDisableAdrequest()Z
move-result v0
if-eqz v0, :cond_b4
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getDisableAdDuration()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_b4
iget-object v0, p0, Lcom/admarvel/android/ads/j;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
iget-object v2, p0, Lcom/admarvel/android/ads/j;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAds;
if-eqz v2, :cond_3b
if-eqz v0, :cond_3b
iget-object v2, p0, Lcom/admarvel/android/ads/j;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAds;
invoke-virtual {v2, v1, p1, v0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->disableAdRequest(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;)V
goto :goto_3b
:cond_b4
iget-object v0, p0, Lcom/admarvel/android/ads/j;->c:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_c7
iget-object v0, p0, Lcom/admarvel/android/ads/j;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
:goto_c0
iget-object v1, p0, Lcom/admarvel/android/ads/j;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAds;
invoke-virtual {v1, p1, v0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->requestPendingAdMarvelAd(Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;)V
:try_end_c5
.catch Ljava/lang/Exception; {:try_start_94 .. :try_end_c5} :catch_5e
goto/16 :goto_3b
:cond_c7
move-object v0, v10
goto :goto_c0
.end method
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/j;->a([Ljava/lang/Object;)Lcom/admarvel/android/ads/AdMarvelAd;
move-result-object v0
return-object v0
.end method
.method protected synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/admarvel/android/ads/AdMarvelAd;
invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/j;->a(Lcom/admarvel/android/ads/AdMarvelAd;)V
return-void
.end method