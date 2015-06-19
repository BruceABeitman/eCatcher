.class Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/CosmosAlbumsDataLoader$1;
.super Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/b;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver",
        "<",
        "Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;Landroid/os/Handler;Ljava/lang/Class;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/CosmosAlbumsDataLoader$1;->a:Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;

    invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/CosmosAlbumsDataLoader$1;->a:Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->a(Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;)Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/b;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 6

    check-cast p2, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/CosmosAlbumsDataLoader$1;->a:Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;->a(Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/a;)Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/b;

    move-result-object v0

    iget-object v1, p2, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->contextUri:Ljava/lang/String;

    iget-boolean v2, p2, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->playing:Z

    invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/loader/b;->a(Ljava/lang/String;Z)V

    return-void
.end method
