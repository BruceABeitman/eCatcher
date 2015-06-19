.class public final Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Lcom/spotify/cosmos/android/Subscription;

.field private final c:Ljava/lang/Object;

.field private final d:Lcom/spotify/cosmos/android/Resolver;

.field private e:Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;

.field private f:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "[video subscription]"

    sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;->a:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;)Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;->f:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;->f:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;->b:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;

    if-ne v0, v1, :cond_30

    sget-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;->a:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;->f:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;->d:Lcom/spotify/cosmos/android/Resolver;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sp://ads/v1/adslots/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;->e:Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/cosmos/android/Resolver;->subscribe(Ljava/lang/String;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Lcom/spotify/cosmos/android/Subscription;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;->b:Lcom/spotify/cosmos/android/Subscription;

    const-string v0, "%s subscription created"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;->a:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_30
    return-void
.end method

.method static synthetic b()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;->a:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 6

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$2;->a:[I

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;->f:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_30

    :goto_10
    monitor-exit v1

    return-void

    :pswitch_12
    sget-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;->c:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;->f:Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription$State;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;->b:Lcom/spotify/cosmos/android/Subscription;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;->b:Lcom/spotify/cosmos/android/Subscription;

    invoke-interface {v0}, Lcom/spotify/cosmos/android/Subscription;->unsubscribe()Z

    :cond_1f
    const-string v0, "%s ads subscription stopped"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/spotify/mobile/android/spotlets/ads/AdSlotSubscription;->a:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2d

    goto :goto_10

    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method
