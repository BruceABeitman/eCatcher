.class public Lcom/pinguo/album/data/source/LocalAlbum;
.super Lcom/pinguo/album/data/MediaSet;
.source "LocalAlbum.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String; = null

.field private static final INVALID_COUNT:I = -0x1

.field private static final SORT_TIME_INTERVAL:Ljava/lang/String; = "/86400000"

.field private static final TAG:Ljava/lang/String; = "LocalAlbum"

.field private static final TIMEZONE_OFFSET:I


# instance fields
.field private final mApplication:Lcom/pinguo/album/PGAlbumApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private final mBucketId:Ljava/lang/String;

.field private mCachedCount:I

.field private final mIsImage:Z

.field private final mItemPath:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mNotifier:Lcom/pinguo/album/data/DataNotifier;

.field private final mOrderClause:Ljava/lang/String;

.field private final mProjection:[Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mWhereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    sput v0, Lcom/pinguo/album/data/source/LocalAlbum;->TIMEZONE_OFFSET:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pinguo/album/data/source/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/PGAlbumApp;Ljava/lang/String;Z)V
    .registers 11

    invoke-interface {p2}, Lcom/pinguo/album/PGAlbumApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/pinguo/album/data/source/LocalAlbumSet;->getBucketName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/album/data/source/LocalAlbum;-><init>(Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/PGAlbumApp;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/PGAlbumApp;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 9

    invoke-static {}, Lcom/pinguo/album/data/source/LocalAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/pinguo/album/data/MediaSet;-><init>(Lcom/pinguo/album/data/MediaPath;J)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mCachedCount:I

    iput-object p2, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mApplication:Lcom/pinguo/album/PGAlbumApp;

    invoke-interface {p2}, Lcom/pinguo/album/PGAlbumApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mBucketId:Ljava/lang/String;

    invoke-interface {p2}, Lcom/pinguo/album/PGAlbumApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2, p5}, Lcom/pinguo/album/data/source/LocalAlbum;->getLocalizedName(Landroid/content/res/Resources;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mIsImage:Z

    if-eqz p4, :cond_4c

    const-string/jumbo v0, "bucket_id = ?"

    iput-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const-string/jumbo v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mOrderClause:Ljava/lang/String;

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v0, Lcom/pinguo/album/data/image/LocalImage;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mProjection:[Ljava/lang/String;

    const-string/jumbo v0, "/local/image/item"

    iput-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mItemPath:Ljava/lang/String;

    :goto_42
    new-instance v0, Lcom/pinguo/album/data/DataNotifier;

    iget-object v1, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/pinguo/album/data/DataNotifier;-><init>(Lcom/pinguo/album/data/MediaSet;Landroid/net/Uri;Lcom/pinguo/album/PGAlbumApp;)V

    iput-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mNotifier:Lcom/pinguo/album/data/DataNotifier;

    return-void

    :cond_4c
    const-string/jumbo v0, "bucket_id = ?"

    iput-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const-string/jumbo v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mOrderClause:Ljava/lang/String;

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v0, Lcom/pinguo/album/data/video/LocalVideo;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mProjection:[Ljava/lang/String;

    const-string/jumbo v0, "/local/video/item"

    iput-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mItemPath:Ljava/lang/String;

    goto :goto_42
.end method

.method public static getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10

    const-string/jumbo v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getLocalizedName(Landroid/content/res/Resources;JLjava/lang/String;)Ljava/lang/String;
    .registers 4

    return-object p3
.end method

.method public static getMediaItemById(Lcom/pinguo/album/PGAlbumApp;ZLjava/util/ArrayList;)[Lcom/pinguo/album/data/MediaItem;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/album/PGAlbumApp;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Lcom/pinguo/album/data/MediaItem;"
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Lcom/pinguo/album/data/MediaItem;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_f

    :goto_e
    return-object v18

    :cond_f
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eqz p1, :cond_73

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/pinguo/album/data/image/LocalImage;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v16, "/local/image/item"

    :goto_37
    invoke-interface/range {p0 .. p0}, Lcom/pinguo/album/PGAlbumApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Lcom/pinguo/album/PGAlbumApp;->getAlbumDataManager()Lcom/pinguo/album/data/AlbumDataManager;

    move-result-object v10

    const-string/jumbo v5, "_id BETWEEN ? AND ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const/4 v7, 0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const-string/jumbo v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_7b

    const-string/jumbo v5, "LocalAlbum"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "query fail"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_73
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/pinguo/album/data/video/LocalVideo;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v16, "/local/video/item"

    goto :goto_37

    :cond_7b
    :try_start_7b
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/4 v11, 0x0

    :cond_80
    :goto_80
    move/from16 v0, v17

    if-ge v11, v0, :cond_8a

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_87
    .catchall {:try_start_7b .. :try_end_87} :catchall_d2

    move-result v5

    if-nez v5, :cond_8e

    :cond_8a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_e

    :cond_8e
    const/4 v5, 0x0

    :try_start_8f
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v5, v12, :cond_80

    :cond_a1
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v5, v12, :cond_c7

    new-instance v8, Lcom/pinguo/album/data/MediaPath;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-direct {v8, v0, v5}, Lcom/pinguo/album/data/MediaPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v8, v9, v10, v0, v1}, Lcom/pinguo/album/data/source/LocalAlbum;->loadOrUpdateItem(Lcom/pinguo/album/data/MediaPath;Landroid/database/Cursor;Lcom/pinguo/album/data/AlbumDataManager;Lcom/pinguo/album/PGAlbumApp;Z)Lcom/pinguo/album/data/MediaItem;

    move-result-object v15

    aput-object v15, v18, v11
    :try_end_c4
    .catchall {:try_start_8f .. :try_end_c4} :catchall_d2

    add-int/lit8 v11, v11, 0x1

    goto :goto_80

    :cond_c7
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v17

    if-lt v11, v0, :cond_a1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_e

    :catchall_d2
    move-exception v5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method private static loadOrUpdateItem(Lcom/pinguo/album/data/MediaPath;Landroid/database/Cursor;Lcom/pinguo/album/data/AlbumDataManager;Lcom/pinguo/album/PGAlbumApp;Z)Lcom/pinguo/album/data/MediaItem;
    .registers 6

    invoke-virtual {p0}, Lcom/pinguo/album/data/MediaPath;->getObject()Lcom/pinguo/album/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/pinguo/album/data/image/LocalMediaItem;

    if-nez v0, :cond_16

    if-eqz p4, :cond_10

    new-instance v0, Lcom/pinguo/album/data/image/LocalImage;

    invoke-direct {v0, p0, p3, p1}, Lcom/pinguo/album/data/image/LocalImage;-><init>(Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/PGAlbumApp;Landroid/database/Cursor;)V

    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Lcom/pinguo/album/data/video/LocalVideo;

    invoke-direct {v0, p0, p3, p1}, Lcom/pinguo/album/data/video/LocalVideo;-><init>(Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/PGAlbumApp;Landroid/database/Cursor;)V

    goto :goto_f

    :cond_16
    invoke-virtual {v0, p1}, Lcom/pinguo/album/data/image/LocalMediaItem;->updateContent(Landroid/database/Cursor;)V

    goto :goto_f
.end method


# virtual methods
.method public analysisSortTags(Ljava/util/ArrayList;)I
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/album/data/MediaSet$SortTag;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/album/data/source/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/album/data/source/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "datetaken"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "bucket_id"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "count(bucket_id)"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pinguo/album/data/source/LocalAlbum;->mWhereClause:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, " group by (("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "datetaken"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/pinguo/album/data/source/LocalAlbum;->TIMEZONE_OFFSET:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/86400000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/data/source/LocalAlbum;->mBucketId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pinguo/album/data/source/LocalAlbum;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_91

    const-string/jumbo v2, "LocalAlbum"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "query fail: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/album/data/source/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_90
    return v10

    :cond_91
    const/4 v10, 0x0

    :try_start_92
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd E"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v12, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string/jumbo v11, ""

    :goto_ae
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b1
    .catchall {:try_start_92 .. :try_end_b1} :catchall_12e

    move-result v2

    if-nez v2, :cond_b8

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_90

    :cond_b8
    :try_start_b8
    new-instance v15, Lcom/pinguo/album/data/MediaSet$SortTag;

    invoke-direct {v15}, Lcom/pinguo/album/data/MediaSet$SortTag;-><init>()V

    new-instance v2, Ljava/util/Date;

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    const/4 v2, 0x0

    const/16 v3, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;

    iget-object v2, v15, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;

    iput-object v2, v15, Lcom/pinguo/album/data/MediaSet$SortTag;->endTime:Ljava/lang/String;

    const/16 v2, 0x9

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/pinguo/album/data/MediaSet$SortTag;->week:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_12a

    iput v10, v15, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I

    :goto_ec
    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    add-int/2addr v10, v2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_13c

    iget-object v2, v15, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_133

    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/pinguo/album/data/MediaSet$SortTag;->isYearTag:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v17, Lcom/pinguo/album/data/MediaSet$SortTag;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Lcom/pinguo/album/data/MediaSet$SortTag;-><init>(Lcom/pinguo/album/data/MediaSet$SortTag;)V

    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->isYearTag:Z

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_121
    iget-object v2, v15, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_ae

    :cond_12a
    const/4 v2, 0x0

    iput v2, v15, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I
    :try_end_12d
    .catchall {:try_start_b8 .. :try_end_12d} :catchall_12e

    goto :goto_ec

    :catchall_12e
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_133
    const/4 v2, 0x0

    :try_start_134
    iput-boolean v2, v15, Lcom/pinguo/album/data/MediaSet$SortTag;->isYearTag:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_121

    :cond_13c
    iget-object v2, v15, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14d

    const/4 v2, 0x0

    iput-boolean v2, v15, Lcom/pinguo/album/data/MediaSet$SortTag;->isYearTag:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_121

    :cond_14d
    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/pinguo/album/data/MediaSet$SortTag;->isYearTag:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v17, Lcom/pinguo/album/data/MediaSet$SortTag;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Lcom/pinguo/album/data/MediaSet$SortTag;-><init>(Lcom/pinguo/album/data/MediaSet$SortTag;)V

    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->isYearTag:Z

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_168
    .catchall {:try_start_134 .. :try_end_168} :catchall_12e

    goto :goto_121
.end method

.method public delete()V
    .registers 7

    invoke-static {}, Lcom/pinguo/album/utils/PGAlbumUtils;->assertNotInRenderThread()V

    iget-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mBucketId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mApplication:Lcom/pinguo/album/PGAlbumApp;

    invoke-interface {v0}, Lcom/pinguo/album/PGAlbumApp;->getAlbumDataManager()Lcom/pinguo/album/data/AlbumDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/album/data/AlbumDataManager;->broadcastLocalDeletion()V

    return-void
.end method

.method public delete([Lcom/pinguo/album/data/MediaPath;)V
    .registers 2

    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .registers 4

    iget-boolean v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mIsImage:Z

    if-eqz v0, :cond_1c

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "bucketId"

    iget-object v2, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mBucketId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "bucketId"

    iget-object v2, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mBucketId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1b
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/album/data/MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mApplication:Lcom/pinguo/album/PGAlbumApp;

    invoke-interface {v0}, Lcom/pinguo/album/PGAlbumApp;->getAlbumDataManager()Lcom/pinguo/album/data/AlbumDataManager;

    move-result-object v8

    iget-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mBaseUri:Landroid/net/Uri;

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

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/pinguo/album/utils/PGAlbumUtils;->assertNotInRenderThread()V

    iget-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mBucketId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    iget-object v5, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_83

    const-string/jumbo v0, "LocalAlbum"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "query fail: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_67
    return-object v11

    :cond_68
    const/4 v0, 0x0

    :try_start_69
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    new-instance v6, Lcom/pinguo/album/data/MediaPath;

    iget-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mItemPath:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v0, v2}, Lcom/pinguo/album/data/MediaPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mApplication:Lcom/pinguo/album/PGAlbumApp;

    iget-boolean v2, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mIsImage:Z

    invoke-static {v6, v7, v8, v0, v2}, Lcom/pinguo/album/data/source/LocalAlbum;->loadOrUpdateItem(Lcom/pinguo/album/data/MediaPath;Landroid/database/Cursor;Lcom/pinguo/album/data/AlbumDataManager;Lcom/pinguo/album/PGAlbumApp;Z)Lcom/pinguo/album/data/MediaItem;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_83
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_86
    .catchall {:try_start_69 .. :try_end_86} :catchall_8d

    move-result v0

    if-nez v0, :cond_68

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_67

    :catchall_8d
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getMediaItem(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/album/data/MediaPath;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/pinguo/album/utils/PGAlbumUtils;->assertNotInRenderThread()V

    iget-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mBucketId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    iget-object v5, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2e

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2f

    :cond_2e
    :goto_2e
    return-object v10

    :cond_2f
    :try_start_2f
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToLast()Z

    :cond_38
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;

    iget-boolean v0, v0, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;->isChecked:Z

    if-eqz v0, :cond_55

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    new-instance v6, Lcom/pinguo/album/data/MediaPath;

    iget-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mItemPath:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/pinguo/album/data/MediaPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_55
    add-int/lit8 v9, v9, -0x1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_5a
    .catchall {:try_start_2f .. :try_end_5a} :catchall_61

    move-result v0

    if-nez v0, :cond_38

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2e

    :catchall_61
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getMediaItemByIds([Lcom/pinguo/album/data/MediaPath;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/pinguo/album/data/MediaPath;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/album/data/MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaItemCount()I
    .registers 9

    const/4 v7, 0x0

    iget v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3c

    iget-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/pinguo/album/data/source/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mBucketId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_2b

    const-string/jumbo v0, "LocalAlbum"

    const-string/jumbo v1, "query fail"

    invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    :goto_2a
    return v0

    :cond_2b
    :try_start_2b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/pinguo/album/utils/Utils;->assertTrue(Z)V

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mCachedCount:I
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_3f

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3c
    iget v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mCachedCount:I

    goto :goto_2a

    :catchall_3f
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .registers 2

    const/16 v0, 0x405

    return v0
.end method

.method public isLeafAlbum()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mNotifier:Lcom/pinguo/album/data/DataNotifier;

    invoke-virtual {v0}, Lcom/pinguo/album/data/DataNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/pinguo/album/data/source/LocalAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mDataVersion:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mCachedCount:I

    :cond_11
    iget-wide v0, p0, Lcom/pinguo/album/data/source/LocalAlbum;->mDataVersion:J

    return-wide v0
.end method
