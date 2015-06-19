.class public Lcom/pinguo/album/adapters/PhotoDataAdapter;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"
.implements Lcom/pinguo/album/fragment/PGFullImageFragment$Model;
.field private static final BIT_FULL_IMAGE:I = 0x2
.field private static final BIT_SCREEN_NAIL:I = 0x1
.field private static final DATA_CACHE_SIZE:I = 0x100
.field private static final IMAGE_CACHE_SIZE:I = 0x7
.field private static final MIN_LOAD_COUNT:I = 0x10
.field private static final MSG_LOAD_FINISH:I = 0x2
.field private static final MSG_LOAD_START:I = 0x1
.field private static final MSG_RUN_OBJECT:I = 0x3
.field private static final MSG_UPDATE_IMAGE_REQUESTS:I = 0x4
.field private static final SCREEN_NAIL_MAX:I = 0x3
.field private static final TAG:Ljava/lang/String; = "PhotoDataAdapter"
.field private static sImageFetchSeq:[Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;
.field private mActiveEnd:I
.field private mActiveStart:I
.field private mCameraIndex:I
.field private final mChanges:[J
.field private mContentEnd:I
.field private mContentStart:I
.field private mCurrentIndex:I
.field private final mData:[Lcom/pinguo/album/data/MediaItem;
.field private mDataListener:Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;
.field private mFocusHintDirection:I
.field private mFocusHintPath:Lcom/pinguo/album/data/MediaPath;
.field private mImageCache:Ljava/util/HashMap;
.field private mIsActive:Z
.field private mIsPanorama:Z
.field private mIsStaticCamera:Z
.field private mItemPath:Lcom/pinguo/album/data/MediaPath;
.field private final mMainHandler:Landroid/os/Handler;
.field private mNeedFullImage:Z
.field private final mPaths:[Lcom/pinguo/album/data/MediaPath;
.field private final mPhotoView:Lcom/pinguo/album/views/FullImageView;
.field private mReloadTask:Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;
.field private mSize:I
.field private final mSource:Lcom/pinguo/album/data/MediaSet;
.field private final mSourceListener:Lcom/pinguo/album/adapters/PhotoDataAdapter$SourceListener;
.field private mSourceVersion:J
.field private final mThreadPool:Lcom/pinguo/album/AlbumThreadPool;
.field private final mTileProvider:Lcom/pinguo/album/adapters/TileImageViewAdapter;
.field private final mUploader:Lcom/pinguo/album/opengles/TiledTexture$Uploader;
.method static constructor <clinit>()V
.registers 9
const/4 v8, 0x0
const/4 v7, 0x2
const/4 v6, 0x1
const/4 v1, 0x0
const/16 v3, 0x10
new-array v3, v3, [Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;
sput-object v3, Lcom/pinguo/album/adapters/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;
sget-object v3, Lcom/pinguo/album/adapters/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;
add-int/lit8 v2, v1, 0x1
new-instance v4, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;
invoke-direct {v4, v8, v6}, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;-><init>(II)V
aput-object v4, v3, v1
const/4 v0, 0x1
:goto_16
const/4 v3, 0x7
if-lt v0, v3, :cond_3c
sget-object v3, Lcom/pinguo/album/adapters/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;
add-int/lit8 v1, v2, 0x1
new-instance v4, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;
invoke-direct {v4, v8, v7}, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;-><init>(II)V
aput-object v4, v3, v2
sget-object v3, Lcom/pinguo/album/adapters/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;
add-int/lit8 v2, v1, 0x1
new-instance v4, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;
invoke-direct {v4, v6, v7}, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;-><init>(II)V
aput-object v4, v3, v1
sget-object v3, Lcom/pinguo/album/adapters/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;
add-int/lit8 v1, v2, 0x1
new-instance v4, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;
const/4 v5, -0x1
invoke-direct {v4, v5, v7}, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;-><init>(II)V
aput-object v4, v3, v2
return-void
:cond_3c
sget-object v3, Lcom/pinguo/album/adapters/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;
add-int/lit8 v1, v2, 0x1
new-instance v4, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;
invoke-direct {v4, v0, v6}, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;-><init>(II)V
aput-object v4, v3, v2
sget-object v3, Lcom/pinguo/album/adapters/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;
add-int/lit8 v2, v1, 0x1
new-instance v4, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;
neg-int v5, v0
invoke-direct {v4, v5, v6}, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;-><init>(II)V
aput-object v4, v3, v1
add-int/lit8 v0, v0, 0x1
goto :goto_16
.end method
.method public constructor <init>(Lcom/pinguo/album/fragment/PGBaseFragment;Lcom/pinguo/album/views/FullImageView;Lcom/pinguo/album/data/MediaSet;Lcom/pinguo/album/data/MediaPath;IIZZ)V
.registers 15
const-wide/16 v4, -0x1
const/4 v3, 0x0
const/4 v2, 0x7
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/pinguo/album/adapters/TileImageViewAdapter;
invoke-direct {v0}, Lcom/pinguo/album/adapters/TileImageViewAdapter;-><init>()V
iput-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mTileProvider:Lcom/pinguo/album/adapters/TileImageViewAdapter;
const/16 v0, 0x100
new-array v0, v0, [Lcom/pinguo/album/data/MediaItem;
iput-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mData:[Lcom/pinguo/album/data/MediaItem;
iput v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentStart:I
iput v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentEnd:I
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;
iput v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mActiveStart:I
iput v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mActiveEnd:I
new-array v0, v2, [J
iput-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mChanges:[J
new-array v0, v2, [Lcom/pinguo/album/data/MediaPath;
iput-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mPaths:[Lcom/pinguo/album/data/MediaPath;
iput-wide v4, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSourceVersion:J
iput v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSize:I
iput v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mFocusHintDirection:I
iput-object v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mFocusHintPath:Lcom/pinguo/album/data/MediaPath;
new-instance v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$SourceListener;
invoke-direct {v0, p0, v3}, Lcom/pinguo/album/adapters/PhotoDataAdapter$SourceListener;-><init>(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/adapters/PhotoDataAdapter$SourceListener;)V
iput-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSourceListener:Lcom/pinguo/album/adapters/PhotoDataAdapter$SourceListener;
invoke-static {p3}, Lcom/pinguo/album/utils/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/data/MediaSet;
iput-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSource:Lcom/pinguo/album/data/MediaSet;
invoke-static {p2}, Lcom/pinguo/album/utils/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/FullImageView;
iput-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mPhotoView:Lcom/pinguo/album/views/FullImageView;
iput p5, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
iput p6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCameraIndex:I
iput-boolean p7, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mIsPanorama:Z
iput-boolean p8, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mIsStaticCamera:Z
invoke-virtual {p1}, Lcom/pinguo/album/fragment/PGBaseFragment;->getThreadPool()Lcom/pinguo/album/AlbumThreadPool;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mThreadPool:Lcom/pinguo/album/AlbumThreadPool;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mNeedFullImage:Z
iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mChanges:[J
invoke-static {v0, v4, v5}, Ljava/util/Arrays;->fill([JJ)V
new-instance v0, Lcom/pinguo/album/opengles/TiledTexture$Uploader;
invoke-virtual {p1}, Lcom/pinguo/album/fragment/PGBaseFragment;->getGLController()Lcom/pinguo/album/views/GLController;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/album/opengles/TiledTexture$Uploader;-><init>(Lcom/pinguo/album/views/GLController;)V
iput-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mUploader:Lcom/pinguo/album/opengles/TiledTexture$Uploader;
new-instance v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$1;
invoke-virtual {p1}, Lcom/pinguo/album/fragment/PGBaseFragment;->getGLController()Lcom/pinguo/album/views/GLController;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/pinguo/album/adapters/PhotoDataAdapter$1;-><init>(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/views/GLController;)V
iput-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
invoke-direct {p0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateSlidingWindow()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/data/MediaItem;)Z
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->isTemporaryItem(Lcom/pinguo/album/data/MediaItem;)Z
move-result v0
return v0
.end method
.method static synthetic access$1(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/data/MediaItem;)Lcom/pinguo/album/opengles/ScreenNail;
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->newPlaceholderScreenNail(Lcom/pinguo/album/data/MediaItem;)Lcom/pinguo/album/opengles/ScreenNail;
move-result-object v0
return-object v0
.end method
.method static synthetic access$10(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Lcom/pinguo/album/data/MediaPath;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mItemPath:Lcom/pinguo/album/data/MediaPath;
return-object v0
.end method
.method static synthetic access$11(Lcom/pinguo/album/adapters/PhotoDataAdapter;)J
.registers 3
iget-wide v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSourceVersion:J
return-wide v0
.end method
.method static synthetic access$12(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I
.registers 2
iget v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSize:I
return v0
.end method
.method static synthetic access$13(Lcom/pinguo/album/adapters/PhotoDataAdapter;J)V
.registers 3
iput-wide p1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSourceVersion:J
return-void
.end method
.method static synthetic access$14(Lcom/pinguo/album/adapters/PhotoDataAdapter;I)V
.registers 2
iput p1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSize:I
return-void
.end method
.method static synthetic access$15(Lcom/pinguo/album/adapters/PhotoDataAdapter;I)V
.registers 2
iput p1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentEnd:I
return-void
.end method
.method static synthetic access$16(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I
.registers 2
iget v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mActiveEnd:I
return v0
.end method
.method static synthetic access$17(Lcom/pinguo/album/adapters/PhotoDataAdapter;I)V
.registers 2
iput p1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mActiveEnd:I
return-void
.end method
.method static synthetic access$18(Lcom/pinguo/album/adapters/PhotoDataAdapter;I)V
.registers 2
iput p1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
return-void
.end method
.method static synthetic access$19(Lcom/pinguo/album/adapters/PhotoDataAdapter;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateSlidingWindow()V
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$20(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/data/MediaPath;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mItemPath:Lcom/pinguo/album/data/MediaPath;
return-void
.end method
.method static synthetic access$21(Lcom/pinguo/album/adapters/PhotoDataAdapter;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateImageCache()V
return-void
.end method
.method static synthetic access$22(Lcom/pinguo/album/adapters/PhotoDataAdapter;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateTileProvider()V
return-void
.end method
.method static synthetic access$23(Lcom/pinguo/album/adapters/PhotoDataAdapter;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateImageRequests()V
return-void
.end method
.method static synthetic access$24(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mDataListener:Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;
return-object v0
.end method
.method static synthetic access$25(Lcom/pinguo/album/adapters/PhotoDataAdapter;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->fireDataChange()V
return-void
.end method
.method static synthetic access$26(Lcom/pinguo/album/adapters/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method static synthetic access$27(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Lcom/pinguo/album/data/MediaSet;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSource:Lcom/pinguo/album/data/MediaSet;
return-object v0
.end method
.method static synthetic access$28(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Lcom/pinguo/album/data/MediaPath;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mFocusHintPath:Lcom/pinguo/album/data/MediaPath;
return-object v0
.end method
.method static synthetic access$29(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/data/MediaPath;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mFocusHintPath:Lcom/pinguo/album/data/MediaPath;
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/Future;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateFullImage(Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/Future;)V
return-void
.end method
.method static synthetic access$30(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I
.registers 2
iget v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mFocusHintDirection:I
return v0
.end method
.method static synthetic access$31(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I
.registers 2
iget v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCameraIndex:I
return v0
.end method
.method static synthetic access$4(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/Future;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateScreenNail(Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/Future;)V
return-void
.end method
.method static synthetic access$5(Lcom/pinguo/album/adapters/PhotoDataAdapter;)Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mReloadTask:Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;
return-object v0
.end method
.method static synthetic access$6(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I
.registers 2
iget v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentStart:I
return v0
.end method
.method static synthetic access$7(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I
.registers 2
iget v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentEnd:I
return v0
.end method
.method static synthetic access$8(Lcom/pinguo/album/adapters/PhotoDataAdapter;)[Lcom/pinguo/album/data/MediaItem;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mData:[Lcom/pinguo/album/data/MediaItem;
return-object v0
.end method
.method static synthetic access$9(Lcom/pinguo/album/adapters/PhotoDataAdapter;)I
.registers 2
iget v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
return v0
.end method
.method private executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
.registers 7
new-instance v1, Ljava/util/concurrent/FutureTask;
invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V
iget-object v2, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
iget-object v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
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
.method private fireDataChange()V
.registers 16
const v10, 0x7fffffff
const/4 v14, 0x0
const/4 v13, 0x7
const/4 v1, 0x0
const/4 v3, -0x3
:goto_7
const/4 v9, 0x3
if-le v3, v9, :cond_d
if-nez v1, :cond_28
:goto_c
return-void
:cond_d
iget v9, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
add-int/2addr v9, v3
invoke-direct {p0, v9}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->getVersion(I)J
move-result-wide v5
iget-object v9, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mChanges:[J
add-int/lit8 v11, v3, 0x3
aget-wide v11, v9, v11
cmp-long v9, v11, v5
if-eqz v9, :cond_25
iget-object v9, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mChanges:[J
add-int/lit8 v11, v3, 0x3
aput-wide v5, v9, v11
const/4 v1, 0x1
:cond_25
add-int/lit8 v3, v3, 0x1
goto :goto_7
:cond_28
const/4 v0, 0x7
new-array v2, v13, [I
new-array v7, v13, [Lcom/pinguo/album/data/MediaPath;
iget-object v9, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mPaths:[Lcom/pinguo/album/data/MediaPath;
invoke-static {v9, v14, v7, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
const/4 v3, 0x0
:goto_33
if-lt v3, v13, :cond_48
const/4 v3, 0x0
:goto_36
if-lt v3, v13, :cond_58
iget-object v9, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mPhotoView:Lcom/pinguo/album/views/FullImageView;
iget v10, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
neg-int v10, v10
iget v11, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSize:I
add-int/lit8 v11, v11, -0x1
iget v12, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
sub-int/2addr v11, v12
invoke-virtual {v9, v2, v10, v11}, Lcom/pinguo/album/views/FullImageView;->notifyDataChange([III)V
goto :goto_c
:cond_48
iget-object v9, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mPaths:[Lcom/pinguo/album/data/MediaPath;
iget v11, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
add-int/2addr v11, v3
add-int/lit8 v11, v11, -0x3
invoke-direct {p0, v11}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->getPath(I)Lcom/pinguo/album/data/MediaPath;
move-result-object v11
aput-object v11, v9, v3
add-int/lit8 v3, v3, 0x1
goto :goto_33
:cond_58
iget-object v9, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mPaths:[Lcom/pinguo/album/data/MediaPath;
aget-object v8, v9, v3
if-nez v8, :cond_63
aput v10, v2, v3
:goto_60
add-int/lit8 v3, v3, 0x1
goto :goto_36
:cond_63
const/4 v4, 0x0
:goto_64
if-lt v4, v13, :cond_6d
:cond_66
if-ge v4, v13, :cond_74
add-int/lit8 v9, v4, -0x3
:goto_6a
aput v9, v2, v3
goto :goto_60
:cond_6d
aget-object v9, v7, v4
if-eq v9, v8, :cond_66
add-int/lit8 v4, v4, 0x1
goto :goto_64
:cond_74
move v9, v10
goto :goto_6a
.end method
.method private getItem(I)Lcom/pinguo/album/data/MediaItem;
.registers 4
const/4 v1, 0x0
if-ltz p1, :cond_b
iget v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSize:I
if-ge p1, v0, :cond_b
iget-boolean v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mIsActive:Z
if-nez v0, :cond_d
:cond_b
move-object v0, v1
:goto_c
return-object v0
:cond_d
iget v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mActiveStart:I
if-lt p1, v0, :cond_28
iget v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mActiveEnd:I
if-ge p1, v0, :cond_28
const/4 v0, 0x1
:goto_16
invoke-static {v0}, Lcom/pinguo/album/utils/Utils;->assertTrue(Z)V
iget v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentStart:I
if-lt p1, v0, :cond_2a
iget v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentEnd:I
if-ge p1, v0, :cond_2a
iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mData:[Lcom/pinguo/album/data/MediaItem;
rem-int/lit16 v1, p1, 0x100
aget-object v0, v0, v1
goto :goto_c
:cond_28
const/4 v0, 0x0
goto :goto_16
:cond_2a
move-object v0, v1
goto :goto_c
.end method
.method private getItemInternal(I)Lcom/pinguo/album/data/MediaItem;
.registers 4
const/4 v0, 0x0
if-ltz p1, :cond_7
iget v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSize:I
if-lt p1, v1, :cond_8
:cond_7
:goto_7
return-object v0
:cond_8
iget v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentStart:I
if-lt p1, v1, :cond_7
iget v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentEnd:I
if-ge p1, v1, :cond_7
iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mData:[Lcom/pinguo/album/data/MediaItem;
rem-int/lit16 v1, p1, 0x100
aget-object v0, v0, v1
goto :goto_7
.end method
.method private getPath(I)Lcom/pinguo/album/data/MediaPath;
.registers 4
invoke-direct {p0, p1}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->getItemInternal(I)Lcom/pinguo/album/data/MediaItem;
move-result-object v0
if-nez v0, :cond_8
const/4 v1, 0x0
:goto_7
return-object v1
:cond_8
invoke-virtual {v0}, Lcom/pinguo/album/data/MediaItem;->getPath()Lcom/pinguo/album/data/MediaPath;
move-result-object v1
goto :goto_7
.end method
.method private getVersion(I)J
.registers 5
invoke-direct {p0, p1}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->getItemInternal(I)Lcom/pinguo/album/data/MediaItem;
move-result-object v0
if-nez v0, :cond_9
const-wide/16 v1, -0x1
:goto_8
return-wide v1
:cond_9
invoke-virtual {v0}, Lcom/pinguo/album/data/MediaItem;->getDataVersion()J
move-result-wide v1
goto :goto_8
.end method
.method private isTemporaryItem(Lcom/pinguo/album/data/MediaItem;)Z
.registers 8
const/4 v1, 0x0
iget v2, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCameraIndex:I
if-gez v2, :cond_6
:cond_5
:goto_5
return v1
:cond_6
instance-of v2, p1, Lcom/pinguo/album/data/image/LocalMediaItem;
if-eqz v2, :cond_5
move-object v0, p1
check-cast v0, Lcom/pinguo/album/data/image/LocalMediaItem;
invoke-virtual {v0}, Lcom/pinguo/album/data/image/LocalMediaItem;->getBucketId()I
move-result v2
sget v3, Lcom/pinguo/album/data/MediaSetUtils;->CAMERA_BUCKET_ID:I
if-ne v2, v3, :cond_5
invoke-virtual {v0}, Lcom/pinguo/album/data/image/LocalMediaItem;->getSize()J
move-result-wide v2
const-wide/16 v4, 0x0
cmp-long v2, v2, v4
if-nez v2, :cond_5
invoke-virtual {v0}, Lcom/pinguo/album/data/image/LocalMediaItem;->getWidth()I
move-result v2
if-eqz v2, :cond_5
invoke-virtual {v0}, Lcom/pinguo/album/data/image/LocalMediaItem;->getHeight()I
move-result v2
if-eqz v2, :cond_5
invoke-virtual {v0}, Lcom/pinguo/album/data/image/LocalMediaItem;->getDateInMs()J
move-result-wide v2
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
sub-long/2addr v2, v4
const-wide/16 v4, 0x2710
cmp-long v2, v2, v4
if-gtz v2, :cond_5
const/4 v1, 0x1
goto :goto_5
.end method
.method private newPlaceholderScreenNail(Lcom/pinguo/album/data/MediaItem;)Lcom/pinguo/album/opengles/ScreenNail;
.registers 5
invoke-virtual {p1}, Lcom/pinguo/album/data/MediaItem;->getWidth()I
move-result v1
invoke-virtual {p1}, Lcom/pinguo/album/data/MediaItem;->getHeight()I
move-result v0
new-instance v2, Lcom/pinguo/album/opengles/TiledScreenNail;
invoke-direct {v2, v1, v0}, Lcom/pinguo/album/opengles/TiledScreenNail;-><init>(II)V
return-object v2
.end method
.method private startTaskIfNeeded(II)Lcom/pinguo/album/Future;
.registers 13
const/4 v9, 0x2
const/4 v6, 0x0
const/4 v5, 0x1
iget v4, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mActiveStart:I
if-lt p1, v4, :cond_b
iget v4, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mActiveEnd:I
if-lt p1, v4, :cond_d
:cond_b
move-object v4, v6
:goto_c
return-object v4
:cond_d
iget-object v4, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;
invoke-direct {p0, p1}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->getPath(I)Lcom/pinguo/album/data/MediaPath;
move-result-object v7
invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;
if-nez v0, :cond_1d
move-object v4, v6
goto :goto_c
:cond_1d
iget-object v4, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mData:[Lcom/pinguo/album/data/MediaItem;
rem-int/lit16 v7, p1, 0x100
aget-object v1, v4, v7
if-eqz v1, :cond_3c
move v4, v5
:goto_26
invoke-static {v4}, Lcom/pinguo/album/utils/Utils;->assertTrue(Z)V
invoke-virtual {v1}, Lcom/pinguo/album/data/MediaItem;->getDataVersion()J
move-result-wide v2
if-ne p2, v5, :cond_3e
iget-object v4, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/album/Future;
if-eqz v4, :cond_3e
iget-wide v7, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J
cmp-long v4, v7, v2
if-nez v4, :cond_3e
iget-object v4, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/album/Future;
goto :goto_c
:cond_3c
const/4 v4, 0x0
goto :goto_26
:cond_3e
if-ne p2, v9, :cond_4d
iget-object v4, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/album/Future;
if-eqz v4, :cond_4d
iget-wide v7, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->requestedFullImage:J
cmp-long v4, v7, v2
if-nez v4, :cond_4d
iget-object v4, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/album/Future;
goto :goto_c
:cond_4d
if-ne p2, v5, :cond_6c
iget-wide v4, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J
cmp-long v4, v4, v2
if-eqz v4, :cond_6c
iput-wide v2, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J
iget-object v4, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mThreadPool:Lcom/pinguo/album/AlbumThreadPool;
new-instance v5, Lcom/pinguo/album/adapters/PhotoDataAdapter$ScreenNailJob;
invoke-direct {v5, p0, v1}, Lcom/pinguo/album/adapters/PhotoDataAdapter$ScreenNailJob;-><init>(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/data/MediaItem;)V
new-instance v6, Lcom/pinguo/album/adapters/PhotoDataAdapter$ScreenNailListener;
invoke-direct {v6, p0, v1}, Lcom/pinguo/album/adapters/PhotoDataAdapter$ScreenNailListener;-><init>(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/data/MediaItem;)V
invoke-virtual {v4, v5, v6}, Lcom/pinguo/album/AlbumThreadPool;->submit(Lcom/pinguo/album/AlbumThreadPool$Job;Lcom/pinguo/album/FutureListener;)Lcom/pinguo/album/Future;
move-result-object v4
iput-object v4, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/album/Future;
iget-object v4, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/album/Future;
goto :goto_c
:cond_6c
if-ne p2, v9, :cond_94
iget-wide v4, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->requestedFullImage:J
cmp-long v4, v4, v2
if-eqz v4, :cond_94
invoke-virtual {v1}, Lcom/pinguo/album/data/MediaItem;->getSupportedOperations()I
move-result v4
and-int/lit8 v4, v4, 0x40
if-eqz v4, :cond_94
iput-wide v2, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->requestedFullImage:J
iget-object v4, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mThreadPool:Lcom/pinguo/album/AlbumThreadPool;
new-instance v5, Lcom/pinguo/album/adapters/PhotoDataAdapter$FullImageJob;
invoke-direct {v5, p0, v1}, Lcom/pinguo/album/adapters/PhotoDataAdapter$FullImageJob;-><init>(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/data/MediaItem;)V
new-instance v6, Lcom/pinguo/album/adapters/PhotoDataAdapter$FullImageListener;
invoke-direct {v6, p0, v1}, Lcom/pinguo/album/adapters/PhotoDataAdapter$FullImageListener;-><init>(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/data/MediaItem;)V
invoke-virtual {v4, v5, v6}, Lcom/pinguo/album/AlbumThreadPool;->submit(Lcom/pinguo/album/AlbumThreadPool$Job;Lcom/pinguo/album/FutureListener;)Lcom/pinguo/album/Future;
move-result-object v4
iput-object v4, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/album/Future;
iget-object v4, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/album/Future;
goto/16 :goto_c
:cond_94
move-object v4, v6
goto/16 :goto_c
.end method
.method private updateCurrentIndex(I)V
.registers 5
iget v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
if-ne v1, p1, :cond_5
:goto_4
return-void
:cond_5
iput p1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
invoke-direct {p0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateSlidingWindow()V
iget-object v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mData:[Lcom/pinguo/album/data/MediaItem;
rem-int/lit16 v2, p1, 0x100
aget-object v0, v1, v2
if-nez v0, :cond_2d
const/4 v1, 0x0
:goto_13
iput-object v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mItemPath:Lcom/pinguo/album/data/MediaPath;
invoke-direct {p0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateImageCache()V
invoke-direct {p0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateImageRequests()V
invoke-direct {p0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateTileProvider()V
iget-object v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mDataListener:Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;
if-eqz v1, :cond_29
iget-object v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mDataListener:Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;
iget-object v2, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mItemPath:Lcom/pinguo/album/data/MediaPath;
invoke-interface {v1, p1, v2}, Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;->onPhotoChanged(ILcom/pinguo/album/data/MediaPath;)V
:cond_29
invoke-direct {p0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->fireDataChange()V
goto :goto_4
:cond_2d
invoke-virtual {v0}, Lcom/pinguo/album/data/MediaItem;->getPath()Lcom/pinguo/album/data/MediaPath;
move-result-object v1
goto :goto_13
.end method
.method private updateFullImage(Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/Future;)V
.registers 7
iget-object v2, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;
invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;
if-eqz v0, :cond_e
iget-object v2, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/album/Future;
if-eq v2, p2, :cond_1a
:cond_e
invoke-interface {p2}, Lcom/pinguo/album/Future;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/graphics/BitmapRegionDecoder;
if-eqz v1, :cond_19
invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
:goto_19
:cond_19
return-void
:cond_1a
const/4 v2, 0x0
iput-object v2, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/album/Future;
invoke-interface {p2}, Lcom/pinguo/album/Future;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/graphics/BitmapRegionDecoder;
iput-object v2, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;
iget-object v2, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;
if-eqz v2, :cond_3a
iget v2, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
invoke-direct {p0, v2}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->getPath(I)Lcom/pinguo/album/data/MediaPath;
move-result-object v2
if-ne p1, v2, :cond_3a
invoke-direct {p0, v0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateTileProvider(Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;)V
iget-object v2, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mPhotoView:Lcom/pinguo/album/views/FullImageView;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Lcom/pinguo/album/views/FullImageView;->notifyImageChange(I)V
:cond_3a
invoke-direct {p0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateImageRequests()V
goto :goto_19
.end method
.method private updateImageCache()V
.registers 12
const/4 v10, 0x0
new-instance v5, Ljava/util/HashSet;
iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;
invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v6
invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
iget v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mActiveStart:I
:goto_e
iget v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mActiveEnd:I
if-lt v1, v6, :cond_20
invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v6
:cond_16
:goto_16
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-nez v7, :cond_83
invoke-direct {p0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateScreenNailUploadQueue()V
return-void
:cond_20
iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mData:[Lcom/pinguo/album/data/MediaItem;
rem-int/lit16 v7, v1, 0x100
aget-object v2, v6, v7
if-nez v2, :cond_2b
:cond_28
:goto_28
add-int/lit8 v1, v1, 0x1
goto :goto_e
:cond_2b
invoke-virtual {v2}, Lcom/pinguo/album/data/MediaItem;->getPath()Lcom/pinguo/album/data/MediaPath;
move-result-object v3
iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;
invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;
invoke-virtual {v5, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
if-eqz v0, :cond_78
iget v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
sub-int v6, v1, v6
invoke-static {v6}, Ljava/lang/Math;->abs(I)I
move-result v6
const/4 v7, 0x1
if-le v6, v7, :cond_58
iget-object v6, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/album/Future;
if-eqz v6, :cond_52
iget-object v6, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/album/Future;
invoke-interface {v6}, Lcom/pinguo/album/Future;->cancel()V
iput-object v10, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/album/Future;
:cond_52
iput-object v10, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;
const-wide/16 v6, -0x1
iput-wide v6, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->requestedFullImage:J
:cond_58
iget-wide v6, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J
invoke-virtual {v2}, Lcom/pinguo/album/data/MediaItem;->getDataVersion()J
move-result-wide v8
cmp-long v6, v6, v8
if-eqz v6, :cond_28
iget-object v6, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/album/opengles/ScreenNail;
instance-of v6, v6, Lcom/pinguo/album/opengles/TiledScreenNail;
if-eqz v6, :cond_28
iget-object v4, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/album/opengles/ScreenNail;
check-cast v4, Lcom/pinguo/album/opengles/TiledScreenNail;
invoke-virtual {v2}, Lcom/pinguo/album/data/MediaItem;->getWidth()I
move-result v6
invoke-virtual {v2}, Lcom/pinguo/album/data/MediaItem;->getHeight()I
move-result v7
invoke-virtual {v4, v6, v7}, Lcom/pinguo/album/opengles/TiledScreenNail;->updatePlaceholderSize(II)V
goto :goto_28
:cond_78
new-instance v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;
invoke-direct {v0, v10}, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;-><init>(Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;)V
iget-object v6, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;
invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_28
:cond_83
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/album/data/MediaPath;
iget-object v7, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;
invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;
iget-object v7, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/album/Future;
if-eqz v7, :cond_9a
iget-object v7, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/album/Future;
invoke-interface {v7}, Lcom/pinguo/album/Future;->cancel()V
:cond_9a
iget-object v7, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/album/Future;
if-eqz v7, :cond_a3
iget-object v7, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/album/Future;
invoke-interface {v7}, Lcom/pinguo/album/Future;->cancel()V
:cond_a3
iget-object v7, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/album/opengles/ScreenNail;
if-eqz v7, :cond_16
iget-object v7, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/album/opengles/ScreenNail;
invoke-interface {v7}, Lcom/pinguo/album/opengles/ScreenNail;->recycle()V
goto/16 :goto_16
.end method
.method private updateImageRequests()V
.registers 13
const-wide/16 v10, -0x1
const/4 v9, 0x0
iget-boolean v7, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mIsActive:Z
if-nez v7, :cond_8
:cond_7
return-void
:cond_8
iget v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
iget-object v7, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mData:[Lcom/pinguo/album/data/MediaItem;
rem-int/lit16 v8, v1, 0x100
aget-object v4, v7, v8
if-eqz v4, :cond_7
invoke-virtual {v4}, Lcom/pinguo/album/data/MediaItem;->getPath()Lcom/pinguo/album/data/MediaPath;
move-result-object v7
iget-object v8, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mItemPath:Lcom/pinguo/album/data/MediaPath;
if-ne v7, v8, :cond_7
const/4 v6, 0x0
const/4 v3, 0x0
:goto_1c
sget-object v7, Lcom/pinguo/album/adapters/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;
array-length v7, v7
if-lt v3, v7, :cond_5a
:goto_21
iget-object v7, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;
invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;
move-result-object v7
invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v7
:goto_2b
:cond_2b
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_7
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;
iget-object v8, v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/album/Future;
if-eqz v8, :cond_48
iget-object v8, v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/album/Future;
if-eq v8, v6, :cond_48
iget-object v8, v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/album/Future;
invoke-interface {v8}, Lcom/pinguo/album/Future;->cancel()V
iput-object v9, v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/album/Future;
iput-wide v10, v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J
:cond_48
iget-object v8, v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/album/Future;
if-eqz v8, :cond_2b
iget-object v8, v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/album/Future;
if-eq v8, v6, :cond_2b
iget-object v8, v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/album/Future;
invoke-interface {v8}, Lcom/pinguo/album/Future;->cancel()V
iput-object v9, v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/album/Future;
iput-wide v10, v2, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->requestedFullImage:J
goto :goto_2b
:cond_5a
sget-object v7, Lcom/pinguo/album/adapters/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;
aget-object v7, v7, v3
iget v5, v7, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;->indexOffset:I
sget-object v7, Lcom/pinguo/album/adapters/PhotoDataAdapter;->sImageFetchSeq:[Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;
aget-object v7, v7, v3
iget v0, v7, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageFetch;->imageBit:I
const/4 v7, 0x2
if-ne v0, v7, :cond_70
iget-boolean v7, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mNeedFullImage:Z
if-nez v7, :cond_70
:cond_6d
add-int/lit8 v3, v3, 0x1
goto :goto_1c
:cond_70
add-int v7, v1, v5
invoke-direct {p0, v7, v0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->startTaskIfNeeded(II)Lcom/pinguo/album/Future;
move-result-object v6
if-eqz v6, :cond_6d
goto :goto_21
.end method
.method private updateScreenNail(Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/Future;)V
.registers 8
iget-object v4, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;
invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;
invoke-interface {p2}, Lcom/pinguo/album/Future;->get()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/album/opengles/ScreenNail;
if-eqz v0, :cond_14
iget-object v4, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/album/Future;
if-eq v4, p2, :cond_1a
:cond_14
if-eqz v3, :cond_19
invoke-interface {v3}, Lcom/pinguo/album/opengles/ScreenNail;->recycle()V
:goto_19
:cond_19
return-void
:cond_1a
const/4 v4, 0x0
iput-object v4, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/album/Future;
iget-object v4, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/album/opengles/ScreenNail;
instance-of v4, v4, Lcom/pinguo/album/opengles/TiledScreenNail;
if-eqz v4, :cond_2b
iget-object v2, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/album/opengles/ScreenNail;
check-cast v2, Lcom/pinguo/album/opengles/TiledScreenNail;
invoke-virtual {v2, v3}, Lcom/pinguo/album/opengles/TiledScreenNail;->combine(Lcom/pinguo/album/opengles/ScreenNail;)Lcom/pinguo/album/opengles/ScreenNail;
move-result-object v3
:cond_2b
if-nez v3, :cond_3b
const/4 v4, 0x1
iput-boolean v4, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->failToLoad:Z
:goto_30
const/4 v1, -0x3
:goto_31
const/4 v4, 0x3
if-le v1, v4, :cond_41
:goto_34
invoke-direct {p0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateImageRequests()V
invoke-direct {p0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateScreenNailUploadQueue()V
goto :goto_19
:cond_3b
const/4 v4, 0x0
iput-boolean v4, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->failToLoad:Z
iput-object v3, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/album/opengles/ScreenNail;
goto :goto_30
:cond_41
iget v4, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
add-int/2addr v4, v1
invoke-direct {p0, v4}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->getPath(I)Lcom/pinguo/album/data/MediaPath;
move-result-object v4
if-ne p1, v4, :cond_55
if-nez v1, :cond_4f
invoke-direct {p0, v0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateTileProvider(Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;)V
:cond_4f
iget-object v4, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mPhotoView:Lcom/pinguo/album/views/FullImageView;
invoke-virtual {v4, v1}, Lcom/pinguo/album/views/FullImageView;->notifyImageChange(I)V
goto :goto_34
:cond_55
add-int/lit8 v1, v1, 0x1
goto :goto_31
.end method
.method private updateScreenNailUploadQueue()V
.registers 3
iget-object v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mUploader:Lcom/pinguo/album/opengles/TiledTexture$Uploader;
invoke-virtual {v1}, Lcom/pinguo/album/opengles/TiledTexture$Uploader;->clear()V
const/4 v1, 0x0
invoke-direct {p0, v1}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->uploadScreenNail(I)V
const/4 v0, 0x1
:goto_a
const/4 v1, 0x7
if-lt v0, v1, :cond_e
return-void
:cond_e
invoke-direct {p0, v0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->uploadScreenNail(I)V
neg-int v1, v0
invoke-direct {p0, v1}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->uploadScreenNail(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_a
.end method
.method private updateSlidingWindow()V
.registers 7
const/4 v5, 0x0
iget v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
add-int/lit8 v3, v3, -0x3
iget v4, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSize:I
add-int/lit8 v4, v4, -0x7
invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I
move-result v4
invoke-static {v3, v5, v4}, Lcom/pinguo/album/utils/Utils;->clamp(III)I
move-result v2
iget v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSize:I
add-int/lit8 v4, v2, 0x7
invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I
move-result v0
iget v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mActiveStart:I
if-ne v3, v2, :cond_22
iget v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mActiveEnd:I
if-ne v3, v0, :cond_22
:goto_21
:cond_21
return-void
:cond_22
iput v2, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mActiveStart:I
iput v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mActiveEnd:I
iget v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
add-int/lit8 v3, v3, -0x80
iget v4, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSize:I
add-int/lit16 v4, v4, -0x100
invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I
move-result v4
invoke-static {v3, v5, v4}, Lcom/pinguo/album/utils/Utils;->clamp(III)I
move-result v2
iget v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSize:I
add-int/lit16 v4, v2, 0x100
invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I
move-result v0
iget v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentStart:I
iget v4, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mActiveStart:I
if-gt v3, v4, :cond_56
iget v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentEnd:I
iget v4, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mActiveEnd:I
if-lt v3, v4, :cond_56
iget v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentStart:I
sub-int v3, v2, v3
invoke-static {v3}, Ljava/lang/Math;->abs(I)I
move-result v3
const/16 v4, 0x10
if-le v3, v4, :cond_21
:cond_56
iget v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentStart:I
:goto_58
iget v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentEnd:I
if-lt v1, v3, :cond_6a
iput v2, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentStart:I
iput v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentEnd:I
iget-object v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mReloadTask:Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;
if-eqz v3, :cond_21
iget-object v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mReloadTask:Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;
invoke-virtual {v3}, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->notifyDirty()V
goto :goto_21
:cond_6a
if-lt v1, v2, :cond_6e
if-lt v1, v0, :cond_75
:cond_6e
iget-object v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mData:[Lcom/pinguo/album/data/MediaItem;
rem-int/lit16 v4, v1, 0x100
const/4 v5, 0x0
aput-object v5, v3, v4
:cond_75
add-int/lit8 v1, v1, 0x1
goto :goto_58
.end method
.method private updateTileProvider()V
.registers 4
iget-object v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;
iget v2, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
invoke-direct {p0, v2}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->getPath(I)Lcom/pinguo/album/data/MediaPath;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;
if-nez v0, :cond_16
iget-object v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mTileProvider:Lcom/pinguo/album/adapters/TileImageViewAdapter;
invoke-virtual {v1}, Lcom/pinguo/album/adapters/TileImageViewAdapter;->clear()V
:goto_15
return-void
:cond_16
invoke-direct {p0, v0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateTileProvider(Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;)V
goto :goto_15
.end method
.method private updateTileProvider(Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;)V
.registers 9
iget-object v2, p1, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/album/opengles/ScreenNail;
iget-object v0, p1, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;
if-eqz v2, :cond_29
if-eqz v0, :cond_1b
iget-object v4, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mTileProvider:Lcom/pinguo/album/adapters/TileImageViewAdapter;
invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I
move-result v5
invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I
move-result v6
invoke-virtual {v4, v2, v5, v6}, Lcom/pinguo/album/adapters/TileImageViewAdapter;->setScreenNail(Lcom/pinguo/album/opengles/ScreenNail;II)V
iget-object v4, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mTileProvider:Lcom/pinguo/album/adapters/TileImageViewAdapter;
invoke-virtual {v4, v0}, Lcom/pinguo/album/adapters/TileImageViewAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V
:goto_1a
return-void
:cond_1b
invoke-interface {v2}, Lcom/pinguo/album/opengles/ScreenNail;->getWidth()I
move-result v3
invoke-interface {v2}, Lcom/pinguo/album/opengles/ScreenNail;->getHeight()I
move-result v1
iget-object v4, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mTileProvider:Lcom/pinguo/album/adapters/TileImageViewAdapter;
invoke-virtual {v4, v2, v3, v1}, Lcom/pinguo/album/adapters/TileImageViewAdapter;->setScreenNail(Lcom/pinguo/album/opengles/ScreenNail;II)V
goto :goto_1a
:cond_29
iget-object v4, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mTileProvider:Lcom/pinguo/album/adapters/TileImageViewAdapter;
invoke-virtual {v4}, Lcom/pinguo/album/adapters/TileImageViewAdapter;->clear()V
goto :goto_1a
.end method
.method private uploadScreenNail(I)V
.registers 9
iget v5, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
add-int v1, v5, p1
iget v5, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mActiveStart:I
if-lt v1, v5, :cond_c
iget v5, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mActiveEnd:I
if-lt v1, v5, :cond_d
:cond_c
:goto_c
return-void
:cond_d
invoke-direct {p0, v1}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->getItem(I)Lcom/pinguo/album/data/MediaItem;
move-result-object v2
if-eqz v2, :cond_c
iget-object v5, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;
invoke-virtual {v2}, Lcom/pinguo/album/data/MediaItem;->getPath()Lcom/pinguo/album/data/MediaPath;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;
if-eqz v0, :cond_c
iget-object v3, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/album/opengles/ScreenNail;
instance-of v5, v3, Lcom/pinguo/album/opengles/TiledScreenNail;
if-eqz v5, :cond_c
check-cast v3, Lcom/pinguo/album/opengles/TiledScreenNail;
invoke-virtual {v3}, Lcom/pinguo/album/opengles/TiledScreenNail;->getTexture()Lcom/pinguo/album/opengles/TiledTexture;
move-result-object v4
if-eqz v4, :cond_c
invoke-virtual {v4}, Lcom/pinguo/album/opengles/TiledTexture;->isReady()Z
move-result v5
if-nez v5, :cond_c
iget-object v5, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mUploader:Lcom/pinguo/album/opengles/TiledTexture$Uploader;
invoke-virtual {v5, v4}, Lcom/pinguo/album/opengles/TiledTexture$Uploader;->addTexture(Lcom/pinguo/album/opengles/TiledTexture;)V
goto :goto_c
.end method
.method public getCurrentIndex()I
.registers 2
iget v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
return v0
.end method
.method public getImageHeight()I
.registers 2
iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mTileProvider:Lcom/pinguo/album/adapters/TileImageViewAdapter;
invoke-virtual {v0}, Lcom/pinguo/album/adapters/TileImageViewAdapter;->getImageHeight()I
move-result v0
return v0
.end method
.method public getImageRotation(I)I
.registers 4
iget v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
add-int/2addr v1, p1
invoke-direct {p0, v1}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->getItem(I)Lcom/pinguo/album/data/MediaItem;
move-result-object v0
if-nez v0, :cond_b
const/4 v1, 0x0
:goto_a
return v1
:cond_b
invoke-virtual {v0}, Lcom/pinguo/album/data/MediaItem;->getFullImageRotation()I
move-result v1
goto :goto_a
.end method
.method public getImageSize(ILcom/pinguo/album/views/FullImageView$Size;)V
.registers 6
const/4 v2, 0x0
iget v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
add-int/2addr v1, p1
invoke-direct {p0, v1}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->getItem(I)Lcom/pinguo/album/data/MediaItem;
move-result-object v0
if-nez v0, :cond_f
iput v2, p2, Lcom/pinguo/album/views/FullImageView$Size;->width:I
iput v2, p2, Lcom/pinguo/album/views/FullImageView$Size;->height:I
:goto_e
return-void
:cond_f
invoke-virtual {v0}, Lcom/pinguo/album/data/MediaItem;->getWidth()I
move-result v1
iput v1, p2, Lcom/pinguo/album/views/FullImageView$Size;->width:I
invoke-virtual {v0}, Lcom/pinguo/album/data/MediaItem;->getHeight()I
move-result v1
iput v1, p2, Lcom/pinguo/album/views/FullImageView$Size;->height:I
goto :goto_e
.end method
.method public getImageWidth()I
.registers 2
iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mTileProvider:Lcom/pinguo/album/adapters/TileImageViewAdapter;
invoke-virtual {v0}, Lcom/pinguo/album/adapters/TileImageViewAdapter;->getImageWidth()I
move-result v0
return v0
.end method
.method public getLevelCount()I
.registers 2
iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mTileProvider:Lcom/pinguo/album/adapters/TileImageViewAdapter;
invoke-virtual {v0}, Lcom/pinguo/album/adapters/TileImageViewAdapter;->getLevelCount()I
move-result v0
return v0
.end method
.method public getLoadingState(I)I
.registers 6
const/4 v1, 0x0
iget-object v2, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;
iget v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
add-int/2addr v3, p1
invoke-direct {p0, v3}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->getPath(I)Lcom/pinguo/album/data/MediaPath;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;
if-nez v0, :cond_13
:cond_12
:goto_12
return v1
:cond_13
iget-boolean v2, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->failToLoad:Z
if-eqz v2, :cond_19
const/4 v1, 0x2
goto :goto_12
:cond_19
iget-object v2, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/album/opengles/ScreenNail;
if-eqz v2, :cond_12
const/4 v1, 0x1
goto :goto_12
.end method
.method public getMediaItem(I)Lcom/pinguo/album/data/MediaItem;
.registers 5
iget v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
add-int v0, v1, p1
iget v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentStart:I
if-lt v0, v1, :cond_13
iget v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mContentEnd:I
if-ge v0, v1, :cond_13
iget-object v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mData:[Lcom/pinguo/album/data/MediaItem;
rem-int/lit16 v2, v0, 0x100
aget-object v1, v1, v2
:goto_12
return-object v1
:cond_13
const/4 v1, 0x0
goto :goto_12
.end method
.method public getScreenNail()Lcom/pinguo/album/opengles/ScreenNail;
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->getScreenNail(I)Lcom/pinguo/album/opengles/ScreenNail;
move-result-object v0
return-object v0
.end method
.method public getScreenNail(I)Lcom/pinguo/album/opengles/ScreenNail;
.registers 8
const/4 v4, 0x0
iget v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
add-int v1, v3, p1
if-ltz v1, :cond_f
iget v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSize:I
if-ge v1, v3, :cond_f
iget-boolean v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mIsActive:Z
if-nez v3, :cond_11
:cond_f
move-object v3, v4
:goto_10
return-object v3
:cond_11
iget v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mActiveStart:I
if-lt v1, v3, :cond_25
iget v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mActiveEnd:I
if-ge v1, v3, :cond_25
const/4 v3, 0x1
:goto_1a
invoke-static {v3}, Lcom/pinguo/album/utils/Utils;->assertTrue(Z)V
invoke-direct {p0, v1}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->getItem(I)Lcom/pinguo/album/data/MediaItem;
move-result-object v2
if-nez v2, :cond_27
move-object v3, v4
goto :goto_10
:cond_25
const/4 v3, 0x0
goto :goto_1a
:cond_27
iget-object v3, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;
invoke-virtual {v2}, Lcom/pinguo/album/data/MediaItem;->getPath()Lcom/pinguo/album/data/MediaPath;
move-result-object v5
invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;
if-nez v0, :cond_37
move-object v3, v4
goto :goto_10
:cond_37
iget-object v3, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/album/opengles/ScreenNail;
if-nez v3, :cond_4c
invoke-virtual {p0, p1}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->isCamera(I)Z
move-result v3
if-nez v3, :cond_4c
invoke-direct {p0, v2}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->newPlaceholderScreenNail(Lcom/pinguo/album/data/MediaItem;)Lcom/pinguo/album/opengles/ScreenNail;
move-result-object v3
iput-object v3, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/album/opengles/ScreenNail;
if-nez p1, :cond_4c
invoke-direct {p0, v0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateTileProvider(Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;)V
:cond_4c
iget-object v3, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/album/opengles/ScreenNail;
goto :goto_10
.end method
.method public getTile(IIII)Landroid/graphics/Bitmap;
.registers 6
iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mTileProvider:Lcom/pinguo/album/adapters/TileImageViewAdapter;
invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pinguo/album/adapters/TileImageViewAdapter;->getTile(IIII)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public isCamera(I)Z
.registers 4
iget v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
add-int/2addr v0, p1
iget v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCameraIndex:I
if-ne v0, v1, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public isDeletable(I)Z
.registers 5
const/4 v1, 0x0
iget v2, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
add-int/2addr v2, p1
invoke-direct {p0, v2}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->getItem(I)Lcom/pinguo/album/data/MediaItem;
move-result-object v0
if-nez v0, :cond_b
:cond_a
:goto_a
return v1
:cond_b
invoke-virtual {v0}, Lcom/pinguo/album/data/MediaItem;->getSupportedOperations()I
move-result v2
and-int/lit8 v2, v2, 0x1
if-eqz v2, :cond_a
const/4 v1, 0x1
goto :goto_a
.end method
.method public isEmpty()Z
.registers 2
iget v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSize:I
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public isPanorama(I)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->isCamera(I)Z
move-result v0
if-eqz v0, :cond_c
iget-boolean v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mIsPanorama:Z
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public isStaticCamera(I)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->isCamera(I)Z
move-result v0
if-eqz v0, :cond_c
iget-boolean v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mIsStaticCamera:Z
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public isVideo(I)Z
.registers 6
const/4 v1, 0x0
iget v2, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mCurrentIndex:I
add-int/2addr v2, p1
invoke-direct {p0, v2}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->getItem(I)Lcom/pinguo/album/data/MediaItem;
move-result-object v0
if-nez v0, :cond_b
:cond_a
:goto_a
return v1
:cond_b
invoke-virtual {v0}, Lcom/pinguo/album/data/MediaItem;->getMediaType()I
move-result v2
const/4 v3, 0x4
if-ne v2, v3, :cond_a
const/4 v1, 0x1
goto :goto_a
.end method
.method public moveTo(I)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateCurrentIndex(I)V
return-void
.end method
.method public pause()V
.registers 4
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mIsActive:Z
iget-object v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mReloadTask:Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;
invoke-virtual {v1}, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->terminate()V
const/4 v1, 0x0
iput-object v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mReloadTask:Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;
iget-object v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSource:Lcom/pinguo/album/data/MediaSet;
iget-object v2, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSourceListener:Lcom/pinguo/album/adapters/PhotoDataAdapter$SourceListener;
invoke-virtual {v1, v2}, Lcom/pinguo/album/data/MediaSet;->removeContentListener(Lcom/pinguo/album/data/ContentListener;)V
iget-object v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;
invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;
move-result-object v1
invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_1c
:goto_1c
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_35
iget-object v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;
invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
iget-object v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mTileProvider:Lcom/pinguo/album/adapters/TileImageViewAdapter;
invoke-virtual {v1}, Lcom/pinguo/album/adapters/TileImageViewAdapter;->clear()V
iget-object v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mUploader:Lcom/pinguo/album/opengles/TiledTexture$Uploader;
invoke-virtual {v1}, Lcom/pinguo/album/opengles/TiledTexture$Uploader;->clear()V
invoke-static {}, Lcom/pinguo/album/opengles/TiledTexture;->freeResources()V
return-void
:cond_35
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;
iget-object v2, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/album/Future;
if-eqz v2, :cond_44
iget-object v2, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/pinguo/album/Future;
invoke-interface {v2}, Lcom/pinguo/album/Future;->cancel()V
:cond_44
iget-object v2, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/album/Future;
if-eqz v2, :cond_4d
iget-object v2, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/pinguo/album/Future;
invoke-interface {v2}, Lcom/pinguo/album/Future;->cancel()V
:cond_4d
iget-object v2, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/album/opengles/ScreenNail;
if-eqz v2, :cond_1c
iget-object v2, v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/pinguo/album/opengles/ScreenNail;
invoke-interface {v2}, Lcom/pinguo/album/opengles/ScreenNail;->recycle()V
goto :goto_1c
.end method
.method public resume()V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mIsActive:Z
invoke-static {}, Lcom/pinguo/album/opengles/TiledTexture;->prepareResources()V
iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSource:Lcom/pinguo/album/data/MediaSet;
iget-object v1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mSourceListener:Lcom/pinguo/album/adapters/PhotoDataAdapter$SourceListener;
invoke-virtual {v0, v1}, Lcom/pinguo/album/data/MediaSet;->addContentListener(Lcom/pinguo/album/data/ContentListener;)V
invoke-direct {p0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateImageCache()V
invoke-direct {p0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->updateImageRequests()V
new-instance v0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;-><init>(Lcom/pinguo/album/adapters/PhotoDataAdapter;Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;)V
iput-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mReloadTask:Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;
iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mReloadTask:Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;
invoke-virtual {v0}, Lcom/pinguo/album/adapters/PhotoDataAdapter$ReloadTask;->start()V
invoke-direct {p0}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->fireDataChange()V
return-void
.end method
.method public setDataListener(Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mDataListener:Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;
return-void
.end method
.method public setFocusHintDirection(I)V
.registers 2
iput p1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mFocusHintDirection:I
return-void
.end method
.method public setFocusHintPath(Lcom/pinguo/album/data/MediaPath;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mFocusHintPath:Lcom/pinguo/album/data/MediaPath;
return-void
.end method
.method public setNeedFullImage(Z)V
.registers 4
iput-boolean p1, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mNeedFullImage:Z
iget-object v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
return-void
.end method