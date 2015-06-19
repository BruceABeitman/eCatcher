.class public Lcom/pinguo/album/data/image/CloudImage;
.super Lcom/pinguo/album/data/image/CloudMediaItem;
.source "CloudImage.java"


# static fields
.field private static final INDEX_PHOTO_AVG_COLOR:I = 0x5

.field private static final INDEX_PHOTO_CRC32:I = 0x9

.field private static final INDEX_PHOTO_DATE:I = 0x7

.field private static final INDEX_PHOTO_HAS_AUDIO:I = 0x4

.field private static final INDEX_PHOTO_HEIGHT:I = 0x3

.field private static final INDEX_PHOTO_ID:I = 0x1

.field private static final INDEX_PHOTO_KEY:I = 0x0

.field private static final INDEX_PHOTO_TIMESTAMP:I = 0x6

.field private static final INDEX_PHOTO_WEEK:I = 0x8

.field private static final INDEX_PHOTO_WIDTH:I = 0x2

.field public static final ITEM_PATH:Ljava/lang/String; = "/cloud/image/item"

.field public static final ORDER_CLAUSE:Ljava/lang/String; = "timestamp DESC"

.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public mApp:Lcom/pinguo/album/PGAlbumApp;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "photo_key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "height"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "hasAudio"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "avgColor"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "week"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "photo_crc32"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pinguo/album/data/image/CloudImage;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/album/data/MediaPath;Landroid/database/Cursor;Lcom/pinguo/album/PGAlbumApp;)V
    .registers 6

    invoke-static {}, Lcom/pinguo/album/data/image/CloudImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/pinguo/album/data/image/CloudMediaItem;-><init>(Lcom/pinguo/album/data/MediaPath;J)V

    iput-object p3, p0, Lcom/pinguo/album/data/image/CloudImage;->mApp:Lcom/pinguo/album/PGAlbumApp;

    invoke-direct {p0, p2}, Lcom/pinguo/album/data/image/CloudImage;->loadFromCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/PGAlbumApp;Ljava/lang/String;)V
    .registers 10

    invoke-static {}, Lcom/pinguo/album/data/image/CloudImage;->nextVersionNumber()J

    move-result-wide v3

    invoke-direct {p0, p1, v3, v4}, Lcom/pinguo/album/data/image/CloudMediaItem;-><init>(Lcom/pinguo/album/data/MediaPath;J)V

    iput-object p2, p0, Lcom/pinguo/album/data/image/CloudImage;->mApp:Lcom/pinguo/album/PGAlbumApp;

    invoke-interface {p2}, Lcom/pinguo/album/PGAlbumApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/pinguo/album/data/image/CloudImage;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v4, "timestamp DESC"

    invoke-static {v1, v2, v3, p3, v4}, Lcom/pinguo/album/data/source/CloudAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_30

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

    :cond_30
    :try_start_30
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-direct {p0, v0}, Lcom/pinguo/album/data/image/CloudImage;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_53

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :cond_3d
    :try_start_3d
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
    :try_end_53
    .catchall {:try_start_3d .. :try_end_53} :catchall_53

    :catchall_53
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/album/data/image/CloudImage;->photoKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/album/data/image/CloudImage;->photoId:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/pinguo/album/data/image/CloudImage;->width:I

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/pinguo/album/data/image/CloudImage;->height:I

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_4b

    :goto_23
    iput-boolean v0, p0, Lcom/pinguo/album/data/image/CloudImage;->hasAudio:Z

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/album/data/image/CloudImage;->avgColor:I

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/album/data/image/CloudImage;->timestamp:D

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/album/data/image/CloudImage;->date:I

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/data/image/CloudImage;->week:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/data/image/CloudImage;->crc32:Ljava/lang/String;

    return-void

    :cond_4b
    move v0, v1

    goto :goto_23
.end method


