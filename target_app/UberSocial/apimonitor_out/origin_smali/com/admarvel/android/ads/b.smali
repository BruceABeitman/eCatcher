.class Lcom/admarvel/android/ads/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;

.field private static b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/admarvel/android/ads/b;->b()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/admarvel/android/ads/b;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/admarvel/android/ads/b;->b:Ljava/util/Map;

    sget-object v0, Lcom/admarvel/android/ads/b;->b:Ljava/util/Map;

    const-string v1, "ADMARVELGUID"

    sget-object v2, Lcom/admarvel/android/ads/b;->a:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
    .registers 3

    sget-object v0, Lcom/admarvel/android/ads/b;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_11

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelAdapter;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static a()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/admarvel/android/ads/b;->b:Ljava/util/Map;

    return-object v0
.end method

.method protected static declared-synchronized a(Ljava/lang/String;)V
    .registers 4

    const-class v1, Lcom/admarvel/android/ads/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/admarvel/android/ads/b;->b:Ljava/util/Map;

    invoke-static {}, Lcom/admarvel/android/ads/b;->b()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b()Ljava/util/Map;
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_5
    const-string v1, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->createInstance(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v1

    const-string v2, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_86

    :goto_10
    :try_start_10
    const-string v1, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->createInstance(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v1

    const-string v2, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_84

    :goto_1b
    :try_start_1b
    const-string v1, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->createInstance(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v1

    const-string v2, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_26} :catch_82

    :goto_26
    :try_start_26
    const-string v1, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->createInstance(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v1

    const-string v2, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_31} :catch_80

    :goto_31
    :try_start_31
    const-string v1, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->createInstance(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v1

    const-string v2, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3c} :catch_7e

    :goto_3c
    :try_start_3c
    const-string v1, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->createInstance(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v1

    const-string v2, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_47} :catch_7c

    :goto_47
    :try_start_47
    const-string v1, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->createInstance(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v1

    const-string v2, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_52} :catch_7a

    :goto_52
    :try_start_52
    const-string v1, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->createInstance(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v1

    const-string v2, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5d} :catch_78

    :goto_5d
    :try_start_5d
    const-string v1, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->createInstance(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v1

    const-string v2, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_68} :catch_76

    :goto_68
    :try_start_68
    const-string v1, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter"

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->createInstance(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v1

    const-string v2, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_73} :catch_74

    :goto_73
    return-object v0

    :catch_74
    move-exception v1

    goto :goto_73

    :catch_76
    move-exception v1

    goto :goto_68

    :catch_78
    move-exception v1

    goto :goto_5d

    :catch_7a
    move-exception v1

    goto :goto_52

    :catch_7c
    move-exception v1

    goto :goto_47

    :catch_7e
    move-exception v1

    goto :goto_3c

    :catch_80
    move-exception v1

    goto :goto_31

    :catch_82
    move-exception v1

    goto :goto_26

    :catch_84
    move-exception v1

    goto :goto_1b

    :catch_86
    move-exception v1

    goto :goto_10
.end method

.method protected static declared-synchronized b(Ljava/lang/String;)V
    .registers 3

    const-class v1, Lcom/admarvel/android/ads/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/admarvel/android/ads/b;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
    .registers 2

    sget-object v0, Lcom/admarvel/android/ads/b;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelAdapter;

    return-object v0
.end method
