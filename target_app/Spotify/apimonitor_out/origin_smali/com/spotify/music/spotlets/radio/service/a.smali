.class public final Lcom/spotify/music/spotlets/radio/service/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/spotify/cosmos/android/Resolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Not called from main loop"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/bt;->b(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/service/a;->a:Landroid/os/Handler;

    invoke-static {p1}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/service/a;->b:Lcom/spotify/cosmos/android/Resolver;

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/a;->b:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->connect()V

    return-void
.end method

.method private a(Lcom/spotify/music/spotlets/radio/service/b;Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/music/spotlets/radio/service/b",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/spotify/music/spotlets/radio/service/RadioActionsBackendClient$2;

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/service/a;->a:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/spotify/music/spotlets/radio/service/RadioActionsBackendClient$2;-><init>(Lcom/spotify/music/spotlets/radio/service/a;Landroid/os/Handler;Lcom/spotify/music/spotlets/radio/service/b;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Lcom/spotify/music/spotlets/radio/service/b;Ljava/lang/Class;Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/JsonHttpCallbackReceiver;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/spotify/music/spotlets/radio/service/b",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/spotify/mobile/android/cosmos/JsonHttpCallbackReceiver",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/spotify/music/spotlets/radio/service/RadioActionsBackendClient$1;

    iget-object v2, p0, Lcom/spotify/music/spotlets/radio/service/a;->a:Landroid/os/Handler;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/spotify/music/spotlets/radio/service/RadioActionsBackendClient$1;-><init>(Lcom/spotify/music/spotlets/radio/service/a;Landroid/os/Handler;Ljava/lang/Class;Lcom/spotify/music/spotlets/radio/service/b;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/a;->b:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V

    return-void
.end method

.method public final a(Lcom/spotify/music/spotlets/radio/model/RadioStationModel;Lcom/spotify/music/spotlets/radio/service/b;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/music/spotlets/radio/model/RadioStationModel;",
            "Lcom/spotify/music/spotlets/radio/service/b",
            "<",
            "Lcom/spotify/music/spotlets/radio/model/NewRadioStationModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_6
    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/a;->b:Lcom/spotify/cosmos/android/Resolver;

    const-string v1, "hm://radio-apollo/v1/stations"

    invoke-static {v1, p1}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->post(Ljava/lang/String;Lcom/spotify/mobile/android/cosmos/JacksonModel;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;

    move-result-object v1

    const-class v2, Lcom/spotify/music/spotlets/radio/model/NewRadioStationModel;

    const-string v3, "hm://radio-apollo/v1/stations"

    invoke-direct {p0, p2, v2, v3}, Lcom/spotify/music/spotlets/radio/service/a;->a(Lcom/spotify/music/spotlets/radio/service/b;Ljava/lang/Class;Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/JsonHttpCallbackReceiver;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
    :try_end_1d
    .catch Lcom/spotify/mobile/android/cosmos/ParserException; {:try_start_6 .. :try_end_1d} :catch_1e

    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    const-string v1, "Failed to parse NewRadioStationModel object for \'%s\' backend action."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "hm://radio-apollo/v1/stations"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/spotify/music/spotlets/radio/service/b;->a()V

    goto :goto_1d
.end method

.method public final a(Lcom/spotify/music/spotlets/radio/service/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/music/spotlets/radio/service/b",
            "<",
            "Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/a;->b:Lcom/spotify/cosmos/android/Resolver;

    const-string v1, "hm://radio-apollo/v1/all"

    invoke-static {v1}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->get(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;

    move-result-object v1

    const-class v2, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;

    const-string v3, "hm://radio-apollo/v1/all"

    invoke-direct {p0, p1, v2, v3}, Lcom/spotify/music/spotlets/radio/service/a;->a(Lcom/spotify/music/spotlets/radio/service/b;Ljava/lang/Class;Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/JsonHttpCallbackReceiver;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/spotify/music/spotlets/radio/service/b;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/spotify/music/spotlets/radio/service/b",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "stationId can not be empty."

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/bt;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/a;->b:Lcom/spotify/cosmos/android/Resolver;

    const-string v1, "hm://radio-apollo/v1/stations/%s/touch"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->post(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;

    move-result-object v1

    const-string v2, "hm://radio-apollo/v1/stations/%s/touch"

    invoke-direct {p0, p2, v2}, Lcom/spotify/music/spotlets/radio/service/a;->a(Lcom/spotify/music/spotlets/radio/service/b;Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/spotify/music/spotlets/radio/service/b;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/spotify/music/spotlets/radio/service/b",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "stationId can not be empty."

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/bt;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/a;->b:Lcom/spotify/cosmos/android/Resolver;

    const-string v1, "hm://radio-apollo/v1/stations/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->delete(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;

    move-result-object v1

    const-string v2, "hm://radio-apollo/v1/stations/%s"

    invoke-direct {p0, p2, v2}, Lcom/spotify/music/spotlets/radio/service/a;->a(Lcom/spotify/music/spotlets/radio/service/b;Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z

    return-void
.end method

.method public final c(Ljava/lang/String;Lcom/spotify/music/spotlets/radio/service/b;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/spotify/music/spotlets/radio/service/b",
            "<",
            "Lcom/spotify/music/spotlets/radio/model/RadioStationTracksModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "stationId can not be empty."

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/bt;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "callback can not be null."

    invoke-static {p2, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hm://radio-apollo/v1/tracks/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/service/a;->b:Lcom/spotify/cosmos/android/Resolver;

    invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->get(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;

    move-result-object v2

    const-class v3, Lcom/spotify/music/spotlets/radio/model/RadioStationTracksModel;

    invoke-direct {p0, p2, v3, v0}, Lcom/spotify/music/spotlets/radio/service/a;->a(Lcom/spotify/music/spotlets/radio/service/b;Ljava/lang/Class;Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/JsonHttpCallbackReceiver;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z

    return-void
.end method
