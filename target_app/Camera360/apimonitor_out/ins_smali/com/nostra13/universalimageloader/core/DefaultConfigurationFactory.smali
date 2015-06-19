.class public Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;
.super Ljava/lang/Object;
.source "DefaultConfigurationFactory.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static createBitmapDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
.registers 1
new-instance v0, Lcom/nostra13/universalimageloader/core/display/SimpleBitmapDisplayer;
invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/display/SimpleBitmapDisplayer;-><init>()V
return-object v0
.end method
.method public static createDiscCache(Landroid/content/Context;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;II)Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;
.registers 7
if-lez p2, :cond_c
invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;
move-result-object v1
new-instance v2, Lcom/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache;
invoke-direct {v2, v1, p1, p2}, Lcom/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;I)V
:goto_b
return-object v2
:cond_c
if-lez p3, :cond_18
invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;
move-result-object v1
new-instance v2, Lcom/nostra13/universalimageloader/cache/disc/impl/FileCountLimitedDiscCache;
invoke-direct {v2, v1, p1, p3}, Lcom/nostra13/universalimageloader/cache/disc/impl/FileCountLimitedDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;I)V
goto :goto_b
:cond_18
invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
move-result-object v0
new-instance v2, Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache;
invoke-direct {v2, v0, p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V
goto :goto_b
.end method
.method public static createExecutor(IILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;
.registers 12
sget-object v0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
if-ne p2, v0, :cond_1e
const/4 v8, 0x1
:goto_5
if-eqz v8, :cond_20
new-instance v6, Lcom/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque;
invoke-direct {v6}, Lcom/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque;-><init>()V
:goto_c
check-cast v6, Ljava/util/concurrent/BlockingQueue;
new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;
const-wide/16 v3, 0x0
sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createThreadFactory(I)Ljava/util/concurrent/ThreadFactory;
move-result-object v7
move v1, p0
move v2, p0
invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
return-object v0
:cond_1e
const/4 v8, 0x0
goto :goto_5
:cond_20
new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
goto :goto_c
.end method
.method public static createFileNameGenerator()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
.registers 1
new-instance v0, Lcom/nostra13/universalimageloader/cache/disc/naming/HashCodeFileNameGenerator;
invoke-direct {v0}, Lcom/nostra13/universalimageloader/cache/disc/naming/HashCodeFileNameGenerator;-><init>()V
return-object v0
.end method
.method public static createImageDecoder(Z)Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
.registers 2
new-instance v0, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;
invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;-><init>(Z)V
return-object v0
.end method
.method public static createImageDownloader(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
.registers 2
new-instance v0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;
invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;-><init>(Landroid/content/Context;)V
return-object v0
.end method
.method public static createMemoryCache(I)Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
.registers 6
if-nez p0, :cond_e
invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J
move-result-wide v1
const-wide/16 v3, 0x8
div-long/2addr v1, v3
long-to-int p0, v1
:cond_e
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x9
if-lt v1, v2, :cond_1a
new-instance v0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;
invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;-><init>(I)V
:goto_19
return-object v0
:cond_1a
new-instance v0, Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;
invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;-><init>(I)V
goto :goto_19
.end method
.method public static createReserveDiscCache(Landroid/content/Context;)Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;
.registers 5
invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v0
new-instance v1, Ljava/io/File;
const-string/jumbo v2, "uil-images"
invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v2
if-nez v2, :cond_18
invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
move-result v2
if-eqz v2, :cond_19
:cond_18
move-object v0, v1
:cond_19
new-instance v2, Lcom/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache;
const/high16 v3, 0x20
invoke-direct {v2, v0, v3}, Lcom/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache;-><init>(Ljava/io/File;I)V
return-object v2
.end method
.method private static createThreadFactory(I)Ljava/util/concurrent/ThreadFactory;
.registers 2
new-instance v0, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;
invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;-><init>(I)V
return-object v0
.end method