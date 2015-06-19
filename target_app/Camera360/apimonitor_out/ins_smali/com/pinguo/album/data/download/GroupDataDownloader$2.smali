.class  Lcom/pinguo/album/data/download/GroupDataDownloader$2;
.super Ljava/lang/Thread;
.source "GroupDataDownloader.java"
.field final synthetic this$0:Lcom/pinguo/album/data/download/GroupDataDownloader;
.field private final synthetic val$result:Lcom/pinguo/album/data/download/entity/GroupDataJson$ResultJson;
.method constructor <init>(Lcom/pinguo/album/data/download/GroupDataDownloader;Lcom/pinguo/album/data/download/entity/GroupDataJson$ResultJson;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/album/data/download/GroupDataDownloader$2;->this$0:Lcom/pinguo/album/data/download/GroupDataDownloader;
iput-object p2, p0, Lcom/pinguo/album/data/download/GroupDataDownloader$2;->val$result:Lcom/pinguo/album/data/download/entity/GroupDataJson$ResultJson;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 23
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/data/download/GroupDataDownloader$2;->this$0:Lcom/pinguo/album/data/download/GroupDataDownloader;
move-object/from16 v18, v0
#getter for: Lcom/pinguo/album/data/download/GroupDataDownloader;->mContext:Landroid/content/Context;
invoke-static/range {v18 .. v18}, Lcom/pinguo/album/data/download/GroupDataDownloader;->access$2(Lcom/pinguo/album/data/download/GroupDataDownloader;)Landroid/content/Context;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v4
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/data/download/GroupDataDownloader$2;->val$result:Lcom/pinguo/album/data/download/entity/GroupDataJson$ResultJson;
move-object/from16 v18, v0
move-object/from16 v0, v18
iget v0, v0, Lcom/pinguo/album/data/download/entity/GroupDataJson$ResultJson;->all:I
move/from16 v18, v0
const/16 v19, 0x1
move/from16 v0, v18
move/from16 v1, v19
if-ne v0, v1, :cond_31
sget-object v18, Lcom/pinguo/album/provider/PGAlbum$PGPhotoGroup;->CONTENT_URI:Landroid/net/Uri;
const/16 v19, 0x0
const/16 v20, 0x0
move-object/from16 v0, v18
move-object/from16 v1, v19
move-object/from16 v2, v20
invoke-virtual {v4, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
:cond_31
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/data/download/GroupDataDownloader$2;->val$result:Lcom/pinguo/album/data/download/entity/GroupDataJson$ResultJson;
move-object/from16 v18, v0
move-object/from16 v0, v18
iget-object v0, v0, Lcom/pinguo/album/data/download/entity/GroupDataJson$ResultJson;->del:Ljava/util/List;
move-object/from16 v18, v0
if-eqz v18, :cond_a0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/data/download/GroupDataDownloader$2;->val$result:Lcom/pinguo/album/data/download/entity/GroupDataJson$ResultJson;
move-object/from16 v18, v0
move-object/from16 v0, v18
iget-object v0, v0, Lcom/pinguo/album/data/download/entity/GroupDataJson$ResultJson;->del:Ljava/util/List;
move-object/from16 v18, v0
invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I
move-result v18
if-lez v18, :cond_a0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/data/download/GroupDataDownloader$2;->val$result:Lcom/pinguo/album/data/download/entity/GroupDataJson$ResultJson;
move-object/from16 v18, v0
move-object/from16 v0, v18
iget-object v5, v0, Lcom/pinguo/album/data/download/entity/GroupDataJson$ResultJson;->del:Ljava/util/List;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v18
:goto_64
invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z
move-result v19
if-nez v19, :cond_14a
invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I
move-result v18
add-int/lit8 v18, v18, -0x1
move/from16 v0, v18
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
new-instance v18, Ljava/lang/StringBuilder;
const-string/jumbo v19, "group_id in("
invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v18
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
const-string/jumbo v19, ")"
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v17
sget-object v18, Lcom/pinguo/album/provider/PGAlbum$PGPhotoGroup;->CONTENT_URI:Landroid/net/Uri;
const/16 v19, 0x0
move-object/from16 v0, v18
move-object/from16 v1, v17
move-object/from16 v2, v19
invoke-virtual {v4, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
:cond_a0
const-string/jumbo v18, "GroupDataDownloader"
new-instance v19, Ljava/lang/StringBuilder;
const-string/jumbo v20, "lastTime = "
invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/data/download/GroupDataDownloader$2;->val$result:Lcom/pinguo/album/data/download/entity/GroupDataJson$ResultJson;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/album/data/download/entity/GroupDataJson$ResultJson;->lastTime:Ljava/lang/String;
move-object/from16 v20, v0
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
invoke-static/range {v18 .. v19}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v18
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/data/download/GroupDataDownloader$2;->val$result:Lcom/pinguo/album/data/download/entity/GroupDataJson$ResultJson;
move-object/from16 v19, v0
move-object/from16 v0, v19
iget-object v0, v0, Lcom/pinguo/album/data/download/entity/GroupDataJson$ResultJson;->lastTime:Ljava/lang/String;
move-object/from16 v19, v0
invoke-virtual/range {v18 .. v19}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setUpdatePicGroupDataTime(Ljava/lang/String;)V
new-instance v11, Ljava/util/ArrayList;
invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/data/download/GroupDataDownloader$2;->val$result:Lcom/pinguo/album/data/download/entity/GroupDataJson$ResultJson;
move-object/from16 v18, v0
move-object/from16 v0, v18
iget-object v9, v0, Lcom/pinguo/album/data/download/entity/GroupDataJson$ResultJson;->list:Ljava/util/List;
if-eqz v9, :cond_105
invoke-interface {v9}, Ljava/util/List;->size()I
move-result v18
if-lez v18, :cond_105
new-instance v13, Ljava/text/SimpleDateFormat;
const-string/jumbo v18, "yyyyMMdd"
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v19
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-direct {v13, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
const/4 v10, 0x0
:goto_fd
invoke-interface {v9}, Ljava/util/List;->size()I
move-result v18
move/from16 v0, v18
if-lt v10, v0, :cond_15d
:cond_105
:try_start_105
invoke-interface {v11}, Ljava/util/List;->size()I
move-result v18
if-lez v18, :cond_13e
sget-object v19, Lcom/pinguo/album/provider/PGAlbum$PGPhotoGroup;->CONTENT_URI:Landroid/net/Uri;
const/16 v18, 0x0
move/from16 v0, v18
new-array v0, v0, [Landroid/content/ContentValues;
move-object/from16 v18, v0
move-object/from16 v0, v18
invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v18
check-cast v18, [Landroid/content/ContentValues;
move-object/from16 v0, v19
move-object/from16 v1, v18
invoke-virtual {v4, v0, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
const-string/jumbo v18, "GroupDataDownloader"
new-instance v19, Ljava/lang/StringBuilder;
const-string/jumbo v20, " PGPhotoDetail bulkInsert count:"
invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v11}, Ljava/util/List;->size()I
move-result v20
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
invoke-static/range {v18 .. v19}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V
:cond_13e
:goto_13e
:try_end_13e
.catch Landroid/database/sqlite/SQLiteException; {:try_start_105 .. :try_end_13e} :catch_269
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/data/download/GroupDataDownloader$2;->this$0:Lcom/pinguo/album/data/download/GroupDataDownloader;
move-object/from16 v18, v0
const/16 v19, 0x0
#setter for: Lcom/pinguo/album/data/download/GroupDataDownloader;->mHttpTask:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
invoke-static/range {v18 .. v19}, Lcom/pinguo/album/data/download/GroupDataDownloader;->access$1(Lcom/pinguo/album/data/download/GroupDataDownloader;Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;)V
return-void
:cond_14a
invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v12
check-cast v12, Ljava/lang/String;
invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v19, ","
move-object/from16 v0, v19
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto/16 :goto_64
:cond_15d
invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v15
check-cast v15, Lcom/pinguo/album/data/download/entity/GroupDataJson$GroupJson;
new-instance v16, Landroid/content/ContentValues;
invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v18, "group_id"
iget-object v0, v15, Lcom/pinguo/album/data/download/entity/GroupDataJson$GroupJson;->gid:Ljava/lang/String;
move-object/from16 v19, v0
move-object/from16 v0, v16
move-object/from16 v1, v18
move-object/from16 v2, v19
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v18, "group_name"
iget-object v0, v15, Lcom/pinguo/album/data/download/entity/GroupDataJson$GroupJson;->name:Ljava/lang/String;
move-object/from16 v19, v0
move-object/from16 v0, v16
move-object/from16 v1, v18
move-object/from16 v2, v19
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, v15, Lcom/pinguo/album/data/download/entity/GroupDataJson$GroupJson;->st:Ljava/lang/String;
move-object/from16 v18, v0
invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
move-result-wide v18
const-wide v20, 0x408f400000000000L
mul-double v18, v18, v20
invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v14
iget-object v0, v15, Lcom/pinguo/album/data/download/entity/GroupDataJson$GroupJson;->et:Ljava/lang/String;
move-object/from16 v18, v0
invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
move-result-wide v18
const-wide v20, 0x408f400000000000L
mul-double v18, v18, v20
invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v8
const-string/jumbo v18, "begin_date"
iget-object v0, v15, Lcom/pinguo/album/data/download/entity/GroupDataJson$GroupJson;->sd:Ljava/lang/String;
move-object/from16 v19, v0
invoke-static/range {v19 .. v19}, Lcom/pinguo/album/utils/PGAlbumUtils;->changeToTimeStamp(Ljava/lang/String;)J
move-result-wide v19
invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v19
move-object/from16 v0, v16
move-object/from16 v1, v18
move-object/from16 v2, v19
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string/jumbo v18, "end_date"
iget-object v0, v15, Lcom/pinguo/album/data/download/entity/GroupDataJson$GroupJson;->ed:Ljava/lang/String;
move-object/from16 v19, v0
invoke-static/range {v19 .. v19}, Lcom/pinguo/album/utils/PGAlbumUtils;->changeToTimeStamp(Ljava/lang/String;)J
move-result-wide v19
invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v19
move-object/from16 v0, v16
move-object/from16 v1, v18
move-object/from16 v2, v19
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string/jumbo v18, "begin_timestamp"
invoke-virtual {v14}, Ljava/lang/Double;->longValue()J
move-result-wide v19
invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v19
move-object/from16 v0, v16
move-object/from16 v1, v18
move-object/from16 v2, v19
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string/jumbo v18, "end_timestamp"
invoke-virtual {v8}, Ljava/lang/Double;->longValue()J
move-result-wide v19
invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v19
move-object/from16 v0, v16
move-object/from16 v1, v18
move-object/from16 v2, v19
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string/jumbo v18, "group_photo_crc32s"
iget-object v0, v15, Lcom/pinguo/album/data/download/entity/GroupDataJson$GroupJson;->crc32s:Ljava/lang/String;
move-object/from16 v19, v0
move-object/from16 v0, v16
move-object/from16 v1, v18
move-object/from16 v2, v19
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v18, "group_data_count"
iget-object v0, v15, Lcom/pinguo/album/data/download/entity/GroupDataJson$GroupJson;->crc32s:Ljava/lang/String;
move-object/from16 v19, v0
const-string/jumbo v20, ","
invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v19
array-length v0, v0
move/from16 v19, v0
invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v19
move-object/from16 v0, v16
move-object/from16 v1, v18
move-object/from16 v2, v19
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
move-object/from16 v0, v16
invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const/16 v18, 0x0
move-object/from16 v0, v18
iput-object v0, v15, Lcom/pinguo/album/data/download/entity/GroupDataJson$GroupJson;->gid:Ljava/lang/String;
const/16 v18, 0x0
move-object/from16 v0, v18
iput-object v0, v15, Lcom/pinguo/album/data/download/entity/GroupDataJson$GroupJson;->name:Ljava/lang/String;
const/16 v18, 0x0
move-object/from16 v0, v18
iput-object v0, v15, Lcom/pinguo/album/data/download/entity/GroupDataJson$GroupJson;->st:Ljava/lang/String;
const/16 v18, 0x0
move-object/from16 v0, v18
iput-object v0, v15, Lcom/pinguo/album/data/download/entity/GroupDataJson$GroupJson;->et:Ljava/lang/String;
const/16 v18, 0x0
move-object/from16 v0, v18
iput-object v0, v15, Lcom/pinguo/album/data/download/entity/GroupDataJson$GroupJson;->sd:Ljava/lang/String;
const/16 v18, 0x0
move-object/from16 v0, v18
iput-object v0, v15, Lcom/pinguo/album/data/download/entity/GroupDataJson$GroupJson;->ed:Ljava/lang/String;
const/16 v18, 0x0
move-object/from16 v0, v18
iput-object v0, v15, Lcom/pinguo/album/data/download/entity/GroupDataJson$GroupJson;->crc32s:Ljava/lang/String;
add-int/lit8 v10, v10, 0x1
goto/16 :goto_fd
:catch_269
move-exception v7
const-string/jumbo v18, "GroupDataDownloader"
new-instance v19, Ljava/lang/StringBuilder;
const-string/jumbo v20, " bulkInsert error "
invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
invoke-static/range {v18 .. v19}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_13e
.end method