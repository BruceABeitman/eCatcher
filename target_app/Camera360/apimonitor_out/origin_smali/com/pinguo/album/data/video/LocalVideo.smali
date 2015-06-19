.class public Lcom/pinguo/album/data/video/LocalVideo;
.super Lcom/pinguo/album/data/image/LocalMediaItem;
.source "LocalVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/album/data/video/LocalVideo$LocalVideoRequest;
    }
.end annotation


# static fields
.field private static final INDEX_BUCKET_ID:I = 0xa

.field private static final INDEX_CAPTION:I = 0x1

.field private static final INDEX_DATA:I = 0x8

.field private static final INDEX_DATE_ADDED:I = 0x6

.field private static final INDEX_DATE_MODIFIED:I = 0x7

.field private static final INDEX_DATE_TAKEN:I = 0x5

.field private static final INDEX_DURATION:I = 0x9

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_LATITUDE:I = 0x3

.field private static final INDEX_LONGITUDE:I = 0x4

.field private static final INDEX_MIME_TYPE:I = 0x2

.field private static final INDEX_RESOLUTION:I = 0xc

.field private static final INDEX_SIZE:I = 0xb

.field public static final ITEM_PATH:Ljava/lang/String; = "/local/video/item"

.field public static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "LocalVideo"


# instance fields
.field public durationInSec:I

