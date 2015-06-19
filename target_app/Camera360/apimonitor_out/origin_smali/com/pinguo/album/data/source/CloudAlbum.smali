.class public Lcom/pinguo/album/data/source/CloudAlbum;
.super Lcom/pinguo/album/data/MediaSet;
.source "CloudAlbum.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;
    }
.end annotation


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlbumCursor:Landroid/database/Cursor;

.field private final mBaseUri:Landroid/net/Uri;

.field private final mIsImage:Z

.field private final mItemPath:Ljava/lang/String;

.field private final mNotifier:Lcom/pinguo/album/data/DataNotifier;

.field private final mOrderClause:Ljava/lang/String;

.field private mPGAlbumApp:Lcom/pinguo/album/PGAlbumApp;

.field private final mProjection:[Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/pinguo/album/data/source/CloudAlbum;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/album/data/source/CloudAlbum;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pinguo/album/data/source/CloudAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/PGAlbumApp;Z)V
    .registers 6

    invoke-static {}, Lcom/pinguo/album/data/source/CloudAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/pinguo/album/data/MediaSet;-><init>(Lcom/pinguo/album/data/MediaPath;J)V

    iput-object p2, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mPGAlbumApp:Lcom/pinguo/album/PGAlbumApp;

    sget-object v0, Lcom/pinguo/album/provider/PGAlbum$PGPhotoInfo;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-interface {p2}, Lcom/pinguo/album/PGAlbumApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/pinguo/album/data/DataNotifier;

    sget-object v1, Lcom/pinguo/album/provider/PGAlbum$PGPhotoInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/pinguo/album/data/DataNotifier;-><init>(Lcom/pinguo/album/data/MediaSet;Landroid/net/Uri;Lcom/pinguo/album/PGAlbumApp;)V

    iput-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mNotifier:Lcom/pinguo/album/data/DataNotifier;

    sget-object v0, Lcom/pinguo/album/data/image/CloudImage;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mProjection:[Ljava/lang/String;

    iput-boolean p3, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mIsImage:Z

    if-eqz p3, :cond_2f

    const-string/jumbo v0, "/cloud/image/item"

    iput-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mItemPath:Ljava/lang/String;

    :goto_29
    const-string/jumbo v0, "timestamp DESC"

    iput-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mOrderClause:Ljava/lang/String;

    return-void

    :cond_2f
    const-string/jumbo v0, "/cloud/video/item"

    iput-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mItemPath:Ljava/lang/String;

    goto :goto_29
.end method

.method public static getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11

    const-string/jumbo v3, "photo_key=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static loadOrUpdateItem(Lcom/pinguo/album/data/MediaPath;Landroid/database/Cursor;Lcom/pinguo/album/data/AlbumDataManager;Lcom/pinguo/album/PGAlbumApp;Z)Lcom/pinguo/album/data/MediaItem;
    .registers 6

    invoke-virtual {p0}, Lcom/pinguo/album/data/MediaPath;->getObject()Lcom/pinguo/album/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/pinguo/album/data/image/CloudMediaItem;

    if-nez v0, :cond_16

    if-eqz p4, :cond_10

    new-instance v0, Lcom/pinguo/album/data/image/CloudImage;

    invoke-direct {v0, p0, p1, p3}, Lcom/pinguo/album/data/image/CloudImage;-><init>(Lcom/pinguo/album/data/MediaPath;Landroid/database/Cursor;Lcom/pinguo/album/PGAlbumApp;)V

    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Lcom/pinguo/album/data/video/CloudVideo;

    invoke-direct {v0, p0, p1, p3}, Lcom/pinguo/album/data/video/CloudVideo;-><init>(Lcom/pinguo/album/data/MediaPath;Landroid/database/Cursor;Lcom/pinguo/album/PGAlbumApp;)V

    goto :goto_f

    :cond_16
    invoke-virtual {v0, p1}, Lcom/pinguo/album/data/image/CloudMediaItem;->updateContent(Landroid/database/Cursor;)V

    goto :goto_f
.end method


# virtual methods
.method public analysisSortTags(Ljava/util/ArrayList;)I
    .registers 73
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/album/data/MediaSet$SortTag;",
            ">;)I"
        }
    .end annotation

    new-instance v23, Lcom/pinguo/lib/util/DebugHelper;

    invoke-direct/range {v23 .. v23}, Lcom/pinguo/lib/util/DebugHelper;-><init>()V

    const-string/jumbo v4, "cloud analysisSortTags"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/pinguo/lib/util/DebugHelper;->start(Ljava/lang/String;)V

    new-instance v70, Ljava/util/ArrayList;

    invoke-direct/range {v70 .. v70}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/album/data/source/CloudAlbum;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pinguo/album/data/source/CloudAlbum;->mBaseUri:Landroid/net/Uri;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "date"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "week"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "count(date)"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "group_concat(photo_crc32)"

    aput-object v8, v6, v7

    const-string/jumbo v7, "1=1) group by (date"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pinguo/album/data/source/CloudAlbum;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    if-nez v22, :cond_5f

    sget-object v4, Lcom/pinguo/album/data/source/CloudAlbum;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "query fail: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pinguo/album/data/source/CloudAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v41, 0x0

    :cond_5e
    :goto_5e
    return v41

    :cond_5f
    const/16 v41, 0x0

    :try_start_61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v47, ""

    :goto_71
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_74
    .catchall {:try_start_61 .. :try_end_74} :catchall_134

    move-result v4

    if-nez v4, :cond_8e

    if-eqz v22, :cond_7c

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_7c
    const-string/jumbo v4, "query photo,build"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/pinguo/lib/util/DebugHelper;->mark(Ljava/lang/String;)V

    invoke-virtual/range {v70 .. v70}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_188

    invoke-virtual/range {v23 .. v23}, Lcom/pinguo/lib/util/DebugHelper;->end()V

    goto :goto_5e

    :cond_8e
    :try_start_8e
    new-instance v60, Lcom/pinguo/album/data/MediaSet$SortTag;

    invoke-direct/range {v60 .. v60}, Lcom/pinguo/album/data/MediaSet$SortTag;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v60

    iput-wide v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTimeLong:J

    move-object/from16 v0, v60

    iget-wide v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTimeLong:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;

    move-object/from16 v0, v60

    iget-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->endTime:Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->week:Ljava/lang/String;

    invoke-virtual/range {v70 .. v70}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_12e

    move/from16 v0, v41

    move-object/from16 v1, v60

    iput v0, v1, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I

    :goto_c9
    const/4 v4, 0x2

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    add-int v41, v41, v4

    const/4 v4, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->crc32s:Ljava/lang/String;

    move-object/from16 v67, v21

    move-object/from16 v0, v60

    iget-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_f4

    move-object/from16 v0, v60

    iget-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v67

    :cond_f4
    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_148

    move-object/from16 v0, v67

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13b

    new-instance v64, Lcom/pinguo/album/data/MediaSet$SortTag;

    move-object/from16 v0, v64

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/pinguo/album/data/MediaSet$SortTag;-><init>(Lcom/pinguo/album/data/MediaSet$SortTag;)V

    const/4 v4, 0x1

    move-object/from16 v0, v60

    iput-boolean v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->isYearTag:Z

    const/4 v4, 0x0

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->crc32s:Ljava/lang/String;

    move-object/from16 v0, v70

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object/from16 v0, v64

    iput-boolean v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->isYearTag:Z

    move-object/from16 v0, v70

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_12a
    move-object/from16 v47, v67

    goto/16 :goto_71

    :cond_12e
    const/4 v4, 0x0

    move-object/from16 v0, v60

    iput v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I
    :try_end_133
    .catchall {:try_start_8e .. :try_end_133} :catchall_134

    goto :goto_c9

    :catchall_134
    move-exception v4

    if-eqz v22, :cond_13a

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_13a
    throw v4

    :cond_13b
    const/4 v4, 0x0

    :try_start_13c
    move-object/from16 v0, v60

    iput-boolean v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->isYearTag:Z

    move-object/from16 v0, v70

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12a

    :cond_148
    move-object/from16 v0, v60

    iget-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_161

    const/4 v4, 0x0

    move-object/from16 v0, v60

    iput-boolean v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->isYearTag:Z

    move-object/from16 v0, v70

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12a

    :cond_161
    new-instance v64, Lcom/pinguo/album/data/MediaSet$SortTag;

    move-object/from16 v0, v64

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/pinguo/album/data/MediaSet$SortTag;-><init>(Lcom/pinguo/album/data/MediaSet$SortTag;)V

    const/4 v4, 0x1

    move-object/from16 v0, v60

    iput-boolean v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->isYearTag:Z

    const/4 v4, 0x0

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->crc32s:Ljava/lang/String;

    move-object/from16 v0, v70

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move-object/from16 v0, v64

    iput-boolean v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->isYearTag:Z

    move-object/from16 v0, v70

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_187
    .catchall {:try_start_13c .. :try_end_187} :catchall_134

    goto :goto_12a

    :cond_188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/album/data/source/CloudAlbum;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/pinguo/album/provider/PGAlbum$PGPhotoGroup;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "group_name"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "begin_date"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "end_date"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "group_photo_crc32s"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "end_timestamp DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    if-eqz v29, :cond_1ba

    :try_start_1b4
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1cb

    :cond_1ba
    move-object/from16 v0, p1

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {v23 .. v23}, Lcom/pinguo/lib/util/DebugHelper;->end()V
    :try_end_1c4
    .catchall {:try_start_1b4 .. :try_end_1c4} :catchall_354

    if-eqz v29, :cond_5e

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5e

    :cond_1cb
    :try_start_1cb
    new-instance v59, Ljava/util/ArrayList;

    invoke-direct/range {v59 .. v59}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v42, -0x1

    const-wide/16 v44, -0x1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    new-instance v48, Ljava/util/ArrayList;

    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    :cond_1e8
    :goto_1e8
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_288

    const-wide/16 v4, -0x1

    cmp-long v4, v42, v4

    if-eqz v4, :cond_22c

    const-wide/16 v4, -0x1

    cmp-long v4, v44, v4

    if-eqz v4, :cond_22c

    new-instance v54, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;

    const/4 v4, 0x0

    move-object/from16 v0, v54

    invoke-direct {v0, v4}, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;-><init>(Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;)V

    move-wide/from16 v0, v42

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->dayBeginTime:J

    move-wide/from16 v0, v44

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->dayEndTime:J

    move-object/from16 v0, v54

    move-object/from16 v1, v24

    move-object/from16 v2, v48

    move-object/from16 v3, v19

    invoke-virtual {v0, v10, v1, v2, v3}, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->addTagData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, v59

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    :cond_22c
    const-string/jumbo v4, "query group"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/pinguo/lib/util/DebugHelper;->mark(Ljava/lang/String;)V

    const-string/jumbo v4, "cx"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "standaloneTagGroup:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v59 .. v59}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x0

    invoke-virtual/range {v70 .. v70}, Ljava/util/ArrayList;->size()I

    move-result v69

    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    new-instance v35, Ljava/util/HashMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {v59 .. v59}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_262
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_35b

    :cond_268
    :goto_268
    add-int/lit8 v4, v69, -0x1

    move/from16 v0, v28

    if-ge v0, v4, :cond_276

    add-int/lit8 v37, v28, 0x1

    :goto_270
    add-int/lit8 v4, v69, -0x1

    move/from16 v0, v37

    if-le v0, v4, :cond_72b

    :cond_276
    const-string/jumbo v4, "build group"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/pinguo/lib/util/DebugHelper;->mark(Ljava/lang/String;)V
    :try_end_27e
    .catchall {:try_start_1cb .. :try_end_27e} :catchall_354

    if-eqz v29, :cond_283

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    :cond_283
    invoke-virtual/range {v23 .. v23}, Lcom/pinguo/lib/util/DebugHelper;->end()V

    goto/16 :goto_5e

    :cond_288
    const/4 v4, 0x0

    :try_start_289
    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v65

    const/4 v4, 0x1

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v4, 0x2

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    const/4 v4, 0x3

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    cmp-long v4, v42, v25

    if-gtz v4, :cond_2e2

    cmp-long v4, v44, v11

    if-ltz v4, :cond_2e2

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v48

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmp-long v4, v42, v11

    if-lez v4, :cond_2da

    move-wide/from16 v42, v11

    :cond_2da
    cmp-long v4, v44, v25

    if-gez v4, :cond_1e8

    move-wide/from16 v44, v25

    goto/16 :goto_1e8

    :cond_2e2
    const-wide/16 v4, -0x1

    cmp-long v4, v42, v4

    if-eqz v4, :cond_324

    const-wide/16 v4, -0x1

    cmp-long v4, v44, v4

    if-eqz v4, :cond_324

    new-instance v54, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;

    const/4 v4, 0x0

    move-object/from16 v0, v54

    invoke-direct {v0, v4}, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;-><init>(Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;)V

    move-wide/from16 v0, v42

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->dayBeginTime:J

    move-wide/from16 v0, v44

    move-object/from16 v2, v54

    iput-wide v0, v2, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->dayEndTime:J

    move-object/from16 v0, v54

    move-object/from16 v1, v24

    move-object/from16 v2, v48

    move-object/from16 v3, v19

    invoke-virtual {v0, v10, v1, v2, v3}, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->addTagData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, v59

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v42, -0x1

    const-wide/16 v44, -0x1

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    :cond_324
    move-wide/from16 v42, v11

    move-wide/from16 v44, v25

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v48

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_352
    .catchall {:try_start_289 .. :try_end_352} :catchall_354

    goto/16 :goto_1e8

    :catchall_354
    move-exception v4

    if-eqz v29, :cond_35a

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    :cond_35a
    throw v4

    :cond_35b
    :try_start_35b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;

    move-object/from16 v0, v70

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/pinguo/album/data/MediaSet$SortTag;

    move-object/from16 v0, v54

    iget-wide v4, v0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->dayBeginTime:J

    move-object/from16 v0, v20

    iget-wide v7, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTimeLong:J

    cmp-long v4, v4, v7

    if-gtz v4, :cond_262

    :goto_377
    if-eqz v20, :cond_391

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTimeLong:J

    move-object/from16 v0, v54

    iget-wide v7, v0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->dayBeginTime:J

    cmp-long v4, v4, v7

    if-ltz v4, :cond_468

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTimeLong:J

    move-object/from16 v0, v54

    iget-wide v7, v0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->dayEndTime:J

    cmp-long v4, v4, v7

    if-gtz v4, :cond_468

    :cond_391
    if-eqz v20, :cond_268

    move-object/from16 v0, v20

    iget-boolean v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->isYearTag:Z

    if-eqz v4, :cond_3ac

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v28, v28, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/pinguo/album/data/MediaSet$SortTag;

    :cond_3ac
    move/from16 v66, v28

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->clear()V

    invoke-interface/range {v35 .. v35}, Ljava/util/Map;->clear()V

    move-object/from16 v0, v20

    iget v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v20

    iget v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->week:Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->crc32s:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v32, 0x1

    :goto_3df
    if-nez v32, :cond_48c

    :cond_3e1
    move/from16 v63, v28

    invoke-static/range {v34 .. v34}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {v54 .. v54}, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->getCrc32s()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v61

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5ce

    invoke-virtual/range {v54 .. v54}, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4ee

    invoke-virtual/range {v54 .. v54}, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->getBeginTimeList()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v50

    invoke-virtual/range {v54 .. v54}, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->getEndTimeList()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v52

    move-wide/from16 v0, v50

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTimeLong:J

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTimeLong:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;

    invoke-static/range {v52 .. v53}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->endTime:Ljava/lang/String;

    invoke-virtual/range {v54 .. v54}, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->getNameList()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->tagName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->crc32s:Ljava/lang/String;

    cmp-long v4, v50, v52

    if-eqz v4, :cond_454

    const/4 v4, 0x0

    move-object/from16 v0, v20

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->week:Ljava/lang/String;

    :cond_454
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45b
    invoke-virtual/range {v54 .. v54}, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->recycle()V

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    move/from16 v1, v69

    if-lt v0, v1, :cond_262

    goto/16 :goto_268

    :cond_468
    const/4 v4, 0x0

    move-object/from16 v0, v20

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->crc32s:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    move/from16 v1, v69

    if-ge v0, v1, :cond_488

    move-object/from16 v0, v70

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/pinguo/album/data/MediaSet$SortTag;

    goto/16 :goto_377

    :cond_488
    const/16 v20, 0x0

    goto/16 :goto_377

    :cond_48c
    add-int/lit8 v49, v28, 0x1

    move/from16 v0, v49

    move/from16 v1, v69

    if-ge v0, v1, :cond_3e1

    move-object/from16 v0, v70

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/pinguo/album/data/MediaSet$SortTag;

    move-object/from16 v0, v31

    iget-wide v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTimeLong:J

    move-object/from16 v0, v54

    iget-wide v7, v0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->dayBeginTime:J

    cmp-long v4, v4, v7

    if-ltz v4, :cond_4ea

    move-object/from16 v0, v31

    iget-wide v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTimeLong:J

    move-object/from16 v0, v54

    iget-wide v7, v0, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->dayEndTime:J

    cmp-long v4, v4, v7

    if-gtz v4, :cond_4ea

    move/from16 v28, v49

    const-string/jumbo v4, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->crc32s:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v31

    iget v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v31

    iget v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->week:Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v32, 0x1

    goto/16 :goto_3df

    :cond_4ea
    const/16 v32, 0x0

    goto/16 :goto_3df

    :cond_4ee
    invoke-virtual/range {v54 .. v54}, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->size()I

    move-result v58

    move-object/from16 v0, v20

    iget v0, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I

    move/from16 v33, v0

    const/16 v30, 0x0

    :goto_4fa
    move/from16 v0, v30

    move/from16 v1, v58

    if-ge v0, v1, :cond_45b

    invoke-virtual/range {v54 .. v54}, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->getBeginTimeList()Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v50

    invoke-virtual/range {v54 .. v54}, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->getEndTimeList()Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v52

    add-int v4, v66, v30

    move/from16 v0, v63

    if-gt v4, v0, :cond_5b4

    add-int v4, v66, v30

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/pinguo/album/data/MediaSet$SortTag;

    const/4 v4, 0x0

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->crc32s:Ljava/lang/String;

    :goto_535
    move-wide/from16 v0, v50

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTimeLong:J

    move-object/from16 v0, v60

    iget-wide v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTimeLong:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;

    invoke-static/range {v52 .. v53}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->endTime:Ljava/lang/String;

    invoke-virtual/range {v54 .. v54}, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->getNameList()Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->tagName:Ljava/lang/String;

    move/from16 v0, v33

    move-object/from16 v1, v60

    iput v0, v1, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I

    const/4 v4, 0x0

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->week:Ljava/lang/String;

    cmp-long v4, v50, v52

    if-nez v4, :cond_591

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_577
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5bb

    :cond_57d
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_591

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->week:Ljava/lang/String;

    :cond_591
    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v54 .. v54}, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->getCrc32sList()Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    move/from16 v62, v0

    add-int v33, v33, v62

    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_4fa

    :cond_5b4
    new-instance v60, Lcom/pinguo/album/data/MediaSet$SortTag;

    invoke-direct/range {v60 .. v60}, Lcom/pinguo/album/data/MediaSet$SortTag;-><init>()V

    goto/16 :goto_535

    :cond_5bb
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/Integer;

    move-object/from16 v0, v60

    iget v5, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v5, v7, :cond_57d

    move-object/from16 v39, v40

    goto :goto_577

    :cond_5ce
    const/4 v13, 0x1

    invoke-virtual/range {v54 .. v54}, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->size()I

    move-result v58

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v55, v0

    invoke-virtual/range {v61 .. v61}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_607

    const/4 v13, 0x0

    :cond_5e4
    :goto_5e4
    if-nez v13, :cond_65e

    move/from16 v37, v66

    :goto_5e8
    move/from16 v0, v37

    move/from16 v1, v63

    if-gt v0, v1, :cond_45b

    move-object/from16 v0, v70

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Lcom/pinguo/album/data/MediaSet$SortTag;

    const/4 v4, 0x0

    move-object/from16 v0, v68

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->crc32s:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v37, v37, 0x1

    goto :goto_5e8

    :cond_607
    const/16 v38, 0x0

    :goto_609
    move/from16 v0, v38

    move/from16 v1, v58

    if-lt v0, v1, :cond_631

    const-string/jumbo v4, ","

    move-object/from16 v0, v61

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/16 v46, 0x0

    array-length v7, v15

    const/4 v4, 0x0

    move v5, v4

    :goto_61d
    if-ge v5, v7, :cond_5e4

    aget-object v17, v15, v5

    const/16 v57, 0x0

    const/16 v36, -0x1

    const/16 v30, 0x0

    :goto_627
    move/from16 v0, v30

    move/from16 v1, v58

    if-lt v0, v1, :cond_637

    :cond_62d
    if-gez v36, :cond_652

    const/4 v13, 0x0

    goto :goto_5e4

    :cond_631
    const/4 v4, 0x0

    aput v4, v55, v38

    add-int/lit8 v38, v38, 0x1

    goto :goto_609

    :cond_637
    add-int v4, v46, v30

    rem-int v57, v4, v58

    invoke-virtual/range {v54 .. v54}, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->getCrc32sList()Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, v57

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v36

    if-gez v36, :cond_62d

    add-int/lit8 v30, v30, 0x1

    goto :goto_627

    :cond_652
    move/from16 v46, v57

    aget v4, v55, v57

    add-int/lit8 v4, v4, 0x1

    aput v4, v55, v57

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_61d

    :cond_65e
    const/16 v27, 0x0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I

    move/from16 v33, v0

    const/16 v30, 0x0

    :goto_668
    move/from16 v0, v30

    move/from16 v1, v58

    if-ge v0, v1, :cond_45b

    aget v14, v55, v30

    if-lez v14, :cond_70e

    invoke-virtual/range {v54 .. v54}, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->getBeginTimeList()Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v50

    invoke-virtual/range {v54 .. v54}, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->getEndTimeList()Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v52

    add-int v4, v66, v27

    move/from16 v0, v63

    if-gt v4, v0, :cond_712

    add-int v4, v66, v27

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/pinguo/album/data/MediaSet$SortTag;

    const/4 v4, 0x0

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->crc32s:Ljava/lang/String;

    :goto_6a7
    move-wide/from16 v0, v50

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTimeLong:J

    move-object/from16 v0, v60

    iget-wide v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTimeLong:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;

    invoke-static/range {v52 .. v53}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->endTime:Ljava/lang/String;

    invoke-virtual/range {v54 .. v54}, Lcom/pinguo/album/data/source/CloudAlbum$StandaloneTagGroup;->getNameList()Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->tagName:Ljava/lang/String;

    move/from16 v0, v33

    move-object/from16 v1, v60

    iput v0, v1, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I

    const/4 v4, 0x0

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->week:Ljava/lang/String;

    cmp-long v4, v50, v52

    if-nez v4, :cond_703

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6e9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_718

    :cond_6ef
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_703

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v60

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->week:Ljava/lang/String;

    :cond_703
    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int v33, v33, v14

    add-int/lit8 v27, v27, 0x1

    :cond_70e
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_668

    :cond_712
    new-instance v60, Lcom/pinguo/album/data/MediaSet$SortTag;

    invoke-direct/range {v60 .. v60}, Lcom/pinguo/album/data/MediaSet$SortTag;-><init>()V

    goto :goto_6a7

    :cond_718
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/Integer;

    move-object/from16 v0, v60

    iget v5, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v5, v7, :cond_6ef

    move-object/from16 v39, v40

    goto :goto_6e9

    :cond_72b
    move-object/from16 v0, v70

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Lcom/pinguo/album/data/MediaSet$SortTag;

    const/4 v4, 0x0

    move-object/from16 v0, v68

    iput-object v4, v0, Lcom/pinguo/album/data/MediaSet$SortTag;->crc32s:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_741
    .catchall {:try_start_35b .. :try_end_741} :catchall_354

    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_270
