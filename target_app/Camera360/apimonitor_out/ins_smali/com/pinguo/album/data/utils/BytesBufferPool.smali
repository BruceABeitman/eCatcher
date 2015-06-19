.class public Lcom/pinguo/album/data/utils/BytesBufferPool;
.super Ljava/lang/Object;
.source "BytesBufferPool.java"
.field private static final READ_STEP:I = 0x1000
.field private final mBufferSize:I
.field private final mList:Ljava/util/ArrayList;
.field private final mPoolSize:I
.method public constructor <init>(II)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/pinguo/album/data/utils/BytesBufferPool;->mList:Ljava/util/ArrayList;
iput p1, p0, Lcom/pinguo/album/data/utils/BytesBufferPool;->mPoolSize:I
iput p2, p0, Lcom/pinguo/album/data/utils/BytesBufferPool;->mBufferSize:I
return-void
.end method
.method public declared-synchronized clear()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/album/data/utils/BytesBufferPool;->mList:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized get()Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;
.registers 5
monitor-enter p0
:try_start_1
iget-object v1, p0, Lcom/pinguo/album/data/utils/BytesBufferPool;->mList:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_15
iget-object v1, p0, Lcom/pinguo/album/data/utils/BytesBufferPool;->mList:Ljava/util/ArrayList;
add-int/lit8 v2, v0, -0x1
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;
:try_end_13
.catchall {:try_start_1 .. :try_end_13} :catchall_1e
:goto_13
monitor-exit p0
return-object v1
:cond_15
:try_start_15
new-instance v1, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;
iget v2, p0, Lcom/pinguo/album/data/utils/BytesBufferPool;->mBufferSize:I
const/4 v3, 0x0
invoke-direct {v1, v2, v3}, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;-><init>(ILcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;)V
:try_end_1d
.catchall {:try_start_15 .. :try_end_1d} :catchall_1e
goto :goto_13
:catchall_1e
move-exception v1
monitor-exit p0
throw v1
.end method
.method public declared-synchronized recycle(Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;)V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p1, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->data:[B
array-length v0, v0
iget v1, p0, Lcom/pinguo/album/data/utils/BytesBufferPool;->mBufferSize:I
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_20
if-eq v0, v1, :cond_a
:cond_8
:goto_8
monitor-exit p0
return-void
:cond_a
:try_start_a
iget-object v0, p0, Lcom/pinguo/album/data/utils/BytesBufferPool;->mList:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget v1, p0, Lcom/pinguo/album/data/utils/BytesBufferPool;->mPoolSize:I
if-ge v0, v1, :cond_8
const/4 v0, 0x0
iput v0, p1, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->offset:I
const/4 v0, 0x0
iput v0, p1, Lcom/pinguo/album/data/utils/BytesBufferPool$BytesBuffer;->length:I
iget-object v0, p0, Lcom/pinguo/album/data/utils/BytesBufferPool;->mList:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_1f
.catchall {:try_start_a .. :try_end_1f} :catchall_20
goto :goto_8
:catchall_20
move-exception v0
monitor-exit p0
throw v0
.end method