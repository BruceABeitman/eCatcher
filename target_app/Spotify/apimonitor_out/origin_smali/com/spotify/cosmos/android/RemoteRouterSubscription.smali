.class public Lcom/spotify/cosmos/android/RemoteRouterSubscription;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/cosmos/android/Subscription;


# instance fields
.field private mResolver:Lcom/spotify/cosmos/android/Resolver;

.field private mSubscriptionId:I


# direct methods
.method constructor <init>(Lcom/spotify/cosmos/android/Resolver;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/cosmos/android/RemoteRouterSubscription;->mResolver:Lcom/spotify/cosmos/android/Resolver;

    iput p2, p0, Lcom/spotify/cosmos/android/RemoteRouterSubscription;->mSubscriptionId:I

    return-void
.end method


# virtual methods
.method public unsubscribe()Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/cosmos/android/RemoteRouterSubscription;->mResolver:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/spotify/cosmos/android/RemoteRouterSubscription;->mResolver:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    iget-object v0, p0, Lcom/spotify/cosmos/android/RemoteRouterSubscription;->mResolver:Lcom/spotify/cosmos/android/Resolver;

    iget v1, p0, Lcom/spotify/cosmos/android/RemoteRouterSubscription;->mSubscriptionId:I

    invoke-virtual {v0, v1}, Lcom/spotify/cosmos/android/Resolver;->unsubscribe(I)Z

    move-result v0

    goto :goto_11
.end method
