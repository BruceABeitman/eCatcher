.class public Lcom/pinguo/camera360/gallery/data/Album;
.super Lcom/pinguo/camera360/gallery/data/MediaSet;
.source "Album.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String; = null

.field private static final INVALID_COUNT:I = -0x1

.field private static final SORT_TIME_INTERVAL:Ljava/lang/String; = "/86400000"

.field private static final TAG:Ljava/lang/String; = "Album"

.field private static final TIMEZONE_OFFSET:I


# instance fields
.field private final mApplication:Lcom/pinguo/camera360/PgCameraApplication;

.field private final mBaseUri:Landroid/net/Uri;

.field private mCachedCount:I

.field private final mHideWhereClause:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mNotifier:Lcom/pinguo/camera360/gallery/data/ChangeNotifier;

.field private final mOrderClause:Ljava/lang/String;

.field private mPicDirPath:Ljava/lang/String;

.field private final mProjection:[Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mWhereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pinguo/camera360/gallery/data/Album;->COUNT_PROJECTION:[Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    sput v0, Lcom/pinguo/camera360/gallery/data/Album;->TIMEZONE_OFFSET:I

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/camera360/PgCameraApplication;Lcom/pinguo/camera360/gallery/data/Path;Ljava/lang/String;)V
    .registers 12

    invoke-static {}, Lcom/pinguo/camera360/gallery/data/Album;->nextVersionNumber()J

    move-result-wide v4

    invoke-direct {p0, p2, v4, v5}, Lcom/pinguo/camera360/gallery/data/MediaSet;-><init>(Lcom/pinguo/camera360/gallery/data/Path;J)V

    const/4 v4, -0x1

    iput v4, p0, Lcom/pinguo/camera360/gallery/data/Album;->mCachedCount:I

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/data/Album;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    invoke-virtual {p1}, Lcom/pinguo/camera360/PgCameraApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/pinguo/camera360/gallery/data/Album;->mResolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/pinguo/camera360/gallery/data/Album;->mName:Ljava/lang/String;

    const-string/jumbo v4, "bucket_id = ?"

    iput-object v4, p0, Lcom/pinguo/camera360/gallery/data/Album;->mWhereClause:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lcom/pinguo/camera360/PgCameraApplication;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/data/DataManager;->getHidePhotoTimes()[J

    move-result-object v0

    array-length v4, v0

    if-lez v4, :cond_2d

    array-length v5, v0

    const/4 v4, 0x0

    :goto_2b
    if-lt v4, v5, :cond_50

    :cond_2d
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_5f

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pinguo/camera360/gallery/data/Album;->mHideWhereClause:Ljava/lang/String;

    :goto_39
    const-string/jumbo v4, "datetaken DESC"

    iput-object v4, p0, Lcom/pinguo/camera360/gallery/data/Album;->mOrderClause:Ljava/lang/String;

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v4, p0, Lcom/pinguo/camera360/gallery/data/Album;->mBaseUri:Landroid/net/Uri;

    sget-object v4, Lcom/pinguo/camera360/gallery/data/Image;->PROJECTION:[Ljava/lang/String;

    iput-object v4, p0, Lcom/pinguo/camera360/gallery/data/Album;->mProjection:[Ljava/lang/String;

    new-instance v4, Lcom/pinguo/camera360/gallery/data/ChangeNotifier;

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/data/Album;->mBaseUri:Landroid/net/Uri;

    invoke-direct {v4, p0, v5, p1}, Lcom/pinguo/camera360/gallery/data/ChangeNotifier;-><init>(Lcom/pinguo/camera360/gallery/data/MediaSet;Landroid/net/Uri;Lcom/pinguo/camera360/PgCameraApplication;)V

    iput-object v4, p0, Lcom/pinguo/camera360/gallery/data/Album;->mNotifier:Lcom/pinguo/camera360/gallery/data/ChangeNotifier;

    return-void

    :cond_50
    aget-wide v2, v0, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_5f
    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/pinguo/camera360/gallery/data/Album;->mHideWhereClause:Ljava/lang/String;

    goto :goto_39
.end method

.method private updateSelectWhereClause()Ljava/lang/String;
    .registers 11

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/data/Album;->mWhereClause:Ljava/lang/String;

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/data/Album;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    invoke-virtual {v5}, Lcom/pinguo/camera360/PgCameraApplication;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/gallery/data/DataManager;->getC360PhotoTimes()[J

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v4

    if-lez v5, :cond_19

    array-length v7, v4

    move v5, v6

    :goto_17
    if-lt v5, v7, :cond_8b

    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-gtz v5, :cond_27

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/data/Album;->mHideWhereClause:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_63

    :cond_27
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, " and datetaken not in("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pinguo/camera360/gallery/data/Album;->mHideWhereClause:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_63
    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_8a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_8a
    return-object v3

    :cond_8b
    aget-wide v1, v4, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_17
.end method


# virtual methods
.method public analysisSortTags(Ljava/util/ArrayList;)I
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pinguo/camera360/gallery/data/Album;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/gallery/data/Album;->mBaseUri:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "datetaken"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "bucket_id"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "count(bucket_id)"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/gallery/data/Album;->updateSelectWhereClause()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, ") group by (("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "datetaken"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/pinguo/camera360/gallery/data/Album;->TIMEZONE_OFFSET:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/86400000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/data/Album;->mPath:Lcom/pinguo/camera360/gallery/data/Path;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pinguo/camera360/gallery/data/Album;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_95

    const-string/jumbo v1, "Album"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "query fail: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/gallery/data/Album;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/camera360/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :goto_94
    return v9

    :cond_95
    const/4 v9, 0x0

    :try_start_96
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd E"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v11, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string/jumbo v10, ""

    :goto_b2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b5
    .catchall {:try_start_96 .. :try_end_b5} :catchall_115

    move-result v1

    if-nez v1, :cond_bc

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_94

    :cond_bc
    :try_start_bc
    new-instance v14, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;

    invoke-direct {v14}, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;-><init>()V

    new-instance v1, Ljava/util/Date;

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->time:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_111

    iput v9, v14, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->index:I

    :goto_d9
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/2addr v9, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_123

    iget-object v1, v14, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->time:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11a

    const/4 v1, 0x1

    iput-boolean v1, v14, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->isYearTag:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;

    invoke-direct {v15, v14}, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;-><init>(Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;)V

    const/4 v1, 0x0

    iput-boolean v1, v15, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->isYearTag:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_108
    iget-object v1, v14, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->time:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_b2

    :cond_111
    const/4 v1, 0x0

    iput v1, v14, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->index:I
    :try_end_114
    .catchall {:try_start_bc .. :try_end_114} :catchall_115

    goto :goto_d9

    :catchall_115
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_11a
    const/4 v1, 0x0

    :try_start_11b
    iput-boolean v1, v14, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->isYearTag:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_108

    :cond_123
    iget-object v1, v14, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->time:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_134

    const/4 v1, 0x0

    iput-boolean v1, v14, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->isYearTag:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_108

    :cond_134
    const/4 v1, 0x1

    iput-boolean v1, v14, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->isYearTag:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;

    invoke-direct {v15, v14}, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;-><init>(Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;)V

    const/4 v1, 0x0

    iput-boolean v1, v15, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->isYearTag:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_149
    .catchall {:try_start_11b .. :try_end_149} :catchall_115

    goto :goto_108
.end method

.method public delete(Z)V
    .registers 12

    invoke-static {}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->assertNotInRenderThread()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/Album;->getCoverMediaItem()Lcom/pinguo/camera360/gallery/data/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_66

    instance-of v4, v2, Lcom/pinguo/camera360/gallery/data/Image;

    if-eqz v4, :cond_66

    check-cast v2, Lcom/pinguo/camera360/gallery/data/Image;

    iget-object v1, v2, Lcom/pinguo/camera360/gallery/data/Image;->filePath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_66

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "FUCK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "file isDirectory  ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "file.name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " parent name ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " parent.isDirec "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->deleteDir(Ljava/io/File;)V

    :cond_66
    if-eqz p1, :cond_83

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/data/Album;->mResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/data/Album;->mBaseUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/data/Album;->updateSelectWhereClause()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/pinguo/camera360/gallery/data/Album;->mPath:Lcom/pinguo/camera360/gallery/data/Path;

    invoke-virtual {v9}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_83
    return-void
.end method

.method public deleteBatch([Lcom/pinguo/camera360/gallery/data/Path;Z)Z
    .registers 12

    const/4 v5, 0x0

    array-length v4, p1

    if-lez v4, :cond_4d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "datetaken"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " in("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    array-length v6, p1

    move v4, v5

    :goto_19
    if-lt v4, v6, :cond_4e

    :cond_1b
    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3f

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/data/Album;->mResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/data/Album;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3f
    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/Album;->isDeleteCancel()Z

    move-result v4

    if-eqz v4, :cond_4d

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/data/Album;->mListener:Lcom/pinguo/camera360/gallery/data/MediaObject$SyncListener;

    invoke-interface {v4}, Lcom/pinguo/camera360/gallery/data/MediaObject$SyncListener;->onDeleteCancel()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/Album;->resetCancelDelete()V

    :cond_4d
    return v5

    :cond_4e
    aget-object v3, p1, v4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7c

    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6e

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_6e
    invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/data/Path;->getTokenMills()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7c
    iget-object v7, p0, Lcom/pinguo/camera360/gallery/data/Album;->mListener:Lcom/pinguo/camera360/gallery/data/MediaObject$SyncListener;

    invoke-interface {v7, v2}, Lcom/pinguo/camera360/gallery/data/MediaObject$SyncListener;->onDelete(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/Album;->isDeleteCancel()Z

    move-result v7

    if-nez v7, :cond_1b

    add-int/lit8 v4, v4, 0x1

    goto :goto_19
.end method

.method public deleteByPath(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/Album;->mPicDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .registers 4

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "bucketId"

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/Album;->mPath:Lcom/pinguo/camera360/gallery/data/Path;

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/Album;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "limit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->assertNotInRenderThread()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/Album;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/Album;->mProjection:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/data/Album;->updateSelectWhereClause()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/pinguo/camera360/gallery/data/Album;->mPath:Lcom/pinguo/camera360/gallery/data/Path;

    invoke-virtual {v9}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/data/Album;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_84

    const-string/jumbo v0, "Album"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "query fail: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pinguo/camera360/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_67
    return-object v8

    :cond_68
    :try_start_68
    new-instance v7, Lcom/pinguo/camera360/gallery/data/Image;

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/Album;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    new-instance v2, Lcom/pinguo/camera360/gallery/data/Path;

    const/16 v3, 0x3ed

    const/16 v4, 0x8

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-direct {v2, v3, v4, v9, v10}, Lcom/pinguo/camera360/gallery/data/Path;-><init>(ILjava/lang/String;J)V

    invoke-direct {v7, v0, v2, v6}, Lcom/pinguo/camera360/gallery/data/Image;-><init>(Lcom/pinguo/camera360/PgCameraApplication;Lcom/pinguo/camera360/gallery/data/Path;Landroid/database/Cursor;)V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_84
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_87
    .catchall {:try_start_68 .. :try_end_87} :catchall_8e

    move-result v0

    if-nez v0, :cond_68

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_67

    :catchall_8e
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getMediaItem(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout$SlotPos;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/gallery/data/Path;",
            ">;"
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->assertNotInRenderThread()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/Album;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/Album;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/Album;->mProjection:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/data/Album;->updateSelectWhereClause()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/pinguo/camera360/gallery/data/Album;->mPath:Lcom/pinguo/camera360/gallery/data/Path;

    invoke-virtual {v9}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/data/Album;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_34

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5b

    :cond_34
    const-string/jumbo v0, "Album"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "-------------------:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5a
    return-object v8

    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    :cond_64
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout$SlotPos;

    iget-boolean v0, v0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout$SlotPos;->isChecked:Z

    if-eqz v0, :cond_83

    new-instance v0, Lcom/pinguo/camera360/gallery/data/Path;

    const/16 v1, 0x3ed

    const/16 v2, 0x8

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/gallery/data/Path;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_83
    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    if-nez v0, :cond_64

    const-string/jumbo v0, "Album"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "1-------------------:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_5b .. :try_end_a5} :catchall_a9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5a

    :catchall_a9
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getMediaItemCount()I
    .registers 9

    const/4 v7, 0x0

    iget v0, p0, Lcom/pinguo/camera360/gallery/data/Album;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_42

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/Album;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/Album;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/pinguo/camera360/gallery/data/Album;->COUNT_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/data/Album;->updateSelectWhereClause()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/data/Album;->mPath:Lcom/pinguo/camera360/gallery/data/Path;

    invoke-virtual {v5}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_31

    const-string/jumbo v0, "Album"

    const-string/jumbo v1, "query fail"

    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    :goto_30
    return v0

    :cond_31
    :try_start_31
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/Utils;->assertTrue(Z)V

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/gallery/data/Album;->mCachedCount:I
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_45

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_42
    iget v0, p0, Lcom/pinguo/camera360/gallery/data/Album;->mCachedCount:I

    goto :goto_30

    :catchall_45
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getMediaItemNeedSync()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/gallery/data/Path;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->assertNotInRenderThread()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/Album;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/Album;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/Album;->mProjection:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/data/Album;->updateSelectWhereClause()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/pinguo/camera360/gallery/data/Album;->mPath:Lcom/pinguo/camera360/gallery/data/Path;

    invoke-virtual {v9}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/data/Album;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_4b

    :goto_2a
    return-object v7

    :cond_2b
    const/16 v0, 0x8

    :try_start_2d
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4b

    new-instance v0, Lcom/pinguo/camera360/gallery/data/Path;

    const/16 v1, 0x3ed

    const/4 v2, 0x5

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/pinguo/camera360/gallery/data/Path;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4e
    .catchall {:try_start_2d .. :try_end_4e} :catchall_55

    move-result v0

    if-nez v0, :cond_2b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2a

    :catchall_55
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/Album;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isLeafAlbum()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/Album;->mNotifier:Lcom/pinguo/camera360/gallery/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/pinguo/camera360/gallery/data/Album;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/camera360/gallery/data/Album;->mDataVersion:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/pinguo/camera360/gallery/data/Album;->mCachedCount:I

    :cond_11
    iget-wide v0, p0, Lcom/pinguo/camera360/gallery/data/Album;->mDataVersion:J

    return-wide v0
.end method

.method public setAbsolutePath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/data/Album;->mPicDirPath:Ljava/lang/String;

    return-void
.end method
