.class Lcom/admarvel/android/ads/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/admarvel/android/ads/c;->a:Ljava/util/Map;

    return-void
.end method

.method static a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;
    .registers 3

    sget-object v0, Lcom/admarvel/android/ads/c;->a:Ljava/util/Map;

    if-nez v0, :cond_a

    invoke-static {p1}, Lcom/admarvel/android/ads/c;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/admarvel/android/ads/c;->a:Ljava/util/Map;

    :cond_a
    sget-object v0, Lcom/admarvel/android/ads/c;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;

    return-object v0
.end method

.method static a(Landroid/content/Context;)Ljava/util/Map;
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_5
    const-string v1, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"

    invoke-static {v1, p0}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;

    move-result-object v1

    const-string v2, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_11

    :goto_10
    return-object v0

    :catch_11
    move-exception v1

    goto :goto_10
.end method
