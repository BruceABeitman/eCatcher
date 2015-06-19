.class Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$13;
.super Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;
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
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Landroid/os/Handler;Ljava/lang/Class;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$13;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;

    invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$13;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->a(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 6

    check-cast p2, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;

    :try_start_2
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writerWithDefaultPrettyPrinter()Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/ObjectWriter;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$13;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;

    const-string v2, "player"

    invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->a(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_2 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$13;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->a(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Ljava/lang/Throwable;)V

    goto :goto_16
.end method
