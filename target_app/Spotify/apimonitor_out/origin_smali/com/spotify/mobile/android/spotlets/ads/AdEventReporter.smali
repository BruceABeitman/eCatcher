.class public final Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/spotify/cosmos/android/Resolver;

.field private b:Landroid/os/Handler;

.field private c:I

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->d:Ljava/lang/Object;

    invoke-static {p1}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->a:Lcom/spotify/cosmos/android/Resolver;

    if-eqz p2, :cond_16

    const/4 v0, 0x1

    :goto_13
    iput v0, p0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->c:I

    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/spotify/cosmos/router/Request;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/spotify/cosmos/router/Request;"
        }
    .end annotation

    sget-object v0, Lcom/spotify/cosmos/router/Request;->EMPTY_BODY:[B

    :try_start_2
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsBytes(Ljava/lang/Object;)[B
    :try_end_a
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_2 .. :try_end_a} :catch_16

    move-result-object v0

    :goto_b
    new-instance v1, Lcom/spotify/cosmos/router/Request;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/spotify/cosmos/router/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-object v1

    :catch_16
    move-exception v1

    const-string v1, "Invalid request body for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->d:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Lcom/spotify/cosmos/router/Request;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->b:Landroid/os/Handler;

    if-nez v0, :cond_19

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->b:Landroid/os/Handler;

    :cond_19
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1c
    iget v0, p0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->c:I

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_30

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->a:Lcom/spotify/cosmos/android/Resolver;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$1;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->b:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$1;-><init>(Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;Landroid/os/Handler;)V

    invoke-virtual {v0, p1, v1}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z

    return-void

    :catchall_30
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;)I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->c:I

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->a:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;Ljava/lang/String;)V
    .registers 5

    const-string v0, "Event type must not be null."

    invoke-static {p1, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad identifier must not be null for event type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sp://ads/v1/ads/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/event/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->post(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->a(Lcom/spotify/cosmos/router/Request;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->a:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;

    invoke-virtual {p0, v0, p1}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->a(Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "intent"

    const-string v2, "now"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "POST"

    const-string v2, "sp://ads/v1/adslots/watchnow"

    invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/spotify/cosmos/router/Request;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->a(Lcom/spotify/cosmos/router/Request;)V

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "skip"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v1, "reward"

    const-string v2, "skip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_14
    const-string v1, "POST"

    const-string v2, "sp://ads/v1/adslots/watchnow"

    invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/spotify/cosmos/router/Request;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->a(Lcom/spotify/cosmos/router/Request;)V

    return-void

    :cond_20
    const-string v1, "time"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, "reward"

    const-string v2, "time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reward_time"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_39
    const-string v1, "reward"

    const-string v2, "time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reward_time"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14
.end method
