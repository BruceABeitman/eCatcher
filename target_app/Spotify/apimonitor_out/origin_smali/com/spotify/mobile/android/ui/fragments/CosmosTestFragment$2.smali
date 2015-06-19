.class Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$2;
.super Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->a(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$2;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;

    invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$2;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->a(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;

    iget-boolean v0, p2, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->playing:Z

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$2;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->a(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Z)Z

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$2;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->c(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$2;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->a(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)Ljava/lang/String;

    move-result-object v0

    :goto_17
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$2;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->b(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method
