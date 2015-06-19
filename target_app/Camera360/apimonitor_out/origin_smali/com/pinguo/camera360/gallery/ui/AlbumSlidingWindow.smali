.class public Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/AlbumDataLoader$DataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;,
        Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$EntryUpdater;,
        Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;,
        Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;,
        Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;,
        Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;
    }
.end annotation


# static fields
.field private static final JOB_LIMIT:I = 0x2

.field private static final MSG_UPDATE_ALBUM_ENTRY:I = 0x1

.field private static final MSG_UPDATE_ENTRY:I = 0x0

.field private static final SLOT_ENTRY_CACHE_SIZE:I = 0x60

.field private static final SORT_TAG_ENTRY_CACHE_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "AlbumSlidingWindow"


# instance fields
.field private mActiveEnd:I

.field private mActiveRequestCount:I

.field private mActiveRequestTagCount:I

.field private mActiveStart:I

.field private mActiveTagEnd:I

.field private mActiveTagStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mHandler:Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;

.field private mIsActive:Z

.field private mListener:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;

.field private mSize:I

.field private final mSlotEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;

.field private mSortTagEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;

.field private mSortTagMaker:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;

.field private mSortTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;",
            ">;"
        }
    .end annotation
.end field

.field private final mSource:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

.field private mTagEnd:I

.field private mTagStart:I

.field private final mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;

