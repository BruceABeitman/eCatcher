.class Lcom/pinguo/album/data/AlbumDataManager$DataObserver;
.super Landroid/database/ContentObserver;
.source "AlbumDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/data/AlbumDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataObserver"
.end annotation


# instance fields
.field private mNotifiers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/pinguo/album/data/DataNotifier;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/pinguo/album/data/AlbumDataManager$DataObserver;->mNotifiers:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public declared-synchronized onChange(Z)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/pinguo/album/data/AlbumDataManager$DataObserver;->mNotifiers:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1d

    move-result v2

    if-nez v2, :cond_13

    monitor-exit p0

    return-void

    :cond_13
    :try_start_13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/album/data/DataNotifier;

    invoke-virtual {v0, p1}, Lcom/pinguo/album/data/DataNotifier;->onChange(Z)V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1d

    goto :goto_b

    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerNotifier(Lcom/pinguo/album/data/DataNotifier;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pinguo/album/data/AlbumDataManager$DataObserver;->mNotifiers:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
