.class public Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;
.super Ljava/lang/Object;
.source "NearbyTransferAnyShare.java"

# interfaces
.implements Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$MyListener;,
        Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$MyListener;

.field private mListenerList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiveListener:Lcom/lenovo/channel/base/IShareReceiveListener;

.field private mReceiveListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiveUserTransferInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSendListener:Lcom/lenovo/channel/base/IShareSendListener;

.field private mSendListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSendUserTransferInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTask:Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mListenerList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mSendListeners:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveListeners:Ljava/util/List;

    new-instance v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$MyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$MyListener;-><init>(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$MyListener;)V

    iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$MyListener;

    new-instance v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$1;-><init>(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)V

    iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mSendListener:Lcom/lenovo/channel/base/IShareSendListener;

    new-instance v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$2;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$2;-><init>(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)V

    iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveListener:Lcom/lenovo/channel/base/IShareReceiveListener;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mSendUserTransferInfoMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveUserTransferInfoMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mSendUserTransferInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mSendListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveUserTransferInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)Ljava/util/LinkedList;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mListenerList:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public acceptUser(Ljava/lang/String;Z)V
    .registers 6

    sget-object v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "acceptUser : userId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", accept = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    if-nez v0, :cond_27

    :goto_26
    return-void

    :cond_27
    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/sharesdk/ShareWrapper;->acceptUser(Ljava/lang/String;Z)V

    goto :goto_26
.end method

.method public add(Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferTask;)V
    .registers 5

    sget-object v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "add : task = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mTask:Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferTask;

    return-void
.end method

.method public declared-synchronized addNearbyTransferListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addNearbyTransferListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mListenerList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1b

    move-result v0

    if-eqz v0, :cond_15

    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mListenerList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1b

    goto :goto_13

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addReceiveListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveListeners:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_15

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_15

    goto :goto_d

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addSendListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mSendListeners:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mSendListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_15

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mSendListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_15

    goto :goto_d

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public asClient(I)V
    .registers 5

    sget-object v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "asClient : flag = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    if-nez v0, :cond_1c

    :goto_1b
    return-void

    :cond_1c
    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_29

    const/4 v0, 0x1

    :goto_25
    invoke-virtual {v1, v0}, Lcom/lenovo/sharesdk/ShareWrapper;->startClient(Z)V

    goto :goto_1b

    :cond_29
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public asHost(I)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "asHost : flag = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v2

    if-nez v2, :cond_1e

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/sharesdk/ShareWrapper;->isSupportAP()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v2

    const/16 v3, 0x64

    if-ne p1, v3, :cond_31

    move v0, v1

    :cond_31
    invoke-virtual {v2, v0}, Lcom/lenovo/sharesdk/ShareWrapper;->startHost(Z)V

    move v0, v1

    goto :goto_1d
.end method

.method public connect(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "connect : ssid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    if-nez v0, :cond_1c

    :goto_1b
    return-void

    :cond_1c
    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/sharesdk/ShareWrapper;->connect(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public destroy()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$MyListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/sharesdk/ShareWrapper;->removeUserListener(Lcom/lenovo/channel/base/IUserListener;)V

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$MyListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/sharesdk/ShareWrapper;->removeNetworkStatusListener(Lcom/lenovo/network/base/INetworkStatusListener;)V

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mSendListener:Lcom/lenovo/channel/base/IShareSendListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/sharesdk/ShareWrapper;->removeSendListener(Lcom/lenovo/channel/base/IShareSendListener;)V

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveListener:Lcom/lenovo/channel/base/IShareReceiveListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/sharesdk/ShareWrapper;->removeReceiveListener(Lcom/lenovo/channel/base/IShareReceiveListener;)V

    :cond_32
    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mSendUserTransferInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveUserTransferInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mSendListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mListenerList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->destroyInstance()V

    return-void
.end method

.method public getReceivedFiles(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveUserTransferInfoMap:Ljava/util/Map;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveUserTransferInfoMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return-object v1

    :cond_12
    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveUserTransferInfoMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;

    invoke-virtual {v1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->getSuccessFiles()Ljava/util/List;

    move-result-object v1

    goto :goto_11
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;ZI)V
    .registers 8

    sget-object v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "init : userName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", autoDisableMobileData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/lenovo/sharesdk/ShareWrapper;->dataCollection(Landroid/content/Context;)V

    invoke-static {p1, p2, p4, p3}, Lcom/lenovo/sharesdk/ShareWrapper;->createInstance(Landroid/content/Context;Ljava/lang/String;IZ)V

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;

    invoke-direct {v1, p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/sharesdk/ShareWrapper;->setRemoteFileStore(Lcom/lenovo/channel/base/IRemoteFileStore;)V

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$MyListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/sharesdk/ShareWrapper;->addUserListener(Lcom/lenovo/channel/base/IUserListener;)V

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$MyListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/sharesdk/ShareWrapper;->addNetworkStatusListener(Lcom/lenovo/network/base/INetworkStatusListener;)V

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mSendListener:Lcom/lenovo/channel/base/IShareSendListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/sharesdk/ShareWrapper;->addSendListener(Lcom/lenovo/channel/base/IShareSendListener;)V

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveListener:Lcom/lenovo/channel/base/IShareReceiveListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/sharesdk/ShareWrapper;->addReceiveListener(Lcom/lenovo/channel/base/IShareReceiveListener;)V

    iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onPause()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/sharesdk/ShareWrapper;->onPause()V

    goto :goto_e
.end method

.method public onResume()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/sharesdk/ShareWrapper;->onResume()V

    goto :goto_e
.end method

.method public pause()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/sharesdk/ShareWrapper;->pause()V

    goto :goto_e
.end method

.method public declared-synchronized removeNearbyTransferListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeNearbyTransferListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mListenerList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1b

    move-result v0

    if-nez v0, :cond_15

    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mListenerList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1b

    goto :goto_13

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeReceiveListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveListeners:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_15

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_15

    goto :goto_d

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeSendListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mSendListeners:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mSendListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_15

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mSendListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_15

    goto :goto_d

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resume()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/sharesdk/ShareWrapper;->resume()V

    goto :goto_e
.end method

.method public startTask()V
    .registers 4

    sget-object v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mTask:Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferTask;

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/TaskConverUtils;->buildFilePathTask(Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferTask;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/sharesdk/ShareWrapper;->sendItems(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public stopClient()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopClient"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/sharesdk/ShareWrapper;->stopClient()V

    goto :goto_e
.end method

.method public stopHost()V
    .registers 2

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/sharesdk/ShareWrapper;->stopHost()V

    goto :goto_6
.end method

.method public stopTask()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
