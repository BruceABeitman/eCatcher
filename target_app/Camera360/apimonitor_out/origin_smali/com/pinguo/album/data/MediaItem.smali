.class public abstract Lcom/pinguo/album/data/MediaItem;
.super Lcom/pinguo/album/data/MediaObject;
.source "MediaItem.java"


# static fields
.field private static final BYTESBUFFER_SIZE:I = 0x32000

.field private static final BYTESBUFFE_POOL_SIZE:I = 0x4

.field public static final CACHED_IMAGE_QUALITY:I = 0x5f

.field public static final IMAGE_ERROR:I = -0x1

.field public static final IMAGE_READY:I = 0x0

.field public static final IMAGE_WAIT:I = 0x1

.field public static final INVALID_LATLNG:D = 0.0

.field public static final MIME_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field private static final TAG:Ljava/lang/String; = null

.field public static final TYPE_MICROTHUMBNAIL:I = 0x2

.field public static final TYPE_THUMBNAIL:I = 0x1

.field private static final sMicroThumbBufferPool:Lcom/pinguo/album/data/utils/BytesBufferPool;

.field private static sMicrothumbnailTargetSize:I

.field private static sThumbnailTargetSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/pinguo/album/data/MediaItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/album/data/MediaItem;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/pinguo/album/data/utils/BytesBufferPool;

    const/4 v1, 0x4

    const v2, 0x32000

    invoke-direct {v0, v1, v2}, Lcom/pinguo/album/data/utils/BytesBufferPool;-><init>(II)V

    sput-object v0, Lcom/pinguo/album/data/MediaItem;->sMicroThumbBufferPool:Lcom/pinguo/album/data/utils/BytesBufferPool;

    const/16 v0, 0xc8

    sput v0, Lcom/pinguo/album/data/MediaItem;->sMicrothumbnailTargetSize:I

    const/16 v0, 0x280

    sput v0, Lcom/pinguo/album/data/MediaItem;->sThumbnailTargetSize:I

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/album/data/MediaPath;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/album/data/MediaObject;-><init>(Lcom/pinguo/album/data/MediaPath;J)V

    return-void
.end method

.method public static getBytesBufferPool()Lcom/pinguo/album/data/utils/BytesBufferPool;
    .registers 1

    sget-object v0, Lcom/pinguo/album/data/MediaItem;->sMicroThumbBufferPool:Lcom/pinguo/album/data/utils/BytesBufferPool;

    return-object v0
.end method

.method public static getTargetSize(I)I
    .registers 3

    packed-switch p0, :pswitch_data_12

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "should only request thumb/microthumb from cache"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    sget v0, Lcom/pinguo/album/data/MediaItem;->sThumbnailTargetSize:I

    :goto_e
    return v0

    :pswitch_f
    sget v0, Lcom/pinguo/album/data/MediaItem;->sMicrothumbnailTargetSize:I

    goto :goto_e

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public static setThumbnailSizes(II)V
    .registers 5

    sput p0, Lcom/pinguo/album/data/MediaItem;->sThumbnailTargetSize:I

    sget v0, Lcom/pinguo/album/data/MediaItem;->sMicrothumbnailTargetSize:I

    if-eq v0, p1, :cond_8

    sput p1, Lcom/pinguo/album/data/MediaItem;->sMicrothumbnailTargetSize:I

    :cond_8
    sget-object v0, Lcom/pinguo/album/data/MediaItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "-----sMicrothumbnailTargetSize:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/pinguo/album/data/MediaItem;->sMicrothumbnailTargetSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": sThumbnailTargetSize :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/pinguo/album/data/MediaItem;->sThumbnailTargetSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDateInMs()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getFullImageRotation()I
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/album/data/MediaItem;->getRotation()I

    move-result v0

    return v0
.end method

.method public abstract getHeight()I
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotation()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getScreenNail()Lcom/pinguo/album/opengles/ScreenNail;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTags()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getWidth()I
.end method

.method public hasAudio()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract requestImage(IZ)Lcom/pinguo/album/AlbumThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lcom/pinguo/album/AlbumThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestLargeImage()Lcom/pinguo/album/AlbumThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pinguo/album/AlbumThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end method
