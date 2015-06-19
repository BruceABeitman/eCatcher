.class Lcom/spotify/cosmos/android/RemoteNativeRouter$NullResolveCallback;
.super Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/spotify/cosmos/android/RemoteNativeRouter;


# direct methods
.method public constructor <init>(Lcom/spotify/cosmos/android/RemoteNativeRouter;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter$NullResolveCallback;->this$0:Lcom/spotify/cosmos/android/RemoteNativeRouter;

    invoke-direct {p0, p1, v0, v0}, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;-><init>(Lcom/spotify/cosmos/android/RemoteNativeRouter;Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;Lcom/spotify/cosmos/android/RemoteNativeRouter$1;)V

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method

.method public onResolved(Lcom/spotify/cosmos/router/Response;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
