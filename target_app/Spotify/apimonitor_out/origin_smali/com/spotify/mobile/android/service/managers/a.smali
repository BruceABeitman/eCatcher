.class public final Lcom/spotify/mobile/android/service/managers/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;

.field private d:Lcom/spotify/cosmos/android/Resolver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;

    const/4 v1, 0x0

    sget-object v2, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;->b:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;->a:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/service/managers/a;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/managers/a;Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;)V
    .registers 6

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;->b:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->getInventoryType()Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->c:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->getEvent()Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "com.spotify.mobile.android.spotlets.ads.action.PLAY_VIDEO_AD"

    invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/service/managers/a;->a(Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;Ljava/lang/String;)V

    :cond_20
    :goto_20
    return-void

    :cond_21
    sget-object v0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->a:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->getEvent()Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "com.spotify.mobile.android.spotlets.ads.action.FETCH_VIDEO_AD"

    invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/service/managers/a;->a(Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;Ljava/lang/String;)V

    goto :goto_20

    :cond_33
    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->getAd()Lcom/spotify/mobile/android/spotlets/ads/model/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->getAdType()I

    move-result v0

    sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;->c:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_20

    sget-object v0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->c:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->getEvent()Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "Ad-Free Listening"

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->getAd()Lcom/spotify/mobile/android/spotlets/ads/model/Ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->getFeatureData()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "rewardType"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->getAd()Lcom/spotify/mobile/android/spotlets/ads/model/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->getFeatureData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "rewardValue"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v1, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/a;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;-><init>(Landroid/content/Context;Z)V

    const-string v2, "time"

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->getAd()Lcom/spotify/mobile/android/spotlets/ads/model/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->getFeatureData()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "rewardValue"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->a(Ljava/lang/String;I)V

    goto :goto_20
.end method

.method private a(Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/a;->b:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_AD_MODEL"

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->getAd()Lcom/spotify/mobile/android/spotlets/ads/model/Ad;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/managers/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/a;->c:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/a;->c:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;->a()V

    iput-object v1, p0, Lcom/spotify/mobile/android/service/managers/a;->c:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;

    :cond_c
    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/a;->d:Lcom/spotify/cosmos/android/Resolver;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/a;->d:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V

    iput-object v1, p0, Lcom/spotify/mobile/android/service/managers/a;->d:Lcom/spotify/cosmos/android/Resolver;

    :cond_17
    return-void
.end method
