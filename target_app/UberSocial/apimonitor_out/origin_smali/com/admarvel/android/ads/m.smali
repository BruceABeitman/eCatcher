.class Lcom/admarvel/android/ads/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/admarvel/android/ads/m;->a()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/admarvel/android/ads/m;->a:Ljava/util/Map;

    return-void
.end method

.method static a()Ljava/util/Map;
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_5
    const-string v1, "com.google.android.gms.ads.AdView"

    const-string v2, "com.google.android.gms.ads.AdView"

    invoke-static {v2}, Lcom/admarvel/android/ads/m;->b(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_af

    :goto_14
    :try_start_14
    const-string v1, "com.rhythmnewmedia.sdk.display.RhythmDisplayAdView"

    const-string v2, "com.rhythmnewmedia.sdk.display.RhythmDisplayAdView"

    invoke-static {v2}, Lcom/admarvel/android/ads/m;->b(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_23} :catch_ac

    :goto_23
    :try_start_23
    const-string v1, "com.greystripe.sdk.GSMobileBannerAdView"

    const-string v2, "com.greystripe.sdk.GSMobileBannerAdView"

    invoke-static {v2}, Lcom/admarvel/android/ads/m;->b(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_32} :catch_aa

    :goto_32
    :try_start_32
    const-string v1, "com.millennialmedia.android.MMAdView"

    const-string v2, "com.millennialmedia.android.MMAdView"

    invoke-static {v2}, Lcom/admarvel/android/ads/m;->b(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_41} :catch_a8

    :goto_41
    :try_start_41
    const-string v1, "com.amazon.device.ads.AdLayout"

    const-string v2, "com.amazon.device.ads.AdLayout"

    invoke-static {v2}, Lcom/admarvel/android/ads/m;->b(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_50} :catch_a6

    :goto_50
    :try_start_50
    const-string v1, "com.jirbo.adcolony.AdColony"

    const-string v2, "com.jirbo.adcolony.AdColony"

    invoke-static {v2}, Lcom/admarvel/android/ads/m;->b(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_5f} :catch_a4

    :goto_5f
    :try_start_5f
    const-string v1, "com.amobee.pulse3d.Pulse3DView"

    const-string v2, "com.amobee.pulse3d.Pulse3DView"

    invoke-static {v2}, Lcom/admarvel/android/ads/m;->b(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6e} :catch_a2

    :goto_6e
    :try_start_6e
    const-string v1, "com.facebook.ads.AdView"

    const-string v2, "com.facebook.ads.AdView"

    invoke-static {v2}, Lcom/admarvel/android/ads/m;->b(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_7d} :catch_a0

    :goto_7d
    :try_start_7d
    const-string v1, "com.inmobi.monetization.IMBanner"

    const-string v2, "com.inmobi.monetization.IMBanner"

    invoke-static {v2}, Lcom/admarvel/android/ads/m;->b(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_8c} :catch_9e

    :goto_8c
    :try_start_8c
    const-string v1, "com.heyzap.sdk.ads.VideoAd"

    const-string v2, "com.heyzap.sdk.ads.VideoAd"

    invoke-static {v2}, Lcom/admarvel/android/ads/m;->b(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_9b} :catch_9c

    :goto_9b
    return-object v0

    :catch_9c
    move-exception v1

    goto :goto_9b

    :catch_9e
    move-exception v1

    goto :goto_8c

    :catch_a0
    move-exception v1

    goto :goto_7d

    :catch_a2
    move-exception v1

    goto :goto_6e

    :catch_a4
    move-exception v1

    goto :goto_5f

    :catch_a6
    move-exception v1

    goto :goto_50

    :catch_a8
    move-exception v1

    goto :goto_41

    :catch_aa
    move-exception v1

    goto :goto_32

    :catch_ac
    move-exception v1

    goto/16 :goto_23

    :catch_af
    move-exception v1

    goto/16 :goto_14
.end method

.method static a(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/admarvel/android/ads/m;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method
