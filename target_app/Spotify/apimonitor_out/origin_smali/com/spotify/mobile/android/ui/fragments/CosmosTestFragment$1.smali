.class final Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->a(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$1;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Lcom/spotify/cosmos/android/Resolver;)V
    .registers 4

    const-string v0, "Connected to service"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onServiceConnectionFailed(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/cosmos/android/Resolver$ConnectionError;)V
    .registers 7

    const-string v0, "Connection to service failed: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/spotify/cosmos/android/Resolver$ConnectionError;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onServiceDisconnected(Lcom/spotify/cosmos/android/Resolver;)V
    .registers 4

    const-string v0, "Service disconnected"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
