.class public Lcom/pinguo/album/data/download/IncrementDataDownloader;
.super Ljava/lang/Object;
.source "IncrementDataDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/album/data/download/IncrementDataDownloader$IncrementDataLoadingListener;,
        Lcom/pinguo/album/data/download/IncrementDataDownloader$WorkThread;
    }
.end annotation


# static fields
.field public static final INCREMENT_HTTP_REQUEST_PARAMETER_LASTTIME:Ljava/lang/String; = "lastTime"

.field private static final MSG_NOTIFY_LISTENER_FAIL:I = 0x2

.field private static final MSG_NOTIFY_LISTENER_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/pinguo/album/data/download/IncrementDataDownloader;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExternalListener:Lcom/pinguo/album/data/download/IncrementDataDownloader$IncrementDataLoadingListener;

.field private mHandler:Landroid/os/Handler;

.field private mWorkThread:Lcom/pinguo/album/data/download/IncrementDataDownloader$WorkThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/album/data/download/IncrementDataDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/album/data/download/IncrementDataDownloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/pinguo/album/data/download/IncrementDataDownloader$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pinguo/album/data/download/IncrementDataDownloader$1;-><init>(Lcom/pinguo/album/data/download/IncrementDataDownloader;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/album/data/download/IncrementDataDownloader;)Lcom/pinguo/album/data/download/IncrementDataDownloader$IncrementDataLoadingListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader;->mExternalListener:Lcom/pinguo/album/data/download/IncrementDataDownloader$IncrementDataLoadingListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/album/data/download/IncrementDataDownloader;Lcom/pinguo/album/data/download/IncrementDataDownloader$WorkThread;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader;->mWorkThread:Lcom/pinguo/album/data/download/IncrementDataDownloader$WorkThread;

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/album/data/download/IncrementDataDownloader;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/album/data/download/IncrementDataDownloader;Lcom/pinguo/album/data/download/entity/IncrementDataJson$ResultJson;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/pinguo/album/data/download/IncrementDataDownloader;->insertData(Lcom/pinguo/album/data/download/entity/IncrementDataJson$ResultJson;)V

    return-void
.end method

