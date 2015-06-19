.class Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$1;
.super Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;


# virtual methods
.method protected onError(Ljava/lang/Throwable;)V
    .registers 6

    const-string v0, "%s create slot - failed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;->b()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$1;->b:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;->c:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;->a(Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;)Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;

    return-void
.end method

.method protected onResolved(Lcom/spotify/cosmos/router/Response;)V
    .registers 6

    const-string v0, "%s create slot - successful"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;->b()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$1;->b:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;->a(Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;Ljava/lang/String;)V

    return-void
.end method
