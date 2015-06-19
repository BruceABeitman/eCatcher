.class public Lcom/spotify/cosmos/android/DeferredResolver;
.super Lcom/spotify/cosmos/android/Resolver;
.source "SourceFile"
.field private final mConnectionMutex:Ljava/lang/Object;
.field private final mResolverCallbacks:Ljava/util/List;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/cosmos/android/Resolver;-><init>(Landroid/content/Context;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/spotify/cosmos/android/DeferredResolver;->mResolverCallbacks:Ljava/util/List;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/spotify/cosmos/android/DeferredResolver;->mConnectionMutex:Ljava/lang/Object;
invoke-virtual {p0}, Lcom/spotify/cosmos/android/DeferredResolver;->connect()V
return-void
.end method
.method private deliverResolverConnected()V
.registers 4
iget-object v1, p0, Lcom/spotify/cosmos/android/DeferredResolver;->mConnectionMutex:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/spotify/cosmos/android/DeferredResolver;->mResolverCallbacks:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/cosmos/android/DeferredResolver$StateObserver;
invoke-interface {v0}, Lcom/spotify/cosmos/android/DeferredResolver$StateObserver;->onConnected()V
:try_end_18
.catchall {:try_start_3 .. :try_end_18} :catchall_19
goto :goto_9
:catchall_19
move-exception v0
monitor-exit v1
throw v0
:try_start_1c
:cond_1c
iget-object v0, p0, Lcom/spotify/cosmos/android/DeferredResolver;->mResolverCallbacks:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
monitor-exit v1
:try_end_22
.catchall {:try_start_1c .. :try_end_22} :catchall_19
return-void
.end method
.method private deliverResolverConnectionFailed(Lcom/spotify/cosmos/android/Resolver$ConnectionError;)V
.registers 5
iget-object v1, p0, Lcom/spotify/cosmos/android/DeferredResolver;->mConnectionMutex:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/spotify/cosmos/android/DeferredResolver;->mResolverCallbacks:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/cosmos/android/DeferredResolver$StateObserver;
invoke-interface {v0, p1}, Lcom/spotify/cosmos/android/DeferredResolver$StateObserver;->onConnectionFailed(Lcom/spotify/cosmos/android/Resolver$ConnectionError;)V
:try_end_18
.catchall {:try_start_3 .. :try_end_18} :catchall_19
goto :goto_9
:catchall_19
move-exception v0
monitor-exit v1
throw v0
:try_start_1c
:cond_1c
iget-object v0, p0, Lcom/spotify/cosmos/android/DeferredResolver;->mResolverCallbacks:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
monitor-exit v1
:try_end_22
.catchall {:try_start_1c .. :try_end_22} :catchall_19
return-void
.end method
.method private registerResolverCallbacks(Lcom/spotify/cosmos/android/DeferredResolver$StateObserver;)V
.registers 4
iget-object v1, p0, Lcom/spotify/cosmos/android/DeferredResolver;->mConnectionMutex:Ljava/lang/Object;
monitor-enter v1
if-eqz p1, :cond_a
:try_start_5
iget-object v0, p0, Lcom/spotify/cosmos/android/DeferredResolver;->mResolverCallbacks:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_a
monitor-exit v1
:try_end_b
.catchall {:try_start_5 .. :try_end_b} :catchall_c
return-void
:catchall_c
move-exception v0
monitor-exit v1
throw v0
.end method
.method public connect(Lcom/spotify/cosmos/android/DeferredResolver$StateObserver;)V
.registers 3
if-eqz p1, :cond_5
invoke-direct {p0, p1}, Lcom/spotify/cosmos/android/DeferredResolver;->registerResolverCallbacks(Lcom/spotify/cosmos/android/DeferredResolver$StateObserver;)V
:cond_5
invoke-virtual {p0}, Lcom/spotify/cosmos/android/DeferredResolver;->isConnected()Z
move-result v0
if-eqz v0, :cond_e
invoke-direct {p0}, Lcom/spotify/cosmos/android/DeferredResolver;->deliverResolverConnected()V
:cond_e
invoke-super {p0}, Lcom/spotify/cosmos/android/Resolver;->connect()V
return-void
.end method
.method public destroy()V
.registers 2
iget-object v0, p0, Lcom/spotify/cosmos/android/DeferredResolver;->mResolverCallbacks:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
invoke-super {p0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V
return-void
.end method
.method protected notifyOnConnected()V
.registers 1
invoke-super {p0}, Lcom/spotify/cosmos/android/Resolver;->notifyOnConnected()V
invoke-direct {p0}, Lcom/spotify/cosmos/android/DeferredResolver;->deliverResolverConnected()V
return-void
.end method
.method protected notifyOnConnectionFailed(Lcom/spotify/cosmos/android/Resolver$ConnectionError;)V
.registers 2
invoke-super {p0, p1}, Lcom/spotify/cosmos/android/Resolver;->notifyOnConnectionFailed(Lcom/spotify/cosmos/android/Resolver$ConnectionError;)V
invoke-direct {p0, p1}, Lcom/spotify/cosmos/android/DeferredResolver;->deliverResolverConnectionFailed(Lcom/spotify/cosmos/android/Resolver$ConnectionError;)V
return-void
.end method
.method public resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
.registers 4
invoke-virtual {p0}, Lcom/spotify/cosmos/android/DeferredResolver;->isConnected()Z
move-result v0
if-eqz v0, :cond_b
invoke-super {p0, p1, p2}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
move-result v0
:goto_a
return v0
:cond_b
new-instance v0, Lcom/spotify/cosmos/android/DeferredResolver$1;
invoke-direct {v0, p0, p1, p2}, Lcom/spotify/cosmos/android/DeferredResolver$1;-><init>(Lcom/spotify/cosmos/android/DeferredResolver;Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)V
invoke-direct {p0, v0}, Lcom/spotify/cosmos/android/DeferredResolver;->registerResolverCallbacks(Lcom/spotify/cosmos/android/DeferredResolver$StateObserver;)V
const/4 v0, 0x1
goto :goto_a
.end method
.method public subscribe(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Lcom/spotify/cosmos/android/Subscription;
.registers 5
invoke-virtual {p0}, Lcom/spotify/cosmos/android/DeferredResolver;->isConnected()Z
move-result v0
if-eqz v0, :cond_10
new-instance v0, Lcom/spotify/cosmos/android/DeferredResolver$SubscriptionProxy;
invoke-super {p0, p1, p2}, Lcom/spotify/cosmos/android/Resolver;->subscribe(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Lcom/spotify/cosmos/android/Subscription;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/cosmos/android/DeferredResolver$SubscriptionProxy;-><init>(Lcom/spotify/cosmos/android/Subscription;)V
:goto_f
return-object v0
:cond_10
new-instance v0, Lcom/spotify/cosmos/android/DeferredResolver$SubscriptionProxy;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/spotify/cosmos/android/DeferredResolver$SubscriptionProxy;-><init>(Lcom/spotify/cosmos/android/Subscription;)V
new-instance v1, Lcom/spotify/cosmos/android/DeferredResolver$2;
invoke-direct {v1, p0, v0, p1, p2}, Lcom/spotify/cosmos/android/DeferredResolver$2;-><init>(Lcom/spotify/cosmos/android/DeferredResolver;Lcom/spotify/cosmos/android/DeferredResolver$SubscriptionProxy;Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)V
invoke-direct {p0, v1}, Lcom/spotify/cosmos/android/DeferredResolver;->registerResolverCallbacks(Lcom/spotify/cosmos/android/DeferredResolver$StateObserver;)V
goto :goto_f
.end method