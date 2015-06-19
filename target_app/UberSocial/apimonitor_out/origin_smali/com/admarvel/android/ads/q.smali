.class Lcom/admarvel/android/ads/q;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;

.field private b:Ljava/lang/ref/WeakReference;

.field private final c:Ljava/lang/ref/WeakReference;

.field private final d:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/admarvel/android/ads/q;->d:Ljava/io/File;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/q;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Lcom/admarvel/android/ads/AdMarvelAd;
    .registers 22

    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Ljava/util/Map;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/admarvel/android/ads/q;->a:Ljava/util/Map;

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

    new-instance v2, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x6

    aget-object v1, p1, v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelView;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/admarvel/android/ads/q;->b:Ljava/lang/ref/WeakReference;

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

    const/16 v1, 0xa

    aget-object v1, p1, v1

    move-object v14, v1

    check-cast v14, Ljava/lang/Boolean;

    const/16 v1, 0xb

    aget-object v1, p1, v1

    move-object v15, v1

    check-cast v15, Ljava/lang/Boolean;

    new-instance v1, Lcom/admarvel/android/ads/a;

    invoke-direct {v1}, Lcom/admarvel/android/ads/a;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/admarvel/android/ads/q;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    if-eqz v3, :cond_1dc

    :try_start_68
    const-string v2, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"

    invoke-static {v2, v3}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/admarvel/android/ads/q;->a:Ljava/util/Map;

    invoke-virtual {v2, v9, v7}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->getEnhancedTargetParams(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_75} :catch_172

    move-result-object v2

    :goto_76
    if-eqz v2, :cond_8c

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/admarvel/android/ads/q;->a:Ljava/util/Map;

    if-eqz v7, :cond_176

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/admarvel/android/ads/q;->a:Ljava/util/Map;

    invoke-interface {v2, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/admarvel/android/ads/q;->a:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_8c
    :goto_8c
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/admarvel/android/ads/q;->b:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_17c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/admarvel/android/ads/q;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/AdMarvelView;

    :goto_9e
    if-eqz v2, :cond_a4

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelView;->a()Z

    move-result v16

    :cond_a4
    sget-boolean v2, Lcom/admarvel/android/ads/AdMarvelView;->b:Z

    if-eqz v2, :cond_17f

    sget-object v2, Lcom/admarvel/android/ads/a$a;->a:Lcom/admarvel/android/ads/a$a;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/admarvel/android/ads/q;->a:Ljava/util/Map;

    const/4 v12, 0x0

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-virtual/range {v1 .. v15}, Lcom/admarvel/android/ads/a;->a(Lcom/admarvel/android/ads/a$a;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/os/Handler;ZZ)Ljava/lang/String;

    move-result-object v11

    :goto_bb
    new-instance v10, Lcom/admarvel/android/ads/AdMarvelAd;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/admarvel/android/ads/q;->a:Ljava/util/Map;

    const/16 v18, 0x0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object v13, v8

    move-object v14, v9

    move-object v15, v4

    move/from16 v16, v5

    move-object/from16 v17, v6

    invoke-direct/range {v10 .. v19}, Lcom/admarvel/android/ads/AdMarvelAd;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->isLogDumpEnabled()Z

    move-result v2

    if-eqz v2, :cond_de

    invoke-virtual {v1}, Lcom/admarvel/android/ads/a;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setRequestJson(Lorg/json/JSONObject;)V

    :cond_de
    sget-boolean v1, Lcom/admarvel/android/ads/AdMarvelView;->b:Z

    if-eqz v1, :cond_13b

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

    :cond_13b
    if-eqz v11, :cond_1d1

    :try_start_13d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/admarvel/android/ads/q;->d:Ljava/io/File;

    invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->loadAd(Ljava/io/File;)Lcom/admarvel/android/ads/AdMarvelXMLReader;

    move-result-object v2

    if-eqz v2, :cond_1c6

    invoke-virtual {v10}, Lcom/admarvel/android/ads/AdMarvelAd;->getSdkNetwork()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_171

    invoke-virtual {v10}, Lcom/admarvel/android/ads/AdMarvelAd;->getSdkNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_154} :catch_1a7

    move-result v1

    if-lez v1, :cond_171

    :try_start_157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/admarvel/android/ads/q;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelView;

    if-eqz v1, :cond_171

    iget-object v1, v1, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/admarvel/android/ads/AdMarvelAd;->getSdkNetwork()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v1

    invoke-virtual {v1, v10, v2}, Lcom/admarvel/android/ads/AdMarvelAdapter;->loadAd(Lcom/admarvel/android/ads/AdMarvelAd;Lcom/admarvel/android/ads/AdMarvelXMLReader;)Lcom/admarvel/android/ads/AdMarvelAd;
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_170} :catch_194

    move-result-object v10

    :cond_171
    :goto_171
    return-object v10

    :catch_172
    move-exception v2

    const/4 v2, 0x0

    goto/16 :goto_76

    :cond_176
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/admarvel/android/ads/q;->a:Ljava/util/Map;

    goto/16 :goto_8c

    :cond_17c
    const/4 v2, 0x0

    goto/16 :goto_9e

    :cond_17f
    sget-object v2, Lcom/admarvel/android/ads/a$a;->a:Lcom/admarvel/android/ads/a$a;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/admarvel/android/ads/q;->a:Ljava/util/Map;

    const/4 v12, 0x0

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-virtual/range {v1 .. v16}, Lcom/admarvel/android/ads/a;->a(Lcom/admarvel/android/ads/a$a;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/os/Handler;ZZZ)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_bb

    :catch_194
    move-exception v1

    :try_start_195
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdType(Lcom/admarvel/android/ads/AdMarvelAd$AdType;)V

    const/16 v1, 0x12f

    invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorCode(I)V
    :try_end_1a6
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_1a6} :catch_1a7

    goto :goto_171

    :catch_1a7
    move-exception v1

    :try_start_1a8
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdType(Lcom/admarvel/android/ads/AdMarvelAd$AdType;)V

    const/16 v1, 0x12f

    invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorCode(I)V
    :try_end_1b9
    .catch Ljava/lang/Exception; {:try_start_1a8 .. :try_end_1b9} :catch_1ba

    goto :goto_171

    :catch_1ba
    move-exception v1

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdType(Lcom/admarvel/android/ads/AdMarvelAd$AdType;)V

    const/16 v1, 0x12f

    invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorCode(I)V

    goto :goto_171

    :cond_1c6
    :try_start_1c6
    sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdType(Lcom/admarvel/android/ads/AdMarvelAd$AdType;)V

    const/16 v1, 0x12f

    invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorCode(I)V
    :try_end_1d0
    .catch Ljava/lang/Exception; {:try_start_1c6 .. :try_end_1d0} :catch_1a7

    goto :goto_171

    :cond_1d1
    :try_start_1d1
    sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdType(Lcom/admarvel/android/ads/AdMarvelAd$AdType;)V

    const/16 v1, 0x12f

    invoke-virtual {v10, v1}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorCode(I)V
    :try_end_1db
    .catch Ljava/lang/Exception; {:try_start_1d1 .. :try_end_1db} :catch_1ba

    goto :goto_171

    :cond_1dc
    const/4 v10, 0x0

    goto :goto_171
