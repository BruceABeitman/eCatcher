.class final Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
.super Ljava/lang/Object;
.source "LoadAndDisplayImageTask.java"
.implements Ljava/lang/Runnable;
.field private static final BUFFER_SIZE:I = 0x8000
.field private static final ERROR_POST_PROCESSOR_NULL:Ljava/lang/String; = "Pre-processor returned null [%s]"
.field private static final ERROR_PRE_PROCESSOR_NULL:Ljava/lang/String; = "Pre-processor returned null [%s]"
.field private static final ERROR_PROCESSOR_FOR_DISC_CACHE_NULL:Ljava/lang/String; = "Bitmap processor for disc cache returned null [%s]"
.field private static final LOG_CACHE_IMAGE_IN_MEMORY:Ljava/lang/String; = "Cache image in memory [%s]"
.field private static final LOG_CACHE_IMAGE_ON_DISC:Ljava/lang/String; = "Cache image on disc [%s]"
.field private static final LOG_DELAY_BEFORE_LOADING:Ljava/lang/String; = "Delay %d ms before loading...  [%s]"
.field private static final LOG_GET_IMAGE_FROM_MEMORY_CACHE_AFTER_WAITING:Ljava/lang/String; = "...Get cached bitmap from memory after waiting. [%s]"
.field private static final LOG_LOAD_IMAGE_FROM_DISC_CACHE:Ljava/lang/String; = "Load image from disc cache [%s]"
.field private static final LOG_LOAD_IMAGE_FROM_NETWORK:Ljava/lang/String; = "Load image from network [%s]"
.field private static final LOG_POSTPROCESS_IMAGE:Ljava/lang/String; = "PostProcess image before displaying [%s]"
.field private static final LOG_PREPROCESS_IMAGE:Ljava/lang/String; = "PreProcess image before caching in memory [%s]"
.field private static final LOG_PROCESS_IMAGE_BEFORE_CACHE_ON_DISC:Ljava/lang/String; = "Process image before cache on disc [%s]"
.field private static final LOG_RESUME_AFTER_PAUSE:Ljava/lang/String; = ".. Resume loading [%s]"
.field private static final LOG_START_DISPLAY_IMAGE_TASK:Ljava/lang/String; = "Start display image task [%s]"
.field private static final LOG_TASK_CANCELLED_IMAGEVIEW_LOST:Ljava/lang/String; = "ImageView was collected by GC. Task is cancelled. [%s]"
.field private static final LOG_TASK_CANCELLED_IMAGEVIEW_REUSED:Ljava/lang/String; = "ImageView is reused for another image. Task is cancelled. [%s]"
.field private static final LOG_TASK_INTERRUPTED:Ljava/lang/String; = "Task was interrupted [%s]"
.field private static final LOG_WAITING_FOR_IMAGE_LOADED:Ljava/lang/String; = "Image already is loading. Waiting... [%s]"
.field private static final LOG_WAITING_FOR_RESUME:Ljava/lang/String; = "ImageLoader is paused. Waiting...  [%s]"
.field private final configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
.field private final decoder:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
.field private final downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
.field private final engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
.field private final handler:Landroid/os/Handler;
.field private final imageLoadingInfo:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
.field private imageViewCollected:Z
.field final imageViewRef:Ljava/lang/ref/Reference;
.field final listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
.field private loadedFrom:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
.field private final memoryCacheKey:Ljava/lang/String;
.field private final networkDeniedDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
.field final options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
.field private final slowNetworkDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
.field private final targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;
.field final uri:Ljava/lang/String;
.field private final writeLogs:Z
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->NETWORK:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageViewCollected:Z
iput-object p1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
iput-object p2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageLoadingInfo:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
iput-object p3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;
iget-object v0, p1, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->networkDeniedDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->networkDeniedDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->slowNetworkDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->slowNetworkDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->decoder:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->decoder:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iget-boolean v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->writeLogs:Z
iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->writeLogs:Z
iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->uri:Ljava/lang/String;
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;
iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->memoryCacheKey:Ljava/lang/String;
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;
iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->imageViewRef:Ljava/lang/ref/Reference;
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageViewRef:Ljava/lang/ref/Reference;
iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;
iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
return-void
.end method
.method private checkImageViewRef()Landroid/widget/ImageView;
.registers 3
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageViewRef:Ljava/lang/ref/Reference;
invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
if-nez v0, :cond_16
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageViewCollected:Z
const-string/jumbo v1, "ImageView was collected by GC. Task is cancelled. [%s]"
invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireCancelEvent()V
:cond_16
return-object v0
.end method
.method private checkImageViewReused(Landroid/widget/ImageView;)Z
.registers 5
iget-object v2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
invoke-virtual {v2, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->getLoadingUriForView(Landroid/widget/ImageView;)Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_1b
const/4 v1, 0x1
:goto_f
if-eqz v1, :cond_1a
const-string/jumbo v2, "ImageView is reused for another image. Task is cancelled. [%s]"
invoke-direct {p0, v2}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireCancelEvent()V
:cond_1a
return v1
:cond_1b
const/4 v1, 0x0
goto :goto_f
.end method
.method private checkTaskIsInterrupted()Z
.registers 3
invoke-static {}, Ljava/lang/Thread;->interrupted()Z
move-result v0
if-eqz v0, :cond_c
const-string/jumbo v1, "Task was interrupted [%s]"
invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V
:cond_c
return v0
.end method
.method private checkTaskIsNotActual()Z
.registers 3
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkImageViewRef()Landroid/widget/ImageView;
move-result-object v0
if-eqz v0, :cond_c
invoke-direct {p0, v0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkImageViewReused(Landroid/widget/ImageView;)Z
move-result v1
if-eqz v1, :cond_e
:cond_c
const/4 v1, 0x1
:goto_d
return v1
:cond_e
const/4 v1, 0x0
goto :goto_d
.end method
.method private decodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
.registers 10
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkImageViewRef()Landroid/widget/ImageView;
move-result-object v7
if-nez v7, :cond_8
const/4 v1, 0x0
:goto_7
return-object v1
:cond_8
invoke-static {v7}, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->fromImageView(Landroid/widget/ImageView;)Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
move-result-object v4
new-instance v0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
move-result-object v5
iget-object v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
move-object v2, p1
invoke-direct/range {v0 .. v6}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->decoder:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
invoke-interface {v1, v0}, Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;->decode(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;
move-result-object v1
goto :goto_7
.end method
.method private delayIfNeed()Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldDelayBeforeLoading()Z
move-result v3
if-eqz v3, :cond_40
const-string/jumbo v3, "Delay %d ms before loading...  [%s]"
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDelayBeforeLoading()I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v2
iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;
aput-object v5, v4, v1
invoke-direct {p0, v3, v4}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;[Ljava/lang/Object;)V
:try_start_23
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDelayBeforeLoading()I
move-result v3
int-to-long v3, v3
invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
:try_end_2d
.catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_2d} :catch_32
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskIsNotActual()Z
move-result v1
:goto_31
return v1
:catch_32
move-exception v0
const-string/jumbo v3, "Task was interrupted [%s]"
new-array v4, v1, [Ljava/lang/Object;
iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;
aput-object v5, v4, v2
invoke-static {v3, v4}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_31
:cond_40
move v1, v2
goto :goto_31
.end method
.method private downloadImage(Ljava/io/File;)V
.registers 7
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
move-result-object v2
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;
iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getExtraForDownloader()Ljava/lang/Object;
move-result-object v4
invoke-interface {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
move-result-object v0
:try_start_10
new-instance v1, Ljava/io/BufferedOutputStream;
new-instance v2, Ljava/io/FileOutputStream;
invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
const v3, 0x8000
invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
:try_start_1d
:try_end_1d
.catchall {:try_start_10 .. :try_end_1d} :catchall_2c
invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
:try_start_20
:try_end_20
.catchall {:try_start_1d .. :try_end_20} :catchall_27
invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V
:try_end_23
.catchall {:try_start_20 .. :try_end_23} :catchall_2c
invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V
return-void
:catchall_27
move-exception v2
:try_start_28
invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V
throw v2
:try_end_2c
.catchall {:try_start_28 .. :try_end_2c} :catchall_2c
:catchall_2c
move-exception v2
invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V
throw v2
.end method
.method private downloadSizedImage(Ljava/io/File;II)Z
.registers 14
const/4 v9, 0x0
new-instance v3, Lcom/nostra13/universalimageloader/core/assist/ImageSize;
invoke-direct {v3, p2, p3}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V
new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V
iget-object v2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v1
sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v1
invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
move-result-object v6
new-instance v0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;
iget-object v2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;
sget-object v4, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
move-result-object v5
invoke-direct/range {v0 .. v6}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->decoder:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
invoke-interface {v1, v0}, Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;->decode(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;
move-result-object v7
if-nez v7, :cond_33
:goto_32
return v9
:cond_33
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->processorForDiscCache:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
if-eqz v1, :cond_57
const-string/jumbo v1, "Process image before cache on disc [%s]"
invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->processorForDiscCache:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
invoke-interface {v1, v7}, Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v7
if-nez v7, :cond_57
const-string/jumbo v1, "Bitmap processor for disc cache returned null [%s]"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;
aput-object v4, v2, v9
invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_32
:cond_57
new-instance v8, Ljava/io/BufferedOutputStream;
new-instance v1, Ljava/io/FileOutputStream;
invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
const v2, 0x8000
invoke-direct {v8, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
:try_start_64
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->imageCompressFormatForDiscCache:Landroid/graphics/Bitmap$CompressFormat;
iget-object v2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iget v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->imageQualityForDiscCache:I
invoke-virtual {v7, v1, v2, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
:try_end_6f
.catchall {:try_start_64 .. :try_end_6f} :catchall_77
move-result v9
invoke-static {v8}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V
invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V
goto :goto_32
:catchall_77
move-exception v1
invoke-static {v8}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V
throw v1
.end method
.method private fireCancelEvent()V
.registers 3
invoke-static {}, Ljava/lang/Thread;->interrupted()Z
move-result v0
if-nez v0, :cond_10
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;
new-instance v1, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2;
invoke-direct {v1, p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2;-><init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_10
return-void
.end method
.method private fireFailEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
.registers 5
invoke-static {}, Ljava/lang/Thread;->interrupted()Z
move-result v0
if-nez v0, :cond_10
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;
new-instance v1, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1;
invoke-direct {v1, p0, p1, p2}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1;-><init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_10
return-void
.end method
.method private getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
.registers 3
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->isNetworkDenied()Z
move-result v1
if-eqz v1, :cond_b
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->networkDeniedDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
:goto_a
return-object v0
:cond_b
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->isSlowNetwork()Z
move-result v1
if-eqz v1, :cond_16
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->slowNetworkDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
goto :goto_a
:cond_16
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
goto :goto_a
.end method
.method private getImageFileInDiscCache()Ljava/io/File;
.registers 6
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iget-object v1, v3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;
invoke-interface {v1, v3}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v0
if-eqz v0, :cond_1c
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_35
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
move-result v3
if-nez v3, :cond_35
:cond_1c
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iget-object v3, v3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->reserveDiscCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;
iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;
invoke-interface {v3, v4}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v0
if-eqz v0, :cond_35
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_35
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
:cond_35
return-object v2
.end method
.method private log(Ljava/lang/String;)V
.registers 5
iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->writeLogs:Z
if-eqz v0, :cond_f
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget-object v2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;
aput-object v2, v0, v1
invoke-static {p1, v0}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_f
return-void
.end method
.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
.registers 4
iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->writeLogs:Z
if-eqz v0, :cond_7
invoke-static {p1, p2}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_7
return-void
.end method
.method private tryCacheImageOnDisc(Ljava/io/File;)Ljava/lang/String;
.registers 8
const-string/jumbo v4, "Cache image on disc [%s]"
invoke-direct {p0, v4}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V
:try_start_6
iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iget v3, v4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageWidthForDiscCache:I
iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iget v1, v4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageHeightForDiscCache:I
const/4 v2, 0x0
if-gtz v3, :cond_13
if-lez v1, :cond_17
:cond_13
invoke-direct {p0, p1, v3, v1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->downloadSizedImage(Ljava/io/File;II)Z
move-result v2
:cond_17
if-nez v2, :cond_1c
invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->downloadImage(Ljava/io/File;)V
:cond_1c
iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iget-object v4, v4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;
iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;
invoke-interface {v4, v5, p1}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->put(Ljava/lang/String;Ljava/io/File;)V
sget-object v4, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;
:try_end_2e
.catch Ljava/io/IOException; {:try_start_6 .. :try_end_2e} :catch_30
move-result-object v4
:goto_2f
return-object v4
:catch_30
move-exception v0
invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V
iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;
goto :goto_2f
.end method
.method private tryLoadBitmap()Landroid/graphics/Bitmap;
.registers 8
const/4 v4, 0x0
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->getImageFileInDiscCache()Ljava/io/File;
move-result-object v2
const/4 v0, 0x0
:try_start_6
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v5
if-eqz v5, :cond_29
const-string/jumbo v5, "Load image from disc cache [%s]"
invoke-direct {p0, v5}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V
sget-object v5, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->DISC_CACHE:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
iput-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
sget-object v5, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-direct {p0, v5}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->decodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v0
iget-boolean v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageViewCollected:Z
if-eqz v5, :cond_29
:cond_28
:goto_28
return-object v4
:cond_29
if-eqz v0, :cond_37
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v5
if-lez v5, :cond_37
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v5
if-gtz v5, :cond_6f
:cond_37
const-string/jumbo v5, "Load image from network [%s]"
invoke-direct {p0, v5}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V
sget-object v5, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->NETWORK:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
iput-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isCacheOnDisc()Z
move-result v5
if-eqz v5, :cond_71
invoke-direct {p0, v2}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->tryCacheImageOnDisc(Ljava/io/File;)Ljava/lang/String;
move-result-object v3
:goto_4d
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskIsNotActual()Z
move-result v5
if-nez v5, :cond_6f
invoke-direct {p0, v3}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->decodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v0
iget-boolean v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageViewCollected:Z
if-nez v5, :cond_28
if-eqz v0, :cond_69
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v5
if-lez v5, :cond_69
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v5
if-gtz v5, :cond_6f
:cond_69
sget-object v5, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->DECODING_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
const/4 v6, 0x0
invoke-direct {p0, v5, v6}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
:goto_6f
:cond_6f
move-object v4, v0
goto :goto_28
:cond_71
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;
:try_end_73
.catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_73} :catch_74
.catch Ljava/io/IOException; {:try_start_6 .. :try_end_73} :catch_7b
.catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_73} :catch_8e
.catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_73} :catch_98
goto :goto_4d
:catch_74
move-exception v1
sget-object v5, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->NETWORK_DENIED:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
invoke-direct {p0, v5, v4}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
goto :goto_6f
:catch_7b
move-exception v1
invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V
sget-object v4, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->IO_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
invoke-direct {p0, v4, v1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v4
if-eqz v4, :cond_6f
invoke-virtual {v2}, Ljava/io/File;->delete()Z
goto :goto_6f
:catch_8e
move-exception v1
invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V
sget-object v4, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->OUT_OF_MEMORY:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
invoke-direct {p0, v4, v1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
goto :goto_6f
:catch_98
move-exception v1
invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V
sget-object v4, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->UNKNOWN:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
invoke-direct {p0, v4, v1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
goto :goto_6f
.end method
.method private waitIfPaused()Z
.registers 8
const/4 v2, 0x1
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->getPause()Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v1
monitor-enter v1
:try_start_8
invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v3
if-eqz v3, :cond_1d
const-string/jumbo v3, "ImageLoader is paused. Waiting...  [%s]"
invoke-direct {p0, v3}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V
:try_start_14
:try_end_14
.catchall {:try_start_8 .. :try_end_14} :catchall_34
invoke-virtual {v1}, Ljava/lang/Object;->wait()V
:try_start_17
:try_end_17
.catchall {:try_start_14 .. :try_end_17} :catchall_34
.catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_23
const-string/jumbo v2, ".. Resume loading [%s]"
invoke-direct {p0, v2}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V
:cond_1d
monitor-exit v1
:try_end_1e
.catchall {:try_start_17 .. :try_end_1e} :catchall_34
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskIsNotActual()Z
move-result v2
:goto_22
return v2
:catch_23
move-exception v0
:try_start_24
const-string/jumbo v3, "Task was interrupted [%s]"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
iget-object v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;
aput-object v6, v4, v5
invoke-static {v3, v4}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V
monitor-exit v1
goto :goto_22
:catchall_34
move-exception v2
monitor-exit v1
:try_end_36
.catchall {:try_start_24 .. :try_end_36} :catchall_34
throw v2
.end method
.method  getLoadingUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;
return-object v0
.end method
.method public run()V
.registers 8
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->waitIfPaused()Z
move-result v3
if-eqz v3, :cond_7
:goto_6
:cond_6
return-void
:cond_7
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->delayIfNeed()Z
move-result v3
if-nez v3, :cond_6
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageLoadingInfo:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
iget-object v2, v3, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->loadFromUriLock:Ljava/util/concurrent/locks/ReentrantLock;
const-string/jumbo v3, "Start display image task [%s]"
invoke-direct {p0, v3}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z
move-result v3
if-eqz v3, :cond_23
const-string/jumbo v3, "Image already is loading. Waiting... [%s]"
invoke-direct {p0, v3}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V
:cond_23
invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_26
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskIsNotActual()Z
:try_end_29
.catchall {:try_start_26 .. :try_end_29} :catchall_f7
move-result v3
if-eqz v3, :cond_30
invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
goto :goto_6
:try_start_30
:cond_30
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iget-object v3, v3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;
invoke-interface {v3, v4}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
if-nez v0, :cond_ec
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->tryLoadBitmap()Landroid/graphics/Bitmap;
move-result-object v0
iget-boolean v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageViewCollected:Z
:try_end_44
.catchall {:try_start_30 .. :try_end_44} :catchall_f7
if-eqz v3, :cond_4a
invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
goto :goto_6
:cond_4a
if-nez v0, :cond_50
invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
goto :goto_6
:cond_50
:try_start_50
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskIsNotActual()Z
move-result v3
if-nez v3, :cond_5c
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskIsInterrupted()Z
:try_end_59
.catchall {:try_start_50 .. :try_end_59} :catchall_f7
move-result v3
if-eqz v3, :cond_60
:cond_5c
invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
goto :goto_6
:cond_60
:try_start_60
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldPreProcess()Z
move-result v3
if-eqz v3, :cond_83
const-string/jumbo v3, "PreProcess image before caching in memory [%s]"
invoke-direct {p0, v3}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getPreProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
move-result-object v3
invoke-interface {v3, v0}, Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v0
if-nez v0, :cond_83
const-string/jumbo v3, "Pre-processor returned null [%s]"
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v3, v4}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_83
if-eqz v0, :cond_9c
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isCacheInMemory()Z
move-result v3
if-eqz v3, :cond_9c
const-string/jumbo v3, "Cache image in memory [%s]"
invoke-direct {p0, v3}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
iget-object v3, v3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;
invoke-interface {v3, v4, v0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
:goto_9c
:cond_9c
if-eqz v0, :cond_c6
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldPostProcess()Z
move-result v3
if-eqz v3, :cond_c6
const-string/jumbo v3, "PostProcess image before displaying [%s]"
invoke-direct {p0, v3}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getPostProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
move-result-object v3
invoke-interface {v3, v0}, Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v0
if-nez v0, :cond_c6
const-string/jumbo v3, "Pre-processor returned null [%s]"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
iget-object v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;
aput-object v6, v4, v5
invoke-static {v3, v4}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V
:try_end_c6
.catchall {:try_start_60 .. :try_end_c6} :catchall_f7
:cond_c6
invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskIsNotActual()Z
move-result v3
if-nez v3, :cond_6
invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskIsInterrupted()Z
move-result v3
if-nez v3, :cond_6
new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageLoadingInfo:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
invoke-direct {v1, v0, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;-><init>(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
iget-boolean v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->writeLogs:Z
invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->setLoggingEnabled(Z)V
iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;
invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto/16 :goto_6
:cond_ec
:try_start_ec
sget-object v3, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
iput-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
const-string/jumbo v3, "...Get cached bitmap from memory after waiting. [%s]"
invoke-direct {p0, v3}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V
:try_end_f6
.catchall {:try_start_ec .. :try_end_f6} :catchall_f7
goto :goto_9c
:catchall_f7
move-exception v3
invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v3
.end method