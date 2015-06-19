.class public Lcom/pinguo/camera360/video/util/Thumbnail;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Thumbnail"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/video/util/Thumbnail;->mUri:Landroid/net/Uri;

    invoke-static {p2, p3}, Lcom/pinguo/camera360/video/util/Thumbnail;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/video/util/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null bitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    return-void
.end method

.method public static createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/pinguo/camera360/video/util/Thumbnail;->createVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .registers 14
    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    const/4 v10, 0x1

    const/4 v0, 0x0

    sget-boolean v8, Lcom/pinguo/lib/ApiHelper;->AFTER_GINGERBREAD_MR1:Z

    if-eqz v8, :cond_34

    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    if-eqz p0, :cond_1d

    :try_start_d
    invoke-virtual {v4, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    :goto_10
    const-wide/16 v8, -0x1

    invoke-virtual {v4, v8, v9}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_15} :catch_21
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_15} :catch_28

    move-result-object v0

    :try_start_16
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_19} :catch_62

    :goto_19
    if-nez v0, :cond_40

    const/4 v8, 0x0

    :goto_1c
    return-object v8

    :cond_1d
    :try_start_1d
    invoke-virtual {v4, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_20} :catch_21
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_20} :catch_28

    goto :goto_10

    :catch_21
    move-exception v8

    :try_start_22
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_19

    :catch_26
    move-exception v8

    goto :goto_19

    :catch_28
    move-exception v8

    :try_start_29
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_19

    :catch_2d
    move-exception v8

    goto :goto_19

    :catchall_2f
    move-exception v8

    :try_start_30
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_33} :catch_60

    :goto_33
    throw v8

    :cond_34
    const/4 v8, -0x1

    :try_start_35
    invoke-static {p0, v8}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_3a

    move-result-object v0

    goto :goto_19

    :catch_3a
    move-exception v1

    invoke-static {p0, v10}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_19

    :cond_40
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v7, p2, :cond_5e

    int-to-float v8, p2

    int-to-float v9, v7

    div-float v5, v8, v9

    int-to-float v8, v7

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v8, v3

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v0, v6, v2, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_5e
    move-object v8, v0

    goto :goto_1c

    :catch_60
    move-exception v9

    goto :goto_33

    :catch_62
    move-exception v8

    goto :goto_19
.end method

.method private static rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 11

    const/high16 v3, 0x3f00

    if-eqz p1, :cond_39

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eq v7, p0, :cond_2e

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_2e} :catch_2f

    :cond_2e
    :goto_2e
    return-object v7

    :catch_2f
    move-exception v8

    const-string/jumbo v0, "Thumbnail"

    const-string/jumbo v1, "Failed to rotate thumbnail"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_39
    move-object v7, p0

    goto :goto_2e
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/Thumbnail;->mUri:Landroid/net/Uri;

    return-object v0
.end method
