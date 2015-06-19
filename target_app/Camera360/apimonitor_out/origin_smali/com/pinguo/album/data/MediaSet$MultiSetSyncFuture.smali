.class Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;
.super Ljava/lang/Object;
.source "MediaSet.java"

# interfaces
.implements Lcom/pinguo/album/Future;
.implements Lcom/pinguo/album/data/MediaSet$SyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/data/MediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSetSyncFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pinguo/album/Future",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/pinguo/album/data/MediaSet$SyncListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery.MultiSetSync"


# instance fields
.field private final mFutures:[Lcom/pinguo/album/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/pinguo/album/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCancelled:Z

.field private final mListener:Lcom/pinguo/album/data/MediaSet$SyncListener;

.field private mPendingCount:I

.field private mResult:I

.field final synthetic this$0:Lcom/pinguo/album/data/MediaSet;


# direct methods
.method constructor <init>(Lcom/pinguo/album/data/MediaSet;[Lcom/pinguo/album/data/MediaSet;Lcom/pinguo/album/data/MediaSet$SyncListener;)V
    .registers 9

    iput-object p1, p0, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->this$0:Lcom/pinguo/album/data/MediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->mIsCancelled:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->mResult:I

    iput-object p3, p0, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->mListener:Lcom/pinguo/album/data/MediaSet$SyncListener;

    array-length v2, p2

    iput v2, p0, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    array-length v2, p2

    new-array v2, v2, [Lcom/pinguo/album/Future;

    iput-object v2, p0, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->mFutures:[Lcom/pinguo/album/Future;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_17
    array-length v1, p2

    :goto_18
    if-lt v0, v1, :cond_1c

    monitor-exit p0

    return-void

    :cond_1c
    iget-object v2, p0, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->mFutures:[Lcom/pinguo/album/Future;

    aget-object v3, p2, v0

    invoke-virtual {v3, p0}, Lcom/pinguo/album/data/MediaSet;->requestSync(Lcom/pinguo/album/data/MediaSet$SyncListener;)Lcom/pinguo/album/Future;

    move-result-object v3

    aput-object v3, v2, v0

    const-string/jumbo v2, "Gallery.MultiSetSync"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "  request sync: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p2, v0

    invoke-virtual {v4}, Lcom/pinguo/album/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pinguo/album/utils/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/album/common/PGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :catchall_49
    move-exception v2

    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_17 .. :try_end_4b} :catchall_49

    throw v2
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->mIsCancelled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    if-eqz v1, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    const/4 v1, 0x1

    :try_start_8
    iput-boolean v1, p0, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->mIsCancelled:Z

    iget-object v2, p0, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->mFutures:[Lcom/pinguo/album/Future;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_e
    if-lt v1, v3, :cond_1b

    iget v1, p0, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->mResult:I

    if-gez v1, :cond_5

    const/4 v1, 0x1

    iput v1, p0, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->mResult:I
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_18

    goto :goto_5

    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1b
    :try_start_1b
    aget-object v0, v2, v1

    invoke-interface {v0}, Lcom/pinguo/album/Future;->cancel()V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_18

    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public declared-synchronized get()Ljava/lang/Integer;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->waitDone()V

    iget v0, p0, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->mResult:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isCancelled()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->mIsCancelled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSyncDone(Lcom/pinguo/album/data/MediaSet;I)V
    .registers 7

    const/4 v1, 0x2

    const/4 v0, 0x0

    monitor-enter p0

    if-ne p2, v1, :cond_8

    const/4 v1, 0x2

    :try_start_6
    iput v1, p0, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->mResult:I

    :cond_8
    iget v1, p0, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    iget v1, p0, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    if-nez v1, :cond_17

    iget-object v0, p0, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->mListener:Lcom/pinguo/album/data/MediaSet$SyncListener;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_17
    const-string/jumbo v1, "Gallery.MultiSetSync"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSyncDone: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pinguo/album/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pinguo/album/utils/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " #pending="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/album/common/PGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_6 .. :try_end_43} :catchall_4d

    if-eqz v0, :cond_4c

    iget-object v1, p0, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->this$0:Lcom/pinguo/album/data/MediaSet;

    iget v2, p0, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->mResult:I

    invoke-interface {v0, v1, v2}, Lcom/pinguo/album/data/MediaSet$SyncListener;->onSyncDone(Lcom/pinguo/album/data/MediaSet;I)V

    :cond_4c
    return-void

    :catchall_4d
    move-exception v1

    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public declared-synchronized waitDone()V
    .registers 4

    monitor-enter p0

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;->isDone()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_18
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_d

    move-result v1

    if-eqz v1, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_18
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_1

    :catch_d
    move-exception v0

    :try_start_e
    const-string/jumbo v1, "Gallery.MultiSetSync"

    const-string/jumbo v2, "waitDone() interrupted"

    invoke-static {v1, v2}, Lcom/pinguo/album/common/PGLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_18

    goto :goto_7

    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method
