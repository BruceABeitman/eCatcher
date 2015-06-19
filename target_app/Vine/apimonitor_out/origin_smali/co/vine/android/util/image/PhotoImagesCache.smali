.class public Lco/vine/android/util/image/PhotoImagesCache;
.super Lco/vine/android/util/UrlResourceCache;
.source "PhotoImagesCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/vine/android/util/UrlResourceCache",
        "<",
        "Lco/vine/android/util/image/ImageKey;",
        "Lco/vine/android/util/image/UrlImage;",
        "Lco/vine/android/util/image/ImageUtils$BitmapInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final DISK_CACHE_NAME:Ljava/lang/String; = "photos"

.field private static final INDEX_IMAGE_BYTES:I = 0x0

.field private static final LOCK:[I = null

.field private static final MAX_EXTERNAL_DISK_CACHE_SIZE:I = 0x6400000

.field private static final MAX_INTERNAL_DISK_CACHE_SIZE:I = 0xa00000

.field private static final VALUE_COUNT:I = 0x1

.field private static final VERSION:I = 0x2

.field private static sDiskCache:Lcom/vandalsoftware/io/DiskLruCache;

.field private static sIsCacheInitialized:Z


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/util/image/PhotoImagesListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxImageSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lco/vine/android/util/image/PhotoImagesCache;->LOCK:[I

    sput-boolean v1, Lco/vine/android/util/image/PhotoImagesCache;->sIsCacheInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5

    invoke-direct {p0, p1, p3}, Lco/vine/android/util/UrlResourceCache;-><init>(Landroid/content/Context;I)V

    iput p2, p0, Lco/vine/android/util/image/PhotoImagesCache;->mMaxImageSize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/util/image/PhotoImagesCache;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method static getCacheDir()Ljava/io/File;
    .registers 2

    sget-object v1, Lco/vine/android/util/image/PhotoImagesCache;->LOCK:[I

    monitor-enter v1

    :try_start_3
    sget-object v0, Lco/vine/android/util/image/PhotoImagesCache;->sDiskCache:Lcom/vandalsoftware/io/DiskLruCache;

    if-eqz v0, :cond_f

    sget-object v0, Lco/vine/android/util/image/PhotoImagesCache;->sDiskCache:Lcom/vandalsoftware/io/DiskLruCache;

    invoke-virtual {v0}, Lcom/vandalsoftware/io/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private static getDiskLruCache(Landroid/content/Context;)Lcom/vandalsoftware/io/DiskLruCache;
    .registers 9

    sget-object v3, Lco/vine/android/util/image/PhotoImagesCache;->LOCK:[I

    monitor-enter v3

    :try_start_3
    sget-boolean v2, Lco/vine/android/util/image/PhotoImagesCache;->sIsCacheInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3c

    if-nez v2, :cond_23

    const/4 v1, 0x0

    :try_start_8
    invoke-static {p0}, Lco/vine/android/util/Util;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_27

    new-instance v2, Ljava/io/File;

    const-string v4, "photos"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide/32 v6, 0x6400000

    invoke-static {v2, v4, v5, v6, v7}, Lcom/vandalsoftware/io/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/vandalsoftware/io/DiskLruCache;
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_3c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1d} :catch_3f

    move-result-object v1

    :goto_1e
    :try_start_1e
    sput-object v1, Lco/vine/android/util/image/PhotoImagesCache;->sDiskCache:Lcom/vandalsoftware/io/DiskLruCache;

    const/4 v2, 0x1

    sput-boolean v2, Lco/vine/android/util/image/PhotoImagesCache;->sIsCacheInitialized:Z

    :cond_23
    sget-object v2, Lco/vine/android/util/image/PhotoImagesCache;->sDiskCache:Lcom/vandalsoftware/io/DiskLruCache;

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_3c

    return-object v2

    :cond_27
    :try_start_27
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "photos"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide/32 v6, 0xa00000

    invoke-static {v2, v4, v5, v6, v7}, Lcom/vandalsoftware/io/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/vandalsoftware/io/DiskLruCache;
    :try_end_3a
    .catchall {:try_start_27 .. :try_end_3a} :catchall_3c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_3a} :catch_3f

    move-result-object v1

    goto :goto_1e

    :catchall_3c
    move-exception v2

    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v2

    :catch_3f
    move-exception v2

    goto :goto_1e
.end method

.method public static invalidateCache()V
    .registers 2

    sget-object v1, Lco/vine/android/util/image/PhotoImagesCache;->LOCK:[I

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-object v0, Lco/vine/android/util/image/PhotoImagesCache;->sDiskCache:Lcom/vandalsoftware/io/DiskLruCache;

    const/4 v0, 0x0

    sput-boolean v0, Lco/vine/android/util/image/PhotoImagesCache;->sIsCacheInitialized:Z

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v0
.end method


# virtual methods
.method public addListener(Lco/vine/android/util/image/PhotoImagesListener;)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/util/image/PhotoImagesCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearMemory()V
    .registers 6

    sget-object v4, Lco/vine/android/util/image/PhotoImagesCache;->LOCK:[I

    monitor-enter v4

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lco/vine/android/util/image/PhotoImagesCache;->snapShot()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lco/vine/android/util/image/PhotoImagesCache;->clear()V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/util/image/UrlImage;

    iget-object v3, v2, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_17

    iget-object v3, v2, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    iput-object v3, v2, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_17

    :catchall_30
    move-exception v3

    monitor-exit v4
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v3

    :cond_33
    :try_start_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_30

    return-void
.end method

.method public get(JLco/vine/android/util/image/ImageKey;)Lco/vine/android/util/image/UrlImage;
    .registers 10

    iget-object v4, p3, Lco/vine/android/util/image/ImageKey;->url:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-super/range {v0 .. v5}, Lco/vine/android/util/UrlResourceCache;->get(JLjava/lang/Object;Ljava/lang/String;Z)Lco/vine/android/util/UrlResource;

    move-result-object v0

    check-cast v0, Lco/vine/android/util/image/UrlImage;

    return-object v0
.end method

.method public getBitmap(JLco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;
    .registers 11

    iget-object v4, p3, Lco/vine/android/util/image/ImageKey;->url:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lco/vine/android/util/image/PhotoImagesCache;->get(JLjava/lang/Object;Ljava/lang/String;Z)Lco/vine/android/util/UrlResource;

    move-result-object v6

    check-cast v6, Lco/vine/android/util/image/UrlImage;

    if-eqz v6, :cond_11

    iget-object v0, v6, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method protected bridge synthetic instantiateResource(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lco/vine/android/util/UrlResource;
    .registers 5

    check-cast p1, Lco/vine/android/util/image/ImageKey;

    check-cast p3, Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    invoke-virtual {p0, p1, p2, p3}, Lco/vine/android/util/image/PhotoImagesCache;->instantiateResource(Lco/vine/android/util/image/ImageKey;Ljava/lang/String;Lco/vine/android/util/image/ImageUtils$BitmapInfo;)Lco/vine/android/util/image/UrlImage;

    move-result-object v0

    return-object v0
.end method

.method protected instantiateResource(Lco/vine/android/util/image/ImageKey;Ljava/lang/String;Lco/vine/android/util/image/ImageUtils$BitmapInfo;)Lco/vine/android/util/image/UrlImage;
    .registers 5

    new-instance v0, Lco/vine/android/util/image/UrlImage;

    invoke-direct {v0, p2, p3}, Lco/vine/android/util/image/UrlImage;-><init>(Ljava/lang/String;Lco/vine/android/util/image/ImageUtils$BitmapInfo;)V

    return-object v0
.end method

.method protected bridge synthetic loadResource(JLjava/lang/Object;Ljava/lang/String;)Lco/vine/android/util/UrlResource;
    .registers 6

    check-cast p3, Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p0, p1, p2, p3, p4}, Lco/vine/android/util/image/PhotoImagesCache;->loadResource(JLco/vine/android/util/image/ImageKey;Ljava/lang/String;)Lco/vine/android/util/image/UrlImage;

    move-result-object v0

    return-object v0
.end method

.method protected loadResource(JLco/vine/android/util/image/ImageKey;Ljava/lang/String;)Lco/vine/android/util/image/UrlImage;
    .registers 14

    const/4 v6, 0x0

    invoke-static {p4}, Lco/vine/android/util/Util;->md5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    :goto_7
    return-object v6

    :cond_8
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    sget-object v7, Lco/vine/android/util/image/PhotoImagesCache;->LOCK:[I

    monitor-enter v7

    :try_start_e
    iget-object v8, p0, Lco/vine/android/util/image/PhotoImagesCache;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lco/vine/android/util/image/PhotoImagesCache;->getDiskLruCache(Landroid/content/Context;)Lcom/vandalsoftware/io/DiskLruCache;

    move-result-object v2

    if-eqz v2, :cond_65

    invoke-virtual {v2}, Lcom/vandalsoftware/io/DiskLruCache;->isClosed()Z
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_2d

    move-result v8

    if-nez v8, :cond_65

    :try_start_1c
    invoke-virtual {v2, v3}, Lcom/vandalsoftware/io/DiskLruCache;->get(Ljava/lang/String;)Lcom/vandalsoftware/io/DiskLruCache$Snapshot;
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_67
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_5b

    move-result-object v5

    if-nez v5, :cond_30

    :try_start_22
    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    monitor-exit v7

    goto :goto_7

    :catchall_2d
    move-exception v6

    :goto_2e
    monitor-exit v7
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_2d

    throw v6

    :cond_30
    const/4 v8, 0x0

    :try_start_31
    invoke-virtual {v5, v8}, Lcom/vandalsoftware/io/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_67
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_5b

    move-result-object v4

    if-nez v4, :cond_42

    :try_start_37
    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    monitor-exit v7
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_2d

    goto :goto_7

    :cond_42
    :try_start_42
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v8, 0x1000

    invoke-direct {v1, v4, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_67
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_49} :catch_5b

    :try_start_49
    invoke-virtual {p0, p3, p4, v1}, Lco/vine/android/util/image/PhotoImagesCache;->obtainResource(Lco/vine/android/util/image/ImageKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/image/UrlImage;
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_72
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_75

    move-result-object v6

    :try_start_4d
    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v1}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    monitor-exit v7
    :try_end_57
    .catchall {:try_start_4d .. :try_end_57} :catchall_58

    goto :goto_7

    :catchall_58
    move-exception v6

    move-object v0, v1

    goto :goto_2e

    :catch_5b
    move-exception v8

    :goto_5c
    :try_start_5c
    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    :cond_65
    monitor-exit v7

    goto :goto_7

    :catchall_67
    move-exception v6

    :goto_68
    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v6
    :try_end_72
    .catchall {:try_start_5c .. :try_end_72} :catchall_2d

    :catchall_72
    move-exception v6

    move-object v0, v1

    goto :goto_68

    :catch_75
    move-exception v8

    move-object v0, v1

    goto :goto_5c
.end method

.method protected bridge synthetic obtainResource(Ljava/lang/Object;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/UrlResource;
    .registers 5

    check-cast p1, Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p0, p1, p2, p3}, Lco/vine/android/util/image/PhotoImagesCache;->obtainResource(Lco/vine/android/util/image/ImageKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/image/UrlImage;

    move-result-object v0

    return-object v0
.end method

.method protected obtainResource(Lco/vine/android/util/image/ImageKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/image/UrlImage;
    .registers 21

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lco/vine/android/util/image/ImageKey;->requestResize:Z

    if-eqz v13, :cond_8a

    move-object/from16 v0, p1

    iget v12, v0, Lco/vine/android/util/image/ImageKey;->width:I

    move-object/from16 v0, p1

    iget v6, v0, Lco/vine/android/util/image/ImageKey;->height:I

    :goto_e
    const/4 v8, 0x0

    const/4 v5, 0x0

    :try_start_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/util/image/PhotoImagesCache;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v13, v0, v12, v6}, Lco/vine/android/util/image/ImageUtils;->resizeBitmap(Landroid/content/Context;Ljava/io/InputStream;II)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
    :try_end_19
    .catch Lco/vine/android/util/image/ImageUtils$ImageMemoryException; {:try_start_10 .. :try_end_19} :catch_94

    move-result-object v8

    move-object v9, v8

    :goto_1b
    if-eqz v9, :cond_a1

    iget-object v13, v9, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_a1

    iget-object v13, v9, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    iget-object v13, v9, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v11, v4, :cond_98

    move v10, v11

    :goto_30
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lco/vine/android/util/image/ImageKey;->circularCropped:Z

    if-eqz v13, :cond_42

    :try_start_36
    new-instance v8, Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    iget-object v13, v9, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v13, v10}, Lco/vine/android/util/image/ImageUtils;->getCroppedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-direct {v8, v13, v10, v11, v4}, Lco/vine/android/util/image/ImageUtils$BitmapInfo;-><init>(Landroid/graphics/Bitmap;III)V
    :try_end_41
    .catch Ljava/lang/OutOfMemoryError; {:try_start_36 .. :try_end_41} :catch_9a

    move-object v9, v8

    :cond_42
    :goto_42
    :try_start_42
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lco/vine/android/util/image/ImageKey;->blurred:Z

    if-eqz v13, :cond_a1

    new-instance v8, Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/util/image/PhotoImagesCache;->mContext:Landroid/content/Context;

    iget-object v14, v9, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v15, v0, Lco/vine/android/util/image/ImageKey;->blurRadius:I

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lco/vine/android/util/image/ImageKey;->desaturated:Z

    move/from16 v16, v0

    invoke-static/range {v13 .. v16}, Lco/vine/android/util/image/ImageUtils;->getBlurredBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-direct {v8, v13, v10, v11, v4}, Lco/vine/android/util/image/ImageUtils$BitmapInfo;-><init>(Landroid/graphics/Bitmap;III)V
    :try_end_61
    .catch Landroid/support/v8/renderscript/RSRuntimeException; {:try_start_42 .. :try_end_61} :catch_9d

    :goto_61
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8}, Lco/vine/android/util/image/PhotoImagesCache;->instantiateResource(Lco/vine/android/util/image/ImageKey;Ljava/lang/String;Lco/vine/android/util/image/ImageUtils$BitmapInfo;)Lco/vine/android/util/image/UrlImage;

    move-result-object v7

    if-eqz v5, :cond_89

    const-string v13, "Decoding error!!! Memory Low? Clear all bitmaps now!"

    invoke-static {v13}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/util/image/PhotoImagesCache;->clearMemory()V

    :try_start_75
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/util/image/PhotoImagesCache;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v13, v0, v12, v6}, Lco/vine/android/util/image/ImageUtils;->resizeBitmap(Landroid/content/Context;Ljava/io/InputStream;II)Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v13}, Lco/vine/android/util/image/PhotoImagesCache;->instantiateResource(Lco/vine/android/util/image/ImageKey;Ljava/lang/String;Lco/vine/android/util/image/ImageUtils$BitmapInfo;)Lco/vine/android/util/image/UrlImage;
    :try_end_88
    .catch Lco/vine/android/util/image/ImageUtils$ImageMemoryException; {:try_start_75 .. :try_end_88} :catch_a3

    move-result-object v7

    :cond_89
    :goto_89
    return-object v7

    :cond_8a
    move-object/from16 v0, p0

    iget v12, v0, Lco/vine/android/util/image/PhotoImagesCache;->mMaxImageSize:I

    move-object/from16 v0, p0

    iget v6, v0, Lco/vine/android/util/image/PhotoImagesCache;->mMaxImageSize:I

    goto/16 :goto_e

    :catch_94
    move-exception v3

    const/4 v5, 0x1

    move-object v9, v8

    goto :goto_1b

    :cond_98
    move v10, v4

    goto :goto_30

    :catch_9a
    move-exception v3

    const/4 v5, 0x1

    goto :goto_42

    :catch_9d
    move-exception v3

    invoke-static {v3}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    :cond_a1
    move-object v8, v9

    goto :goto_61

    :catch_a3
    move-exception v3

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v13}, Lco/vine/android/util/image/PhotoImagesCache;->instantiateResource(Lco/vine/android/util/image/ImageKey;Ljava/lang/String;Lco/vine/android/util/image/ImageUtils$BitmapInfo;)Lco/vine/android/util/image/UrlImage;

    move-result-object v7

    goto :goto_89
.end method

.method protected onResourceError(Lco/vine/android/util/image/ImageKey;Lco/vine/android/network/HttpResult;)V
    .registers 5

    iget-object v1, p0, Lco/vine/android/util/image/PhotoImagesCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Lco/vine/android/util/image/PhotoImagesCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/util/image/PhotoImagesListener;

    invoke-interface {v1, p0, p1, p2}, Lco/vine/android/util/image/PhotoImagesListener;->onPhotoImageError(Lco/vine/android/util/image/PhotoImagesCache;Lco/vine/android/util/image/ImageKey;Lco/vine/android/network/HttpResult;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method protected bridge synthetic onResourceError(Ljava/lang/Object;Lco/vine/android/network/HttpResult;)V
    .registers 3

    check-cast p1, Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p0, p1, p2}, Lco/vine/android/util/image/PhotoImagesCache;->onResourceError(Lco/vine/android/util/image/ImageKey;Lco/vine/android/network/HttpResult;)V

    return-void
.end method

.method protected onResourceLoaded(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/image/ImageKey;",
            "Lco/vine/android/util/image/UrlImage;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lco/vine/android/util/image/PhotoImagesCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Lco/vine/android/util/image/PhotoImagesCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/util/image/PhotoImagesListener;

    invoke-interface {v1, p0, p1}, Lco/vine/android/util/image/PhotoImagesListener;->onPhotoImageLoaded(Lco/vine/android/util/image/PhotoImagesCache;Ljava/util/HashMap;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public peekBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;
    .registers 4

    invoke-super {p0, p1}, Lco/vine/android/util/UrlResourceCache;->peek(Ljava/lang/Object;)Lco/vine/android/util/UrlResource;

    move-result-object v0

    check-cast v0, Lco/vine/android/util/image/UrlImage;

    if-eqz v0, :cond_b

    iget-object v1, v0, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public prepopulateThumbnailCacheForUrl(JLco/vine/android/util/image/ImageKey;Ljava/lang/String;Ljava/io/FileInputStream;)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/util/image/PhotoImagesCache;->saveResource(JLco/vine/android/util/image/ImageKey;Ljava/lang/String;Ljava/io/InputStream;Z)Lco/vine/android/util/image/UrlImage;

    return-void
.end method

.method public removeListener(Lco/vine/android/util/image/PhotoImagesListener;)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/util/image/PhotoImagesCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected bridge synthetic saveResource(JLjava/lang/Object;Ljava/lang/String;Ljava/io/InputStream;Z)Lco/vine/android/util/UrlResource;
    .registers 14

    move-object v3, p3

    check-cast v3, Lco/vine/android/util/image/ImageKey;

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/util/image/PhotoImagesCache;->saveResource(JLco/vine/android/util/image/ImageKey;Ljava/lang/String;Ljava/io/InputStream;Z)Lco/vine/android/util/image/UrlImage;

    move-result-object v0

    return-object v0
.end method

.method protected saveResource(JLco/vine/android/util/image/ImageKey;Ljava/lang/String;Ljava/io/InputStream;Z)Lco/vine/android/util/image/UrlImage;
    .registers 21

    invoke-static/range {p4 .. p4}, Lco/vine/android/util/Util;->md5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {p0, v0, v1, v2}, Lco/vine/android/util/image/PhotoImagesCache;->obtainResource(Lco/vine/android/util/image/ImageKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/image/UrlImage;

    move-result-object v9

    :goto_10
    return-object v9

    :cond_11
    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v12, Lco/vine/android/util/image/PhotoImagesCache;->LOCK:[I

    monitor-enter v12

    :try_start_16
    iget-object v11, p0, Lco/vine/android/util/image/PhotoImagesCache;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lco/vine/android/util/image/PhotoImagesCache;->getDiskLruCache(Landroid/content/Context;)Lcom/vandalsoftware/io/DiskLruCache;

    move-result-object v3

    if-eqz v3, :cond_99

    invoke-virtual {v3}, Lcom/vandalsoftware/io/DiskLruCache;->isClosed()Z
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_62

    move-result v11

    if-nez v11, :cond_99

    const/4 v10, 0x0

    :try_start_25
    invoke-virtual {v3, v4}, Lcom/vandalsoftware/io/DiskLruCache;->edit(Ljava/lang/String;)Lcom/vandalsoftware/io/DiskLruCache$Editor;

    move-result-object v6

    if-eqz v6, :cond_6b

    new-instance v8, Ljava/io/BufferedOutputStream;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v11

    const/16 v13, 0x1000

    invoke-direct {v8, v11, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_ac
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_37} :catch_8a

    :try_start_37
    new-instance v11, Lco/vine/android/util/PipingInputStream;

    move-object/from16 v0, p5

    invoke-direct {v11, v0, v8}, Lco/vine/android/util/PipingInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {p0, v0, v1, v11}, Lco/vine/android/util/image/PhotoImagesCache;->obtainResource(Lco/vine/android/util/image/ImageKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/image/UrlImage;

    move-result-object v9

    invoke-virtual {v9}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v10

    if-eqz v10, :cond_c7

    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_52
    .catchall {:try_start_37 .. :try_end_52} :catchall_c1
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_52} :catch_c4

    const/4 v7, 0x0

    :goto_53
    if-eqz v6, :cond_5d

    if-eqz v10, :cond_65

    :try_start_57
    invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->commit()V

    invoke-virtual {v3}, Lcom/vandalsoftware/io/DiskLruCache;->flush()V
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_62
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5d} :catch_69

    :cond_5d
    :goto_5d
    :try_start_5d
    invoke-static {v7}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    monitor-exit v12

    goto :goto_10

    :catchall_62
    move-exception v11

    monitor-exit v12
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_62

    throw v11

    :cond_65
    :try_start_65
    invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->abort()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_62
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_5d

    :catch_69
    move-exception v11

    goto :goto_5d

    :cond_6b
    :try_start_6b
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {p0, v0, v1, v2}, Lco/vine/android/util/image/PhotoImagesCache;->obtainResource(Lco/vine/android/util/image/ImageKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/image/UrlImage;
    :try_end_74
    .catchall {:try_start_6b .. :try_end_74} :catchall_ac
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_74} :catch_8a

    move-result-object v9

    if-eqz v6, :cond_7f

    if-eqz v10, :cond_84

    :try_start_79
    invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->commit()V

    invoke-virtual {v3}, Lcom/vandalsoftware/io/DiskLruCache;->flush()V
    :try_end_7f
    .catchall {:try_start_79 .. :try_end_7f} :catchall_62
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7f} :catch_88

    :cond_7f
    :goto_7f
    :try_start_7f
    invoke-static {v7}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    monitor-exit v12
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_62

    goto :goto_10

    :cond_84
    :try_start_84
    invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->abort()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_62
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_7f

    :catch_88
    move-exception v11

    goto :goto_7f

    :catch_8a
    move-exception v5

    :goto_8b
    const/4 v10, 0x0

    if-eqz v6, :cond_96

    if-eqz v10, :cond_a6

    :try_start_90
    invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->commit()V

    invoke-virtual {v3}, Lcom/vandalsoftware/io/DiskLruCache;->flush()V
    :try_end_96
    .catchall {:try_start_90 .. :try_end_96} :catchall_62
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_96} :catch_aa

    :cond_96
    :goto_96
    :try_start_96
    invoke-static {v7}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    :cond_99
    monitor-exit v12
    :try_end_9a
    .catchall {:try_start_96 .. :try_end_9a} :catchall_62

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {p0, v0, v1, v2}, Lco/vine/android/util/image/PhotoImagesCache;->obtainResource(Lco/vine/android/util/image/ImageKey;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/image/UrlImage;

    move-result-object v9

    goto/16 :goto_10

    :cond_a6
    :try_start_a6
    invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->abort()V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_62
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_aa

    goto :goto_96

    :catch_aa
    move-exception v11

    goto :goto_96

    :catchall_ac
    move-exception v11

    :goto_ad
    if-eqz v6, :cond_b7

    if-eqz v10, :cond_bb

    :try_start_b1
    invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->commit()V

    invoke-virtual {v3}, Lcom/vandalsoftware/io/DiskLruCache;->flush()V
    :try_end_b7
    .catchall {:try_start_b1 .. :try_end_b7} :catchall_62
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b7} :catch_bf

    :cond_b7
    :goto_b7
    :try_start_b7
    invoke-static {v7}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v11
    :try_end_bb
    .catchall {:try_start_b7 .. :try_end_bb} :catchall_62

    :cond_bb
    :try_start_bb
    invoke-virtual {v6}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->abort()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_62
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_bf

    goto :goto_b7

    :catch_bf
    move-exception v13

    goto :goto_b7

    :catchall_c1
    move-exception v11

    move-object v7, v8

    goto :goto_ad

    :catch_c4
    move-exception v5

    move-object v7, v8

    goto :goto_8b

    :cond_c7
    move-object v7, v8

    goto :goto_53
.end method