.field private final mApplication:Lcom/pinguo/album/PGAlbumApp;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xd

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

    const-string/jumbo v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "resolution"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pinguo/album/data/video/LocalVideo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/PGAlbumApp;Landroid/database/Cursor;)V
    .registers 6

    invoke-static {}, Lcom/pinguo/album/data/video/LocalVideo;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/pinguo/album/data/image/LocalMediaItem;-><init>(Lcom/pinguo/album/data/MediaPath;J)V

    iput-object p2, p0, Lcom/pinguo/album/data/video/LocalVideo;->mApplication:Lcom/pinguo/album/PGAlbumApp;

    invoke-direct {p0, p3}, Lcom/pinguo/album/data/video/LocalVideo;->loadFromCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/PGAlbumApp;Ljava/lang/String;)V
    .registers 10

    invoke-static {}, Lcom/pinguo/album/data/video/LocalVideo;->nextVersionNumber()J

    move-result-wide v3

    invoke-direct {p0, p1, v3, v4}, Lcom/pinguo/album/data/image/LocalMediaItem;-><init>(Lcom/pinguo/album/data/MediaPath;J)V

    iput-object p2, p0, Lcom/pinguo/album/data/video/LocalVideo;->mApplication:Lcom/pinguo/album/PGAlbumApp;

    iget-object v3, p0, Lcom/pinguo/album/data/video/LocalVideo;->mApplication:Lcom/pinguo/album/PGAlbumApp;

    invoke-interface {v3}, Lcom/pinguo/album/PGAlbumApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/pinguo/album/data/video/LocalVideo;->PROJECTION:[Ljava/lang/String;

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

    invoke-direct {p0, v0}, Lcom/pinguo/album/data/video/LocalVideo;->loadFromCursor(Landroid/database/Cursor;)V
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

    iput v0, p0, Lcom/pinguo/album/data/video/LocalVideo;->id:I

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/data/video/LocalVideo;->caption:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/data/video/LocalVideo;->mimeType:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/album/data/video/LocalVideo;->latitude:D

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/album/data/video/LocalVideo;->longitude:D

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/album/data/video/LocalVideo;->dateTakenInMs:J

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/album/data/video/LocalVideo;->dateAddedInSec:J

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/album/data/video/LocalVideo;->dateModifiedInSec:J

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/data/video/LocalVideo;->filePath:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/pinguo/album/data/video/LocalVideo;->durationInSec:I

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/album/data/video/LocalVideo;->bucketId:I

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/album/data/video/LocalVideo;->fileSize:J

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pinguo/album/data/video/LocalVideo;->parseResolution(Ljava/lang/String;)V

    return-void
.end method

.method private parseResolution(Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/16 v4, 0x78

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    const/4 v4, 0x0

    :try_start_d
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v3, p0, Lcom/pinguo/album/data/video/LocalVideo;->width:I

    iput v0, p0, Lcom/pinguo/album/data/video/LocalVideo;->height:I
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_23} :catch_24

    goto :goto_2

    :catch_24
    move-exception v2

    const-string/jumbo v4, "LocalVideo"

    invoke-static {v4, v2}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method public delete()V
    .registers 7

    invoke-static {}, Lcom/pinguo/album/utils/PGAlbumUtils;->assertNotInRenderThread()V

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->mApplication:Lcom/pinguo/album/PGAlbumApp;

    invoke-interface {v1}, Lcom/pinguo/album/PGAlbumApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/pinguo/album/data/video/LocalVideo;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .registers 4

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, p0, Lcom/pinguo/album/data/video/LocalVideo;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getDetails()Lcom/pinguo/album/data/MediaDetails;
    .registers 6

    invoke-super {p0}, Lcom/pinguo/album/data/image/LocalMediaItem;->getDetails()Lcom/pinguo/album/data/MediaDetails;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->durationInSec:I

    if-lez v1, :cond_19

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/pinguo/album/data/video/LocalVideo;->mApplication:Lcom/pinguo/album/PGAlbumApp;

    invoke-interface {v3}, Lcom/pinguo/album/PGAlbumApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/pinguo/album/data/video/LocalVideo;->durationInSec:I

    invoke-static {v3, v4}, Lcom/pinguo/album/utils/PGAlbumUtils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/pinguo/album/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_19
    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/data/video/LocalVideo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/data/video/LocalVideo;->height:I

    return v0
.end method

.method public getMediaType()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/album/data/video/LocalVideo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedOperations()I
    .registers 2

    const/16 v0, 0x485

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/data/video/LocalVideo;->width:I

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

    new-instance v0, Lcom/pinguo/album/data/video/LocalVideo$LocalVideoRequest;

    iget-object v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->mApplication:Lcom/pinguo/album/PGAlbumApp;

    invoke-virtual {p0}, Lcom/pinguo/album/data/video/LocalVideo;->getPath()Lcom/pinguo/album/data/MediaPath;

    move-result-object v2

    iget-wide v3, p0, Lcom/pinguo/album/data/video/LocalVideo;->dateModifiedInSec:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/pinguo/album/data/video/LocalVideo;->filePath:Ljava/lang/String;

    move v4, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/pinguo/album/data/video/LocalVideo$LocalVideoRequest;-><init>(Lcom/pinguo/album/PGAlbumApp;Lcom/pinguo/album/data/MediaPath;Ljava/lang/String;ILjava/lang/String;Z)V

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

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Cannot regquest a large image to a local video!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rotate(I)V
    .registers 2

    return-void
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .registers 7

    new-instance v0, Lcom/pinguo/album/data/utils/DBUpdateHelper;

    invoke-direct {v0}, Lcom/pinguo/album/data/utils/DBUpdateHelper;-><init>()V

    iget v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->id:I

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->id:I

    iget-object v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->caption:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->caption:Ljava/lang/String;

    iget-object v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->mimeType:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->mimeType:Ljava/lang/String;

    iget-wide v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->latitude:D

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->latitude:D

    iget-wide v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->longitude:D

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->longitude:D

    iget-wide v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->dateTakenInMs:J

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->dateTakenInMs:J

    iget-wide v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->dateAddedInSec:J

    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->dateAddedInSec:J

    iget-wide v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->dateModifiedInSec:J

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->dateModifiedInSec:J

    iget-object v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->filePath:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->filePath:Ljava/lang/String;

    iget v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->durationInSec:I

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->durationInSec:I

    iget v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->bucketId:I

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->bucketId:I

    iget-wide v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->fileSize:J

    const/16 v3, 0xb

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pinguo/album/data/video/LocalVideo;->fileSize:J

    invoke-virtual {v0}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->isUpdated()Z

    move-result v1

    return v1
.end method
