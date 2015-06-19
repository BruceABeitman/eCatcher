.class  Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/cosmos/router/ResolveCallback;
.field private mCallbackReceiver:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;
.field private mIsCancelled:Z
.field final synthetic this$0:Lcom/spotify/cosmos/android/RemoteNativeRouter;
.method private constructor <init>(Lcom/spotify/cosmos/android/RemoteNativeRouter;Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)V
.registers 4
iput-object p1, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;->this$0:Lcom/spotify/cosmos/android/RemoteNativeRouter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;->mCallbackReceiver:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;->mIsCancelled:Z
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/cosmos/android/RemoteNativeRouter;Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;Lcom/spotify/cosmos/android/RemoteNativeRouter$1;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;-><init>(Lcom/spotify/cosmos/android/RemoteNativeRouter;Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)V
return-void
.end method
.method public destroy()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;->mIsCancelled:Z
iget-object v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;->mCallbackReceiver:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;->mCallbackReceiver:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->destroy()V
:cond_c
return-void
.end method
.method public getId()I
.registers 2
iget-object v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;->mCallbackReceiver:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->getId()I
move-result v0
return v0
.end method
.method public onError(Ljava/lang/Throwable;)V
.registers 3
iget-object v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;->this$0:Lcom/spotify/cosmos/android/RemoteNativeRouter;
#getter for: Lcom/spotify/cosmos/android/RemoteNativeRouter;->mRouterDestroyed:Z
invoke-static {v0}, Lcom/spotify/cosmos/android/RemoteNativeRouter;->access$000(Lcom/spotify/cosmos/android/RemoteNativeRouter;)Z
move-result v0
if-nez v0, :cond_11
iget-boolean v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;->mIsCancelled:Z
if-nez v0, :cond_11
iget-object v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;->mCallbackReceiver:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;
invoke-virtual {v0, p1}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->sendOnError(Ljava/lang/Throwable;)V
:cond_11
return-void
.end method
.method public onResolved(Lcom/spotify/cosmos/router/Response;)Z
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;->this$0:Lcom/spotify/cosmos/android/RemoteNativeRouter;
#getter for: Lcom/spotify/cosmos/android/RemoteNativeRouter;->mRouterDestroyed:Z
invoke-static {v1}, Lcom/spotify/cosmos/android/RemoteNativeRouter;->access$000(Lcom/spotify/cosmos/android/RemoteNativeRouter;)Z
move-result v1
if-eqz v1, :cond_a
:goto_9
:cond_9
return v0
:cond_a
iget-boolean v1, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;->mIsCancelled:Z
if-eqz v1, :cond_27
iget-object v1, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;->this$0:Lcom/spotify/cosmos/android/RemoteNativeRouter;
#getter for: Lcom/spotify/cosmos/android/RemoteNativeRouter;->mSubscriptionMutex:Ljava/lang/Object;
invoke-static {v1}, Lcom/spotify/cosmos/android/RemoteNativeRouter;->access$100(Lcom/spotify/cosmos/android/RemoteNativeRouter;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_15
iget-object v2, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;->this$0:Lcom/spotify/cosmos/android/RemoteNativeRouter;
#getter for: Lcom/spotify/cosmos/android/RemoteNativeRouter;->mSubscriptions:Landroid/util/SparseArray;
invoke-static {v2}, Lcom/spotify/cosmos/android/RemoteNativeRouter;->access$200(Lcom/spotify/cosmos/android/RemoteNativeRouter;)Landroid/util/SparseArray;
move-result-object v2
invoke-virtual {p0}, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;->getId()I
move-result v3
invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V
monitor-exit v1
:try_end_23
.catchall {:try_start_15 .. :try_end_23} :catchall_24
goto :goto_9
:catchall_24
move-exception v0
monitor-exit v1
throw v0
:cond_27
iget-object v1, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;->mCallbackReceiver:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;
invoke-virtual {v1, p1}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->sendOnResolved(Lcom/spotify/cosmos/router/Response;)V
iget-boolean v1, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;->mIsCancelled:Z
if-nez v1, :cond_9
const/4 v0, 0x1
goto :goto_9
.end method