# virtual methods
.method public delete()V
    .registers 7

    invoke-static {}, Lcom/pinguo/album/utils/PGAlbumUtils;->assertNotInRenderThread()V

    iget-object v1, p0, Lcom/pinguo/album/data/image/CloudImage;->mApp:Lcom/pinguo/album/PGAlbumApp;

    invoke-interface {v1}, Lcom/pinguo/album/PGAlbumApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/pinguo/album/provider/PGAlbum$PGPhotoInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "photo_key =? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/pinguo/album/data/image/CloudImage;->photoKey:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/data/image/CloudImage;->height:I

    return v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->DOWNLOAD_PICTURE_SAVE_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/album/data/image/CloudImage;->photoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/data/image/CloudImage;->photoKey:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "http://dn-c360.qbox.me/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/album/data/image/CloudImage;->photoKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?imageView/1/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/data/image/CloudImage;->width:I

    return v0
.end method

.method public hasAudio()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/album/data/image/CloudImage;->hasAudio:Z

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

    new-instance v0, Lcom/pinguo/album/data/cache/CloudImageRequest;

    iget-object v1, p0, Lcom/pinguo/album/data/image/CloudImage;->mApp:Lcom/pinguo/album/PGAlbumApp;

    iget-object v2, p0, Lcom/pinguo/album/data/image/CloudImage;->mPath:Lcom/pinguo/album/data/MediaPath;

    iget-object v3, p0, Lcom/pinguo/album/data/image/CloudImage;->photoId:Ljava/lang/String;

    iget-object v5, p0, Lcom/pinguo/album/data/image/CloudImage;->photoKey:Ljava/lang/String;

    move v4, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/pinguo/album/data/cache/CloudImageRequest;-><init>(Lcom/pinguo/album/PGAlbumApp;Lcom/pinguo/album/data/MediaPath;Ljava/lang/String;ILjava/lang/String;Z)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/pinguo/album/AlbumThreadPool$Job;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pinguo/album/AlbumThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/pinguo/album/data/utils/DBUpdateHelper;

    invoke-direct {v0}, Lcom/pinguo/album/data/utils/DBUpdateHelper;-><init>()V

    iget-object v1, p0, Lcom/pinguo/album/data/image/CloudImage;->photoKey:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/pinguo/album/data/image/CloudImage;->photoKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/pinguo/album/data/image/CloudImage;->photoId:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/pinguo/album/data/image/CloudImage;->photoId:Ljava/lang/String;

    iget v1, p0, Lcom/pinguo/album/data/image/CloudImage;->width:I

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/pinguo/album/data/image/CloudImage;->width:I

    iget v1, p0, Lcom/pinguo/album/data/image/CloudImage;->height:I

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/pinguo/album/data/image/CloudImage;->height:I

    iget-boolean v1, p0, Lcom/pinguo/album/data/image/CloudImage;->hasAudio:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_a7

    move v1, v2

    :goto_4b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/pinguo/album/data/image/CloudImage;->hasAudio:Z

    iget v1, p0, Lcom/pinguo/album/data/image/CloudImage;->avgColor:I

    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/pinguo/album/data/image/CloudImage;->avgColor:I

    iget-wide v1, p0, Lcom/pinguo/album/data/image/CloudImage;->timestamp:D

    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/pinguo/album/data/image/CloudImage;->timestamp:D

    iget v1, p0, Lcom/pinguo/album/data/image/CloudImage;->date:I

    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/pinguo/album/data/image/CloudImage;->date:I

    iget-object v1, p0, Lcom/pinguo/album/data/image/CloudImage;->week:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/pinguo/album/data/image/CloudImage;->week:Ljava/lang/String;

    iget-object v1, p0, Lcom/pinguo/album/data/image/CloudImage;->crc32:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/pinguo/album/data/image/CloudImage;->crc32:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/pinguo/album/data/utils/DBUpdateHelper;->isUpdated()Z

    move-result v1

    return v1

    :cond_a7
    move v1, v3

    goto :goto_4b
.end method
