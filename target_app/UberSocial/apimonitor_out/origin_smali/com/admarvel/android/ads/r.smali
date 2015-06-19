.class public Lcom/admarvel/android/ads/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;

.field private b:Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewExtendedListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/r;->a:Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;

    if-eqz v0, :cond_f

    const-string v0, "onExpand"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/r;->a:Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;

    invoke-interface {v0}, Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;->onExpand()V

    :goto_e
    return-void

    :cond_f
    const-string v0, "onExpand - No listener found"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelView;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    .registers 11

    :try_start_0
    const-string v0, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"

    invoke-static {v0, p1}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;

    move-result-object v0

    invoke-virtual {v0, p5, p6, p7, p8}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->onFailedToReceiveAd(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_2f

    :goto_9
    iget-object v0, p0, Lcom/admarvel/android/ads/r;->a:Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailedToReceiveAd : Error Code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/r;->a:Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;

    invoke-interface {v0, p2, p3, p4}, Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;->onFailedToReceiveAd(Lcom/admarvel/android/ads/AdMarvelView;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)V

    :goto_28
    return-void

    :cond_29
    const-string v0, "onFailedToReceiveAd - No listener found"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_28

    :catch_2f
    move-exception v0

    goto :goto_9
.end method

.method public a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelView;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    .registers 8

    :try_start_0
    const-string v0, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"

    invoke-static {v0, p1}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->onReceiveAd(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_1e

    :goto_9
    iget-object v0, p0, Lcom/admarvel/android/ads/r;->a:Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;

    if-eqz v0, :cond_18

    const-string v0, "onReceiveAd"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/r;->a:Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;

    invoke-interface {v0, p2}, Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;->onReceiveAd(Lcom/admarvel/android/ads/AdMarvelView;)V

    :goto_17
    return-void

    :cond_18
    const-string v0, "onReceiveAd - No listener found"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_17

    :catch_1e
    move-exception v0

    goto :goto_9
.end method

.method public a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelView;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    .registers 14

    :try_start_0
    const-string v0, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"

    invoke-static {v0, p1}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;

    move-result-object v0

    move-object v1, p4

    move v2, p5

    move-object v3, p6

    move-object v4, p3

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->onAdClick(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_23

    :goto_e
    iget-object v0, p0, Lcom/admarvel/android/ads/r;->a:Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;

    if-eqz v0, :cond_1d

    const-string v0, "onClickAd"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/r;->a:Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;

    invoke-interface {v0, p2, p3}, Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;->onClickAd(Lcom/admarvel/android/ads/AdMarvelView;Ljava/lang/String;)V

    :goto_1c
    return-void

    :cond_1d
    const-string v0, "onClickAd - No listener found"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_1c

    :catch_23
    move-exception v0

    goto :goto_e
.end method

.method public a(Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewExtendedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/admarvel/android/ads/r;->b:Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewExtendedListener;

    return-void
.end method

.method public a(Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;)V
    .registers 2

    iput-object p1, p0, Lcom/admarvel/android/ads/r;->a:Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;

    return-void
.end method

.method public a(Lcom/admarvel/android/ads/AdMarvelView;)V
    .registers 3

    iget-object v0, p0, Lcom/admarvel/android/ads/r;->a:Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;

    if-eqz v0, :cond_f

    const-string v0, "onRequestAd"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/r;->a:Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;

    invoke-interface {v0, p1}, Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;->onRequestAd(Lcom/admarvel/android/ads/AdMarvelView;)V

    :goto_e
    return-void

    :cond_f
    const-string v0, "onRequestAd - No listener found"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public a(Lcom/admarvel/android/ads/AdMarvelView;Lcom/admarvel/android/ads/AdMarvelAd;)V
    .registers 4

    iget-object v0, p0, Lcom/admarvel/android/ads/r;->b:Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewExtendedListener;

    if-eqz v0, :cond_f

    const-string v0, "onAdFetched"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/r;->b:Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewExtendedListener;

    invoke-interface {v0, p1, p2}, Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewExtendedListener;->onAdFetched(Lcom/admarvel/android/ads/AdMarvelView;Lcom/admarvel/android/ads/AdMarvelAd;)V

    :goto_e
    return-void

    :cond_f
    const-string v0, "onAdFetched - No listener found"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/r;->a:Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;

    if-eqz v0, :cond_f

    const-string v0, "onClose"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/r;->a:Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;

    invoke-interface {v0}, Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;->onClose()V

    :goto_e
    return-void

    :cond_f
    const-string v0, "onClose - No listener found"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public b(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelView;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    .registers 8

    :try_start_0
    const-string v0, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"

    invoke-static {v0, p1}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->onReceiveAd(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_1e

    :goto_9
    iget-object v0, p0, Lcom/admarvel/android/ads/r;->b:Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewExtendedListener;

    if-eqz v0, :cond_18

    const-string v0, "onDisplayedAd"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/r;->b:Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewExtendedListener;

    invoke-interface {v0, p2}, Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewExtendedListener;->onAdDisplayed(Lcom/admarvel/android/ads/AdMarvelView;)V

    :goto_17
    return-void

    :cond_18
    const-string v0, "onDisplayedAd - No listener found"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_17

    :catch_1e
    move-exception v0

    goto :goto_9
.end method