.end method

.method protected a(Lcom/admarvel/android/ads/AdMarvelAd;)V
    .registers 12

    const/16 v9, 0x12f

    :try_start_2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_2c

    iget-object v0, p0, Lcom/admarvel/android/ads/q;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/AdMarvelView;

    if-eqz v2, :cond_2b

    const/16 v0, 0x12f

    invoke-static {v0}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v4

    invoke-static {v4}, Lcom/admarvel/android/ads/ab;->a(Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)I

    move-result v3

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelView;->getListenerImpl()Lcom/admarvel/android/ads/r;

    move-result-object v0

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    invoke-virtual/range {v0 .. v8}, Lcom/admarvel/android/ads/r;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelView;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdType()Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    move-result-object v0

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    if-ne v0, v1, :cond_9c

    iget-object v0, p0, Lcom/admarvel/android/ads/q;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/AdMarvelView;

    if-eqz v2, :cond_2b

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v4

    invoke-static {v4}, Lcom/admarvel/android/ads/ab;->a(Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)I

    move-result v3

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelView;->getListenerImpl()Lcom/admarvel/android/ads/r;

    move-result-object v0

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v6

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/admarvel/android/ads/r;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelView;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_65} :catch_66

    goto :goto_2b

    :catch_66
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v4

    invoke-static {v4}, Lcom/admarvel/android/ads/ab;->a(Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)I

    move-result v3

    iget-object v0, p0, Lcom/admarvel/android/ads/q;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/AdMarvelView;

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelView;->getListenerImpl()Lcom/admarvel/android/ads/r;

    move-result-object v0

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v6

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/admarvel/android/ads/r;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelView;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    goto :goto_2b

    :cond_9c
    :try_start_9c
    iget-object v0, p0, Lcom/admarvel/android/ads/q;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/admarvel/android/ads/q;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelView;

    if-eqz v0, :cond_c3

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelView;->a()Z

    move-result v1

    if-eqz v1, :cond_c3

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelView;->getListenerImpl()Lcom/admarvel/android/ads/r;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelView;->getListenerImpl()Lcom/admarvel/android/ads/r;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/admarvel/android/ads/r;->a(Lcom/admarvel/android/ads/AdMarvelView;Lcom/admarvel/android/ads/AdMarvelAd;)V

    goto/16 :goto_2b

    :cond_c3
    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdType()Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    move-result-object v0

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->SDKCALL:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    if-ne v0, v1, :cond_115

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getSdkNetwork()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f0

    iget-object v0, p0, Lcom/admarvel/android/ads/q;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelView;

    iget-object v1, p0, Lcom/admarvel/android/ads/q;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v0, :cond_2b

    if-eqz v1, :cond_2b

    iget-object v2, p0, Lcom/admarvel/android/ads/q;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getSdkNetwork()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/admarvel/android/ads/AdMarvelView;->a(Ljava/util/Map;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_2b

    :cond_f0
    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->isDisableAdrequest()Z

    move-result v0

    if-eqz v0, :cond_115

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getDisableAdDuration()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_115

    iget-object v0, p0, Lcom/admarvel/android/ads/q;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelView;

    iget-object v1, p0, Lcom/admarvel/android/ads/q;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v0, :cond_2b

    if-eqz v1, :cond_2b

    invoke-virtual {v0, v2, p1, v1}, Lcom/admarvel/android/ads/AdMarvelView;->a(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;)V

    goto/16 :goto_2b

    :cond_115
    iget-object v0, p0, Lcom/admarvel/android/ads/q;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelView;

    if-eqz v0, :cond_2b

    invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelView;->a(Lcom/admarvel/android/ads/AdMarvelAd;)V
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_122} :catch_66

    goto/16 :goto_2b
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/q;->a([Ljava/lang/Object;)Lcom/admarvel/android/ads/AdMarvelAd;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/q;->a(Lcom/admarvel/android/ads/AdMarvelAd;)V

    return-void
.end method
