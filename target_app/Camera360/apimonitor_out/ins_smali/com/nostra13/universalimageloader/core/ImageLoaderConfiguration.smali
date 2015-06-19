.class public final Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"
.field final context:Landroid/content/Context;
.field final customExecutor:Z
.field final customExecutorForCachedImages:Z
.field final decoder:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
.field final defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
.field final discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;
.field final downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
.field final imageCompressFormatForDiscCache:Landroid/graphics/Bitmap$CompressFormat;
.field final imageQualityForDiscCache:I
.field final maxImageHeightForDiscCache:I
.field final maxImageHeightForMemoryCache:I
.field final maxImageWidthForDiscCache:I
.field final maxImageWidthForMemoryCache:I
.field final memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
.field final networkDeniedDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
.field final processorForDiscCache:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
.field final reserveDiscCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;
.field final slowNetworkDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
.field final taskExecutor:Ljava/util/concurrent/Executor;
.field final taskExecutorForCachedImages:Ljava/util/concurrent/Executor;
.field final tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
.field final threadPoolSize:I
.field final threadPriority:I
.field final writeLogs:Z
.method private constructor <init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
#getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$000(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->context:Landroid/content/Context;
#getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForMemoryCache:I
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$100(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
move-result v0
iput v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageWidthForMemoryCache:I
#getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForMemoryCache:I
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$200(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
move-result v0
iput v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageHeightForMemoryCache:I
#getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForDiscCache:I
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$300(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
move-result v0
iput v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageWidthForDiscCache:I
#getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForDiscCache:I
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$400(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
move-result v0
iput v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageHeightForDiscCache:I
#getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageCompressFormatForDiscCache:Landroid/graphics/Bitmap$CompressFormat;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$500(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Landroid/graphics/Bitmap$CompressFormat;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->imageCompressFormatForDiscCache:Landroid/graphics/Bitmap$CompressFormat;
#getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageQualityForDiscCache:I
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$600(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
move-result v0
iput v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->imageQualityForDiscCache:I
#getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->processorForDiscCache:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$700(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->processorForDiscCache:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
#getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$800(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->taskExecutor:Ljava/util/concurrent/Executor;
#getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$900(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;
#getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$1000(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
move-result v0
iput v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->threadPoolSize:I
#getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$1100(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
move-result v0
iput v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->threadPriority:I
#getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$1200(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
#getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$1300(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;
#getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$1400(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
#getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$1500(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
#getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$1600(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z
move-result v0
iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->writeLogs:Z
#getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$1700(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
#getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$1800(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->decoder:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
#getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->customExecutor:Z
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$1900(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z
move-result v0
iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->customExecutor:Z
#getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->customExecutorForCachedImages:Z
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$2000(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z
move-result v0
iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->customExecutorForCachedImages:Z
new-instance v0, Lcom/nostra13/universalimageloader/core/download/NetworkDeniedImageDownloader;
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/download/NetworkDeniedImageDownloader;-><init>(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)V
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->networkDeniedDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
new-instance v0, Lcom/nostra13/universalimageloader/core/download/SlowNetworkImageDownloader;
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/download/SlowNetworkImageDownloader;-><init>(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)V
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->slowNetworkDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->context:Landroid/content/Context;
invoke-static {v0}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createReserveDiscCache(Landroid/content/Context;)Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->reserveDiscCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;
return-void
.end method
.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)V
return-void
.end method
.method public static createDefault(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
.registers 2
new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
move-result-object v0
return-object v0
.end method