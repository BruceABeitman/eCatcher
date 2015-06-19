.class public final Lcom/pinguo/camera360/cloud/cropImage/CacheService;
.super Ljava/lang/Object;
.source "CacheService.java"


# static fields
.field public static final MEDIA_BUCKET_ID_INDEX:I = 0xa

.field public static final MEDIA_CAPTION_INDEX:I = 0x1

.field public static final MEDIA_DATA_INDEX:I = 0x8

.field public static final MEDIA_DATE_ADDED_INDEX:I = 0x6

.field public static final MEDIA_DATE_MODIFIED_INDEX:I = 0x7

.field public static final MEDIA_DATE_TAKEN_INDEX:I = 0x5

.field public static final MEDIA_ID_INDEX:I = 0x0

.field public static final MEDIA_LATITUDE_INDEX:I = 0x3

.field public static final MEDIA_LONGITUDE_INDEX:I = 0x4

.field public static final MEDIA_MIME_TYPE_INDEX:I = 0x2

.field public static final MEDIA_ORIENTATION_OR_DURATION_INDEX:I = 0x9

.field public static final PROJECTION_IMAGES:[Ljava/lang/String;

.field public static final PROJECTION_VIDEOS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    const-string/jumbo v1, "mime_type"

    aput-object v1, v0, v5

    const-string/jumbo v1, "latitude"

    aput-object v1, v0, v6

    const-string/jumbo v1, "longitude"

    aput-object v1, v0, v7

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

    sput-object v0, Lcom/pinguo/camera360/cloud/cropImage/CacheService;->PROJECTION_IMAGES:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    const-string/jumbo v1, "mime_type"

    aput-object v1, v0, v5

    const-string/jumbo v1, "latitude"

    aput-object v1, v0, v6

    const-string/jumbo v1, "longitude"

    aput-object v1, v0, v7

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

    sput-object v0, Lcom/pinguo/camera360/cloud/cropImage/CacheService;->PROJECTION_VIDEOS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCachePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Android/data/com.cooliris.media/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static populateMediaItemFromCursor(Lcom/pinguo/camera360/cloud/cropImage/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V
    .registers 10

    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mId:J

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mCaption:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mMimeType:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mLatitude:D

    const/4 v2, 0x4

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mLongitude:D

    const/4 v2, 0x5

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mDateTakenInMs:J

    const/4 v2, 0x6

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mDateAddedInSec:J

    const/4 v2, 0x7

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mDateModifiedInSec:J

    iget-wide v2, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mDateTakenInMs:J

    iget-wide v4, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mDateModifiedInSec:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_47

    iget-wide v2, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mDateModifiedInSec:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mDateTakenInMs:J

    :cond_47
    const/16 v2, 0x8

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mFilePath:Ljava/lang/String;

    if-eqz p3, :cond_66

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mContentUri:Ljava/lang/String;

    :cond_66
    invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->getMediaType()I

    move-result v0

    const/16 v2, 0x9

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v0, :cond_76

    int-to-float v2, v1

    iput v2, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mRotation:F

    :goto_75
    return-void

    :cond_76
    iput v1, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mDurationInSec:I

    goto :goto_75
.end method
