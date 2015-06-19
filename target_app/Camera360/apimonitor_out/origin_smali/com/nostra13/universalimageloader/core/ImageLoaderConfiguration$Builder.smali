.class public Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final DEFAULT_TASK_PROCESSING_TYPE:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType; = null

.field public static final DEFAULT_THREAD_POOL_SIZE:I = 0x3

.field public static final DEFAULT_THREAD_PRIORITY:I = 0x4

.field private static final WARNING_OVERLAP_DISC_CACHE_NAME_GENERATOR:Ljava/lang/String; = "discCache() and discCacheFileNameGenerator() calls overlap each other"

.field private static final WARNING_OVERLAP_DISC_CACHE_PARAMS:Ljava/lang/String; = "discCache(), discCacheSize() and discCacheFileCount calls overlap each other"

.field private static final WARNING_OVERLAP_EXECUTOR:Ljava/lang/String; = "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

.field private static final WARNING_OVERLAP_MEMORY_CACHE:Ljava/lang/String; = "memoryCache() and memoryCacheSize() calls overlap each other"


# instance fields
.field private context:Landroid/content/Context;

.field private customExecutor:Z

.field private customExecutorForCachedImages:Z

.field private decoder:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

.field private defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private denyCacheImageMultipleSizesInMemory:Z

.field private discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

.field private discCacheFileCount:I

.field private discCacheFileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

.field private discCacheSize:I

.field private downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private imageCompressFormatForDiscCache:Landroid/graphics/Bitmap$CompressFormat;

.field private imageQualityForDiscCache:I

.field private maxImageHeightForDiscCache:I

.field private maxImageHeightForMemoryCache:I

.field private maxImageWidthForDiscCache:I

.field private maxImageWidthForMemoryCache:I

.field private memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private memoryCacheSize:I

.field private processorForDiscCache:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

.field private taskExecutor:Ljava/util/concurrent/Executor;

.field private taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

.field private tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

.field private threadPoolSize:I

.field private threadPriority:I

.field private writeLogs:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->FIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    sput-object v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->DEFAULT_TASK_PROCESSING_TYPE:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForMemoryCache:I

    iput v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForMemoryCache:I

    iput v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForDiscCache:I

    iput v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForDiscCache:I

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageCompressFormatForDiscCache:Landroid/graphics/Bitmap$CompressFormat;

    iput v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageQualityForDiscCache:I

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->processorForDiscCache:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    iput-boolean v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->customExecutor:Z

    iput-boolean v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->customExecutorForCachedImages:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    iput-boolean v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory:Z

    sget-object v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->DEFAULT_TASK_PROCESSING_TYPE:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    iput v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    iput v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheSize:I

    iput v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileCount:I

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iput-boolean v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .registers 2

    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForMemoryCache:I

    return v0
.end method