.end method

.method public closeCursor()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    :try_start_5
    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_d

    iput-object v1, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mAlbumCursor:Landroid/database/Cursor;

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    iput-object v1, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mAlbumCursor:Landroid/database/Cursor;

    throw v0
.end method

.method public declared-synchronized delete([Lcom/pinguo/album/data/MediaPath;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "photo_key in ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v4, p1

    const/4 v3, 0x0

    :goto_e
    if-lt v3, v4, :cond_3b

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/pinguo/album/provider/PGAlbum$PGPhotoInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_55

    monitor-exit p0

    return-void

    :cond_3b
    :try_start_3b
    aget-object v2, p1, v3

    const-string/jumbo v5, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Lcom/pinguo/album/data/MediaPath;->getOptionIdentity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "\',"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_52
    .catchall {:try_start_3b .. :try_end_52} :catchall_55

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :catchall_55
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/album/data/MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/pinguo/album/utils/PGAlbumUtils;->assertNotInRenderThread()V

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mAlbumCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mOrderClause:Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mAlbumCursor:Landroid/database/Cursor;

    :cond_1c
    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mAlbumCursor:Landroid/database/Cursor;

    if-nez v0, :cond_21

    :cond_20
    :goto_20
    return-object v9

    :cond_21
    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v7, 0x0

    :cond_2a
    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mAlbumCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mAlbumCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v6, Lcom/pinguo/album/data/MediaPath;

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mItemPath:Ljava/lang/String;

    invoke-direct {v6, v0, v10}, Lcom/pinguo/album/data/MediaPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Lcom/pinguo/album/data/MediaPath;->setOptionIdentity(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mPGAlbumApp:Lcom/pinguo/album/PGAlbumApp;

    invoke-interface {v1}, Lcom/pinguo/album/PGAlbumApp;->getAlbumDataManager()Lcom/pinguo/album/data/AlbumDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mPGAlbumApp:Lcom/pinguo/album/PGAlbumApp;

    iget-boolean v3, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mIsImage:Z

    invoke-static {v6, v0, v1, v2, v3}, Lcom/pinguo/album/data/source/CloudAlbum;->loadOrUpdateItem(Lcom/pinguo/album/data/MediaPath;Landroid/database/Cursor;Lcom/pinguo/album/data/AlbumDataManager;Lcom/pinguo/album/PGAlbumApp;Z)Lcom/pinguo/album/data/MediaItem;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    if-ge v7, p2, :cond_20

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_20
.end method

.method public getMediaItem(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .registers 14
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

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_d

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_c
    :goto_c
    return-object v8

    :cond_d
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->assertNotInRenderThread()V

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mAlbumCursor:Landroid/database/Cursor;

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mOrderClause:Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mAlbumCursor:Landroid/database/Cursor;

    :cond_28
    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_c

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_43
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;

    iget-boolean v0, v0, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;->isChecked:Z

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mAlbumCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mAlbumCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v6, Lcom/pinguo/album/data/MediaPath;

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mItemPath:Ljava/lang/String;

    invoke-direct {v6, v0, v9}, Lcom/pinguo/album/data/MediaPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Lcom/pinguo/album/data/MediaPath;->setOptionIdentity(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_68
    add-int/lit8 v7, v7, -0x1

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    if-eqz v0, :cond_c

    if-gez v7, :cond_43

    goto :goto_c
.end method

.method public getMediaItemByIds([Lcom/pinguo/album/data/MediaPath;)Ljava/util/ArrayList;
    .registers 16
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

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4b

    array-length v1, p1

    if-lez v1, :cond_4b

    const/4 v6, 0x0

    :try_start_c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    :goto_12
    if-lt v0, v1, :cond_4c

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "photo_id in("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mProjection:[Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-static {}, Lcom/pinguo/album/utils/PGAlbumUtils;->assertNotInRenderThread()V
    :try_end_44
    .catchall {:try_start_c .. :try_end_44} :catchall_9d

    if-nez v6, :cond_66

    if-eqz v6, :cond_4b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4b
    :goto_4b
    return-object v9

    :cond_4c
    :try_start_4c
    aget-object v10, p1, v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Lcom/pinguo/album/data/MediaPath;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\',"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_66
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_97

    :cond_6c
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v7, Lcom/pinguo/album/data/MediaPath;

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mItemPath:Ljava/lang/String;

    invoke-direct {v7, v0, v11}, Lcom/pinguo/album/data/MediaPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Lcom/pinguo/album/data/MediaPath;->setOptionIdentity(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mPGAlbumApp:Lcom/pinguo/album/PGAlbumApp;

    invoke-interface {v0}, Lcom/pinguo/album/PGAlbumApp;->getAlbumDataManager()Lcom/pinguo/album/data/AlbumDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mPGAlbumApp:Lcom/pinguo/album/PGAlbumApp;

    iget-boolean v2, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mIsImage:Z

    invoke-static {v7, v6, v0, v1, v2}, Lcom/pinguo/album/data/source/CloudAlbum;->loadOrUpdateItem(Lcom/pinguo/album/data/MediaPath;Landroid/database/Cursor;Lcom/pinguo/album/data/AlbumDataManager;Lcom/pinguo/album/PGAlbumApp;Z)Lcom/pinguo/album/data/MediaItem;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_94
    .catchall {:try_start_4c .. :try_end_94} :catchall_9d

    move-result v0

    if-nez v0, :cond_6c

    :cond_97
    if-eqz v6, :cond_4b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4b

    :catchall_9d
    move-exception v0

    if-eqz v6, :cond_a3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a3
    throw v0
.end method

.method public getMediaItemCount()I
    .registers 9

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mAlbumCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mOrderClause:Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mAlbumCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    :goto_1d
    return v0

    :cond_1e
    sget-object v0, Lcom/pinguo/album/data/source/CloudAlbum;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "----------------getMediaItemCount:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " spend "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_1d
.end method

.method public getMediaItemCountWithoutCache()I
    .registers 11

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/pinguo/album/data/source/CloudAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_1d

    sget-object v0, Lcom/pinguo/album/data/source/CloudAlbum;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "query fail"

    invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    return v6

    :cond_1d
    const/4 v6, 0x0

    :try_start_1e
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/pinguo/album/utils/Utils;->assertTrue(Z)V

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_53

    move-result v6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    sget-object v0, Lcom/pinguo/album/data/source/CloudAlbum;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "----------------getMediaItemCountWithoutCache:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " spend "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :catchall_53
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public reload()J
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mNotifier:Lcom/pinguo/album/data/DataNotifier;

    invoke-virtual {v0}, Lcom/pinguo/album/data/DataNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/pinguo/album/data/source/CloudAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mDataVersion:J

    invoke-virtual {p0}, Lcom/pinguo/album/data/source/CloudAlbum;->closeCursor()V

    :cond_11
    iget-wide v0, p0, Lcom/pinguo/album/data/source/CloudAlbum;->mDataVersion:J

    return-wide v0
.end method
