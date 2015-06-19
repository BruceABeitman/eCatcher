.class public Lcom/pinguo/album/adapters/ThumbnailDataWindow;
.super Ljava/lang/Object;
.source "ThumbnailDataWindow.java"
.implements Lcom/pinguo/album/data/loader/ThumbnailDataLoader$DataListener;
.field private static final JOB_LIMIT_SLOT:I = 0x2
.field private static final JOB_LIMIT_TAG:I = 0x1
.field private static final MSG_UPDATE_ALBUM_ENTRY:I = 0x1
.field private static final MSG_UPDATE_ENTRY:I = 0x0
.field private static final SORT_TAG_ENTRY_CACHE_SIZE:I = 0x14
.field private static final TAG:Ljava/lang/String;
.field private mActiveEnd:I
.field private mActiveRequestCount:I
.field private mActiveRequestTagCount:I
.field private mActiveStart:I
.field private mActiveTagEnd:I
.field private mActiveTagStart:I
.field private mContentEnd:I
.field private mContentStart:I
.field private mDataListener:Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;
.field private final mDataSource:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;
.field private final mHandler:Lcom/pinguo/album/SynchronizedHandler;
.field private final mImageData:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
.field private mIsActive:Z
.field private mSize:I
.field private mSortTagEntry:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
.field private mSortTagMaker:Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;
.field private mSortTags:Ljava/util/ArrayList;
.field private mTagEnd:I
.field private mTagStart:I
.field private final mTextureUploader:Lcom/pinguo/album/opengles/MixTextureUploader;
.field private final mThreadPoolForSlot:Lcom/pinguo/album/common/JobLimiter;
.field private final mThreadPoolForTag:Lcom/pinguo/album/common/JobLimiter;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/pinguo/album/fragment/PGBaseFragment;Lcom/pinguo/album/data/loader/ThumbnailDataLoader;ILcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;II)V
.registers 10
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveRequestCount:I
iput-boolean v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mIsActive:Z
iput v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentStart:I
iput v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentEnd:I
iput v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveStart:I
iput v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveEnd:I
iput v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagStart:I
iput v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagEnd:I
iput v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveTagStart:I
iput v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveTagEnd:I
iput v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveRequestTagCount:I
invoke-virtual {p2, p0}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->setDataListener(Lcom/pinguo/album/data/loader/ThumbnailDataLoader$DataListener;)V
iput-object p2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mDataSource:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;
new-array v0, p3, [Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
iput-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mImageData:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
invoke-virtual {p2}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->size()I
move-result v0
iput v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSize:I
new-instance v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$1;
invoke-virtual {p1}, Lcom/pinguo/album/fragment/PGBaseFragment;->getGLController()Lcom/pinguo/album/views/GLController;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/pinguo/album/adapters/ThumbnailDataWindow$1;-><init>(Lcom/pinguo/album/adapters/ThumbnailDataWindow;Lcom/pinguo/album/views/GLController;)V
iput-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mHandler:Lcom/pinguo/album/SynchronizedHandler;
new-instance v0, Lcom/pinguo/album/common/JobLimiter;
invoke-virtual {p1}, Lcom/pinguo/album/fragment/PGBaseFragment;->getThreadPool()Lcom/pinguo/album/AlbumThreadPool;
move-result-object v1
const/4 v2, 0x2
invoke-direct {v0, v1, v2}, Lcom/pinguo/album/common/JobLimiter;-><init>(Lcom/pinguo/album/AlbumThreadPool;I)V
iput-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mThreadPoolForSlot:Lcom/pinguo/album/common/JobLimiter;
new-instance v0, Lcom/pinguo/album/common/JobLimiter;
invoke-virtual {p1}, Lcom/pinguo/album/fragment/PGBaseFragment;->getThreadPool()Lcom/pinguo/album/AlbumThreadPool;
move-result-object v1
const/4 v2, 0x1
invoke-direct {v0, v1, v2}, Lcom/pinguo/album/common/JobLimiter;-><init>(Lcom/pinguo/album/AlbumThreadPool;I)V
iput-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mThreadPoolForTag:Lcom/pinguo/album/common/JobLimiter;
new-instance v0, Lcom/pinguo/album/opengles/MixTextureUploader;
invoke-virtual {p1}, Lcom/pinguo/album/fragment/PGBaseFragment;->getGLController()Lcom/pinguo/album/views/GLController;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/album/opengles/MixTextureUploader;-><init>(Lcom/pinguo/album/views/GLController;)V
iput-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTextureUploader:Lcom/pinguo/album/opengles/MixTextureUploader;
new-instance v0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;
invoke-virtual {p1}, Lcom/pinguo/album/fragment/PGBaseFragment;->getAndroidContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p4, p5, p6}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;-><init>(Landroid/content/Context;Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;II)V
iput-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTagMaker:Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;
const/16 v0, 0x14
new-array v0, v0, [Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
iput-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTagEntry:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)Lcom/pinguo/album/common/JobLimiter;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mThreadPoolForSlot:Lcom/pinguo/album/common/JobLimiter;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)Lcom/pinguo/album/SynchronizedHandler;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mHandler:Lcom/pinguo/album/SynchronizedHandler;
return-object v0
.end method
.method static synthetic access$10(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)[Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTagEntry:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
return-object v0
.end method
.method static synthetic access$11(Lcom/pinguo/album/adapters/ThumbnailDataWindow;I)Z
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->isActiveTag(I)Z
move-result v0
return v0
.end method
.method static synthetic access$12(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)I
.registers 2
iget v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveRequestTagCount:I
return v0
.end method
.method static synthetic access$13(Lcom/pinguo/album/adapters/ThumbnailDataWindow;I)V
.registers 2
iput p1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveRequestTagCount:I
return-void
.end method
.method static synthetic access$14(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->requestNonactiveImagesTag()V
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)[Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mImageData:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)Lcom/pinguo/album/opengles/MixTextureUploader;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTextureUploader:Lcom/pinguo/album/opengles/MixTextureUploader;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)I
.registers 2
iget v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveRequestCount:I
return v0
.end method
.method static synthetic access$5(Lcom/pinguo/album/adapters/ThumbnailDataWindow;I)V
.registers 2
iput p1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveRequestCount:I
return-void
.end method
.method static synthetic access$6(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->requestNonactiveImages()V
return-void
.end method
.method static synthetic access$7(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mDataListener:Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;
return-object v0
.end method
.method static synthetic access$8(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)Lcom/pinguo/album/common/JobLimiter;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mThreadPoolForTag:Lcom/pinguo/album/common/JobLimiter;
return-object v0
.end method
.method static synthetic access$9(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTagMaker:Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;
return-object v0
.end method
.method private cancelNonactiveImages()V
.registers 6
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentEnd:I
iget v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveEnd:I
sub-int/2addr v2, v3
iget v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveStart:I
iget v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentStart:I
sub-int/2addr v3, v4
invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I
move-result v1
const/4 v0, 0x0
:goto_f
if-lt v0, v1, :cond_12
return-void
:cond_12
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveEnd:I
add-int/2addr v2, v0
invoke-direct {p0, v2}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->cancelThumbnailImage(I)V
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveStart:I
add-int/lit8 v2, v2, -0x1
sub-int/2addr v2, v0
invoke-direct {p0, v2}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->cancelThumbnailImage(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_f
.end method
.method private cancelNonactiveImagesTag()V
.registers 6
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagEnd:I
iget v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveTagEnd:I
sub-int/2addr v2, v3
iget v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveTagStart:I
iget v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagStart:I
sub-int/2addr v3, v4
invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I
move-result v1
const/4 v0, 0x0
:goto_f
if-lt v0, v1, :cond_12
return-void
:cond_12
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveTagEnd:I
add-int/2addr v2, v0
invoke-direct {p0, v2}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->cancelTagImage(I)V
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveTagStart:I
add-int/lit8 v2, v2, -0x1
sub-int/2addr v2, v0
invoke-direct {p0, v2}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->cancelTagImage(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_f
.end method
.method private cancelTagImage(I)V
.registers 5
iget v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagStart:I
if-lt p1, v1, :cond_8
iget v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagEnd:I
if-lt p1, v1, :cond_9
:goto_8
:cond_8
return-void
:cond_9
iget-object v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTagEntry:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTagEntry:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
array-length v2, v2
rem-int v2, p1, v2
aget-object v0, v1, v2
iget-object v1, v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;->tagLoader:Lcom/pinguo/album/data/utils/BitmapLoader;
if-eqz v1, :cond_8
iget-object v1, v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;->tagLoader:Lcom/pinguo/album/data/utils/BitmapLoader;
invoke-virtual {v1}, Lcom/pinguo/album/data/utils/BitmapLoader;->cancelLoad()V
goto :goto_8
.end method
.method private cancelThumbnailImage(I)V
.registers 5
iget v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentStart:I
if-lt p1, v1, :cond_8
iget v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentEnd:I
if-lt p1, v1, :cond_9
:goto_8
:cond_8
return-void
:cond_9
iget-object v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mImageData:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mImageData:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
array-length v2, v2
rem-int v2, p1, v2
aget-object v0, v1, v2
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->contentLoader:Lcom/pinguo/album/data/utils/BitmapLoader;
invoke-static {v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->access$0(Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;)Lcom/pinguo/album/data/utils/BitmapLoader;
move-result-object v1
if-eqz v1, :cond_8
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->contentLoader:Lcom/pinguo/album/data/utils/BitmapLoader;
invoke-static {v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->access$0(Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;)Lcom/pinguo/album/data/utils/BitmapLoader;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/album/data/utils/BitmapLoader;->cancelLoad()V
goto :goto_8
.end method
.method private freeTagContent(I)V
.registers 6
iget-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTagEntry:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
array-length v3, v0
rem-int v2, p1, v3
aget-object v1, v0, v2
if-nez v1, :cond_a
:goto_9
return-void
:cond_a
iget-object v3, v1, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;->tagLoader:Lcom/pinguo/album/data/utils/BitmapLoader;
if-eqz v3, :cond_13
iget-object v3, v1, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;->tagLoader:Lcom/pinguo/album/data/utils/BitmapLoader;
invoke-virtual {v3}, Lcom/pinguo/album/data/utils/BitmapLoader;->recycle()V
:cond_13
iget-object v3, v1, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;->bitmapTexture:Lcom/pinguo/album/opengles/BitmapTexture;
if-eqz v3, :cond_1c
iget-object v3, v1, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;->bitmapTexture:Lcom/pinguo/album/opengles/BitmapTexture;
invoke-virtual {v3}, Lcom/pinguo/album/opengles/BitmapTexture;->recycle()V
:cond_1c
const/4 v3, 0x0
aput-object v3, v0, v2
goto :goto_9
.end method
.method private freeThumbnailContent(I)V
.registers 6
iget-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mImageData:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
array-length v3, v0
rem-int v2, p1, v3
aget-object v1, v0, v2
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->contentLoader:Lcom/pinguo/album/data/utils/BitmapLoader;
invoke-static {v1}, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->access$0(Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;)Lcom/pinguo/album/data/utils/BitmapLoader;
move-result-object v3
if-eqz v3, :cond_14
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->contentLoader:Lcom/pinguo/album/data/utils/BitmapLoader;
invoke-static {v1}, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->access$0(Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;)Lcom/pinguo/album/data/utils/BitmapLoader;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/album/data/utils/BitmapLoader;->recycle()V
:cond_14
iget-object v3, v1, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->bitmapTexture:Lcom/pinguo/album/opengles/TiledTexture;
if-eqz v3, :cond_1d
iget-object v3, v1, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->bitmapTexture:Lcom/pinguo/album/opengles/TiledTexture;
invoke-virtual {v3}, Lcom/pinguo/album/opengles/TiledTexture;->recycle()V
:cond_1d
const/4 v3, 0x0
aput-object v3, v0, v2
return-void
.end method
.method private isActiveTag(I)Z
.registers 3
iget v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveTagStart:I
if-lt p1, v0, :cond_a
iget v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveTagEnd:I
if-ge p1, v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method private prepareTagContent(I)V
.registers 6
new-instance v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
invoke-direct {v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;-><init>()V
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTags:Ljava/util/ArrayList;
invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/data/MediaSet$SortTag;
new-instance v2, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;
invoke-direct {v2, p0, v1, p1}, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;-><init>(Lcom/pinguo/album/adapters/ThumbnailDataWindow;Lcom/pinguo/album/data/MediaSet$SortTag;I)V
iput-object v2, v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;->tagLoader:Lcom/pinguo/album/data/utils/BitmapLoader;
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTagEntry:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
iget-object v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTagEntry:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
array-length v3, v3
rem-int v3, p1, v3
aput-object v0, v2, v3
return-void
.end method
.method private prepareThumbnailContent(I)V
.registers 6
new-instance v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
invoke-direct {v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;-><init>()V
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mDataSource:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;
invoke-virtual {v2, p1}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->get(I)Lcom/pinguo/album/data/MediaItem;
move-result-object v1
iput-object v1, v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->item:Lcom/pinguo/album/data/MediaItem;
if-nez v1, :cond_30
const/4 v2, 0x1
:goto_10
iput v2, v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->mediaType:I
if-nez v1, :cond_37
const/4 v2, 0x0
:goto_15
iput-object v2, v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->path:Lcom/pinguo/album/data/MediaPath;
if-nez v1, :cond_3c
const/4 v2, 0x0
:goto_1a
iput v2, v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->rotation:I
new-instance v2, Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader;
iget-object v3, v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->item:Lcom/pinguo/album/data/MediaItem;
invoke-direct {v2, p0, p1, v3}, Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader;-><init>(Lcom/pinguo/album/adapters/ThumbnailDataWindow;ILcom/pinguo/album/data/MediaItem;)V
#setter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->contentLoader:Lcom/pinguo/album/data/utils/BitmapLoader;
invoke-static {v0, v2}, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->access$1(Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;Lcom/pinguo/album/data/utils/BitmapLoader;)V
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mImageData:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
iget-object v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mImageData:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
array-length v3, v3
rem-int v3, p1, v3
aput-object v0, v2, v3
return-void
:cond_30
iget-object v2, v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->item:Lcom/pinguo/album/data/MediaItem;
invoke-virtual {v2}, Lcom/pinguo/album/data/MediaItem;->getMediaType()I
move-result v2
goto :goto_10
:cond_37
invoke-virtual {v1}, Lcom/pinguo/album/data/MediaItem;->getPath()Lcom/pinguo/album/data/MediaPath;
move-result-object v2
goto :goto_15
:cond_3c
invoke-virtual {v1}, Lcom/pinguo/album/data/MediaItem;->getRotation()I
move-result v2
goto :goto_1a
.end method
.method private requestNonactiveImages()V
.registers 6
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentEnd:I
iget v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveEnd:I
sub-int/2addr v2, v3
iget v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveStart:I
iget v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentStart:I
sub-int/2addr v3, v4
invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I
move-result v1
const/4 v0, 0x0
:goto_f
if-lt v0, v1, :cond_12
return-void
:cond_12
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveEnd:I
add-int/2addr v2, v0
invoke-direct {p0, v2}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->requestThumbnailImage(I)Z
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveStart:I
add-int/lit8 v2, v2, -0x1
sub-int/2addr v2, v0
invoke-direct {p0, v2}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->requestThumbnailImage(I)Z
add-int/lit8 v0, v0, 0x1
goto :goto_f
.end method
.method private requestNonactiveImagesTag()V
.registers 6
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagEnd:I
iget v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveTagEnd:I
sub-int/2addr v2, v3
iget v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveTagStart:I
iget v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagStart:I
sub-int/2addr v3, v4
invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I
move-result v1
const/4 v0, 0x0
:goto_f
if-lt v0, v1, :cond_12
return-void
:cond_12
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveTagEnd:I
add-int/2addr v2, v0
invoke-direct {p0, v2}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->requestTagImage(I)Z
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveTagStart:I
add-int/lit8 v2, v2, -0x1
sub-int/2addr v2, v0
invoke-direct {p0, v2}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->requestTagImage(I)Z
add-int/lit8 v0, v0, 0x1
goto :goto_f
.end method
.method private requestTagImage(I)Z
.registers 6
const/4 v1, 0x0
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagStart:I
if-lt p1, v2, :cond_9
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagEnd:I
if-lt p1, v2, :cond_a
:cond_9
:goto_9
return v1
:cond_a
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTagEntry:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
iget-object v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTagEntry:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
array-length v3, v3
rem-int v3, p1, v3
aget-object v0, v2, v3
iget-object v2, v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;->content:Lcom/pinguo/album/opengles/Texture;
if-nez v2, :cond_9
iget-object v1, v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;->tagLoader:Lcom/pinguo/album/data/utils/BitmapLoader;
invoke-virtual {v1}, Lcom/pinguo/album/data/utils/BitmapLoader;->startLoad()V
iget-object v1, v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;->tagLoader:Lcom/pinguo/album/data/utils/BitmapLoader;
invoke-virtual {v1}, Lcom/pinguo/album/data/utils/BitmapLoader;->isRequestInProgress()Z
move-result v1
goto :goto_9
.end method
.method private requestThumbnailImage(I)Z
.registers 6
const/4 v1, 0x0
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentStart:I
if-lt p1, v2, :cond_9
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentEnd:I
if-lt p1, v2, :cond_a
:cond_9
:goto_9
return v1
:cond_a
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mImageData:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
iget-object v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mImageData:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
array-length v3, v3
rem-int v3, p1, v3
aget-object v0, v2, v3
iget-object v2, v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->content:Lcom/pinguo/album/opengles/Texture;
if-nez v2, :cond_9
iget-object v2, v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->item:Lcom/pinguo/album/data/MediaItem;
if-eqz v2, :cond_9
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->contentLoader:Lcom/pinguo/album/data/utils/BitmapLoader;
invoke-static {v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->access$0(Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;)Lcom/pinguo/album/data/utils/BitmapLoader;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/album/data/utils/BitmapLoader;->startLoad()V
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->contentLoader:Lcom/pinguo/album/data/utils/BitmapLoader;
invoke-static {v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->access$0(Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;)Lcom/pinguo/album/data/utils/BitmapLoader;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/album/data/utils/BitmapLoader;->isRequestInProgress()Z
move-result v1
goto :goto_9
.end method
.method private setContentWindow(II)V
.registers 6
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentStart:I
if-ne p1, v2, :cond_9
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentEnd:I
if-ne p2, v2, :cond_9
:goto_8
return-void
:cond_9
iget-boolean v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mIsActive:Z
if-nez v2, :cond_17
iput p1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentStart:I
iput p2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentEnd:I
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mDataSource:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;
invoke-virtual {v2, p1, p2}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->setActiveWindow(II)V
goto :goto_8
:cond_17
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentEnd:I
if-ge p1, v2, :cond_1f
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentStart:I
if-lt v2, p2, :cond_3e
:cond_1f
iget v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentStart:I
iget v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentEnd:I
:goto_23
if-lt v0, v1, :cond_32
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mDataSource:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;
invoke-virtual {v2, p1, p2}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->setActiveWindow(II)V
move v0, p1
:goto_2b
if-lt v0, p2, :cond_38
:cond_2d
iput p1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentStart:I
iput p2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentEnd:I
goto :goto_8
:cond_32
invoke-direct {p0, v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->freeThumbnailContent(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_23
:cond_38
invoke-direct {p0, v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->prepareThumbnailContent(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_2b
:cond_3e
iget v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentStart:I
:goto_40
if-lt v0, p1, :cond_5b
move v0, p2
iget v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentEnd:I
:goto_45
if-lt v0, v1, :cond_61
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mDataSource:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;
invoke-virtual {v2, p1, p2}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->setActiveWindow(II)V
move v0, p1
iget v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentStart:I
:goto_4f
if-lt v0, v1, :cond_67
iget v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentEnd:I
:goto_53
if-ge v0, p2, :cond_2d
invoke-direct {p0, v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->prepareThumbnailContent(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_53
:cond_5b
invoke-direct {p0, v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->freeThumbnailContent(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_40
:cond_61
invoke-direct {p0, v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->freeThumbnailContent(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_45
:cond_67
invoke-direct {p0, v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->prepareThumbnailContent(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_4f
.end method
.method private setTagWindow(II)V
.registers 6
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagStart:I
if-ne p1, v2, :cond_9
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagEnd:I
if-ne p2, v2, :cond_9
:goto_8
return-void
:cond_9
iget-boolean v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mIsActive:Z
if-nez v2, :cond_12
iput p1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagStart:I
iput p2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagEnd:I
goto :goto_8
:cond_12
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagEnd:I
if-ge p1, v2, :cond_1a
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagStart:I
if-lt v2, p2, :cond_34
:cond_1a
iget v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagStart:I
iget v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagEnd:I
:goto_1e
if-lt v0, v1, :cond_28
move v0, p1
:goto_21
if-lt v0, p2, :cond_2e
:cond_23
iput p1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagStart:I
iput p2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagEnd:I
goto :goto_8
:cond_28
invoke-direct {p0, v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->freeTagContent(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_1e
:cond_2e
invoke-direct {p0, v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->prepareTagContent(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_21
:cond_34
iget v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagStart:I
:goto_36
if-lt v0, p1, :cond_4c
move v0, p2
iget v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagEnd:I
:goto_3b
if-lt v0, v1, :cond_52
move v0, p1
iget v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagStart:I
:goto_40
if-lt v0, v1, :cond_58
iget v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagEnd:I
:goto_44
if-ge v0, p2, :cond_23
invoke-direct {p0, v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->prepareTagContent(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_44
:cond_4c
invoke-direct {p0, v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->freeTagContent(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_36
:cond_52
invoke-direct {p0, v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->freeTagContent(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_3b
:cond_58
invoke-direct {p0, v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->prepareTagContent(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_40
.end method
.method private updateAllImageRequests()V
.registers 4
const/4 v2, 0x0
iput v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveRequestCount:I
iget v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveStart:I
iget v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveEnd:I
:goto_7
if-lt v0, v1, :cond_11
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveRequestCount:I
if-nez v2, :cond_20
invoke-direct {p0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->requestNonactiveImages()V
:goto_10
return-void
:cond_11
invoke-direct {p0, v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->requestThumbnailImage(I)Z
move-result v2
if-eqz v2, :cond_1d
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveRequestCount:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveRequestCount:I
:cond_1d
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_20
invoke-direct {p0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->cancelNonactiveImages()V
goto :goto_10
.end method
.method private updateAllImageRequestsTag()V
.registers 4
const/4 v2, 0x0
iput v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveRequestTagCount:I
iget v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveTagStart:I
iget v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveTagEnd:I
:goto_7
if-lt v0, v1, :cond_11
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveRequestTagCount:I
if-nez v2, :cond_20
invoke-direct {p0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->requestNonactiveImagesTag()V
:goto_10
return-void
:cond_11
invoke-direct {p0, v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->requestTagImage(I)Z
move-result v2
if-eqz v2, :cond_1d
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveRequestTagCount:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveRequestTagCount:I
:cond_1d
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_20
invoke-direct {p0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->cancelNonactiveImagesTag()V
goto :goto_10
.end method
.method private updateTextureUploadQueue()V
.registers 8
iget-boolean v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mIsActive:Z
if-nez v4, :cond_5
:cond_4
return-void
:cond_5
iget-object v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTextureUploader:Lcom/pinguo/album/opengles/MixTextureUploader;
invoke-virtual {v4}, Lcom/pinguo/album/opengles/MixTextureUploader;->clear()V
iget v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveStart:I
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveEnd:I
:goto_e
if-lt v1, v2, :cond_32
iget v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentEnd:I
iget v5, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveEnd:I
sub-int/2addr v4, v5
iget v5, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveStart:I
iget v6, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentStart:I
sub-int/2addr v5, v6
invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I
move-result v3
const/4 v1, 0x0
:goto_1f
if-ge v1, v3, :cond_4
iget v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveEnd:I
add-int/2addr v4, v1
invoke-direct {p0, v4}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->uploadBgTextureInThumbnail(I)V
iget v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveStart:I
sub-int/2addr v4, v1
add-int/lit8 v4, v4, -0x1
invoke-direct {p0, v4}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->uploadBgTextureInThumbnail(I)V
add-int/lit8 v1, v1, 0x1
goto :goto_1f
:cond_32
iget-object v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mImageData:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
iget-object v5, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mImageData:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
array-length v5, v5
rem-int v5, v1, v5
aget-object v0, v4, v5
iget-object v4, v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->bitmapTexture:Lcom/pinguo/album/opengles/TiledTexture;
if-eqz v4, :cond_46
iget-object v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTextureUploader:Lcom/pinguo/album/opengles/MixTextureUploader;
iget-object v5, v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->bitmapTexture:Lcom/pinguo/album/opengles/TiledTexture;
invoke-virtual {v4, v5}, Lcom/pinguo/album/opengles/MixTextureUploader;->addFgTexture(Lcom/pinguo/album/opengles/TiledTexture;)V
:cond_46
add-int/lit8 v1, v1, 0x1
goto :goto_e
.end method
.method private updateTextureUploadQueueTag()V
.registers 8
iget-boolean v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mIsActive:Z
if-nez v4, :cond_5
:cond_4
return-void
:cond_5
iget-object v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTextureUploader:Lcom/pinguo/album/opengles/MixTextureUploader;
invoke-virtual {v4}, Lcom/pinguo/album/opengles/MixTextureUploader;->clear()V
iget v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveTagStart:I
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveTagEnd:I
:goto_e
if-lt v1, v2, :cond_32
iget v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagEnd:I
iget v5, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveTagEnd:I
sub-int/2addr v4, v5
iget v5, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveTagStart:I
iget v6, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagStart:I
sub-int/2addr v5, v6
invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I
move-result v3
const/4 v1, 0x0
:goto_1f
if-ge v1, v3, :cond_4
iget v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveTagEnd:I
add-int/2addr v4, v1
invoke-direct {p0, v4}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->uploadBgTextureInTag(I)V
iget v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveTagStart:I
sub-int/2addr v4, v1
add-int/lit8 v4, v4, -0x1
invoke-direct {p0, v4}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->uploadBgTextureInTag(I)V
add-int/lit8 v1, v1, 0x1
goto :goto_1f
:cond_32
iget-object v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTagEntry:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
iget-object v5, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTagEntry:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
array-length v5, v5
rem-int v5, v1, v5
aget-object v0, v4, v5
iget-object v4, v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;->bitmapTexture:Lcom/pinguo/album/opengles/BitmapTexture;
if-eqz v4, :cond_46
iget-object v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTextureUploader:Lcom/pinguo/album/opengles/MixTextureUploader;
iget-object v5, v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;->bitmapTexture:Lcom/pinguo/album/opengles/BitmapTexture;
invoke-virtual {v4, v5}, Lcom/pinguo/album/opengles/MixTextureUploader;->addFgTexture(Lcom/pinguo/album/opengles/UploadedTexture;)V
:cond_46
add-int/lit8 v1, v1, 0x1
goto :goto_e
.end method
.method private uploadBgTextureInTag(I)V
.registers 5
iget v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagEnd:I
if-ge p1, v1, :cond_1c
iget v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagStart:I
if-lt p1, v1, :cond_1c
iget-object v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTagEntry:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTagEntry:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
array-length v2, v2
rem-int v2, p1, v2
aget-object v0, v1, v2
iget-object v1, v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;->bitmapTexture:Lcom/pinguo/album/opengles/BitmapTexture;
if-eqz v1, :cond_1c
iget-object v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTextureUploader:Lcom/pinguo/album/opengles/MixTextureUploader;
iget-object v2, v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;->bitmapTexture:Lcom/pinguo/album/opengles/BitmapTexture;
invoke-virtual {v1, v2}, Lcom/pinguo/album/opengles/MixTextureUploader;->addBgTexture(Lcom/pinguo/album/opengles/UploadedTexture;)V
:cond_1c
return-void
.end method
.method private uploadBgTextureInThumbnail(I)V
.registers 5
iget v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentEnd:I
if-ge p1, v1, :cond_1c
iget v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentStart:I
if-lt p1, v1, :cond_1c
iget-object v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mImageData:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mImageData:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
array-length v2, v2
rem-int v2, p1, v2
aget-object v0, v1, v2
iget-object v1, v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->bitmapTexture:Lcom/pinguo/album/opengles/TiledTexture;
if-eqz v1, :cond_1c
iget-object v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTextureUploader:Lcom/pinguo/album/opengles/MixTextureUploader;
iget-object v2, v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->bitmapTexture:Lcom/pinguo/album/opengles/TiledTexture;
invoke-virtual {v1, v2}, Lcom/pinguo/album/opengles/MixTextureUploader;->addBgTexture(Lcom/pinguo/album/opengles/TiledTexture;)V
:cond_1c
return-void
.end method
.method public get(I)Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
.registers 6
invoke-virtual {p0, p1}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->isActiveThumbnail(I)Z
move-result v0
if-nez v0, :cond_28
const-string/jumbo v0, "invalid thumbnail: %s outsides (%s, %s)"
const/4 v1, 0x3
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
iget v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveStart:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x2
iget v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveEnd:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/pinguo/album/utils/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_28
iget-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mImageData:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
iget-object v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mImageData:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
array-length v1, v1
rem-int v1, p1, v1
aget-object v0, v0, v1
return-object v0
.end method
.method public getSortTag(I)Lcom/pinguo/album/data/MediaSet$SortTag;
.registers 3
iget-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTags:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/data/MediaSet$SortTag;
return-object v0
.end method
.method public getSortTagEntry(I)Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
.registers 6
invoke-direct {p0, p1}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->isActiveTag(I)Z
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
iget v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveTagStart:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x2
iget v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveTagEnd:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/pinguo/album/utils/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_28
iget-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTagEntry:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
iget-object v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTagEntry:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
array-length v1, v1
rem-int v1, p1, v1
aget-object v0, v0, v1
return-object v0
.end method
.method public isActiveThumbnail(I)Z
.registers 3
iget v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveStart:I
if-lt p1, v0, :cond_a
iget v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveEnd:I
if-ge p1, v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public onSizeChanged(ILjava/util/ArrayList;)V
.registers 7
iput p1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSize:I
iput-object p2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTags:Ljava/util/ArrayList;
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mDataListener:Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;
if-eqz v2, :cond_16
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mDataListener:Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;
iget v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSize:I
invoke-interface {v2, v3, p2}, Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;->onSizeChanged(ILjava/util/ArrayList;)V
const/4 v0, 0x0
:goto_10
invoke-virtual {p2}, Ljava/util/ArrayList;->size()I
move-result v2
if-lt v0, v2, :cond_35
:cond_16
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentEnd:I
iget v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSize:I
if-le v2, v3, :cond_20
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSize:I
iput v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentEnd:I
:cond_20
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveEnd:I
iget v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSize:I
if-le v2, v3, :cond_2a
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSize:I
iput v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveEnd:I
:cond_2a
invoke-virtual {p2}, Ljava/util/ArrayList;->size()I
move-result v1
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagEnd:I
if-le v2, v1, :cond_34
iput v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagEnd:I
:cond_34
return-void
:cond_35
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagStart:I
if-lt v0, v2, :cond_40
iget v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagEnd:I
if-ge v0, v2, :cond_40
invoke-virtual {p0, v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->onTagChanged(I)V
:cond_40
add-int/lit8 v0, v0, 0x1
goto :goto_10
.end method
.method public onSlotContentChanged(I)V
.registers 3
iget v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentStart:I
if-lt p1, v0, :cond_24
iget v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentEnd:I
if-ge p1, v0, :cond_24
iget-boolean v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mIsActive:Z
if-eqz v0, :cond_24
invoke-direct {p0, p1}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->freeThumbnailContent(I)V
invoke-direct {p0, p1}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->prepareThumbnailContent(I)V
invoke-direct {p0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->updateAllImageRequests()V
iget-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mDataListener:Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;
if-eqz v0, :cond_24
invoke-virtual {p0, p1}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->isActiveThumbnail(I)Z
move-result v0
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mDataListener:Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;
invoke-interface {v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;->onContentChanged()V
:cond_24
return-void
.end method
.method public onTagChanged(I)V
.registers 3
iget v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagStart:I
if-lt p1, v0, :cond_24
iget v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagEnd:I
if-ge p1, v0, :cond_24
iget-boolean v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mIsActive:Z
if-eqz v0, :cond_24
invoke-direct {p0, p1}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->freeTagContent(I)V
invoke-direct {p0, p1}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->prepareTagContent(I)V
invoke-direct {p0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->updateAllImageRequestsTag()V
iget-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mDataListener:Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;
if-eqz v0, :cond_24
invoke-direct {p0, p1}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->isActiveTag(I)Z
move-result v0
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mDataListener:Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;
invoke-interface {v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;->onContentChanged()V
:cond_24
return-void
.end method
.method public pause()V
.registers 4
const/4 v2, 0x0
iput-boolean v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mIsActive:Z
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTextureUploader:Lcom/pinguo/album/opengles/MixTextureUploader;
invoke-virtual {v2}, Lcom/pinguo/album/opengles/MixTextureUploader;->clear()V
invoke-static {}, Lcom/pinguo/album/opengles/TiledTexture;->freeResources()V
iget v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentStart:I
iget v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentEnd:I
:goto_f
if-lt v0, v1, :cond_18
iget v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagStart:I
iget v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagEnd:I
:goto_15
if-lt v0, v1, :cond_1e
return-void
:cond_18
invoke-direct {p0, v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->freeThumbnailContent(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_1e
invoke-direct {p0, v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->freeTagContent(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_15
.end method
.method public resume()V
.registers 4
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mIsActive:Z
invoke-static {}, Lcom/pinguo/album/opengles/TiledTexture;->prepareResources()V
iget v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentStart:I
iget v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mContentEnd:I
:goto_a
if-lt v0, v1, :cond_19
iget v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagStart:I
iget v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTagEnd:I
:goto_10
if-lt v0, v1, :cond_1f
invoke-direct {p0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->updateAllImageRequestsTag()V
invoke-direct {p0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->updateAllImageRequests()V
return-void
:cond_19
invoke-direct {p0, v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->prepareThumbnailContent(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_1f
invoke-direct {p0, v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->prepareTagContent(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_10
.end method
.method public setActiveTagWindow(II)V
.registers 11
const/4 v7, 0x0
if-gt p1, p2, :cond_12
sub-int v3, p2, p1
iget-object v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTagEntry:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
array-length v4, v4
if-gt v3, v4, :cond_12
iget-object v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTags:Ljava/util/ArrayList;
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
iget-object v6, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTagEntry:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
array-length v6, v6
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x3
iget-object v6, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTags:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v6
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
invoke-static {v3, v4}, Lcom/pinguo/album/utils/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_3f
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTagEntry:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
iput p1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveTagStart:I
iput p2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveTagEnd:I
add-int v3, p1, p2
div-int/lit8 v3, v3, 0x2
array-length v4, v2
div-int/lit8 v4, v4, 0x2
sub-int/2addr v3, v4
iget-object v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTags:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
array-length v5, v2
sub-int/2addr v4, v5
invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I
move-result v4
invoke-static {v3, v7, v4}, Lcom/pinguo/album/utils/Utils;->clamp(III)I
move-result v1
array-length v3, v2
add-int/2addr v3, v1
iget-object v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTags:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-direct {p0, v1, v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->setTagWindow(II)V
invoke-direct {p0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->updateTextureUploadQueueTag()V
iget-boolean v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mIsActive:Z
if-eqz v3, :cond_76
invoke-direct {p0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->updateAllImageRequestsTag()V
:cond_76
return-void
.end method
.method public setActiveWindow(II)V
.registers 11
const/4 v7, 0x0
if-gt p1, p2, :cond_e
sub-int v3, p2, p1
iget-object v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mImageData:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
array-length v4, v4
if-gt v3, v4, :cond_e
iget v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSize:I
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
iget-object v6, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mImageData:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
array-length v6, v6
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x3
iget v6, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSize:I
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
invoke-static {v3, v4}, Lcom/pinguo/album/utils/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_37
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mImageData:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
iput p1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveStart:I
iput p2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveEnd:I
add-int v3, p1, p2
div-int/lit8 v3, v3, 0x2
array-length v4, v2
div-int/lit8 v4, v4, 0x2
sub-int/2addr v3, v4
iget v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSize:I
array-length v5, v2
sub-int/2addr v4, v5
invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I
move-result v4
invoke-static {v3, v7, v4}, Lcom/pinguo/album/utils/Utils;->clamp(III)I
move-result v1
array-length v3, v2
add-int/2addr v3, v1
iget v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSize:I
invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-direct {p0, v1, v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->setContentWindow(II)V
invoke-direct {p0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->updateTextureUploadQueue()V
iget-boolean v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mIsActive:Z
if-eqz v3, :cond_66
invoke-direct {p0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->updateAllImageRequests()V
:cond_66
return-void
.end method
.method public setListener(Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mDataListener:Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;
return-void
.end method