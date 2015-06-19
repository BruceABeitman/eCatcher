.class public abstract Lcom/admarvel/android/ads/AdMarvelAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static createInstance(Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
    .registers 2

    invoke-static {p0}, Lcom/admarvel/android/ads/AdMarvelAdapter;->createObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelAdapter;

    return-object v0
.end method

.method private static createObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_8} :catch_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_8} :catch_1c

    move-result-object v0

    :goto_9
    return-object v0

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_9

    :catch_13
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_9

    :catch_1c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_9
.end method


# virtual methods
.method protected abstract cleanupView(Landroid/view/View;)V
.end method

.method protected abstract displayInterstitial(Landroid/app/Activity;Ljava/lang/String;)V
.end method

.method protected abstract forceCloseFullScreenAd(Landroid/app/Activity;)V
.end method

.method public abstract getAdapterVersion()Ljava/lang/String;
.end method

.method protected abstract getAdnetworkSDKVersionInfo()Ljava/lang/String;
.end method

.method protected abstract initialize(Landroid/app/Activity;Ljava/util/Map;)V
.end method

.method protected abstract loadAd(Lcom/admarvel/android/ads/AdMarvelAd;Lcom/admarvel/android/ads/AdMarvelXMLReader;)Lcom/admarvel/android/ads/AdMarvelAd;
.end method

.method protected abstract pause(Landroid/app/Activity;Ljava/util/Map;)V
.end method

.method protected abstract requestIntersitialNewAd(Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/util/Map;II)V
.end method

.method protected abstract requestNewAd(Lcom/admarvel/android/ads/AdMarvelAdapterListener;Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/util/Map;II)Landroid/view/View;
.end method

.method protected abstract resume(Landroid/app/Activity;Ljava/util/Map;)V
.end method

.method protected abstract uninitialize(Landroid/app/Activity;Ljava/util/Map;)V
.end method
