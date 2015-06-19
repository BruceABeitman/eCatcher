.class public Lcom/pinguo/camera360/gallery/data/C360Album;
.super Lcom/pinguo/camera360/gallery/data/MediaSet;
.source "C360Album.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String; = null

.field private static final INVALID_COUNT:I = -0x1

.field private static final SORT_TIME_INTERVAL:Ljava/lang/String; = "/86400000"

.field private static final TAG:Ljava/lang/String; = "C360Album"

.field private static final TIMEZONE_OFFSET:I


# instance fields
.field private final mApplication:Lcom/pinguo/camera360/PgCameraApplication;

.field private final mBaseUri:Landroid/net/Uri;

.field private mCachedCount:I

.field private final mNotifier:Lcom/pinguo/camera360/gallery/data/ChangeNotifier;

.field private final mOrderClause:Ljava/lang/String;

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

    sput-object v0, Lcom/pinguo/camera360/gallery/data/C360Album;->COUNT_PROJECTION:[Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    sput v0, Lcom/pinguo/camera360/gallery/data/C360Album;->TIMEZONE_OFFSET:I

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/camera360/PgCameraApplication;Lcom/pinguo/camera360/gallery/data/Path;)V
    .registers 11

    invoke-static {}, Lcom/pinguo/camera360/gallery/data/C360Album;->nextVersionNumber()J

    move-result-wide v4

    invoke-direct {p0, p2, v4, v5}, Lcom/pinguo/camera360/gallery/data/MediaSet;-><init>(Lcom/pinguo/camera360/gallery/data/Path;J)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mWhereClause:Ljava/lang/String;

    const/4 v4, -0x1

    iput v4, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mCachedCount:I

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    invoke-virtual {p1}, Lcom/pinguo/camera360/PgCameraApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/pinguo/camera360/gallery/data/model/C360Photo;->CONTENT_URI:Landroid/net/Uri;

    iput-object v4, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mBaseUri:Landroid/net/Uri;

    sget-object v4, Lcom/pinguo/camera360/gallery/data/C360Image;->PROJECTION:[Ljava/lang/String;

    iput-object v4, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mProjection:[Ljava/lang/String;

    const-string/jumbo v4, "tokenMillis DESC "

    iput-object v4, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mOrderClause:Ljava/lang/String;

    new-instance v4, Lcom/pinguo/camera360/gallery/data/ChangeNotifier;

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mBaseUri:Landroid/net/Uri;

    invoke-direct {v4, p0, v5, p1}, Lcom/pinguo/camera360/gallery/data/ChangeNotifier;-><init>(Lcom/pinguo/camera360/gallery/data/MediaSet;Landroid/net/Uri;Lcom/pinguo/camera360/PgCameraApplication;)V

    iput-object v4, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mNotifier:Lcom/pinguo/camera360/gallery/data/ChangeNotifier;

    invoke-virtual {p1}, Lcom/pinguo/camera360/PgCameraApplication;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/data/DataManager;->getHidePhotoTimes()[J

    move-result-object v0

    array-length v4, v0

    if-lez v4, :cond_70

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "tokenMillis"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, " not in("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v5, v0

    const/4 v4, 0x0

    :goto_4a
    if-lt v4, v5, :cond_71

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_64

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_64
    const-string/jumbo v4, " and cameraModeIndex != 14"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mWhereClause:Ljava/lang/String;

    :cond_70
    return-void

    :cond_71
    aget-wide v1, v0, v4

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4a
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

    const-string/jumbo v16, "1=1"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pinguo/camera360/gallery/data/C360Album;->mWhereClause:Ljava/lang/String;

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/data/C360Album;->mWhereClause:Ljava/lang/String;

    move-object/from16 v16, v0

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pinguo/camera360/gallery/data/C360Album;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/gallery/data/C360Album;->mBaseUri:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "tokenMillis"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "count(tokenMillis)"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, ") group by (("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "tokenMillis"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/pinguo/camera360/gallery/data/C360Album;->TIMEZONE_OFFSET:I

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

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pinguo/camera360/gallery/data/C360Album;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_87

    const-string/jumbo v1, "C360Album"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "query fail: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/gallery/data/C360Album;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/camera360/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :goto_86
    return v9

    :cond_87
    const-string/jumbo v1, "C360Album"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "---------analysisSortTags-----------"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/gallery/data/C360Album;->mWhereClause:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :try_start_b1
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

    :goto_cd
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_d0
    .catchall {:try_start_b1 .. :try_end_d0} :catchall_14b

    move-result v1

    if-nez v1, :cond_f2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const-string/jumbo v1, "C360Album"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "-------------get tags used time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v12

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    :cond_f2
    :try_start_f2
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

    if-lez v1, :cond_147

    iput v9, v14, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->index:I

    :goto_10f
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/2addr v9, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_159

    iget-object v1, v14, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->time:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_150

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

    :goto_13e
    iget-object v1, v14, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->time:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_cd

    :cond_147
    const/4 v1, 0x0

    iput v1, v14, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->index:I
    :try_end_14a
    .catchall {:try_start_f2 .. :try_end_14a} :catchall_14b

    goto :goto_10f

    :catchall_14b
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_150
    const/4 v1, 0x0

    :try_start_151
    iput-boolean v1, v14, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->isYearTag:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13e

    :cond_159
    iget-object v1, v14, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->time:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16a

    const/4 v1, 0x0

    iput-boolean v1, v14, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->isYearTag:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13e

    :cond_16a
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
    :try_end_17f
    .catchall {:try_start_151 .. :try_end_17f} :catchall_14b

    goto :goto_13e
.end method

.method public delete(Z)V
    .registers 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->assertNotInRenderThread()V

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method public deleteBatch([Lcom/pinguo/camera360/gallery/data/Path;Z)Z
    .registers 17

    array-length v7, p1

    if-lez v7, :cond_cd

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tokenMillis"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "datetaken"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    array-length v8, p1

    const/4 v7, 0x0

    :goto_2a
    if-lt v7, v8, :cond_cf

    :cond_2c
    iget-object v7, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mListener:Lcom/pinguo/camera360/gallery/data/MediaObject$SyncListener;

    if-eqz v7, :cond_35

    iget-object v7, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mListener:Lcom/pinguo/camera360/gallery/data/MediaObject$SyncListener;

    invoke-interface {v7}, Lcom/pinguo/camera360/gallery/data/MediaObject$SyncListener;->onDeleteFinish()V

    :cond_35
    const-string/jumbo v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_6f

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, ")"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mResolver:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string/jumbo v7, "C360Album"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "---------\u5220C360\u6570\u636e\u5e93\u4e2d\u7684\u8bb0\u5f55------path:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    const-string/jumbo v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_a9

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "C360Album"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "---------\u5220C360\u6570\u636e\u5e93\u4e2d\u7684\u8bb0\u5f55------path:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mResolver:Landroid/content/ContentResolver;

    iget-object v8, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_a9
    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/C360Album;->isDeleteCancel()Z

    move-result v7

    if-eqz v7, :cond_cd

    const-string/jumbo v7, "C360Album"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "deleteBatch , onDeleteCancel : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mListener:Lcom/pinguo/camera360/gallery/data/MediaObject$SyncListener;

    invoke-interface {v7}, Lcom/pinguo/camera360/gallery/data/MediaObject$SyncListener;->onDeleteCancel()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/C360Album;->resetCancelDelete()V

    :cond_cd
    const/4 v7, 0x0

    return v7

    :cond_cf
    aget-object v4, p1, v7

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/C360Album;->isDeleteCancel()Z

    move-result v9

    if-nez v9, :cond_2c

    if-eqz v5, :cond_138

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_138

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/data/Path;->getTokenMills()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "photo_org.jpg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_146

    :try_start_102
    invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;

    move-result-object v9

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/data/Path;->getTokenMills()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getVideoPath(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/data/Path;->getTokenMills()J

    move-result-wide v9

    invoke-static {v9, v10, v6}, Lcom/pinguo/camera360/gallery/temps/GalleryUtil;->deleteProjectForVideo(JLjava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;

    move-result-object v9

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/data/Path;->getTokenMills()J

    move-result-wide v10

    iget-object v12, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    invoke-virtual {v9, v10, v11, v12}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->deleteVideo(JLandroid/content/Context;)Z

    if-eqz p2, :cond_138

    iget-object v9, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    invoke-virtual {v9}, Lcom/pinguo/camera360/PgCameraApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v11, "_data = ?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_138} :catch_141

    :cond_138
    :goto_138
    iget-object v9, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mListener:Lcom/pinguo/camera360/gallery/data/MediaObject$SyncListener;

    invoke-interface {v9, v3}, Lcom/pinguo/camera360/gallery/data/MediaObject$SyncListener;->onDelete(I)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2a

    :catch_141
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_138

    :cond_146
    if-eqz p2, :cond_156

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/data/Path;->getTokenMills()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_156
    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/data/Path;->getTokenMills()J

    move-result-wide v9

    invoke-static {v9, v10, v5}, Lcom/pinguo/camera360/gallery/temps/GalleryUtil;->deleteProject(JLjava/lang/String;)V

    goto :goto_138
.end method

.method public deleteByPath(Ljava/lang/String;)Z
    .registers 11

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pinguo/camera360/adapter/GAdapter;->getSystemPhotoPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_33

    sget-object v5, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;->share:Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;

    invoke-static {v5, v0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->getAvilidPath(Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_34

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    :cond_33
    :goto_33
    return v3

    :cond_34
    iget-object v5, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mBaseUri:Landroid/net/Uri;

    const-string/jumbo v7, "effectPhotoSavePath = ?"

    new-array v8, v4, [Ljava/lang/String;

    aput-object v0, v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "C360Album"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "---------deleteByPath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_33
.end method

.method public getContentUri()Landroid/net/Uri;
    .registers 2

    sget-object v0, Lcom/pinguo/camera360/gallery/data/model/C360Photo;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->assertNotInRenderThread()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mOrderClause:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, " limit "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_71

    const-string/jumbo v0, "C360Album"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "query fail: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_54
    return-object v8

    :cond_55
    :try_start_55
    new-instance v7, Lcom/pinguo/camera360/gallery/data/C360Image;

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    new-instance v1, Lcom/pinguo/camera360/gallery/data/Path;

    const/16 v2, 0x3ec

    const/16 v3, 0x10

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/gallery/data/Path;-><init>(ILjava/lang/String;J)V

    invoke-direct {v7, v0, v1, v6}, Lcom/pinguo/camera360/gallery/data/C360Image;-><init>(Lcom/pinguo/camera360/PgCameraApplication;Lcom/pinguo/camera360/gallery/data/Path;Landroid/database/Cursor;)V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_71
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_74
    .catchall {:try_start_55 .. :try_end_74} :catchall_7b

    move-result v0

    if-nez v0, :cond_55

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_54

    :catchall_7b
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getMediaItem(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .registers 12
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

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_b
    return-object v8

    :cond_c
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->assertNotInRenderThread()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2f

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_56

    :cond_2f
    const-string/jumbo v0, "C360Album"

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

    goto :goto_b

    :cond_56
    :try_start_56
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    :cond_5f
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout$SlotPos;

    iget-boolean v0, v0, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout$SlotPos;->isChecked:Z

    if-eqz v0, :cond_7e

    new-instance v0, Lcom/pinguo/camera360/gallery/data/Path;

    const/16 v1, 0x3ec

    const/16 v2, 0x10

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/gallery/data/Path;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7e
    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_83
    .catchall {:try_start_56 .. :try_end_83} :catchall_8c

    move-result v0

    if-eqz v0, :cond_88

    if-gez v7, :cond_5f

    :cond_88
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :catchall_8c
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getMediaItemCount()I
    .registers 9

    const/4 v4, 0x0

    const/4 v7, 0x0

    iget v0, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_32

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/pinguo/camera360/gallery/data/C360Album;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mWhereClause:Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_21

    const-string/jumbo v0, "C360Album"

    const-string/jumbo v1, "query fail"

    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    :goto_20
    return v0

    :cond_21
    :try_start_21
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/Utils;->assertTrue(Z)V

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mCachedCount:I
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_35

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_32
    iget v0, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mCachedCount:I

    goto :goto_20

    :catchall_35
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getMediaItemNeedSync()Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/gallery/data/Path;",
            ">;"
        }
    .end annotation

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->assertNotInRenderThread()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_8b

    :goto_19
    return-object v9

    :cond_1a
    const/16 v0, 0x10

    :try_start_1c
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v0, 0xa

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v0, "cameraModeIndex"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_9a

    move-result v6

    const/16 v0, 0xe

    if-ne v6, v0, :cond_48

    :try_start_35
    invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;

    move-result-object v0

    const-string/jumbo v1, "tokenMillis"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getVideoPath(J)Ljava/lang/String;
    :try_end_47
    .catchall {:try_start_35 .. :try_end_47} :catchall_9a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_47} :catch_95

    move-result-object v10

    :cond_48
    :goto_48
    if-eqz v10, :cond_8b

    :try_start_4a
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8b

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v11, :cond_8b

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8b

    const-string/jumbo v0, "editing"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    const-string/jumbo v0, "C360Album"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "---------\u7b26\u5408\u540c\u6b65\u6761\u4ef6\u7684\u7167\u7247:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/pinguo/camera360/gallery/data/Path;

    const/16 v1, 0x3ec

    const/4 v2, 0x4

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/pinguo/camera360/gallery/data/Path;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8e
    .catchall {:try_start_4a .. :try_end_8e} :catchall_9a

    move-result v0

    if-nez v0, :cond_1a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_19

    :catch_95
    move-exception v8

    :try_start_96
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_9a

    goto :goto_48

    :catchall_9a
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasCaptures()Z
    .registers 16

    const/16 v14, 0x1e

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v6, 0x0

    :try_start_5
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mBaseUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "tokenMillis"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mOrderClause:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, " limit "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v13, ","

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v13, 0x1e

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_be

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v14, :cond_be

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string/jumbo v0, "C360Album"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "---------current:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/32 v2, 0x5265c00

    div-long v2, v7, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v0, 0x5265c00

    div-long v0, v7, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_be

    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_a6
    .catchall {:try_start_5 .. :try_end_a6} :catchall_b7

    move-result-wide v9

    sub-long v0, v7, v9

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-gez v0, :cond_be

    if-eqz v6, :cond_b5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_b5
    move v0, v11

    :goto_b6
    return v0

    :catchall_b7
    move-exception v0

    if-eqz v6, :cond_bd

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_bd
    throw v0

    :cond_be
    if-eqz v6, :cond_c3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_c3
    move v0, v12

    goto :goto_b6
.end method

.method public isLeafAlbum()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mNotifier:Lcom/pinguo/camera360/gallery/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/pinguo/camera360/gallery/data/C360Album;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mDataVersion:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mCachedCount:I

    :cond_11
    iget-wide v0, p0, Lcom/pinguo/camera360/gallery/data/C360Album;->mDataVersion:J

    return-wide v0
.end method
