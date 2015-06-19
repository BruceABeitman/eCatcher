.class public Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;
.super Ljava/lang/Object;
.source "SparseArrayBitmapPool.java"
.field private mCapacityBytes:I
.field private final mEnabled:Z
.field private final mName:Ljava/lang/String;
.field private mNodePool:Landroid/util/Pools$Pool;
.field private mPoolNodesHead:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
.field private mPoolNodesTail:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
.field private mSizeBytes:I
.field private mStore:Landroid/util/SparseArray;
.method public constructor <init>(ILandroid/util/Pools$Pool;Ljava/lang/String;)V
.registers 5
const/4 v0, 0x1
invoke-direct {p0, p1, p2, p3, v0}, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;-><init>(ILandroid/util/Pools$Pool;Ljava/lang/String;Z)V
return-void
.end method
.method public constructor <init>(ILandroid/util/Pools$Pool;Ljava/lang/String;Z)V
.registers 7
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mSizeBytes:I
iput-object v1, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mPoolNodesHead:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
iput-object v1, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mPoolNodesTail:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
iput p1, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mCapacityBytes:I
if-nez p2, :cond_24
new-instance v0, Landroid/util/Pools$SimplePool;
const/16 v1, 0x20
invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V
iput-object v0, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mNodePool:Landroid/util/Pools$Pool;
:goto_1f
iput-object p3, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mName:Ljava/lang/String;
iput-boolean p4, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mEnabled:Z
return-void
:cond_24
iput-object p2, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mNodePool:Landroid/util/Pools$Pool;
goto :goto_1f
.end method
.method private freeUpCapacity(I)V
.registers 5
iget v1, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mCapacityBytes:I
sub-int v0, v1, p1
:goto_4
iget-object v1, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mPoolNodesTail:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
if-eqz v1, :cond_c
iget v1, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mSizeBytes:I
if-gt v1, v0, :cond_d
:cond_c
return-void
:cond_d
iget-object v1, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mPoolNodesTail:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
const/4 v2, 0x1
invoke-direct {p0, v1, v2}, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->unlinkAndRecycleNode(Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;Z)V
goto :goto_4
.end method
.method private unlinkAndRecycleNode(Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;Z)V
.registers 7
const/4 v3, 0x0
iget-object v0, p1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
if-eqz v0, :cond_52
iget-object v0, p1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
iget-object v1, p1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
iput-object v1, v0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
:goto_b
iget-object v0, p1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
if-eqz v0, :cond_15
iget-object v0, p1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
iget-object v1, p1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
iput-object v1, v0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
:cond_15
iget-object v0, p1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->prevInPool:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
if-eqz v0, :cond_60
iget-object v0, p1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->prevInPool:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
iget-object v1, p1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->nextInPool:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
iput-object v1, v0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->nextInPool:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
:goto_1f
iget-object v0, p1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->nextInPool:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
if-eqz v0, :cond_65
iget-object v0, p1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->nextInPool:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
iget-object v1, p1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->prevInPool:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
iput-object v1, v0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->prevInPool:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
:goto_29
iput-object v3, p1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
iput-object v3, p1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->nextInPool:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
iput-object v3, p1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
iput-object v3, p1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->prevInPool:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
iget v0, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mSizeBytes:I
iget-object v1, p1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I
move-result v1
iget-object v2, p1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
mul-int/2addr v1, v2
sub-int/2addr v0, v1
iput v0, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mSizeBytes:I
if-eqz p2, :cond_4a
iget-object v0, p1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
:cond_4a
iput-object v3, p1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;
iget-object v0, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mNodePool:Landroid/util/Pools$Pool;
invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z
return-void
:cond_52
iget-object v0, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;
iget-object v1, p1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v1
iget-object v2, p1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
goto :goto_b
:cond_60
iget-object v0, p1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->nextInPool:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
iput-object v0, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mPoolNodesHead:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
goto :goto_1f
:cond_65
iget-object v0, p1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->prevInPool:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
iput-object v0, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mPoolNodesTail:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
goto :goto_29
.end method
.method public declared-synchronized clear()V
.registers 2
monitor-enter p0
:try_start_1
iget v0, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mCapacityBytes:I
invoke-direct {p0, v0}, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->freeUpCapacity(I)V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized get(II)Landroid/graphics/Bitmap;
.registers 6
monitor-enter p0
:try_start_1
iget-object v2, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;
invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_1d
:goto_9
if-nez v1, :cond_e
const/4 v0, 0x0
:goto_c
monitor-exit p0
return-object v0
:cond_e
:try_start_e
iget-object v2, v1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
if-ne v2, p2, :cond_20
iget-object v0, v1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;
const/4 v2, 0x0
invoke-direct {p0, v1, v2}, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->unlinkAndRecycleNode(Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;Z)V
:try_end_1c
.catchall {:try_start_e .. :try_end_1c} :catchall_1d
goto :goto_c
:catchall_1d
move-exception v2
monitor-exit p0
throw v2
:try_start_20
:cond_20
iget-object v1, v1, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
:try_end_22
.catchall {:try_start_20 .. :try_end_22} :catchall_1d
goto :goto_9
.end method
.method public declared-synchronized getCapacity()I
.registers 2
monitor-enter p0
:try_start_1
iget v0, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mCapacityBytes:I
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mName:Ljava/lang/String;
return-object v0
.end method
.method public declared-synchronized getSize()I
.registers 2
monitor-enter p0
:try_start_1
iget v0, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mSizeBytes:I
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public isEnabled()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mEnabled:Z
return v0
.end method
.method public declared-synchronized put(Landroid/graphics/Bitmap;)Z
.registers 7
monitor-enter p0
if-nez p1, :cond_6
const/4 v3, 0x0
:goto_4
monitor-exit p0
return v3
:try_start_6
:cond_6
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I
move-result v3
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
mul-int v0, v3, v4
invoke-direct {p0, v0}, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->freeUpCapacity(I)V
iget-object v3, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mNodePool:Landroid/util/Pools$Pool;
invoke-interface {v3}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
if-nez v2, :cond_22
new-instance v2, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
invoke-direct {v2}, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;-><init>()V
:cond_22
iput-object p1, v2, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;
const/4 v3, 0x0
iput-object v3, v2, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
const/4 v3, 0x0
iput-object v3, v2, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->prevInPool:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
iget-object v3, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mPoolNodesHead:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
iput-object v3, v2, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->nextInPool:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
iput-object v2, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mPoolNodesHead:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v1
iget-object v3, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;
invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
iput-object v3, v2, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
iget-object v3, v2, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
if-eqz v3, :cond_46
iget-object v3, v2, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
iput-object v2, v3, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
:cond_46
iget-object v3, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;
invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
iget-object v3, v2, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->nextInPool:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
if-nez v3, :cond_58
iput-object v2, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mPoolNodesTail:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
:goto_51
iget v3, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mSizeBytes:I
add-int/2addr v3, v0
iput v3, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mSizeBytes:I
const/4 v3, 0x1
goto :goto_4
:cond_58
iget-object v3, v2, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->nextInPool:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
iput-object v2, v3, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;->prevInPool:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
:try_end_5c
.catchall {:try_start_6 .. :try_end_5c} :catchall_5d
goto :goto_51
:catchall_5d
move-exception v3
monitor-exit p0
throw v3
.end method
.method public declared-synchronized setCapacity(I)V
.registers 3
monitor-enter p0
:try_start_1
iput p1, p0, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->mCapacityBytes:I
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;->freeUpCapacity(I)V
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_9
monitor-exit p0
return-void
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method