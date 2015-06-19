.class public Lcom/spotify/cosmos/android/Resolver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_COSMOS_PROXY:Ljava/lang/String; = "com.spotify.mobile.service.action.COSMOS_PROXY"


# instance fields
.field private final mConnectionCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionMutex:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private mRemoteRouter:Lcom/spotify/cosmos/android/aidl/IRemoteRouter;

.field private final mServiceConnection:Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;

.field private mState:Lcom/spotify/cosmos/android/Resolver$State;

.field private final mSubscriptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;-><init>(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/cosmos/android/Resolver$1;)V

    iput-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mServiceConnection:Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mConnectionMutex:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mConnectionCallbacks:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mSubscriptions:Ljava/util/Set;

    sget-object v0, Lcom/spotify/cosmos/android/Resolver$State;->DISCONNECTED:Lcom/spotify/cosmos/android/Resolver$State;

    iput-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mState:Lcom/spotify/cosmos/android/Resolver$State;

    iput-object p1, p0, Lcom/spotify/cosmos/android/Resolver;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/spotify/cosmos/android/Resolver;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mConnectionMutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/spotify/cosmos/android/Resolver;)Lcom/spotify/cosmos/android/Resolver$State;
    .registers 2

    iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mState:Lcom/spotify/cosmos/android/Resolver$State;

    return-object v0
.end method

.method static synthetic access$102(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/cosmos/android/Resolver$State;)Lcom/spotify/cosmos/android/Resolver$State;
    .registers 2

    iput-object p1, p0, Lcom/spotify/cosmos/android/Resolver;->mState:Lcom/spotify/cosmos/android/Resolver$State;

    return-object p1
.end method

.method static synthetic access$200(Lcom/spotify/cosmos/android/Resolver;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/cosmos/android/Resolver;->doDisconnect()V

    return-void
.end method

.method static synthetic access$300(Lcom/spotify/cosmos/android/Resolver;)Lcom/spotify/cosmos/android/aidl/IRemoteRouter;
    .registers 2

    iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mRemoteRouter:Lcom/spotify/cosmos/android/aidl/IRemoteRouter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/cosmos/android/aidl/IRemoteRouter;)Lcom/spotify/cosmos/android/aidl/IRemoteRouter;
    .registers 2

    iput-object p1, p0, Lcom/spotify/cosmos/android/Resolver;->mRemoteRouter:Lcom/spotify/cosmos/android/aidl/IRemoteRouter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/spotify/cosmos/android/Resolver;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/cosmos/android/Resolver;->closeAllSubscriptions()V

    return-void
.end method

