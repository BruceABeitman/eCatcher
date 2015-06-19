.class public Lcom/pinguo/album/data/image/LocalImage;
.super Lcom/pinguo/album/data/image/LocalMediaItem;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/album/data/image/LocalImage$LocalLargeImageRequest;
    }
.end annotation


# static fields
.field private static final INDEX_BUCKET_ID:I = 0xa

.field private static final INDEX_CAPTION:I = 0x1

.field private static final INDEX_DATA:I = 0x8

.field private static final INDEX_DATE_ADDED:I = 0x6

.field private static final INDEX_DATE_MODIFIED:I = 0x7

.field private static final INDEX_DATE_TAKEN:I = 0x5

.field private static final INDEX_HEIGHT:I = 0xd

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_LATITUDE:I = 0x3

.field private static final INDEX_LONGITUDE:I = 0x4

.field private static final INDEX_MIME_TYPE:I = 0x2

.field private static final INDEX_ORIENTATION:I = 0x9

.field private static final INDEX_SIZE:I = 0xb

.field private static final INDEX_WIDTH:I = 0xc

.field public static final ITEM_PATH:Ljava/lang/String; = "/local/image/item"

.field public static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mApplication:Lcom/pinguo/album/PGAlbumApp;

.field public rotation:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/pinguo/album/data/image/LocalImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/album/data/image/LocalImage;->TAG:Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "0"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pinguo/album/data/image/LocalImage;->PROJECTION:[Ljava/lang/String;

    invoke-static {}, Lcom/pinguo/album/data/image/LocalImage;->updateWidthAndHeightProjection()V

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/PGAlbumApp;Landroid/database/Cursor;)V
    .registers 6

    invoke-static {}, Lcom/pinguo/album/data/image/LocalImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/pinguo/album/data/image/LocalMediaItem;-><init>(Lcom/pinguo/album/data/MediaPath;J)V

    iput-object p2, p0, Lcom/pinguo/album/data/image/LocalImage;->mApplication:Lcom/pinguo/album/PGAlbumApp;

    invoke-direct {p0, p3}, Lcom/pinguo/album/data/image/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/PGAlbumApp;Ljava/lang/String;)V
    .registers 10

    invoke-static {}, Lcom/pinguo/album/data/image/LocalImage;->nextVersionNumber()J

    move-result-wide v3

    invoke-direct {p0, p1, v3, v4}, Lcom/pinguo/album/data/image/LocalMediaItem;-><init>(Lcom/pinguo/album/data/MediaPath;J)V

    iput-object p2, p0, Lcom/pinguo/album/data/image/LocalImage;->mApplication:Lcom/pinguo/album/PGAlbumApp;

    iget-object v3, p0, Lcom/pinguo/album/data/image/LocalImage;->mApplication:Lcom/pinguo/album/PGAlbumApp;

    invoke-interface {v3}, Lcom/pinguo/album/PGAlbumApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/pinguo/album/data/image/LocalImage;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1, v2, v3, p3}, Lcom/pinguo/album/data/source/LocalAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2f

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "cannot get cursor for: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2f
    :try_start_2f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-direct {p0, v0}, Lcom/pinguo/album/data/image/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_52

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :cond_3c
    :try_start_3c
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "cannot find data for: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_52
    .catchall {:try_start_3c .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .registers 4

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/album/data/image/LocalImage;->id:I

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/data/image/LocalImage;->caption:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/data/image/LocalImage;->mimeType:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/album/data/image/LocalImage;->latitude:D

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/album/data/image/LocalImage;->longitude:D

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/album/data/image/LocalImage;->dateTakenInMs:J

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/album/data/image/LocalImage;->dateAddedInSec:J

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/album/data/image/LocalImage;->dateModifiedInSec:J

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/data/image/LocalImage;->filePath:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/album/data/image/LocalImage;->rotation:I

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/album/data/image/LocalImage;->bucketId:I

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/album/data/image/LocalImage;->fileSize:J

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/album/data/image/LocalImage;->width:I

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/album/data/image/LocalImage;->height:I

    return-void
.end method

.method private static updateWidthAndHeightProjection()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    sget-boolean v0, Lcom/pinguo/album/common/ApiHelper;->HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

    if-eqz v0, :cond_16

    sget-object v0, Lcom/pinguo/album/data/image/LocalImage;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string/jumbo v2, "width"

    aput-object v2, v0, v1

    sget-object v0, Lcom/pinguo/album/data/image/LocalImage;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string/jumbo v2, "height"

    aput-object v2, v0, v1

    :cond_16
    return-void
.end method


# virtual methods
.method public delete()V
    .registers 7

    invoke-static {}, Lcom/pinguo/album/utils/PGAlbumUtils;->assertNotInRenderThread()V

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/pinguo/album/data/image/LocalImage;->mApplication:Lcom/pinguo/album/PGAlbumApp;

    invoke-interface {v2}, Lcom/pinguo/album/PGAlbumApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/pinguo/album/data/image/LocalImage;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .registers 4

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, p0, Lcom/pinguo/album/data/image/LocalImage;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getDetails()Lcom/pinguo/album/data/MediaDetails;
    .registers 4

    invoke-super {p0}, Lcom/pinguo/album/data/image/LocalMediaItem;->getDetails()Lcom/pinguo/album/data/MediaDetails;

    move-result-object v0

    const/4 v1, 0x7

    iget v2, p0, Lcom/pinguo/album/data/image/LocalImage;->rotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const-string/jumbo v1, "image/jpeg"

    iget-object v2, p0, Lcom/pinguo/album/data/image/LocalImage;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/pinguo/album/data/image/LocalImage;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/pinguo/album/data/MediaDetails;->extractExifInfo(Lcom/pinguo/album/data/MediaDetails;Ljava/lang/String;)V

    :cond_1e
    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/data/image/LocalImage;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/data/image/LocalImage;->height:I

    return v0
.end method

.method public getMediaType()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getRotation()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/data/image/LocalImage;->rotation:I

    return v0
.end method

.method public getSupportedOperations()I
    .registers 6

    const/16 v0, 0x42d

    iget-object v1, p0, Lcom/pinguo/album/data/image/LocalImage;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/pinguo/album/data/utils/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    or-int/lit16 v0, v0, 0x240

    :cond_c
    iget-object v1, p0, Lcom/pinguo/album/data/image/LocalImage;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/pinguo/album/data/utils/BitmapUtils;->isRotationSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    or-int/lit8 v0, v0, 0x2

    :cond_16
    iget-wide v1, p0, Lcom/pinguo/album/data/image/LocalImage;->latitude:D

    iget-wide v3, p0, Lcom/pinguo/album/data/image/LocalImage;->longitude:D

    invoke-static {v1, v2, v3, v4}, Lcom/pinguo/album/utils/PGAlbumUtils;->isValidLocation(DD)Z

    move-result v1

    if-eqz v1, :cond_22

    or-int/lit8 v0, v0, 0x10

    :cond_22
    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/data/image/LocalImage;->width:I

    return v0
.end method

.method public requestImage(IZ)Lcom/pinguo/album/AlbumThreadPool$Job;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lcom/pinguo/album/AlbumThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/pinguo/album/data/cache/LocalImageRequest;

    iget-object v1, p0, Lcom/pinguo/album/data/image/LocalImage;->mApplication:Lcom/pinguo/album/PGAlbumApp;

    iget-object v2, p0, Lcom/pinguo/album/data/image/LocalImage;->mPath:Lcom/pinguo/album/data/MediaPath;

    iget-wide v3, p0, Lcom/pinguo/album/data/image/LocalImage;->dateModifiedInSec:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/pinguo/album/data/image/LocalImage;->filePath:Ljava/lang/String;

    move v4, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/pinguo/album/data/cache/LocalImageRequest;-><init>(Lcom/pinguo/album/PGAlbumApp;Lcom/pinguo/album/data/MediaPath;Ljava/lang/String;ILjava/lang/String;Z)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/pinguo/album/AlbumThreadPool$Job;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pinguo/album/AlbumThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/pinguo/album/data/image/LocalImage$LocalLargeImageRequest;

    iget-object v1, p0, Lcom/pinguo/album/data/image/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/pinguo/album/data/image/LocalImage$LocalLargeImageRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public rotate(I)V
    .registers 13

    invoke-static {}, Lcom/pinguo/album/utils/PGAlbumUtils;->assertNotInRenderThread()V

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    iget v6, p0, Lcom/pinguo/album/data/image/LocalImage;->rotation:I

    add-int/2addr v6, p1

    rem-int/lit16 v3, v6, 0x168

    if-gez v3, :cond_13

    add-int/lit16 v3, v3, 0x168

    :cond_13
    iget-object v6, p0, Lcom/pinguo/album/data/image/LocalImage;->mimeType:Ljava/lang/String;

    const-string/jumbo v7, "image/jpeg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_54

    new-instance v2, Lcom/pinguo/album/exif/ExifInterface;

    invoke-direct {v2}, Lcom/pinguo/album/exif/ExifInterface;-><init>()V

    sget v6, Lcom/pinguo/album/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {v3}, Lcom/pinguo/album/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/pinguo/album/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/pinguo/album/exif/ExifTag;

    move-result-object v4

    if-eqz v4, :cond_a9

    invoke-virtual {v2, v4}, Lcom/pinguo/album/exif/ExifInterface;->setTag(Lcom/pinguo/album/exif/ExifTag;)Lcom/pinguo/album/exif/ExifTag;

    :try_start_36
    iget-object v6, p0, Lcom/pinguo/album/data/image/LocalImage;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/pinguo/album/exif/ExifInterface;->forceRewriteExif(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/pinguo/album/data/image/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/pinguo/album/data/image/LocalImage;->fileSize:J

    const-string/jumbo v6, "_size"

    iget-wide v7, p0, Lcom/pinguo/album/data/image/LocalImage;->fileSize:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_54} :catch_77
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_54} :catch_90

    :cond_54
    :goto_54
    const-string/jumbo v6, "orientation"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v6, p0, Lcom/pinguo/album/data/image/LocalImage;->mApplication:Lcom/pinguo/album/PGAlbumApp;

    invoke-interface {v6}, Lcom/pinguo/album/PGAlbumApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget v10, p0, Lcom/pinguo/album/data/image/LocalImage;->id:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v0, v5, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :catch_77
    move-exception v1

    sget-object v6, Lcom/pinguo/album/data/image/LocalImage;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "cannot find file to set exif: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/pinguo/album/data/image/LocalImage;->filePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    :catch_90
    move-exception v1

    sget-object v6, Lcom/pinguo/album/data/image/LocalImage;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "cannot set exif data: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/pinguo/album/data/image/LocalImage;->filePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    :cond_a9
    sget-object v6, Lcom/pinguo/album/data/image/LocalImage;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Could not build tag: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/pinguo/album/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .registers 7

    new-instance v0, Lcom/pinguo/album/data/utils/DBUpdateHelper;

    invoke-direct {v0}, Lcom/pinguo/album/data/utils/DBUpdateHelper;-><init>()V

    iget v1, p0, Lcom/pinguo/album/data/image/LocalImage;->id:I

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/pinguo/album/data/image/LocalImage;->id:I

    iget-object v1, p0, Lcom/pinguo/album/data/image/LocalImage;->caption:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/pinguo/album/data/image/LocalImage;->caption:Ljava/lang/String;

    iget-object v1, p0, Lcom/pinguo/album/data/image/LocalImage;->mimeType:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/pinguo/album/data/image/LocalImage;->mimeType:Ljava/lang/String;

    iget-wide v1, p0, Lcom/pinguo/album/data/image/LocalImage;->latitude:D

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/pinguo/album/data/image/LocalImage;->latitude:D

    iget-wide v1, p0, Lcom/pinguo/album/data/image/LocalImage;->longitude:D

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/pinguo/album/data/image/LocalImage;->longitude:D

    iget-wide v1, p0, Lcom/pinguo/album/data/image/LocalImage;->dateTakenInMs:J

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pinguo/album/data/image/LocalImage;->dateTakenInMs:J

    iget-wide v1, p0, Lcom/pinguo/album/data/image/LocalImage;->dateAddedInSec:J

    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pinguo/album/data/image/LocalImage;->dateAddedInSec:J

    iget-wide v1, p0, Lcom/pinguo/album/data/image/LocalImage;->dateModifiedInSec:J

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pinguo/album/data/image/LocalImage;->dateModifiedInSec:J

    iget-object v1, p0, Lcom/pinguo/album/data/image/LocalImage;->filePath:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/pinguo/album/data/image/LocalImage;->filePath:Ljava/lang/String;

    iget v1, p0, Lcom/pinguo/album/data/image/LocalImage;->rotation:I

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/pinguo/album/data/image/LocalImage;->rotation:I

    iget v1, p0, Lcom/pinguo/album/data/image/LocalImage;->bucketId:I

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/pinguo/album/data/image/LocalImage;->bucketId:I

    iget-wide v1, p0, Lcom/pinguo/album/data/image/LocalImage;->fileSize:J

    const/16 v3, 0xb

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pinguo/album/data/image/LocalImage;->fileSize:J

    iget v1, p0, Lcom/pinguo/album/data/image/LocalImage;->width:I

    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/pinguo/album/data/image/LocalImage;->width:I

    iget v1, p0, Lcom/pinguo/album/data/image/LocalImage;->height:I

    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/pinguo/album/data/image/LocalImage;->height:I

    invoke-virtual {v0}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->isUpdated()Z

    move-result v1

    return v1
.end method
