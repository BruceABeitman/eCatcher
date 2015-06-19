.class public Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
.super Ljava/lang/Object;
.source "AlbumSetSlidingWindow.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$DataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;,
        Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;,
        Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;,
        Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$EntryUpdater;,
        Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$Listener;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_ALBUM_ENTRY:I = 0x1

.field private static final SLOT_ENTRY_CACHE_SIZE:I = 0x60

.field private static final TAG:Ljava/lang/String; = "AlbumSetSlidingWindow"


# instance fields
.field private mActiveEnd:I

.field private mActiveRequestCount:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

.field private final mHandler:Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;

.field private mIsActive:Z

.field private final mLabelMaker:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

.field private mListener:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$Listener;

.field private mLoadingLabel:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

.field private final mLoadingText:Ljava/lang/String;

.field private mSize:I

.field private mSlotWidth:I

.field private final mSource:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

.field private final mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;

.field private final mThreadPool:Lcom/pinguo/camera360/gallery/util/ThreadPool;

.field private picCountFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/gallery/AlbumActivity;Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->picCountFormat:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->setModelListener(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$DataListener;)V

    iput-object p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mSource:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    const/16 v0, 0x60

    new-array v0, v0, [Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    invoke-virtual {p2}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->size()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/AlbumActivity;->getThreadPool()Lcom/pinguo/camera360/gallery/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mThreadPool:Lcom/pinguo/camera360/gallery/util/ThreadPool;

    new-instance v0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/AlbumActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/AlbumActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800a0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mLoadingText:Ljava/lang/String;

    new-instance v0, Lcom/pinguo/camera360/gallery/ui/TextureUploader;

    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/AlbumActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;-><init>(Lcom/pinguo/camera360/gallery/ui/GLRoot;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;

    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/AlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->picCountFormat:Ljava/lang/String;

    new-instance v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$1;

    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/AlbumActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$1;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;Lcom/pinguo/camera360/gallery/ui/GLRoot;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mHandler:Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)Lcom/pinguo/camera360/gallery/util/ThreadPool;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mThreadPool:Lcom/pinguo/camera360/gallery/util/ThreadPool;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mHandler:Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/TextureUploader;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    return-void
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V

    return-void
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$Listener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$Listener;

    return-object v0
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->picCountFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->picCountFormat:Ljava/lang/String;

    return-void
.end method

.method private cancelImagesInSlot(I)V
    .registers 5

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_8

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_1f

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->cancelLoad()V

    :cond_1f
    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$1(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_8

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$1(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->cancelLoad()V

    goto :goto_8
.end method

.method private cancelNonactiveImages()V
    .registers 6

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_f
    if-lt v0, v1, :cond_12

    return-void

    :cond_12
    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->cancelImagesInSlot(I)V

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->cancelImagesInSlot(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method private freeSlotContent(I)V
    .registers 6

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_16

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->recycle()V

    :cond_16
    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$1(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_23

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$1(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->recycle()V

    :cond_23
    iget-object v1, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;->recycle()V

    :cond_2c
    iget-object v1, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    if-eqz v1, :cond_35

    iget-object v1, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;->recycle()V

    :cond_35
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    return-void
.end method

.method private static getDataVersion(Lcom/pinguo/camera360/gallery/data/MediaObject;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, -0x1

    :goto_4
    return-wide v0

    :cond_5
    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/MediaObject;->getDataVersion()J

    move-result-wide v0

    goto :goto_4
.end method

.method private static identifyCacheFlag(Lcom/pinguo/camera360/gallery/data/MediaSet;)I
    .registers 2

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getSupportedOperations()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getCacheFlag()I

    move-result v0

    goto :goto_b
.end method

.method private static identifyCacheStatus(Lcom/pinguo/camera360/gallery/data/MediaSet;)I
    .registers 2

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getSupportedOperations()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getCacheStatus()I

    move-result v0

    goto :goto_b
.end method

.method private isLabelChanged(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;Ljava/lang/String;II)Z
    .registers 6

    iget-object v0, p1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/pinguo/camera360/gallery/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    if-ne v0, p3, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private prepareSlotContent(I)V
    .registers 5

    new-instance v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    invoke-direct {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->updateAlbumSetEntry(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aput-object v0, v1, v2

    return-void
.end method

.method private requestImagesInSlot(I)V
    .registers 5

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_8

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_1f

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->startLoad()V

    :cond_1f
    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$1(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_8

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$1(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->startLoad()V

    goto :goto_8
.end method

.method private requestNonactiveImages()V
    .registers 6

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_f
    if-lt v0, v1, :cond_12

    return-void

    :cond_12
    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->requestImagesInSlot(I)V

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->requestImagesInSlot(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method private setContentWindow(II)V
    .registers 6

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-ne p1, v2, :cond_9

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-ne p2, v2, :cond_9

    :goto_8
    return-void

    :cond_9
    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-ge p1, v2, :cond_11

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt v2, p2, :cond_30

    :cond_11
    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_15
    if-lt v0, v1, :cond_24

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mSource:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->setActiveWindow(II)V

    move v0, p1

    :goto_1d
    if-lt v0, p2, :cond_2a

    :cond_1f
    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    iput p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    goto :goto_8

    :cond_24
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2a
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_30
    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    :goto_32
    if-lt v0, p1, :cond_4d

    move v0, p2

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_37
    if-lt v0, v1, :cond_53

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mSource:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->setActiveWindow(II)V

    move v0, p1

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    :goto_41
    if-lt v0, v1, :cond_59

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_45
    if-ge v0, p2, :cond_1f

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_4d
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_53
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_59
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41
.end method

.method private static startLoadBitmap(Lcom/pinguo/camera360/gallery/ui/BitmapLoader;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->startLoad()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->isRequestInProgress()Z

    move-result v0

    goto :goto_3
.end method

.method private updateAlbumSetEntry(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V
    .registers 14

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mSource:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    invoke-virtual {v5, p2}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->getMediaSet(I)Lcom/pinguo/camera360/gallery/data/MediaSet;

    move-result-object v0

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mSource:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    invoke-virtual {v5, p2}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->getCoverItem(I)Lcom/pinguo/camera360/gallery/data/MediaItem;

    move-result-object v1

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mSource:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    invoke-virtual {v5, p2}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->getTotalCount(I)I

    move-result v4

    iput-object v0, p1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/pinguo/camera360/gallery/data/MediaSet;

    if-nez v0, :cond_7a

    move-object v5, v6

    :goto_18
    iput-object v5, p1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/pinguo/camera360/gallery/data/Path;

    if-nez v0, :cond_7f

    const-string/jumbo v3, ""

    :goto_1f
    const/4 v2, 0x1

    invoke-direct {p0, p1, v3, v4, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->isLabelChanged(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_46

    iput-object v3, p1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    iput v4, p1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$1(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v5

    if-eqz v5, :cond_3c

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$1(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->recycle()V

    #setter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {p1, v6}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$2(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/pinguo/camera360/gallery/ui/BitmapLoader;)V

    iput-object v6, p1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    :cond_3c
    if-eqz v0, :cond_46

    new-instance v5, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;

    invoke-direct {v5, p0, p2, v3, v4}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;ILjava/lang/String;I)V

    #setter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {p1, v5}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$2(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/pinguo/camera360/gallery/ui/BitmapLoader;)V

    :cond_46
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->getDataVersion(Lcom/pinguo/camera360/gallery/data/MediaObject;)J

    move-result-wide v7

    iget-wide v9, p1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverDataVersion:J

    cmp-long v5, v7, v9

    if-eqz v5, :cond_79

    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->getDataVersion(Lcom/pinguo/camera360/gallery/data/MediaObject;)J

    move-result-wide v7

    iput-wide v7, p1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverDataVersion:J

    if-nez v1, :cond_88

    const/4 v5, 0x0

    :goto_59
    iput v5, p1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->rotation:I

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v5

    if-eqz v5, :cond_6f

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->recycle()V

    #setter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {p1, v6}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$3(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/pinguo/camera360/gallery/ui/BitmapLoader;)V

    iput-object v6, p1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    iput-object v6, p1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/pinguo/camera360/gallery/ui/Texture;

    :cond_6f
    if-eqz v1, :cond_79

    new-instance v5, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-direct {v5, p0, p2, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;ILcom/pinguo/camera360/gallery/data/MediaItem;)V

    #setter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {p1, v5}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$3(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/pinguo/camera360/gallery/ui/BitmapLoader;)V

    :cond_79
    return-void

    :cond_7a
    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getPath()Lcom/pinguo/camera360/gallery/data/Path;

    move-result-object v5

    goto :goto_18

    :cond_7f
    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pinguo/camera360/gallery/util/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1f

    :cond_88
    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getRotation()I

    move-result v5

    goto :goto_59
.end method

.method private updateAllImageRequests()V
    .registers 6

    const/4 v3, 0x0

    iput v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    :goto_7
    if-lt v1, v2, :cond_11

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    if-nez v3, :cond_3d

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V

    :goto_10
    return-void

    :cond_11
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v4, v4

    rem-int v4, v1, v4

    aget-object v0, v3, v4

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v3

    invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->startLoadBitmap(Lcom/pinguo/camera360/gallery/ui/BitmapLoader;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    :cond_2a
    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$1(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v3

    invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->startLoadBitmap(Lcom/pinguo/camera360/gallery/ui/BitmapLoader;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_3d
    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->cancelNonactiveImages()V

    goto :goto_10
.end method

.method private updateTextureUploadQueue()V
    .registers 8

    iget-boolean v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-nez v4, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->clear()V

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    :goto_e
    if-lt v1, v2, :cond_32

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v6, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v3, :cond_4

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->uploadBackgroundTextureInSlot(I)V

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->uploadBackgroundTextureInSlot(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_32
    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v5, v5

    rem-int v5, v1, v5

    aget-object v0, v4, v5

    iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    if-eqz v4, :cond_46

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;

    iget-object v5, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->addFgTexture(Lcom/pinguo/camera360/gallery/ui/UploadedTexture;)V

    :cond_46
    iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    if-eqz v4, :cond_51

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;

    iget-object v5, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->addFgTexture(Lcom/pinguo/camera360/gallery/ui/UploadedTexture;)V

    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method private uploadBackgroundTextureInSlot(I)V
    .registers 5

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_8

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    iget-object v1, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;

    iget-object v2, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->addBgTexture(Lcom/pinguo/camera360/gallery/ui/UploadedTexture;)V

    :cond_1d
    iget-object v1, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;

    iget-object v2, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->addBgTexture(Lcom/pinguo/camera360/gallery/ui/UploadedTexture;)V

    goto :goto_8
.end method


# virtual methods
.method public get(I)Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .registers 6

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-nez v0, :cond_28

    const-string/jumbo v0, "invalid slot: %s outsides (%s, %s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_28
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLoadingTexture()Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mLoadingText:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->requestLabel(Ljava/lang/String;Ljava/lang/String;)Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;

    move-result-object v1

    sget-object v2, Lcom/pinguo/camera360/gallery/util/ThreadPool;->JOB_CONTEXT_STUB:Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;

    invoke-interface {v1, v2}, Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;->run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    new-instance v1, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    invoke-direct {v1, v0}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;->setOpaque(Z)V

    :cond_24
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    return-object v1
.end method

.method public isActiveSlot(I)Z
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    if-lt p1, v0, :cond_a

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onContentChanged(I)V
    .registers 8

    iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-nez v1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_d

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_37

    :cond_d
    const-string/jumbo v1, "AlbumSetSlidingWindow"

    const-string/jumbo v2, "invalid update: %s is outside (%s, %s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/camera360/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_37
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    invoke-direct {p0, v0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->updateAlbumSetEntry(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->updateTextureUploadQueue()V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$Listener;

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$Listener;

    invoke-interface {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$Listener;->onContentChanged()V

    goto :goto_4
.end method

.method public onSizeChanged(I)V
    .registers 4

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    if-eq v0, p1, :cond_29

    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$Listener;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$Listener;

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$Listener;->onSizeChanged(I)V

    :cond_15
    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    if-le v0, v1, :cond_1f

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :cond_1f
    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    if-le v0, v1, :cond_29

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    :cond_29
    return-void
.end method

.method public onSlotSizeChanged(II)V
    .registers 10

    const/4 v6, 0x0

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    if-ne v3, p1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    iput-object v6, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    invoke-virtual {v3, v4, p2}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->setLabelWidth(II)V

    iget-boolean v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v3, :cond_5

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_19
    if-lt v1, v2, :cond_22

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->updateTextureUploadQueue()V

    goto :goto_5

    :cond_22
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v4, v4

    rem-int v4, v1, v4

    aget-object v0, v3, v4

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$1(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v3

    if-eqz v3, :cond_3d

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$1(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->recycle()V

    #setter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {v0, v6}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$2(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/pinguo/camera360/gallery/ui/BitmapLoader;)V

    iput-object v6, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    :cond_3d
    iget-object v3, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/pinguo/camera360/gallery/data/MediaSet;

    if-eqz v3, :cond_4d

    new-instance v3, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;

    iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    iget v5, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    invoke-direct {v3, p0, v1, v4, v5}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;ILjava/lang/String;I)V

    #setter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {v0, v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$2(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/pinguo/camera360/gallery/ui/BitmapLoader;)V

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_19
.end method

.method public pause()V
    .registers 4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->clear()V

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_c
    if-lt v0, v1, :cond_14

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->clearRecycledLabels()V

    return-void

    :cond_14
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public resume()V
    .registers 4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_7
    if-lt v0, v1, :cond_d

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    return-void

    :cond_d
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public setActiveWindow(II)V
    .registers 11

    const/4 v7, 0x0

    if-gt p1, p2, :cond_e

    sub-int v3, p2, p1

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v4, v4

    if-gt v3, v4, :cond_e

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    if-le p2, v3, :cond_37

    :cond_e
    const-string/jumbo v3, "start = %s, end = %s, length = %s, size = %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/pinguo/camera360/gallery/util/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_37
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iput p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    array-length v5, v2

    sub-int/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v7, v4}, Lcom/pinguo/camera360/gallery/util/Utils;->clamp(III)I

    move-result v1

    array-length v3, v2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->setContentWindow(II)V

    iget-boolean v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v3, :cond_66

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->updateTextureUploadQueue()V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    :cond_66
    return-void
.end method

.method public setListener(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$Listener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$Listener;

    return-void
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    return v0
.end method