.method static synthetic access$500(Lcom/spotify/cosmos/android/Resolver;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/cosmos/android/Resolver;->notifyOnDisconnected()V

    return-void
.end method

.method private closeAllSubscriptions()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mSubscriptions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :try_start_12
    iget-object v2, p0, Lcom/spotify/cosmos/android/Resolver;->mRemoteRouter:Lcom/spotify/cosmos/android/aidl/IRemoteRouter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Lcom/spotify/cosmos/android/aidl/IRemoteRouter;->unsubscribe(I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1b} :catch_1c

    goto :goto_6

    :catch_1c
    move-exception v0

    goto :goto_6

    :cond_1e
    iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mSubscriptions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private deliverOnConnected(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;Landroid/os/Handler;)V
    .registers 5

    if-eqz p3, :cond_b

    new-instance v0, Lcom/spotify/cosmos/android/Resolver$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/spotify/cosmos/android/Resolver$1;-><init>(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;Lcom/spotify/cosmos/android/Resolver;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_a
    return-void

    :cond_b
    invoke-interface {p2, p1}, Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;->onServiceConnected(Lcom/spotify/cosmos/android/Resolver;)V

    goto :goto_a
.end method

.method private doConnect()V
    .registers 5

    sget-object v0, Lcom/spotify/cosmos/android/Resolver$State;->CONNECTING:Lcom/spotify/cosmos/android/Resolver$State;

    iput-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mState:Lcom/spotify/cosmos/android/Resolver$State;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.spotify.mobile.service.action.COSMOS_PROXY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/cosmos/android/Resolver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/spotify/cosmos/android/Resolver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/spotify/cosmos/android/Resolver;->mServiceConnection:Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/spotify/cosmos/android/Resolver$ConnectionError;->BIND_SERVICE_FAILED:Lcom/spotify/cosmos/android/Resolver$ConnectionError;

    invoke-virtual {p0, v0}, Lcom/spotify/cosmos/android/Resolver;->notifyOnConnectionFailed(Lcom/spotify/cosmos/android/Resolver$ConnectionError;)V

    sget-object v0, Lcom/spotify/cosmos/android/Resolver$State;->DISCONNECTED:Lcom/spotify/cosmos/android/Resolver$State;

    iput-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mState:Lcom/spotify/cosmos/android/Resolver$State;

    :cond_28
    return-void
.end method

.method private doDisconnect()V
    .registers 3

    invoke-direct {p0}, Lcom/spotify/cosmos/android/Resolver;->closeAllSubscriptions()V

    iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/cosmos/android/Resolver;->mServiceConnection:Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mRemoteRouter:Lcom/spotify/cosmos/android/aidl/IRemoteRouter;

    sget-object v0, Lcom/spotify/cosmos/android/Resolver$State;->DISCONNECTED:Lcom/spotify/cosmos/android/Resolver$State;

    iput-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mState:Lcom/spotify/cosmos/android/Resolver$State;

    return-void
.end method

.method private notifyOnDisconnected()V
    .registers 6

    iget-object v2, p0, Lcom/spotify/cosmos/android/Resolver;->mConnectionMutex:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mConnectionCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;

    iget-object v1, p0, Lcom/spotify/cosmos/android/Resolver;->mConnectionCallbacks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_2f

    new-instance v4, Lcom/spotify/cosmos/android/Resolver$2;

    invoke-direct {v4, p0, v0}, Lcom/spotify/cosmos/android/Resolver$2;-><init>(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2c

    goto :goto_d

    :catchall_2c
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2f
    :try_start_2f
    invoke-interface {v0, p0}, Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;->onServiceDisconnected(Lcom/spotify/cosmos/android/Resolver;)V

    goto :goto_d

    :cond_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_2c

    return-void
.end method


# virtual methods
.method public connect()V
    .registers 4

    iget-object v1, p0, Lcom/spotify/cosmos/android/Resolver;->mConnectionMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/spotify/cosmos/android/Resolver$4;->$SwitchMap$com$spotify$cosmos$android$Resolver$State:[I

    iget-object v2, p0, Lcom/spotify/cosmos/android/Resolver;->mState:Lcom/spotify/cosmos/android/Resolver$State;

    invoke-virtual {v2}, Lcom/spotify/cosmos/android/Resolver$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1a

    :goto_10
    monitor-exit v1

    return-void

    :pswitch_12
    invoke-direct {p0}, Lcom/spotify/cosmos/android/Resolver;->doConnect()V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_16

    goto :goto_10

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_12
    .end packed-switch
.end method

.method public destroy()V
    .registers 3

    iget-object v1, p0, Lcom/spotify/cosmos/android/Resolver;->mConnectionMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mConnectionCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-virtual {p0}, Lcom/spotify/cosmos/android/Resolver;->disconnect()V

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public disconnect()V
    .registers 4

    iget-object v1, p0, Lcom/spotify/cosmos/android/Resolver;->mConnectionMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/spotify/cosmos/android/Resolver$4;->$SwitchMap$com$spotify$cosmos$android$Resolver$State:[I

    iget-object v2, p0, Lcom/spotify/cosmos/android/Resolver;->mState:Lcom/spotify/cosmos/android/Resolver$State;

    invoke-virtual {v2}, Lcom/spotify/cosmos/android/Resolver$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1e

    sget-object v0, Lcom/spotify/cosmos/android/Resolver$State;->DISCONNECTED:Lcom/spotify/cosmos/android/Resolver$State;

    iput-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mState:Lcom/spotify/cosmos/android/Resolver$State;

    :goto_14
    :pswitch_14
    monitor-exit v1

    return-void

    :pswitch_16
    invoke-direct {p0}, Lcom/spotify/cosmos/android/Resolver;->doDisconnect()V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1a

    goto :goto_14

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_14
        :pswitch_16
    .end packed-switch
.end method

.method public get(Ljava/lang/String;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
    .registers 5

    new-instance v0, Lcom/spotify/cosmos/router/Request;

    const-string v1, "GET"

    invoke-direct {v0, v1, p1}, Lcom/spotify/cosmos/router/Request;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mState:Lcom/spotify/cosmos/android/Resolver$State;

    sget-object v1, Lcom/spotify/cosmos/android/Resolver$State;->CONNECTED:Lcom/spotify/cosmos/android/Resolver$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isConnecting()Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mState:Lcom/spotify/cosmos/android/Resolver$State;

    sget-object v1, Lcom/spotify/cosmos/android/Resolver$State;->CONNECTING:Lcom/spotify/cosmos/android/Resolver$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected notifyOnConnected()V
    .registers 5

    iget-object v2, p0, Lcom/spotify/cosmos/android/Resolver;->mConnectionMutex:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mConnectionCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;

    iget-object v1, p0, Lcom/spotify/cosmos/android/Resolver;->mConnectionCallbacks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-direct {p0, p0, v0, v1}, Lcom/spotify/cosmos/android/Resolver;->deliverOnConnected(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;Landroid/os/Handler;)V
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_25

    goto :goto_d

    :catchall_25
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_28
    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_25

    return-void
.end method

.method protected notifyOnConnectionFailed(Lcom/spotify/cosmos/android/Resolver$ConnectionError;)V
    .registers 7

    iget-object v2, p0, Lcom/spotify/cosmos/android/Resolver;->mConnectionMutex:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mConnectionCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;

    iget-object v1, p0, Lcom/spotify/cosmos/android/Resolver;->mConnectionCallbacks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_2f

    new-instance v4, Lcom/spotify/cosmos/android/Resolver$3;

    invoke-direct {v4, p0, v0, p1}, Lcom/spotify/cosmos/android/Resolver$3;-><init>(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;Lcom/spotify/cosmos/android/Resolver$ConnectionError;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2c

    goto :goto_d

    :catchall_2c
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2f
    :try_start_2f
    invoke-interface {v0, p0, p1}, Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;->onServiceConnectionFailed(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/cosmos/android/Resolver$ConnectionError;)V

    goto :goto_d

    :cond_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_2c

    return-void
.end method

.method public post(Ljava/lang/String;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
    .registers 5

    new-instance v0, Lcom/spotify/cosmos/router/Request;

    const-string v1, "POST"

    invoke-direct {v0, v1, p1}, Lcom/spotify/cosmos/router/Request;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z

    move-result v0

    return v0
.end method

.method public registerConnectionCallback(Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;)V
    .registers 5

    iget-object v1, p0, Lcom/spotify/cosmos/android/Resolver;->mConnectionMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mConnectionCallbacks:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/spotify/cosmos/android/Resolver;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    invoke-direct {p0, p0, p1, v0}, Lcom/spotify/cosmos/android/Resolver;->deliverOnConnected(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;Landroid/os/Handler;)V

    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerConnectionCallback(Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;Landroid/os/Handler;)V
    .registers 5

    iget-object v1, p0, Lcom/spotify/cosmos/android/Resolver;->mConnectionMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mConnectionCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/spotify/cosmos/android/Resolver;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p0, p1, p2}, Lcom/spotify/cosmos/android/Resolver;->deliverOnConnected(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;Landroid/os/Handler;)V

    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
    .registers 9

    iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mRemoteRouter:Lcom/spotify/cosmos/android/aidl/IRemoteRouter;

    if-eqz v0, :cond_4e

    :try_start_4
    iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mRemoteRouter:Lcom/spotify/cosmos/android/aidl/IRemoteRouter;

    invoke-virtual {p1}, Lcom/spotify/cosmos/router/Request;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/spotify/cosmos/router/Request;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/spotify/cosmos/router/Request;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lcom/spotify/cosmos/router/Request;->getBody()[B

    move-result-object v4

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/spotify/cosmos/android/aidl/IRemoteRouter;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2b

    iget-object v1, p0, Lcom/spotify/cosmos/android/Resolver;->mConnectionMutex:Ljava/lang/Object;

    monitor-enter v1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_30

    :try_start_21
    iget-object v2, p0, Lcom/spotify/cosmos/android/Resolver;->mSubscriptions:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_2d

    :cond_2b
    const/4 v0, 0x1

    :goto_2c
    return v0

    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v1

    throw v0
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_30} :catch_30

    :catch_30
    move-exception v0

    if-eqz p2, :cond_4e

    new-instance v1, Lcom/spotify/cosmos/android/ResolverException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not resolve service: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/spotify/cosmos/android/ResolverException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;->sendOnError(Ljava/lang/Throwable;)V

    :cond_4e
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public subscribe(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Lcom/spotify/cosmos/android/Subscription;
    .registers 9

    if-nez p2, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot call subscribe with a null receiver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mRemoteRouter:Lcom/spotify/cosmos/android/aidl/IRemoteRouter;

    if-eqz v0, :cond_57

    :try_start_e
    iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mRemoteRouter:Lcom/spotify/cosmos/android/aidl/IRemoteRouter;

    invoke-virtual {p1}, Lcom/spotify/cosmos/router/Request;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/spotify/cosmos/router/Request;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/spotify/cosmos/router/Request;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lcom/spotify/cosmos/router/Request;->getBody()[B

    move-result-object v4

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/spotify/cosmos/android/aidl/IRemoteRouter;->subscribe(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)I

    move-result v1

    iget-object v2, p0, Lcom/spotify/cosmos/android/Resolver;->mConnectionMutex:Ljava/lang/Object;

    monitor-enter v2
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_28} :catch_3b

    :try_start_28
    iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mSubscriptions:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_38

    :try_start_32
    new-instance v0, Lcom/spotify/cosmos/android/RemoteRouterSubscription;

    invoke-direct {v0, p0, v1}, Lcom/spotify/cosmos/android/RemoteRouterSubscription;-><init>(Lcom/spotify/cosmos/android/Resolver;I)V

    :goto_37
    return-object v0

    :catchall_38
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3b} :catch_3b

    :catch_3b
    move-exception v0

    new-instance v1, Lcom/spotify/cosmos/android/ResolverException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not subscribe to service: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/spotify/cosmos/android/ResolverException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;->sendOnError(Ljava/lang/Throwable;)V

    :cond_57
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public subscribe(Ljava/lang/String;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Lcom/spotify/cosmos/android/Subscription;
    .registers 5

    new-instance v0, Lcom/spotify/cosmos/router/Request;

    const-string v1, "SUB"

    invoke-direct {v0, v1, p1}, Lcom/spotify/cosmos/router/Request;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/spotify/cosmos/android/Resolver;->subscribe(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Lcom/spotify/cosmos/android/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public unregisterConnectionCallback(Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;)V
    .registers 4

    iget-object v1, p0, Lcom/spotify/cosmos/android/Resolver;->mConnectionMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mConnectionCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method unsubscribe(I)Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mRemoteRouter:Lcom/spotify/cosmos/android/aidl/IRemoteRouter;

    invoke-interface {v0, p1}, Lcom/spotify/cosmos/android/aidl/IRemoteRouter;->unsubscribe(I)V

    iget-object v1, p0, Lcom/spotify/cosmos/android/Resolver;->mConnectionMutex:Ljava/lang/Object;

    monitor-enter v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_17

    :try_start_8
    iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver;->mSubscriptions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1

    throw v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_17} :catch_17

    :catch_17
    move-exception v0

    const/4 v0, 0x0

    goto :goto_13
.end method
