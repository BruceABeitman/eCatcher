.class public Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$State;,
        Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadSet;,
        Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapManager"

.field private static sManager:Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;


# instance fields
.field private final mThreadStatus:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;->sManager:Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    return-void
.end method

.method private declared-synchronized getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;

    if-nez v0, :cond_16

    new-instance v0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;-><init>(Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;)V

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    :cond_16
    monitor-exit p0

    return-object v0

    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized instance()Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;
    .registers 2

    const-class v1, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;->sManager:Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;

    if-nez v0, :cond_e

    new-instance v0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;

    invoke-direct {v0}, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;->sManager:Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;

    :cond_e
    sget-object v0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;->sManager:Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized setDecodingOptions(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;

    move-result-object v0

    iput-object p2, v0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized allowThreadDecoding(Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadSet;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_17

    move-result v2

    if-nez v2, :cond_d

    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;->allowThreadDecoding(Ljava/lang/Thread;)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_17

    goto :goto_5

    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized allowThreadDecoding(Ljava/lang/Thread;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;

    move-result-object v0

    sget-object v1, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$State;->ALLOW:Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$State;

    iput-object v1, v0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;->mState:Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$State;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canThreadDecoding(Ljava/lang/Thread;)Z
    .registers 6

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_17

    if-nez v1, :cond_e

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    :try_start_e
    iget-object v2, v1, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;->mState:Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$State;

    sget-object v3, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$State;->CANCEL:Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$State;
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_17

    if-eq v2, v3, :cond_15

    :goto_14
    goto :goto_c

    :cond_15
    const/4 v0, 0x0

    goto :goto_14

    :catchall_17
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized cancelThreadDecoding(Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadSet;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_17

    move-result v2

    if-nez v2, :cond_d

    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;->cancelThreadDecoding(Ljava/lang/Thread;)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_17

    goto :goto_5

    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized cancelThreadDecoding(Ljava/lang/Thread;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;

    move-result-object v0

    sget-object v1, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$State;->CANCEL:Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$State;

    iput-object v1, v0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;->mState:Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$State;

    iget-object v1, v0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v0, 0x0

    iget-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-eqz v2, :cond_6

    :goto_5
    return-object v0

    :cond_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;->canThreadDecoding(Ljava/lang/Thread;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string/jumbo v2, "BitmapManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Thread "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not allowed to decode."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_2e
    invoke-direct {p0, v1, p2}, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;->setDecodingOptions(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V

    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;->removeDecodingOptions(Ljava/lang/Thread;)V

    goto :goto_5
.end method

.method declared-synchronized removeDecodingOptions(Ljava/lang/Thread;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit p0

    throw v1
.end method