.field private final mThreadPool:Lcom/pinguo/camera360/gallery/util/JobLimiter;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/gallery/AlbumActivity;Lcom/pinguo/camera360/gallery/AlbumDataLoader;Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;II)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mIsActive:Z

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagStart:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagEnd:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveTagStart:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveTagEnd:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveRequestTagCount:I

    invoke-virtual {p2, p0}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->setDataListener(Lcom/pinguo/camera360/gallery/AlbumDataLoader$DataListener;)V

    iput-object p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSource:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    const/16 v0, 0x60

    new-array v0, v0, [Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSlotEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    const/16 v0, 0x20

    new-array v0, v0, [Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTagEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;

    invoke-virtual {p2}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->size()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSize:I

    new-instance v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$1;

    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/AlbumActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$1;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;Lcom/pinguo/camera360/gallery/ui/GLRoot;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mHandler:Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;

    new-instance v0, Lcom/pinguo/camera360/gallery/util/JobLimiter;

    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/AlbumActivity;->getThreadPool()Lcom/pinguo/camera360/gallery/util/ThreadPool;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/gallery/util/JobLimiter;-><init>(Lcom/pinguo/camera360/gallery/util/ThreadPool;I)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mThreadPool:Lcom/pinguo/camera360/gallery/util/JobLimiter;

    new-instance v0, Lcom/pinguo/camera360/gallery/ui/TextureUploader;

    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/AlbumActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;-><init>(Lcom/pinguo/camera360/gallery/ui/GLRoot;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;

    new-instance v0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;

    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/AlbumActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3, p4, p5}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;II)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTagMaker:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)Lcom/pinguo/camera360/gallery/util/JobLimiter;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mThreadPool:Lcom/pinguo/camera360/gallery/util/JobLimiter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mHandler:Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->isActiveTag(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveRequestTagCount:I

    return v0
.end method

.method static synthetic access$12(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveRequestTagCount:I

    return-void
.end method

.method static synthetic access$13(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->requestNonactiveImagesTag()V

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSlotEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/TextureUploader;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    return-void
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->requestNonactiveImages()V

    return-void
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;

    return-object v0
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTagMaker:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTagEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;

    return-object v0
.end method

.method private cancelNonactiveImages()V
    .registers 6

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_f
    if-lt v0, v1, :cond_12

    return-void

    :cond_12
    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->cancelSlotImage(I)V

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->cancelSlotImage(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method private cancelNonactiveImagesTag()V
    .registers 6

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagEnd:I

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveTagEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveTagStart:I

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_f
    if-lt v0, v1, :cond_12

    return-void

    :cond_12
    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveTagEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->cancelTagImage(I)V

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveTagStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->cancelTagImage(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method private cancelSlotImage(I)V
    .registers 5

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_8

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSlotEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSlotEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_8

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->cancelLoad()V

    goto :goto_8
.end method

.method private cancelTagImage(I)V
    .registers 5

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagStart:I

    if-lt p1, v1, :cond_8

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagEnd:I

    if-lt p1, v1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTagEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTagEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    iget-object v1, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;->tagLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;->tagLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->cancelLoad()V

    goto :goto_8
.end method

.method private freeSlotContent(I)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSlotEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v3, v0

    rem-int v2, p1, v3

    aget-object v1, v0, v2

    if-nez v1, :cond_a

    :goto_9
    return-void

    :cond_a
    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v3

    if-eqz v3, :cond_17

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->recycle()V

    :cond_17
    iget-object v3, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    if-eqz v3, :cond_20

    iget-object v3, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;->recycle()V

    :cond_20
    const/4 v3, 0x0

    aput-object v3, v0, v2

    goto :goto_9
.end method

.method private freeTagContent(I)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTagEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;

    array-length v3, v0

    rem-int v2, p1, v3

    aget-object v1, v0, v2

    if-nez v1, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v3, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;->tagLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    if-eqz v3, :cond_13

    iget-object v3, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;->tagLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->recycle()V

    :cond_13
    iget-object v3, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    if-eqz v3, :cond_1c

    iget-object v3, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;->recycle()V

    :cond_1c
    const/4 v3, 0x0

    aput-object v3, v0, v2

    goto :goto_9
.end method

.method private isActiveTag(I)Z
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveTagStart:I

    if-lt p1, v0, :cond_a

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveTagEnd:I

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private prepareSlotContent(I)V
    .registers 6

    new-instance v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    invoke-direct {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;-><init>()V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSource:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    invoke-virtual {v2, p1}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->get(I)Lcom/pinguo/camera360/gallery/data/MediaItem;

    move-result-object v1

    iput-object v1, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/pinguo/camera360/gallery/data/MediaItem;

    if-nez v1, :cond_30

    const/4 v2, 0x1

    :goto_10
    iput v2, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    if-nez v1, :cond_37

    const/4 v2, 0x0

    :goto_15
    iput-object v2, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/pinguo/camera360/gallery/data/Path;

    if-nez v1, :cond_3c

    const/4 v2, 0x0

    :goto_1a
    iput v2, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    new-instance v2, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;

    iget-object v3, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/pinguo/camera360/gallery/data/MediaItem;

    invoke-direct {v2, p0, p1, v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;ILcom/pinguo/camera360/gallery/data/MediaItem;)V

    #setter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {v0, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->access$1(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;Lcom/pinguo/camera360/gallery/ui/BitmapLoader;)V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSlotEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSlotEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v3, v3

    rem-int v3, p1, v3

    aput-object v0, v2, v3

    return-void

    :cond_30
    iget-object v2, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/pinguo/camera360/gallery/data/MediaItem;

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getMediaType()I

    move-result v2

    goto :goto_10

    :cond_37
    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getPath()Lcom/pinguo/camera360/gallery/data/Path;

    move-result-object v2

    goto :goto_15

    :cond_3c
    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getRotation()I

    move-result v2

    goto :goto_1a
.end method

.method private prepareTagContent(I)V
    .registers 7

    new-instance v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;

    invoke-direct {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;-><init>()V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTags:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;

    new-instance v2, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;

    iget-object v3, v1, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->time:Ljava/lang/String;

    iget-boolean v4, v1, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->isYearTag:Z

    invoke-direct {v2, p0, v3, v4, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;Ljava/lang/String;ZI)V

    iput-object v2, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;->tagLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTagEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTagEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;

    array-length v3, v3

    rem-int v3, p1, v3

    aput-object v0, v2, v3

    return-void
.end method

.method private requestNonactiveImages()V
    .registers 6

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_f
    if-lt v0, v1, :cond_12

    return-void

    :cond_12
    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->requestSlotImage(I)Z

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->requestSlotImage(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method private requestNonactiveImagesTag()V
    .registers 6

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagEnd:I

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveTagEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveTagStart:I

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_f
    if-lt v0, v1, :cond_12

    return-void

    :cond_12
    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveTagEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->requestTagImage(I)Z

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveTagStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->requestTagImage(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method private requestSlotImage(I)Z
    .registers 6

    const/4 v1, 0x0

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v2, :cond_9

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v2, :cond_a

    :cond_9
    :goto_9
    return v1

    :cond_a
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSlotEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSlotEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v3, v3

    rem-int v3, p1, v3

    aget-object v0, v2, v3

    iget-object v2, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/pinguo/camera360/gallery/ui/Texture;

    if-nez v2, :cond_9

    iget-object v2, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/pinguo/camera360/gallery/data/MediaItem;

    if-eqz v2, :cond_9

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->startLoad()V

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->isRequestInProgress()Z

    move-result v1

    goto :goto_9
.end method

.method private requestTagImage(I)Z
    .registers 6

    const/4 v1, 0x0

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagStart:I

    if-lt p1, v2, :cond_9

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagEnd:I

    if-lt p1, v2, :cond_a

    :cond_9
    :goto_9
    return v1

    :cond_a
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTagEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTagEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;

    array-length v3, v3

    rem-int v3, p1, v3

    aget-object v0, v2, v3

    iget-object v2, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;->content:Lcom/pinguo/camera360/gallery/ui/Texture;

    if-nez v2, :cond_9

    iget-object v1, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;->tagLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->startLoad()V

    iget-object v1, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;->tagLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->isRequestInProgress()Z

    move-result v1

    goto :goto_9
.end method

.method private setContentWindow(II)V
    .registers 6

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    if-ne p1, v2, :cond_9

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ne p2, v2, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-boolean v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mIsActive:Z

    if-nez v2, :cond_17

    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    iput p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSource:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->setActiveWindow(II)V

    goto :goto_8

    :cond_17
    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v2, :cond_1f

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt v2, p2, :cond_3e

    :cond_1f
    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_23
    if-lt v0, v1, :cond_32

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSource:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->setActiveWindow(II)V

    move v0, p1

    :goto_2b
    if-lt v0, p2, :cond_38

    :cond_2d
    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    iput p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    goto :goto_8

    :cond_32
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_38
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_3e
    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    :goto_40
    if-lt v0, p1, :cond_5b

    move v0, p2

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_45
    if-lt v0, v1, :cond_61

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSource:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->setActiveWindow(II)V

    move v0, p1

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    :goto_4f
    if-lt v0, v1, :cond_67

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_53
    if-ge v0, p2, :cond_2d

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    :cond_5b
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_61
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_67
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4f
.end method

.method private setTagWindow(II)V
    .registers 6

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagStart:I

    if-ne p1, v2, :cond_9

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagEnd:I

    if-ne p2, v2, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-boolean v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mIsActive:Z

    if-nez v2, :cond_12

    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagStart:I

    iput p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagEnd:I

    goto :goto_8

    :cond_12
    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagEnd:I

    if-ge p1, v2, :cond_1a

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagStart:I

    if-lt v2, p2, :cond_34

    :cond_1a
    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagStart:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagEnd:I

    :goto_1e
    if-lt v0, v1, :cond_28

    move v0, p1

    :goto_21
    if-lt v0, p2, :cond_2e

    :cond_23
    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagStart:I

    iput p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagEnd:I

    goto :goto_8

    :cond_28
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->freeTagContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_2e
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->prepareTagContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_34
    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagStart:I

    :goto_36
    if-lt v0, p1, :cond_4c

    move v0, p2

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagEnd:I

    :goto_3b
    if-lt v0, v1, :cond_52

    move v0, p1

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagStart:I

    :goto_40
    if-lt v0, v1, :cond_58

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagEnd:I

    :goto_44
    if-ge v0, p2, :cond_23

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->prepareTagContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :cond_4c
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->freeTagContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_52
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->freeTagContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_58
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->prepareTagContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40
.end method

.method private updateAllImageRequests()V
    .registers 4

    const/4 v2, 0x0

    iput v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    :goto_7
    if-lt v0, v1, :cond_11

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    if-nez v2, :cond_20

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->requestNonactiveImages()V

    :goto_10
    return-void

    :cond_11
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->requestSlotImage(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_20
    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->cancelNonactiveImages()V

    goto :goto_10
.end method

.method private updateAllImageRequestsTag()V
    .registers 4

    const/4 v2, 0x0

    iput v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveRequestTagCount:I

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveTagStart:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveTagEnd:I

    :goto_7
    if-lt v0, v1, :cond_11

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveRequestTagCount:I

    if-nez v2, :cond_20

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->requestNonactiveImagesTag()V

    :goto_10
    return-void

    :cond_11
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->requestTagImage(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveRequestTagCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveRequestTagCount:I

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_20
    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->cancelNonactiveImagesTag()V

    goto :goto_10
.end method

.method private updateTextureUploadQueue()V
    .registers 8

    iget-boolean v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mIsActive:Z

    if-nez v4, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->clear()V

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    :goto_e
    if-lt v1, v2, :cond_32

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v6, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v3, :cond_4

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->uploadBgTextureInSlot(I)V

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->uploadBgTextureInSlot(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_32
    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSlotEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSlotEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v5, v5

    rem-int v5, v1, v5

    aget-object v0, v4, v5

    iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    if-eqz v4, :cond_46

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;

    iget-object v5, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->addFgTexture(Lcom/pinguo/camera360/gallery/ui/UploadedTexture;)V

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method private updateTextureUploadQueueTag()V
    .registers 8

    iget-boolean v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mIsActive:Z

    if-nez v4, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->clear()V

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveTagStart:I

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveTagEnd:I

    :goto_e
    if-lt v1, v2, :cond_32

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagEnd:I

    iget v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveTagEnd:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveTagStart:I

    iget v6, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagStart:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v3, :cond_4

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveTagEnd:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->uploadBgTextureInTag(I)V

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveTagStart:I

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->uploadBgTextureInTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_32
    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTagEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTagEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;

    array-length v5, v5

    rem-int v5, v1, v5

    aget-object v0, v4, v5

    iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    if-eqz v4, :cond_46

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;

    iget-object v5, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->addFgTexture(Lcom/pinguo/camera360/gallery/ui/UploadedTexture;)V

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method private uploadBgTextureInSlot(I)V
    .registers 5

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v1, :cond_1c

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_1c

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSlotEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSlotEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    iget-object v1, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;

    iget-object v2, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->addBgTexture(Lcom/pinguo/camera360/gallery/ui/UploadedTexture;)V

    :cond_1c
    return-void
.end method

.method private uploadBgTextureInTag(I)V
    .registers 5

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagEnd:I

    if-ge p1, v1, :cond_1c

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagStart:I

    if-lt p1, v1, :cond_1c

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTagEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTagEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    iget-object v1, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;

    iget-object v2, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->addBgTexture(Lcom/pinguo/camera360/gallery/ui/UploadedTexture;)V

    :cond_1c
    return-void
.end method


# virtual methods
.method public getSlotEntry(I)Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;
    .registers 6

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

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

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_28
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSlotEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSlotEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSortTag(I)Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTags:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;

    return-object v0
.end method

.method public getSortTagEntry(I)Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;
    .registers 6

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->isActiveTag(I)Z

    move-result v0

    if-nez v0, :cond_28

    const-string/jumbo v0, "invalid tag: %s outsides (%s, %s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveTagStart:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveTagEnd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_28
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTagEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTagEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isActiveSlot(I)Z
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    if-lt p1, v0, :cond_a

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onSizeChanged(ILjava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;",
            ">;)V"
        }
    .end annotation

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSize:I

    if-eq v2, p1, :cond_48

    const-string/jumbo v2, "AlbumSlidingWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "----------1-----------onSizeChanged:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSize:I

    iput-object p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTags:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSize:I

    invoke-interface {v2, v3, p2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;->onSizeChanged(ILjava/util/ArrayList;)V

    const/4 v0, 0x0

    :goto_2e
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_49

    :cond_34
    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSize:I

    if-le v2, v3, :cond_3e

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSize:I

    iput v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    :cond_3e
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagEnd:I

    if-le v2, v1, :cond_48

    iput v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagEnd:I

    :cond_48
    return-void

    :cond_49
    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagStart:I

    if-lt v0, v2, :cond_54

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagEnd:I

    if-ge v0, v2, :cond_54

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->onTagChanged(I)V

    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e
.end method

.method public onSlotContentChanged(I)V
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_30

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v0, :cond_30

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->clear()V

    :cond_15
    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->requestSlotImage(I)Z

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;

    if-eqz v0, :cond_30

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;->onContentChanged()V

    :cond_30
    return-void
.end method

.method public onTagChanged(I)V
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagStart:I

    if-lt p1, v0, :cond_27

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagEnd:I

    if-ge p1, v0, :cond_27

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_27

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->freeTagContent(I)V

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->prepareTagContent(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->updateAllImageRequestsTag()V

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->requestTagImage(I)Z

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;

    if-eqz v0, :cond_27

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->isActiveTag(I)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;->onContentChanged()V

    :cond_27
    return-void
.end method

.method public pause()V
    .registers 4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mIsActive:Z

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->clear()V

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_c
    if-lt v0, v1, :cond_1a

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagStart:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagEnd:I

    :goto_12
    if-lt v0, v1, :cond_20

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTagMaker:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->clearRecycledSortTags()V

    return-void

    :cond_1a
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_20
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->freeTagContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method public resume()V
    .registers 6

    const-string/jumbo v2, "AlbumSlidingWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "------------------------resume - mContentStart"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mContentEnd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mIsActive:Z

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_2c
    if-lt v0, v1, :cond_3b

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagStart:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTagEnd:I

    :goto_32
    if-lt v0, v1, :cond_41

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->updateAllImageRequestsTag()V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    return-void

    :cond_3b
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_41
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->prepareTagContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_32
.end method

.method public setActiveSlotWindow(II)V
    .registers 11

    const/4 v7, 0x0

    if-gt p1, p2, :cond_e

    sub-int v3, p2, p1

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSlotEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v4, v4

    if-gt v3, v4, :cond_e

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSize:I

    if-le p2, v3, :cond_37

    :cond_e
    const-string/jumbo v3, "%s, %s, %s, %s"

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

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSlotEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/pinguo/camera360/gallery/util/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_37
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSlotEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    iput p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSize:I

    array-length v5, v2

    sub-int/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v7, v4}, Lcom/pinguo/camera360/gallery/util/Utils;->clamp(III)I

    move-result v1

    array-length v3, v2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->setContentWindow(II)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->updateTextureUploadQueue()V

    iget-boolean v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mIsActive:Z

    if-eqz v3, :cond_66

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    :cond_66
    return-void
.end method

.method public setActiveTagWindow(II)V
    .registers 11

    const/4 v7, 0x0

    if-gt p1, p2, :cond_12

    sub-int v3, p2, p1

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTagEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;

    array-length v4, v4

    if-gt v3, v4, :cond_12

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTags:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le p2, v3, :cond_3f

    :cond_12
    const-string/jumbo v3, "%s, %s, %s, %s"

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

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTagEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTags:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/pinguo/camera360/gallery/util/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3f
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTagEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;

    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveTagStart:I

    iput p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveTagEnd:I

    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTags:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    array-length v5, v2

    sub-int/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v7, v4}, Lcom/pinguo/camera360/gallery/util/Utils;->clamp(III)I

    move-result v1

    array-length v3, v2

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTags:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->setTagWindow(II)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->updateTextureUploadQueueTag()V

    iget-boolean v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mIsActive:Z

    if-eqz v3, :cond_76

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->updateAllImageRequestsTag()V

    :cond_76
    return-void
.end method

.method public setListener(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;

    return-void
.end method
