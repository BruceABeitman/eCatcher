.class public Lcom/pinguo/camera360/gallery/AlbumDataLoader;
.super Ljava/lang/Object;
.source "AlbumDataLoader.java"
.field private static final DATA_CACHE_SIZE:I = 0x3e8
.field private static final MAX_LOAD_COUNT:I = 0x40
.field private static final MIN_LOAD_COUNT:I = 0x20
.field private static final MSG_LOAD_FINISH:I = 0x2
.field private static final MSG_LOAD_START:I = 0x1
.field private static final MSG_RUN_OBJECT:I = 0x3
.field private static final TAG:Ljava/lang/String; = "AlbumDataAdapter"
.field private mActiveEnd:I
.field private mActiveStart:I
.field private mContentEnd:I
.field private mContentStart:I
.field private final mData:[Lcom/pinguo/camera360/gallery/data/MediaItem;
.field private mDataListener:Lcom/pinguo/camera360/gallery/AlbumDataLoader$DataListener;
.field private final mItemVersion:[J
.field private mLoadingListener:Lcom/pinguo/camera360/gallery/LoadingListener;
.field private final mMainHandler:Landroid/os/Handler;
.field private mReloadTask:Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;
.field private final mSetVersion:[J
.field private mSize:I
.field private final mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;
.field private mSourceListener:Lcom/pinguo/camera360/gallery/AlbumDataLoader$MySourceListener;
.field private mSourceVersion:J
.method public constructor <init>(Lcom/pinguo/camera360/gallery/AlbumActivity;Lcom/pinguo/camera360/gallery/data/MediaSet;)V
.registers 8
const-wide/16 v3, -0x1
const/16 v2, 0x3e8
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mActiveStart:I
iput v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mActiveEnd:I
iput v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mContentStart:I
iput v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mContentEnd:I
iput-wide v3, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSourceVersion:J
iput v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSize:I
new-instance v0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$MySourceListener;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/gallery/AlbumDataLoader$MySourceListener;-><init>(Lcom/pinguo/camera360/gallery/AlbumDataLoader;Lcom/pinguo/camera360/gallery/AlbumDataLoader$MySourceListener;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSourceListener:Lcom/pinguo/camera360/gallery/AlbumDataLoader$MySourceListener;
iput-object p2, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;
new-array v0, v2, [Lcom/pinguo/camera360/gallery/data/MediaItem;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mData:[Lcom/pinguo/camera360/gallery/data/MediaItem;
new-array v0, v2, [J
iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mItemVersion:[J
new-array v0, v2, [J
iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSetVersion:[J
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mItemVersion:[J
invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSetVersion:[J
invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V
new-instance v0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$1;
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/AlbumActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/gallery/AlbumDataLoader$1;-><init>(Lcom/pinguo/camera360/gallery/AlbumDataLoader;Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mReloadTask:Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSourceVersion:J
return-wide v0
.end method
.method static synthetic access$10(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mActiveEnd:I
return v0
.end method
.method static synthetic access$11(Lcom/pinguo/camera360/gallery/AlbumDataLoader;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mActiveEnd:I
return-void
.end method
.method static synthetic access$12(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)[J
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mItemVersion:[J
return-object v0
.end method
.method static synthetic access$13(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)[Lcom/pinguo/camera360/gallery/data/MediaItem;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mData:[Lcom/pinguo/camera360/gallery/data/MediaItem;
return-object v0
.end method
.method static synthetic access$14(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mActiveStart:I
return v0
.end method
.method static synthetic access$15(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$16(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)Lcom/pinguo/camera360/gallery/data/MediaSet;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;
return-object v0
.end method
.method static synthetic access$17(Lcom/pinguo/camera360/gallery/AlbumDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method static synthetic access$18(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)Lcom/pinguo/camera360/gallery/LoadingListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mLoadingListener:Lcom/pinguo/camera360/gallery/LoadingListener;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSize:I
return v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)[J
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSetVersion:[J
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mContentStart:I
return v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mContentEnd:I
return v0
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/gallery/AlbumDataLoader;J)V
.registers 3
iput-wide p1, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSourceVersion:J
return-void
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/gallery/AlbumDataLoader;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSize:I
return-void
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)Lcom/pinguo/camera360/gallery/AlbumDataLoader$DataListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mDataListener:Lcom/pinguo/camera360/gallery/AlbumDataLoader$DataListener;
return-object v0
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/gallery/AlbumDataLoader;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mContentEnd:I
return-void
.end method
.method private clearSlot(I)V
.registers 6
const-wide/16 v2, -0x1
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mData:[Lcom/pinguo/camera360/gallery/data/MediaItem;
const/4 v1, 0x0
aput-object v1, v0, p1
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mItemVersion:[J
aput-wide v2, v0, p1
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSetVersion:[J
aput-wide v2, v0, p1
return-void
.end method
.method private executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
.registers 7
new-instance v1, Ljava/util/concurrent/FutureTask;
invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;
const/4 v4, 0x3
invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
:try_start_11
invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
:try_end_14
.catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_16
.catch Ljava/util/concurrent/ExecutionException; {:try_start_11 .. :try_end_14} :catch_19
move-result-object v2
:goto_15
return-object v2
:catch_16
move-exception v0
const/4 v2, 0x0
goto :goto_15
:catch_19
move-exception v0
new-instance v2, Ljava/lang/RuntimeException;
invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v2
.end method
.method private setContentWindow(II)V
.registers 8
iget v4, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mContentStart:I
if-ne p1, v4, :cond_9
iget v4, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mContentEnd:I
if-ne p2, v4, :cond_9
:goto_8
:cond_8
return-void
:cond_9
iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mContentEnd:I
iget v3, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mContentStart:I
monitor-enter p0
:try_start_e
iput p1, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mContentStart:I
iput p2, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mContentEnd:I
monitor-exit p0
:try_end_13
.catchall {:try_start_e .. :try_end_13} :catchall_25
if-ge p1, v0, :cond_17
if-lt v3, p2, :cond_30
:cond_17
move v1, v3
move v2, v0
:goto_19
if-lt v1, v2, :cond_28
:cond_1b
iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mReloadTask:Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;
if-eqz v4, :cond_8
iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mReloadTask:Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->notifyDirty()V
goto :goto_8
:catchall_25
move-exception v4
:try_start_26
monitor-exit p0
:try_end_27
.catchall {:try_start_26 .. :try_end_27} :catchall_25
throw v4
:cond_28
rem-int/lit16 v4, v1, 0x3e8
invoke-direct {p0, v4}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->clearSlot(I)V
add-int/lit8 v1, v1, 0x1
goto :goto_19
:cond_30
move v1, v3
:goto_31
if-lt v1, p1, :cond_3f
move v1, p2
move v2, v0
:goto_35
if-ge v1, v2, :cond_1b
rem-int/lit16 v4, v1, 0x3e8
invoke-direct {p0, v4}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->clearSlot(I)V
add-int/lit8 v1, v1, 0x1
goto :goto_35
:cond_3f
rem-int/lit16 v4, v1, 0x3e8
invoke-direct {p0, v4}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->clearSlot(I)V
add-int/lit8 v1, v1, 0x1
goto :goto_31
.end method
.method public get(I)Lcom/pinguo/camera360/gallery/data/MediaItem;
.registers 7
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->isActive(I)Z
move-result v0
if-nez v0, :cond_2f
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string/jumbo v1, "%s not in (%s, %s)"
const/4 v2, 0x3
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
iget v4, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mActiveStart:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x2
iget v4, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mActiveEnd:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2f
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mData:[Lcom/pinguo/camera360/gallery/data/MediaItem;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mData:[Lcom/pinguo/camera360/gallery/data/MediaItem;
array-length v1, v1
rem-int v1, p1, v1
aget-object v0, v0, v1
return-object v0
.end method
.method public getActiveStart()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mActiveStart:I
return v0
.end method
.method public isActive(I)Z
.registers 3
iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mActiveStart:I
if-lt p1, v0, :cond_a
iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mActiveEnd:I
if-ge p1, v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public pause()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mReloadTask:Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mReloadTask:Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->terminate()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mReloadTask:Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;
:cond_c
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSourceListener:Lcom/pinguo/camera360/gallery/AlbumDataLoader$MySourceListener;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/data/MediaSet;->removeContentListener(Lcom/pinguo/camera360/gallery/data/ContentListener;)V
return-void
.end method
.method public resume()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSource:Lcom/pinguo/camera360/gallery/data/MediaSet;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSourceListener:Lcom/pinguo/camera360/gallery/AlbumDataLoader$MySourceListener;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/data/MediaSet;->addContentListener(Lcom/pinguo/camera360/gallery/data/ContentListener;)V
new-instance v0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;-><init>(Lcom/pinguo/camera360/gallery/AlbumDataLoader;Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mReloadTask:Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mReloadTask:Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->start()V
return-void
.end method
.method public setActiveWindow(II)V
.registers 9
const/4 v4, 0x0
iget v3, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mActiveStart:I
if-ne p1, v3, :cond_a
iget v3, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mActiveEnd:I
if-ne p2, v3, :cond_a
:goto_9
:cond_9
return-void
:cond_a
if-gt p1, p2, :cond_56
sub-int v3, p2, p1
iget-object v5, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mData:[Lcom/pinguo/camera360/gallery/data/MediaItem;
array-length v5, v5
if-gt v3, v5, :cond_56
iget v3, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSize:I
if-gt p2, v3, :cond_56
const/4 v3, 0x1
:goto_18
invoke-static {v3}, Lcom/pinguo/camera360/gallery/util/Utils;->assertTrue(Z)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mData:[Lcom/pinguo/camera360/gallery/data/MediaItem;
array-length v2, v3
iput p1, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mActiveStart:I
iput p2, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mActiveEnd:I
if-eq p1, p2, :cond_9
add-int v3, p1, p2
div-int/lit8 v3, v3, 0x2
div-int/lit8 v5, v2, 0x2
sub-int/2addr v3, v5
iget v5, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSize:I
sub-int/2addr v5, v2
invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I
move-result v5
invoke-static {v3, v4, v5}, Lcom/pinguo/camera360/gallery/util/Utils;->clamp(III)I
move-result v1
add-int v3, v1, v2
iget v4, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSize:I
invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I
move-result v0
iget v3, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mContentStart:I
if-gt v3, p1, :cond_52
iget v3, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mContentEnd:I
if-lt v3, p2, :cond_52
iget v3, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mContentStart:I
sub-int v3, v1, v3
invoke-static {v3}, Ljava/lang/Math;->abs(I)I
move-result v3
const/16 v4, 0x20
if-le v3, v4, :cond_9
:cond_52
invoke-direct {p0, v1, v0}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->setContentWindow(II)V
goto :goto_9
:cond_56
move v3, v4
goto :goto_18
.end method
.method public setDataListener(Lcom/pinguo/camera360/gallery/AlbumDataLoader$DataListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mDataListener:Lcom/pinguo/camera360/gallery/AlbumDataLoader$DataListener;
return-void
.end method
.method public setLoadingListener(Lcom/pinguo/camera360/gallery/LoadingListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mLoadingListener:Lcom/pinguo/camera360/gallery/LoadingListener;
return-void
.end method
.method public size()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mSize:I
return v0
.end method