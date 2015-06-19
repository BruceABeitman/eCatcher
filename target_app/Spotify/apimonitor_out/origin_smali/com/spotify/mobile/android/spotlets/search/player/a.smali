.class public final Lcom/spotify/mobile/android/spotlets/search/player/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/search/player/c;


# instance fields
.field a:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;

.field b:Lcom/spotify/mobile/android/spotlets/search/player/b;

.field private final d:Lcom/spotify/mobile/android/cosmos/player/v1/Player;


# direct methods
.method public constructor <init>(Lcom/spotify/cosmos/android/Resolver;Landroid/os/Handler;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/player/b;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/search/player/b;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/player/a;->b:Lcom/spotify/mobile/android/spotlets/search/player/b;

    new-instance v0, Lcom/spotify/mobile/android/cosmos/player/v1/Player;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;-><init>(Lcom/spotify/cosmos/android/Resolver;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/player/a;->d:Lcom/spotify/mobile/android/cosmos/player/v1/Player;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/player/a;->d:Lcom/spotify/mobile/android/cosmos/player/v1/Player;

    new-instance v2, Lcom/spotify/mobile/android/spotlets/search/player/CosmosSearchPlayer$1;

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const-class v3, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;

    invoke-direct {v2, p0, v0, v3}, Lcom/spotify/mobile/android/spotlets/search/player/CosmosSearchPlayer$1;-><init>(Lcom/spotify/mobile/android/spotlets/search/player/a;Landroid/os/Handler;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->subscribe(Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Lcom/spotify/cosmos/android/Subscription;

    return-void
.end method


# virtual methods
.method public final a()Landroid/database/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/database/Observable",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/player/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/player/a;->b:Lcom/spotify/mobile/android/spotlets/search/player/b;

    return-object v0
.end method

.method public final a(Ljava/util/List;Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;",
            ">;",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, -0x1

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;

    iget-object v4, v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;->uri:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v0, p2, :cond_21

    move v2, v1

    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_25
    if-gez v2, :cond_2c

    const-string v0, "Could not find track to play!"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    :cond_2c
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/player/a;->d:Lcom/spotify/mobile/android/cosmos/player/v1/Player;

    sget-object v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->PLAY:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;

    invoke-static {v1}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->create(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->contextUri(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->index(I)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->tracks(Ljava/util/List;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->viewUri(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->build()Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->play(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;)Ljava/lang/Boolean;

    return-void
.end method

.method public final b()Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/player/a;->a:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/player/a;->a:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/player/a;->c:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;

    goto :goto_6
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/player/a;->b:Lcom/spotify/mobile/android/spotlets/search/player/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/player/b;->unregisterAll()V

    return-void
.end method
