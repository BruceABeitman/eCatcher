.class public Lco/vine/android/service/VineServiceConnection;
.super Ljava/lang/Object;
.source "VineServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/service/VineServiceConnection$ServiceResponseHandler;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mLock:[I

.field private final mPendingQueue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lco/vine/android/service/PendingAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestQueue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lco/vine/android/service/PendingAction;",
            ">;"
        }
    .end annotation
.end field

.field private mResponseHandler:Lco/vine/android/service/VineServiceConnection$ServiceResponseHandler;

.field private mService:Landroid/os/Messenger;

.field private mServiceResponder:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lco/vine/android/service/VineServiceConnection$ServiceResponseHandler;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lco/vine/android/service/VineServiceConnection;->mPendingQueue:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lco/vine/android/service/VineServiceConnection;->mRequestQueue:Ljava/util/HashMap;

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lco/vine/android/service/VineServiceConnection;->mLock:[I

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lco/vine/android/service/VineServiceConnection$1;

    invoke-direct {v1, p0}, Lco/vine/android/service/VineServiceConnection$1;-><init>(Lco/vine/android/service/VineServiceConnection;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lco/vine/android/service/VineServiceConnection;->mServiceResponder:Landroid/os/Messenger;

    iput-object p1, p0, Lco/vine/android/service/VineServiceConnection;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lco/vine/android/service/VineServiceConnection;->mResponseHandler:Lco/vine/android/service/VineServiceConnection$ServiceResponseHandler;

    return-void
.end method

.method static synthetic access$000(Lco/vine/android/service/VineServiceConnection;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lco/vine/android/service/VineServiceConnection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lco/vine/android/service/VineServiceConnection;)Lco/vine/android/service/VineServiceConnection$ServiceResponseHandler;
    .registers 2

    iget-object v0, p0, Lco/vine/android/service/VineServiceConnection;->mResponseHandler:Lco/vine/android/service/VineServiceConnection$ServiceResponseHandler;

    return-object v0
.end method

.method private getMessage(Lco/vine/android/service/PendingAction;)Landroid/os/Message;
    .registers 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iget v1, p1, Lco/vine/android/service/PendingAction;->actionCode:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Lco/vine/android/service/PendingAction;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lco/vine/android/service/VineServiceConnection;->mServiceResponder:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    return-object v0
.end method

.method private sendMessage(Landroid/os/Messenger;Landroid/os/Message;)V
    .registers 6

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string v1, "Unable to send message to service"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method


# virtual methods
.method public cancelAll()V
    .registers 3

    iget-object v1, p0, Lco/vine/android/service/VineServiceConnection;->mLock:[I

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lco/vine/android/service/VineServiceConnection;->mRequestQueue:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lco/vine/android/service/VineServiceConnection;->mPendingQueue:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public generateRequestId()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x6

    invoke-static {v0}, Lco/vine/android/util/Util;->randomString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBound()Z
    .registers 2

    iget-object v0, p0, Lco/vine/android/service/VineServiceConnection;->mService:Landroid/os/Messenger;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPending(Ljava/lang/String;)Z
    .registers 4

    iget-object v1, p0, Lco/vine/android/service/VineServiceConnection;->mLock:[I

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lco/vine/android/service/VineServiceConnection;->mRequestQueue:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9

    iget-object v4, p0, Lco/vine/android/service/VineServiceConnection;->mLock:[I

    monitor-enter v4

    :try_start_3
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v2, p0, Lco/vine/android/service/VineServiceConnection;->mService:Landroid/os/Messenger;

    iget-object v3, p0, Lco/vine/android/service/VineServiceConnection;->mRequestQueue:Ljava/util/HashMap;

    iget-object v5, p0, Lco/vine/android/service/VineServiceConnection;->mPendingQueue:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v3, p0, Lco/vine/android/service/VineServiceConnection;->mPendingQueue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/service/PendingAction;

    invoke-direct {p0, v0}, Lco/vine/android/service/VineServiceConnection;->getMessage(Lco/vine/android/service/PendingAction;)Landroid/os/Message;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lco/vine/android/service/VineServiceConnection;->sendMessage(Landroid/os/Messenger;Landroid/os/Message;)V

    goto :goto_1b

    :catchall_2f
    move-exception v3

    monitor-exit v4
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v3

    :cond_32
    :try_start_32
    iget-object v3, p0, Lco/vine/android/service/VineServiceConnection;->mPendingQueue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    monitor-exit v4
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_2f

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v1, p0, Lco/vine/android/service/VineServiceConnection;->mLock:[I

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lco/vine/android/service/VineServiceConnection;->mService:Landroid/os/Messenger;

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public queueAndExecute(ILandroid/os/Bundle;)Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Lco/vine/android/service/VineServiceConnection;->generateRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lco/vine/android/service/PendingAction;

    invoke-direct {v0, p1, p2}, Lco/vine/android/service/PendingAction;-><init>(ILandroid/os/Bundle;)V

    const-string v3, "rid"

    invoke-virtual {p2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lco/vine/android/service/VineServiceConnection;->mLock:[I

    monitor-enter v4

    :try_start_11
    iget-object v2, p0, Lco/vine/android/service/VineServiceConnection;->mService:Landroid/os/Messenger;

    if-eqz v2, :cond_23

    iget-object v3, p0, Lco/vine/android/service/VineServiceConnection;->mRequestQueue:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lco/vine/android/service/VineServiceConnection;->getMessage(Lco/vine/android/service/PendingAction;)Landroid/os/Message;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lco/vine/android/service/VineServiceConnection;->sendMessage(Landroid/os/Messenger;Landroid/os/Message;)V

    :goto_21
    monitor-exit v4

    return-object v1

    :cond_23
    iget-object v3, p0, Lco/vine/android/service/VineServiceConnection;->mPendingQueue:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :catchall_29
    move-exception v3

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_29

    throw v3
.end method

.method public remove(Ljava/lang/String;)Lco/vine/android/service/PendingAction;
    .registers 5

    iget-object v2, p0, Lco/vine/android/service/VineServiceConnection;->mLock:[I

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lco/vine/android/service/VineServiceConnection;->mRequestQueue:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/service/PendingAction;

    iget-object v1, p0, Lco/vine/android/service/VineServiceConnection;->mRequestQueue:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-object v0

    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