.method static synthetic access$4(Lcom/pinguo/album/data/download/IncrementDataDownloader;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/pinguo/album/data/download/IncrementDataDownloader;
    .registers 3

    sget-object v0, Lcom/pinguo/album/data/download/IncrementDataDownloader;->mInstance:Lcom/pinguo/album/data/download/IncrementDataDownloader;

    if-nez v0, :cond_f

    new-instance v0, Lcom/pinguo/album/data/download/IncrementDataDownloader;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pinguo/album/data/download/IncrementDataDownloader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pinguo/album/data/download/IncrementDataDownloader;->mInstance:Lcom/pinguo/album/data/download/IncrementDataDownloader;

    :cond_f
    sget-object v0, Lcom/pinguo/album/data/download/IncrementDataDownloader;->mInstance:Lcom/pinguo/album/data/download/IncrementDataDownloader;

    return-object v0
.end method

.method private getRequestUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    iget-object v3, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/pinguo/album/utils/AlbumConstants;->buildCommonRequestParam(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, ""

    if-eqz p1, :cond_17

    :try_start_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_17

    const-string/jumbo v3, "lastTime"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "http://cloud.camera360.com/v2/page/getNew"

    invoke-static {v4, v1}, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->getUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "&sig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/pinguo/Camera360Lib/utils/NetworkUtils;->getSigByParamMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_39} :catch_3b

    move-result-object v2

    :goto_3a
    return-object v2

    :catch_3b
    move-exception v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljunit/framework/Assert;->assertTrue(Z)V

    goto :goto_3a
.end method

.method private insertData(Lcom/pinguo/album/data/download/entity/IncrementDataJson$ResultJson;)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/data/download/IncrementDataDownloader;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    if-nez v16, :cond_11

    new-instance v16, Ljava/lang/IllegalStateException;

    const-string/jumbo v17, "context be null"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16

    :cond_11
    new-instance v8, Lcom/pinguo/lib/util/DebugHelper;

    invoke-direct {v8}, Lcom/pinguo/lib/util/DebugHelper;-><init>()V

    const-string/jumbo v16, "incrementDataInsert"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/pinguo/lib/util/DebugHelper;->start(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/data/download/IncrementDataDownloader;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/pinguo/album/data/download/entity/IncrementDataJson$ResultJson;->del:Ljava/util/List;

    if-eqz v5, :cond_111

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_111

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "photo_crc32 in ("

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_45
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_f4

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string/jumbo v16, ")"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_62
    const/4 v5, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/pinguo/album/data/download/entity/IncrementDataJson$ResultJson;->del:Ljava/util/List;

    new-instance v12, Ljava/util/ArrayList;

    const/16 v16, 0xc8

    move/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/pinguo/album/data/download/entity/IncrementDataJson$ResultJson;->latest:Ljava/util/List;

    if-eqz v10, :cond_86

    const/4 v9, 0x0

    :goto_7b
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-lt v9, v0, :cond_114

    invoke-interface {v10}, Ljava/util/List;->clear()V

    :cond_86
    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/pinguo/album/data/download/entity/IncrementDataJson$ResultJson;->latest:Ljava/util/List;

    const-string/jumbo v16, "prepare data"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/pinguo/lib/util/DebugHelper;->mark(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_b5

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    const/4 v12, 0x0

    sget-object v16, Lcom/pinguo/album/provider/PGAlbum$PGPhotoInfo;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_b5
    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "ins db,count:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/pinguo/lib/util/DebugHelper;->mark(Ljava/lang/String;)V

    if-eqz v6, :cond_d9

    sget-object v16, Lcom/pinguo/album/provider/PGAlbum$PGPhotoInfo;->CONTENT_URI:Landroid/net/Uri;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v6, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_d9
    const-string/jumbo v16, "del db"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/pinguo/lib/util/DebugHelper;->mark(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/data/download/IncrementDataDownloader;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pinguo/album/data/download/entity/IncrementDataJson$ResultJson;->lastTime:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/pinguo/album/common/PGPreferences;->setIncrementDataUpdateTime(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/pinguo/lib/util/DebugHelper;->end()V

    return-void

    :cond_f4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v17, "\'"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\',"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_45

    :cond_111
    const/4 v6, 0x0

    goto/16 :goto_62

    :cond_114
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/pinguo/album/data/download/entity/TagJson;

    iget-object v0, v14, Lcom/pinguo/album/data/download/entity/TagJson;->pictures:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_122
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_13f

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/pinguo/album/data/download/entity/TagJson;->date:Ljava/lang/String;

    iget-object v0, v14, Lcom/pinguo/album/data/download/entity/TagJson;->pictures:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/pinguo/album/data/download/entity/TagJson;->pictures:Ljava/util/List;

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7b

    :cond_13f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pinguo/album/data/download/entity/PhotoJson;

    new-instance v15, Landroid/content/ContentValues;

    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v17, "photo_key"

    iget-object v0, v11, Lcom/pinguo/album/data/download/entity/PhotoJson;->key:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "photo_id"

    iget-object v0, v11, Lcom/pinguo/album/data/download/entity/PhotoJson;->id:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "width"

    iget v0, v11, Lcom/pinguo/album/data/download/entity/PhotoJson;->w:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v17, "height"

    iget v0, v11, Lcom/pinguo/album/data/download/entity/PhotoJson;->h:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v17, "hasAudio"

    iget v0, v11, Lcom/pinguo/album/data/download/entity/PhotoJson;->hasAudio:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v17, "avgColor"

    iget v0, v11, Lcom/pinguo/album/data/download/entity/PhotoJson;->avgColor:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v17, "photo_crc32"

    iget-object v0, v11, Lcom/pinguo/album/data/download/entity/PhotoJson;->crc32:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "timestamp"

    iget-object v0, v11, Lcom/pinguo/album/data/download/entity/PhotoJson;->sp:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    const-wide v20, 0x408f400000000000L

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v17, "date"

    iget-object v0, v14, Lcom/pinguo/album/data/download/entity/TagJson;->date:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/pinguo/album/utils/PGAlbumUtils;->changeToTimeStamp(Ljava/lang/String;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v17, "week"

    iget v0, v14, Lcom/pinguo/album/data/download/entity/TagJson;->week:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/pinguo/album/data/download/entity/PhotoJson;->key:Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/pinguo/album/data/download/entity/PhotoJson;->id:Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/pinguo/album/data/download/entity/PhotoJson;->sp:Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/pinguo/album/data/download/entity/PhotoJson;->crc32:Ljava/lang/String;

    goto/16 :goto_122
.end method


# virtual methods
.method public isNoExecuteBefore()Z
    .registers 3

    iget-object v1, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/pinguo/album/common/PGPreferences;->getIncrementDataUpdateTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x1

    goto :goto_f
.end method

.method public setIncrementDataLoadingListener(Lcom/pinguo/album/data/download/IncrementDataDownloader$IncrementDataLoadingListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader;->mExternalListener:Lcom/pinguo/album/data/download/IncrementDataDownloader$IncrementDataLoadingListener;

    return-void
.end method

.method public startDownloadData()V
    .registers 4

    iget-object v1, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader;->mWorkThread:Lcom/pinguo/album/data/download/IncrementDataDownloader$WorkThread;

    if-eqz v1, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/pinguo/album/common/PGPreferences;->getIncrementDataUpdateTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/pinguo/album/data/download/IncrementDataDownloader$WorkThread;

    invoke-direct {p0, v0}, Lcom/pinguo/album/data/download/IncrementDataDownloader;->getRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/pinguo/album/data/download/IncrementDataDownloader$WorkThread;-><init>(Lcom/pinguo/album/data/download/IncrementDataDownloader;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader;->mWorkThread:Lcom/pinguo/album/data/download/IncrementDataDownloader$WorkThread;

    iget-object v1, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader;->mWorkThread:Lcom/pinguo/album/data/download/IncrementDataDownloader$WorkThread;

    invoke-virtual {v1}, Lcom/pinguo/album/data/download/IncrementDataDownloader$WorkThread;->start()V

    goto :goto_4
.end method
