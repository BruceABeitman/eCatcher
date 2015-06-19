.class Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$20;
.super Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$20;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;

    invoke-direct {p0, p2}, Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$20;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->a(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onResolved(Lcom/spotify/cosmos/router/Response;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$20;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;

    const-string v1, "player"

    const-string v2, "skipped to next"

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->a(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
