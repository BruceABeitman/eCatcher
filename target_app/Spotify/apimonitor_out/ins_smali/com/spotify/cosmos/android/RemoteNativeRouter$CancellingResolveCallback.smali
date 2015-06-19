.class  Lcom/spotify/cosmos/android/RemoteNativeRouter$CancellingResolveCallback;
.super Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;
.source "SourceFile"
.field final synthetic this$0:Lcom/spotify/cosmos/android/RemoteNativeRouter;
.method private constructor <init>(Lcom/spotify/cosmos/android/RemoteNativeRouter;Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)V
.registers 4
iput-object p1, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter$CancellingResolveCallback;->this$0:Lcom/spotify/cosmos/android/RemoteNativeRouter;
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;-><init>(Lcom/spotify/cosmos/android/RemoteNativeRouter;Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;Lcom/spotify/cosmos/android/RemoteNativeRouter$1;)V
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/cosmos/android/RemoteNativeRouter;Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;Lcom/spotify/cosmos/android/RemoteNativeRouter$1;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/spotify/cosmos/android/RemoteNativeRouter$CancellingResolveCallback;-><init>(Lcom/spotify/cosmos/android/RemoteNativeRouter;Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)V
return-void
.end method
.method public onResolved(Lcom/spotify/cosmos/router/Response;)Z
.registers 4
invoke-super {p0, p1}, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;->onResolved(Lcom/spotify/cosmos/router/Response;)Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter$CancellingResolveCallback;->this$0:Lcom/spotify/cosmos/android/RemoteNativeRouter;
invoke-virtual {p0}, Lcom/spotify/cosmos/android/RemoteNativeRouter$CancellingResolveCallback;->getId()I
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/cosmos/android/RemoteNativeRouter;->unsubscribe(I)V
:cond_f
const/4 v0, 0x0
return v0
.end method