.method static synthetic access$1000(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .registers 2

    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    return v0
.end method

.method static synthetic access$1100(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .registers 2

    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    return v0
.end method

.method static synthetic access$1200(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
    .registers 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;
    .registers 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
    .registers 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .registers 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .registers 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
    .registers 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->customExecutor:Z

    return v0
.end method

.method static synthetic access$200(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .registers 2

    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForMemoryCache:I

    return v0
.end method

.method static synthetic access$2000(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->customExecutorForCachedImages:Z

    return v0
.end method

.method static synthetic access$300(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .registers 2

    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForDiscCache:I

    return v0
.end method

.method static synthetic access$400(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .registers 2

    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForDiscCache:I

    return v0
.end method

.method static synthetic access$500(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Landroid/graphics/Bitmap$CompressFormat;
    .registers 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageCompressFormatForDiscCache:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .registers 2

    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageQualityForDiscCache:I

    return v0
.end method

.method static synthetic access$700(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .registers 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->processorForDiscCache:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;
    .registers 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;
    .registers 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private initEmptyFieldsWithDefaultValues()V
    .registers 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_7d

    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    iget v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-static {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createExecutor(IILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    :goto_11
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_80

    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    iget v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-static {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createExecutor(IILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    :goto_21
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    if-nez v0, :cond_2f

    invoke-static {}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createFileNameGenerator()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    :cond_2f
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    iget v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheSize:I

    iget v3, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileCount:I

    invoke-static {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createDiscCache(Landroid/content/Context;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;II)Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    :cond_3d
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    if-nez v0, :cond_49

    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    invoke-static {v0}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createMemoryCache(I)Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    :cond_49
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory:Z

    if-eqz v0, :cond_5a

    new-instance v0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    invoke-static {}, Lcom/nostra13/universalimageloader/core/assist/MemoryCacheUtil;->createFuzzyKeyComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;-><init>(Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    :cond_5a
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createImageDownloader(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    :cond_66
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    if-nez v0, :cond_72

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z

    invoke-static {v0}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createImageDecoder(Z)Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    :cond_72
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    if-nez v0, :cond_7c

    invoke-static {}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->createSimple()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    :cond_7c
    return-void

    :cond_7d
    iput-boolean v3, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->customExecutor:Z

    goto :goto_11

    :cond_80
    iput-boolean v3, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->customExecutorForCachedImages:Z

    goto :goto_21
.end method


# virtual methods
.method public build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    .registers 3

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->initEmptyFieldsWithDefaultValues()V

    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$1;)V

    return-object v0
.end method

.method public defaultDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 2

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-object p0
.end method

.method public denyCacheImageMultipleSizesInMemory()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory:Z

    return-object p0
.end method

.method public discCache(Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 5

    const/4 v2, 0x0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheSize:I

    if-gtz v0, :cond_9

    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileCount:I

    if-lez v0, :cond_11

    :cond_9
    const-string/jumbo v0, "discCache(), discCacheSize() and discCacheFileCount calls overlap each other"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "discCache() and discCacheFileNameGenerator() calls overlap each other"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    return-object p0
.end method

.method public discCacheExtraOptions(IILandroid/graphics/Bitmap$CompressFormat;ILcom/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 6

    iput p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForDiscCache:I

    iput p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForDiscCache:I

    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageCompressFormatForDiscCache:Landroid/graphics/Bitmap$CompressFormat;

    iput p4, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageQualityForDiscCache:I

    iput-object p5, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->processorForDiscCache:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object p0
.end method

.method public discCacheFileCount(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 5

    const/4 v2, 0x0

    if-gtz p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxFileCount must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    if-nez v0, :cond_14

    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheSize:I

    if-lez v0, :cond_1c

    :cond_14
    const-string/jumbo v0, "discCache(), discCacheSize() and discCacheFileCount calls overlap each other"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    iput v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheSize:I

    iput p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileCount:I

    return-object p0
.end method

.method public discCacheFileNameGenerator(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    if-eqz v0, :cond_d

    const-string/jumbo v0, "discCache() and discCacheFileNameGenerator() calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    return-object p0
.end method

.method public discCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    if-gtz p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxCacheSize must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    if-nez v0, :cond_13

    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileCount:I

    if-lez v0, :cond_1c

    :cond_13
    const-string/jumbo v0, "discCache(), discCacheSize() and discCacheFileCount calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    iput p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheSize:I

    return-object p0
.end method

.method public imageDecoder(Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 2

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    return-object p0
.end method

.method public imageDownloader(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 2

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    return-object p0
.end method

.method public memoryCache(Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;"
        }
    .end annotation

    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    if-eqz v0, :cond_d

    const-string/jumbo v0, "memoryCache() and memoryCacheSize() calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    return-object p0
.end method

.method public memoryCacheExtraOptions(II)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 3

    iput p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForMemoryCache:I

    iput p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForMemoryCache:I

    return-object p0
.end method

.method public memoryCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    if-gtz p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "memoryCacheSize must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    if-eqz v0, :cond_18

    const-string/jumbo v0, "memoryCache() and memoryCacheSize() calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_18
    iput p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    return-object p0
.end method

.method public memoryCacheSizePercentage(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 7

    if-lez p1, :cond_6

    const/16 v2, 0x64

    if-lt p1, v2, :cond_f

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "avaialbleMemoryPercent must be in range (0 < % < 100)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    if-eqz v2, :cond_1c

    const-string/jumbo v2, "memoryCache() and memoryCacheSize() calls overlap each other"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-float v2, v0

    int-to-float v3, p1

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    return-object p0
.end method

.method public taskExecutor(Ljava/util/concurrent/Executor;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    sget-object v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->DEFAULT_TASK_PROCESSING_TYPE:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    if-eq v0, v1, :cond_19

    :cond_10
    const-string/jumbo v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public taskExecutorForCachedImages(Ljava/util/concurrent/Executor;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    sget-object v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->DEFAULT_TASK_PROCESSING_TYPE:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    if-eq v0, v1, :cond_19

    :cond_10
    const-string/jumbo v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_11

    :cond_8
    const-string/jumbo v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    return-object p0
.end method

.method public threadPoolSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_11

    :cond_8
    const-string/jumbo v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iput p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    return-object p0
.end method

.method public threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_12

    :cond_9
    const-string/jumbo v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    if-ge p1, v2, :cond_17

    iput v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    :goto_16
    return-object p0

    :cond_17
    const/16 v0, 0xa

    if-le p1, v0, :cond_1e

    const/16 p1, 0xa

    goto :goto_16

    :cond_1e
    iput p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    goto :goto_16
.end method

.method public writeDebugLogs()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z

    return-object p0
.end method
