.class public Lcom/spotify/cosmos/android/RemoteNativeRouter;
.super Lcom/spotify/cosmos/android/aidl/IRemoteRouter$Stub;
.source "SourceFile"
.field public static final INVALID_SUBSCRIPTION_ID:I = -0x1
.field private final mDestroyCallbackReceivers:Ljava/util/List;
.field private final mNativeRouter:Lcom/spotify/cosmos/router/Router;
.field private mRouterDestroyed:Z
.field private final mSubscriptionMutex:Ljava/lang/Object;
.field private final mSubscriptions:Landroid/util/SparseArray;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/spotify/cosmos/android/aidl/IRemoteRouter$Stub;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mDestroyCallbackReceivers:Ljava/util/List;
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mSubscriptions:Landroid/util/SparseArray;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mSubscriptionMutex:Ljava/lang/Object;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mRouterDestroyed:Z
new-instance v0, Lcom/spotify/cosmos/router/NativeRouter;
invoke-direct {v0}, Lcom/spotify/cosmos/router/NativeRouter;-><init>()V
iput-object v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mNativeRouter:Lcom/spotify/cosmos/router/Router;
return-void
.end method
.method public constructor <init>(Lcom/spotify/cosmos/router/Router;)V
.registers 3
invoke-direct {p0}, Lcom/spotify/cosmos/android/aidl/IRemoteRouter$Stub;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mDestroyCallbackReceivers:Ljava/util/List;
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mSubscriptions:Landroid/util/SparseArray;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mSubscriptionMutex:Ljava/lang/Object;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mRouterDestroyed:Z
iput-object p1, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mNativeRouter:Lcom/spotify/cosmos/router/Router;
return-void
.end method
.method static synthetic access$000(Lcom/spotify/cosmos/android/RemoteNativeRouter;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mRouterDestroyed:Z
return v0
.end method
.method static synthetic access$100(Lcom/spotify/cosmos/android/RemoteNativeRouter;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mSubscriptionMutex:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic access$200(Lcom/spotify/cosmos/android/RemoteNativeRouter;)Landroid/util/SparseArray;
.registers 2
iget-object v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mSubscriptions:Landroid/util/SparseArray;
return-object v0
.end method
.method public destroy()V
.registers 6
iget-object v2, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mDestroyCallbackReceivers:Ljava/util/List;
monitor-enter v2
:try_start_3
iget-boolean v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mRouterDestroyed:Z
if-eqz v0, :cond_12
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Router already destroyed"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_f
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_f
move-exception v0
monitor-exit v2
throw v0
:cond_12
:try_start_12
iget-object v3, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mSubscriptionMutex:Ljava/lang/Object;
monitor-enter v3
:try_end_15
.catchall {:try_start_12 .. :try_end_15} :catchall_f
const/4 v0, 0x0
move v1, v0
:try_start_17
:goto_17
iget-object v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mSubscriptions:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->size()I
move-result v0
if-ge v1, v0, :cond_36
iget-object v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mSubscriptions:Landroid/util/SparseArray;
invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I
move-result v0
iget-object v4, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mSubscriptions:Landroid/util/SparseArray;
invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;
if-eqz v0, :cond_32
invoke-virtual {v0}, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;->destroy()V
:cond_32
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_17
:cond_36
iget-object v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mSubscriptions:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
monitor-exit v3
:try_end_3c
.catchall {:try_start_17 .. :try_end_3c} :catchall_5a
:try_start_3c
iget-object v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mNativeRouter:Lcom/spotify/cosmos/router/Router;
invoke-interface {v0}, Lcom/spotify/cosmos/router/Router;->destroy()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mRouterDestroyed:Z
iget-object v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mDestroyCallbackReceivers:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_4a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->sendOnDestroy()V
goto :goto_4a
:catchall_5a
move-exception v0
monitor-exit v3
throw v0
:cond_5d
iget-object v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mDestroyCallbackReceivers:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
monitor-exit v2
:try_end_63
.catchall {:try_start_3c .. :try_end_63} :catchall_f
return-void
.end method
.method public getNativeRouter()Lcom/spotify/cosmos/router/Router;
.registers 2
iget-object v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mNativeRouter:Lcom/spotify/cosmos/router/Router;
return-object v0
.end method
.method public registerDestroyCallback(Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;)V
.registers 5
iget-object v1, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mDestroyCallbackReceivers:Ljava/util/List;
monitor-enter v1
:try_start_3
iget-boolean v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mRouterDestroyed:Z
if-eqz v0, :cond_12
new-instance v0, Ljava/lang/IllegalStateException;
const-string v2, "Router already destroyed"
invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_f
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_f
move-exception v0
monitor-exit v1
throw v0
:cond_12
:try_start_12
iget-object v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mDestroyCallbackReceivers:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
monitor-exit v1
:try_end_18
.catchall {:try_start_12 .. :try_end_18} :catchall_f
return-void
.end method
.method public resolve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)I
.registers 11
iget-boolean v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mRouterDestroyed:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Router already destroyed"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
new-instance v1, Lcom/spotify/cosmos/router/Request;
invoke-direct {v1, p1, p2, p3, p4}, Lcom/spotify/cosmos/router/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
if-nez p5, :cond_2e
new-instance v0, Lcom/spotify/cosmos/android/RemoteNativeRouter$NullResolveCallback;
invoke-direct {v0, p0}, Lcom/spotify/cosmos/android/RemoteNativeRouter$NullResolveCallback;-><init>(Lcom/spotify/cosmos/android/RemoteNativeRouter;)V
:goto_18
invoke-virtual {v0}, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;->getId()I
move-result v2
const/4 v3, -0x1
if-eq v2, v3, :cond_28
iget-object v3, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mSubscriptionMutex:Ljava/lang/Object;
monitor-enter v3
:try_start_22
iget-object v4, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mSubscriptions:Landroid/util/SparseArray;
invoke-virtual {v4, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
monitor-exit v3
:cond_28
:try_end_28
.catchall {:try_start_22 .. :try_end_28} :catchall_35
iget-object v3, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mNativeRouter:Lcom/spotify/cosmos/router/Router;
invoke-interface {v3, v1, v0}, Lcom/spotify/cosmos/router/Router;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/router/ResolveCallback;)V
return v2
:cond_2e
new-instance v0, Lcom/spotify/cosmos/android/RemoteNativeRouter$CancellingResolveCallback;
const/4 v2, 0x0
invoke-direct {v0, p0, p5, v2}, Lcom/spotify/cosmos/android/RemoteNativeRouter$CancellingResolveCallback;-><init>(Lcom/spotify/cosmos/android/RemoteNativeRouter;Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;Lcom/spotify/cosmos/android/RemoteNativeRouter$1;)V
goto :goto_18
:catchall_35
move-exception v0
monitor-exit v3
throw v0
.end method
.method public subscribe(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)I
.registers 11
iget-boolean v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mRouterDestroyed:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Router already destroyed"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
if-nez p5, :cond_16
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cannot call subscribe with null callback receiver"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
new-instance v0, Lcom/spotify/cosmos/router/Request;
invoke-direct {v0, p1, p2, p3, p4}, Lcom/spotify/cosmos/router/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
new-instance v1, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;
const/4 v2, 0x0
invoke-direct {v1, p0, p5, v2}, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;-><init>(Lcom/spotify/cosmos/android/RemoteNativeRouter;Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;Lcom/spotify/cosmos/android/RemoteNativeRouter$1;)V
invoke-virtual {v1}, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;->getId()I
move-result v2
iget-object v3, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mSubscriptionMutex:Ljava/lang/Object;
monitor-enter v3
:try_start_28
iget-object v4, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mSubscriptions:Landroid/util/SparseArray;
invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
monitor-exit v3
:try_end_2e
.catchall {:try_start_28 .. :try_end_2e} :catchall_34
iget-object v3, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mNativeRouter:Lcom/spotify/cosmos/router/Router;
invoke-interface {v3, v0, v1}, Lcom/spotify/cosmos/router/Router;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/router/ResolveCallback;)V
return v2
:catchall_34
move-exception v0
monitor-exit v3
throw v0
.end method
.method public unsubscribe(I)V
.registers 4
const/4 v0, -0x1
if-ne p1, v0, :cond_4
:goto_3
return-void
:cond_4
iget-object v1, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mSubscriptionMutex:Ljava/lang/Object;
monitor-enter v1
:try_start_7
iget-object v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mSubscriptions:Landroid/util/SparseArray;
invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;
if-eqz v0, :cond_19
invoke-virtual {v0}, Lcom/spotify/cosmos/android/RemoteNativeRouter$SubscriptionResolveCallback;->destroy()V
iget-object v0, p0, Lcom/spotify/cosmos/android/RemoteNativeRouter;->mSubscriptions:Landroid/util/SparseArray;
invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
:cond_19
monitor-exit v1
:try_end_1a
.catchall {:try_start_7 .. :try_end_1a} :catchall_1b
goto :goto_3
:catchall_1b
move-exception v0
monitor-exit v1
throw v0
.end method