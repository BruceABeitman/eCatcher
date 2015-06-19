.class public Lco/vine/android/recorder/ByteBufferQueue;
.super Ljava/lang/Object;
.source "ByteBufferQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/recorder/ByteBufferQueue$QueueItem;,
        Lco/vine/android/recorder/ByteBufferQueue$MemoryResponder;
    }
.end annotation


# static fields
.field private static final sQueues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lco/vine/android/recorder/ByteBufferQueue;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final LOCK:[I

.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mBufferPointer:Lcom/googlecode/javacpp/BytePointer;

.field private mGetBuffer:[B

.field private mInitialCount:I

.field private mPutHasEnded:Z

.field private mSpaceLeft:I

.field private mStartIndex:I

.field private mStarts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lco/vine/android/recorder/ByteBufferQueue;->sQueues:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(IILco/vine/android/recorder/ByteBufferQueue$MemoryResponder;)V
    .registers 18

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x0

    new-array v9, v9, [I

    iput-object v9, p0, Lco/vine/android/recorder/ByteBufferQueue;->LOCK:[I

    sget-object v9, Lco/vine/android/recorder/ByteBufferQueue;->sQueues:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v10, 0x14

    if-le v9, v10, :cond_17

    sget-object v9, Lco/vine/android/recorder/ByteBufferQueue;->sQueues:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    :cond_17
    sget-object v9, Lco/vine/android/recorder/ByteBufferQueue;->sQueues:Ljava/util/ArrayList;

    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    sget-object v9, Lco/vine/android/recorder/ByteBufferQueue;->sQueues:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_28

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_3d
    const-string v9, "[mem] Current byte buffer queue count: {}."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v9, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z

    if-eqz v9, :cond_9e

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v9

    invoke-virtual {v6}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v11

    sub-long/2addr v9, v11

    const-wide/32 v11, 0x100000

    div-long v7, v9, v11

    invoke-virtual {v6}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v9

    const-wide/32 v11, 0x100000

    div-long v2, v9, v11

    const-string v9, "[mem] Allocating: {}."

    mul-int v10, p2, p1

    int-to-long v10, v10

    const-wide/32 v12, 0x100000

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v9, "[mem] Free: {}."

    invoke-virtual {v6}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v10

    const-wide/32 v12, 0x100000

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v9, "[mem] Used mem: {}."

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v9, "[mem] Max mem: {}."

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9e
    :try_start_9e
    invoke-virtual/range {p0 .. p2}, Lco/vine/android/recorder/ByteBufferQueue;->reset(II)V
    :try_end_a1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9e .. :try_end_a1} :catch_a2

    :goto_a1
    return-void

    :catch_a2
    move-exception v0

    if-eqz p3, :cond_a8

    invoke-interface/range {p3 .. p3}, Lco/vine/android/recorder/ByteBufferQueue$MemoryResponder;->requestForMoreMemory()V

    :cond_a8
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-virtual/range {p0 .. p2}, Lco/vine/android/recorder/ByteBufferQueue;->reset(II)V

    goto :goto_a1
.end method


# virtual methods
.method public endOfPut()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mPutHasEnded:Z

    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lco/vine/android/recorder/ByteBufferQueue;->release()V

    return-void
.end method

.method public get()Lco/vine/android/recorder/ByteBufferQueue$QueueItem;
    .registers 7

    iget-object v4, p0, Lco/vine/android/recorder/ByteBufferQueue;->LOCK:[I

    monitor-enter v4

    :try_start_3
    iget v3, p0, Lco/vine/android/recorder/ByteBufferQueue;->mStartIndex:I

    iget-object v5, p0, Lco/vine/android/recorder/ByteBufferQueue;->mStarts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v3, v5, :cond_10

    const/4 v3, 0x0

    monitor-exit v4

    :goto_f
    return-object v3

    :cond_10
    iget-object v3, p0, Lco/vine/android/recorder/ByteBufferQueue;->mStarts:Ljava/util/ArrayList;

    iget v5, p0, Lco/vine/android/recorder/ByteBufferQueue;->mStartIndex:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lco/vine/android/recorder/ByteBufferQueue;->mTags:Ljava/util/ArrayList;

    iget v5, p0, Lco/vine/android/recorder/ByteBufferQueue;->mStartIndex:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lco/vine/android/recorder/ByteBufferQueue;->mStartIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lco/vine/android/recorder/ByteBufferQueue;->mStartIndex:I

    iget v3, p0, Lco/vine/android/recorder/ByteBufferQueue;->mSpaceLeft:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lco/vine/android/recorder/ByteBufferQueue;->mSpaceLeft:I

    iget-object v3, p0, Lco/vine/android/recorder/ByteBufferQueue;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v3, p0, Lco/vine/android/recorder/ByteBufferQueue;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lco/vine/android/recorder/ByteBufferQueue;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lco/vine/android/recorder/ByteBufferQueue;->mGetBuffer:[B

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lco/vine/android/recorder/ByteBufferQueue;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v3, Lco/vine/android/recorder/ByteBufferQueue$QueueItem;

    iget-object v5, p0, Lco/vine/android/recorder/ByteBufferQueue;->mGetBuffer:[B

    invoke-direct {v3, v5, v2}, Lco/vine/android/recorder/ByteBufferQueue$QueueItem;-><init>([BLjava/lang/Object;)V

    monitor-exit v4

    goto :goto_f

    :catchall_58
    move-exception v3

    monitor-exit v4
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_58

    throw v3
.end method

.method public isEndOfPut()Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mPutHasEnded:Z

    return v0
.end method

.method public isFresh()Z
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public put(Lco/vine/android/recorder/ByteBufferQueue$QueueItem;)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lco/vine/android/recorder/ByteBufferQueue;->LOCK:[I

    monitor-enter v1

    :try_start_4
    iget v2, p0, Lco/vine/android/recorder/ByteBufferQueue;->mSpaceLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lco/vine/android/recorder/ByteBufferQueue;->mSpaceLeft:I

    iget v2, p0, Lco/vine/android/recorder/ByteBufferQueue;->mSpaceLeft:I

    if-gez v2, :cond_10

    monitor-exit v1

    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mStarts:Ljava/util/ArrayList;

    iget-object v2, p0, Lco/vine/android/recorder/ByteBufferQueue;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mTags:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p1, Lco/vine/android/recorder/ByteBufferQueue$QueueItem;->tag:Ljava/lang/Object;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lco/vine/android/recorder/ByteBufferQueue$QueueItem;->bytes:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v2, p0, Lco/vine/android/recorder/ByteBufferQueue;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-ne v0, v2, :cond_46

    iget-object v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_46
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_f

    :catchall_49
    move-exception v0

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4 .. :try_end_4b} :catchall_49

    throw v0
.end method

.method public release()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lco/vine/android/recorder/ByteBufferQueue;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mBufferPointer:Lcom/googlecode/javacpp/BytePointer;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mBufferPointer:Lcom/googlecode/javacpp/BytePointer;

    invoke-virtual {v0}, Lcom/googlecode/javacpp/BytePointer;->isNull()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mBufferPointer:Lcom/googlecode/javacpp/BytePointer;

    invoke-virtual {v0}, Lcom/googlecode/javacpp/BytePointer;->deallocate()V

    :cond_14
    iput-object v1, p0, Lco/vine/android/recorder/ByteBufferQueue;->mBufferPointer:Lcom/googlecode/javacpp/BytePointer;

    :cond_16
    return-void
.end method

.method public reset(II)V
    .registers 6

    iget-object v1, p0, Lco/vine/android/recorder/ByteBufferQueue;->LOCK:[I

    monitor-enter v1

    :try_start_3
    iput p1, p0, Lco/vine/android/recorder/ByteBufferQueue;->mSpaceLeft:I

    iput p1, p0, Lco/vine/android/recorder/ByteBufferQueue;->mInitialCount:I

    iget-object v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int v2, p2, p1

    if-ge v0, v2, :cond_35

    :cond_15
    invoke-virtual {p0}, Lco/vine/android/recorder/ByteBufferQueue;->release()V

    new-instance v0, Lcom/googlecode/javacpp/BytePointer;

    mul-int v2, p2, p1

    invoke-direct {v0, v2}, Lcom/googlecode/javacpp/BytePointer;-><init>(I)V

    iput-object v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mBufferPointer:Lcom/googlecode/javacpp/BytePointer;

    iget-object v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mBufferPointer:Lcom/googlecode/javacpp/BytePointer;

    invoke-virtual {v0}, Lcom/googlecode/javacpp/BytePointer;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_35

    mul-int v0, p2, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mBuffer:Ljava/nio/ByteBuffer;

    :cond_35
    iget-object v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mGetBuffer:[B

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mGetBuffer:[B

    array-length v0, v0

    if-eq v0, p2, :cond_42

    :cond_3e
    new-array v0, p2, [B

    iput-object v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mGetBuffer:[B

    :cond_42
    iget-object v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mStarts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mTags:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mPutHasEnded:Z

    const/4 v0, 0x0

    iput v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mStartIndex:I

    monitor-exit v1

    return-void

    :catchall_5e
    move-exception v0

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_5e

    throw v0
.end method

.method public size()I
    .registers 3

    iget v0, p0, Lco/vine/android/recorder/ByteBufferQueue;->mInitialCount:I

    iget v1, p0, Lco/vine/android/recorder/ByteBufferQueue;->mSpaceLeft:I

    sub-int/2addr v0, v1

    return v0
.end method
