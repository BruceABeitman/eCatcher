.class public Lcom/spotify/mobile/android/cosmos/player/v1/Player;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PLAYER_URI:Ljava/lang/String; = "sp://player/v1/main"


# instance fields
.field private final mResolver:Lcom/spotify/cosmos/android/Resolver;


# direct methods
.method public constructor <init>(Lcom/spotify/cosmos/android/Resolver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->mResolver:Lcom/spotify/cosmos/android/Resolver;

    return-void
.end method


# virtual methods
.method public pause()Ljava/lang/Boolean;
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->PAUSE:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;

    invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->create(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->build()Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->sendRequestWithState(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public pause(Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Ljava/lang/Boolean;
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->PAUSE:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;

    invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->create(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->build()Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->sendRequestWithState(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public play(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;)Ljava/lang/Boolean;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->sendRequestWithState(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public play(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Ljava/lang/Boolean;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->sendRequestWithState(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public resume()Ljava/lang/Boolean;
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->RESUME:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;

    invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->create(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->build()Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->sendRequestWithState(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public resume(Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Ljava/lang/Boolean;
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->RESUME:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;

    invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->create(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->build()Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->sendRequestWithState(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public sendRequestWithState(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Ljava/lang/Boolean;
    .registers 8

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot play with null player state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :try_start_a
    new-instance v0, Lcom/spotify/cosmos/router/Request;

    const-string v1, "POST"

    const-string v2, "sp://player/v1/main"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/spotify/mobile/android/cosmos/JacksonSerializer;->toBytes(Lcom/spotify/mobile/android/cosmos/JacksonModel;)[B

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/spotify/cosmos/router/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    iget-object v1, p0, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->mResolver:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v1, v0, p2}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_25
    .catch Lcom/spotify/mobile/android/cosmos/ParserException; {:try_start_a .. :try_end_25} :catch_27

    move-result-object v0

    :goto_26
    return-object v0

    :catch_27
    move-exception v0

    if-eqz p2, :cond_2d

    invoke-virtual {p2, v0}, Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;->sendOnError(Ljava/lang/Throwable;)V

    :cond_2d
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_26
.end method

.method public skipToNextTrack()Ljava/lang/Boolean;
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->SKIP_NEXT:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;

    invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->create(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->build()Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->sendRequestWithState(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public skipToNextTrack(Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Ljava/lang/Boolean;
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->SKIP_NEXT:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;

    invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->create(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->build()Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->sendRequestWithState(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public skipToPreviousTrack()Ljava/lang/Boolean;
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->SKIP_PREV:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;

    invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->create(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->build()Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->sendRequestWithState(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public skipToPreviousTrack(Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Ljava/lang/Boolean;
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->SKIP_PREV:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;

    invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->create(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->build()Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->sendRequestWithState(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Lcom/spotify/cosmos/android/Subscription;
    .registers 5

    new-instance v0, Lcom/spotify/cosmos/router/Request;

    const-string v1, "SUB"

    const-string v2, "sp://player/v1/main"

    invoke-direct {v0, v1, v2}, Lcom/spotify/cosmos/router/Request;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->mResolver:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v1, v0, p1}, Lcom/spotify/cosmos/android/Resolver;->subscribe(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Lcom/spotify/cosmos/android/Subscription;

    move-result-object v0

    return-object v0
.end method
