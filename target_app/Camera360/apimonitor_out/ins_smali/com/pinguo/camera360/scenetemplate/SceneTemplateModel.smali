.class public Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
.super Ljava/lang/Object;
.source "SceneTemplateModel.java"
.field public static final EVENT_REFRESH_ALL:I = 0x3
.field public static final EVENT_REFRESH_LOC:I = 0x1
.field private static final SCAN_LOCAL:I = 0x1
.field private static final SCAN_NETWORK:I = 0x2
.field public static final SYNC_ERROR:I = 0xb
.field public static final SYNC_FINISH:I = 0xc
.field public static final SYNC_NEED_REFRESH:I = 0xd
.field private static final TAG:Ljava/lang/String; = "SceneTemplateModel"
.field private static instance:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
.field private db:Landroid/database/sqlite/SQLiteDatabase;
.field private final dbLock:[B
.field private downloader:Lcom/pinguo/camera360/scenetemplate/HttpDownloader;
.field private isRunning:Z
.field private mListeners:Ljava/util/List;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->instance:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
return-void
.end method
.method private constructor <init>()V
.registers 7
const/4 v5, 0x0
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->isRunning:Z
new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
iput-object v2, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->mListeners:Ljava/util/List;
iput-object v5, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->downloader:Lcom/pinguo/camera360/scenetemplate/HttpDownloader;
new-array v2, v3, [B
iput-object v2, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->dbLock:[B
invoke-static {}, Lcom/pinguo/lib/util/DeviceInfo;->hasSDCard()Z
move-result v2
if-eqz v2, :cond_57
new-instance v0, Ljava/io/File;
sget-object v2, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->LOCAL_TEMPLATE_PATH:Ljava/lang/String;
invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/io/File;)Z
new-instance v1, Lcom/pinguo/camera360/scenetemplate/SceneDatabaseHelper;
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
sget-object v4, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->LOCAL_TEMPLATE_PATH:Ljava/lang/String;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "template.db"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x1
invoke-direct {v1, v2, v3, v5, v4}, Lcom/pinguo/camera360/scenetemplate/SceneDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
invoke-virtual {v1}, Lcom/pinguo/camera360/scenetemplate/SceneDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
iput-object v2, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->db:Landroid/database/sqlite/SQLiteDatabase;
new-instance v2, Lcom/pinguo/camera360/scenetemplate/HttpDownloader;
invoke-direct {v2}, Lcom/pinguo/camera360/scenetemplate/HttpDownloader;-><init>()V
iput-object v2, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->downloader:Lcom/pinguo/camera360/scenetemplate/HttpDownloader;
:cond_57
return-void
.end method
.method private copyTemplateData(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V
.registers 6
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getSceneJpgFileLength()J
move-result-wide v1
invoke-virtual {p2, v1, v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setSceneJpgFileLength(J)V
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getScenePngFileLength()J
move-result-wide v1
invoke-virtual {p2, v1, v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setScenePngFileLength(J)V
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getSceneXmlFileLength()J
move-result-wide v1
invoke-virtual {p2, v1, v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setSceneXmlFileLength(J)V
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getSceneJpgFile()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_29
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_29
invoke-virtual {p2, v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setSceneJpgFile(Ljava/lang/String;)V
:cond_29
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getScenePngFile()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_3d
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_3d
invoke-virtual {p2, v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setScenePngFile(Ljava/lang/String;)V
:cond_3d
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getSceneXmlFile()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_51
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_51
invoke-virtual {p2, v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setSceneXmlFile(Ljava/lang/String;)V
:cond_51
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getSceneUsedCount()I
move-result v1
invoke-virtual {p2, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setSceneUsedCount(I)V
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getAddedDate()Ljava/util/Date;
move-result-object v1
invoke-virtual {p2, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setAddedDate(Ljava/util/Date;)V
return-void
.end method
.method private createTemplateFromCursor(Landroid/database/Cursor;)Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
.registers 32
new-instance v2, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
const/4 v3, 0x0
move-object/from16 v0, p1
invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
const/4 v5, 0x1
move-object/from16 v0, p1
invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v5
const/4 v6, 0x2
move-object/from16 v0, p1
invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v6
const/4 v7, 0x3
move-object/from16 v0, p1
invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v7
const/4 v8, 0x4
move-object/from16 v0, p1
invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v8
const/4 v9, 0x5
move-object/from16 v0, p1
invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
const/4 v10, 0x6
move-object/from16 v0, p1
invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v10
const/4 v11, 0x7
move-object/from16 v0, p1
invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v11
const/16 v12, 0x8
move-object/from16 v0, p1
invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v12
const/16 v13, 0x9
move-object/from16 v0, p1
invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v13
const/16 v14, 0xa
move-object/from16 v0, p1
invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v14
const/16 v15, 0xb
move-object/from16 v0, p1
invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v15
const/16 v17, 0xc
move-object/from16 v0, p1
move/from16 v1, v17
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v17
const/16 v18, 0xd
move-object/from16 v0, p1
move/from16 v1, v18
invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v18
const/16 v20, 0xe
move-object/from16 v0, p1
move/from16 v1, v20
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v20
const/16 v21, 0xf
move-object/from16 v0, p1
move/from16 v1, v21
invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v21
const/16 v23, 0x10
move-object/from16 v0, p1
move/from16 v1, v23
invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v23
const/16 v24, 0x11
move-object/from16 v0, p1
move/from16 v1, v24
invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v24
const/16 v25, 0x12
move-object/from16 v0, p1
move/from16 v1, v25
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v25
const/16 v26, 0x13
move-object/from16 v0, p1
move/from16 v1, v26
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v26
new-instance v27, Ljava/util/Date;
const/16 v28, 0x14
move-object/from16 v0, p1
move/from16 v1, v28
invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v28
invoke-direct/range {v27 .. v29}, Ljava/util/Date;-><init>(J)V
const/16 v28, 0x15
move-object/from16 v0, p1
move/from16 v1, v28
invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S
move-result v28
if-eqz v28, :cond_cf
const/16 v28, 0x1
:goto_c7
invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v28
invoke-direct/range {v2 .. v28}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Boolean;)V
return-object v2
:cond_cf
const/16 v28, 0x0
goto :goto_c7
.end method
.method public static getInstance()Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
.registers 3
sget-object v1, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->instance:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
if-nez v1, :cond_13
const-class v2, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
monitor-enter v2
:try_start_7
sget-object v1, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->instance:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
:try_end_9
.catchall {:try_start_7 .. :try_end_9} :catchall_1b
if-nez v1, :cond_12
:try_start_b
new-instance v1, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
invoke-direct {v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;-><init>()V
sput-object v1, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->instance:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
:cond_12
:try_start_12
:goto_12
:try_end_12
.catchall {:try_start_b .. :try_end_12} :catchall_1b
.catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_16
monitor-exit v2
:cond_13
:try_end_13
.catchall {:try_start_12 .. :try_end_13} :catchall_1b
sget-object v1, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->instance:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
return-object v1
:catch_16
move-exception v0
const/4 v1, 0x0
:try_start_18
sput-object v1, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->instance:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
goto :goto_12
:catchall_1b
move-exception v1
monitor-exit v2
:try_end_1d
.catchall {:try_start_18 .. :try_end_1d} :catchall_1b
throw v1
.end method
.method private getUrlFromJpgUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 7
const-string/jumbo v2, ".jpg"
invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v0
const/4 v2, -0x1
if-ne v0, v2, :cond_e
const-string/jumbo v2, ""
:goto_d
return-object v2
:cond_e
const/4 v2, 0x0
invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
goto :goto_d
.end method
.method private loadAllDBTemplate()Ljava/util/List;
.registers 8
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->db:Landroid/database/sqlite/SQLiteDatabase;
if-eqz v3, :cond_20
iget-object v4, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->dbLock:[B
monitor-enter v4
:try_start_c
iget-object v3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->db:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v5, "SELECT * FROM SCENE_TEMPLATE"
const/4 v6, 0x0
invoke-virtual {v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
monitor-exit v4
:goto_17
:try_end_17
.catchall {:try_start_c .. :try_end_17} :catchall_21
invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
move-result v3
if-nez v3, :cond_24
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_20
return-object v1
:catchall_21
move-exception v3
:try_start_22
monitor-exit v4
:try_end_23
.catchall {:try_start_22 .. :try_end_23} :catchall_21
throw v3
:cond_24
invoke-direct {p0, v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->createTemplateFromCursor(Landroid/database/Cursor;)Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_17
.end method
.method private processNetworkList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Z
.registers 16
const/4 v7, 0x0
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_5
:cond_5
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-nez v9, :cond_2f
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v8
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v9
add-int/2addr v8, v9
invoke-interface {p3}, Ljava/util/List;->size()I
move-result v9
if-eq v8, v9, :cond_1b
const/4 v7, 0x1
:cond_1b
invoke-interface {p3}, Ljava/util/List;->clear()V
invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v8
:cond_28
:goto_28
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-nez v9, :cond_7e
return v7
:cond_2f
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_50
invoke-interface {p2, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
move-result v3
invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
invoke-direct {p0, v6, v4}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->copyTemplateData(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V
const/4 v9, 0x3
invoke-virtual {v4, v9}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setLocationType(I)V
invoke-interface {p2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
goto :goto_5
:cond_50
invoke-interface {p3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_5
invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
move-result v9
invoke-interface {p3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
move-result v10
if-eq v9, v10, :cond_61
const/4 v7, 0x1
:cond_61
invoke-interface {p3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
move-result v3
invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
invoke-direct {p0, v6, v4}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->copyTemplateData(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V
invoke-virtual {v4}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getIsNew()Ljava/lang/String;
move-result-object v9
invoke-virtual {v6}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getIsNew()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-nez v9, :cond_5
const/4 v7, 0x1
goto :goto_5
:cond_7e
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
new-instance v9, Ljava/lang/StringBuilder;
sget-object v10, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->LOCAL_TEMPLATE_PATH:Ljava/lang/String;
invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v4}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getKey()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string/jumbo v10, ".jpg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
if-eqz p4, :cond_d2
const-string/jumbo v9, "No"
invoke-virtual {v4}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getClosed()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_d2
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setSceneJpgFile(Ljava/lang/String;)V
invoke-static {v4}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateInstall;->isJpgFileLost(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)Z
move-result v9
if-eqz v9, :cond_28
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->downloadCover(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)J
move-result-wide v1
const-wide/16 v9, -0x1
cmp-long v9, v1, v9
if-eqz v9, :cond_28
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setSceneJpgFile(Ljava/lang/String;)V
invoke-virtual {v4, v1, v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setSceneJpgFileLength(J)V
goto/16 :goto_28
:cond_d2
new-instance v0, Ljava/io/File;
invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v9
if-eqz v9, :cond_28
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setSceneJpgFile(Ljava/lang/String;)V
goto/16 :goto_28
.end method
.method public cancalDownload()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->downloader:Lcom/pinguo/camera360/scenetemplate/HttpDownloader;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->downloader:Lcom/pinguo/camera360/scenetemplate/HttpDownloader;
invoke-virtual {v0}, Lcom/pinguo/camera360/scenetemplate/HttpDownloader;->cancelDownload()V
:cond_9
return-void
.end method
.method public deleteSceneTemplate(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V
.registers 9
new-instance v0, Ljava/io/File;
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getSceneJpgFile()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V
new-instance v0, Ljava/io/File;
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getScenePngFile()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V
new-instance v0, Ljava/io/File;
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getSceneXmlFile()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V
iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->dbLock:[B
monitor-enter v1
:try_start_27
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->db:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v2, "SCENE_TEMPLATE"
const-string/jumbo v3, "KEY=?"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/String;
const/4 v5, 0x0
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getKey()Ljava/lang/String;
move-result-object v6
aput-object v6, v4, v5
invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
monitor-exit v1
return-void
:catchall_3e
move-exception v0
monitor-exit v1
:try_end_40
.catchall {:try_start_27 .. :try_end_40} :catchall_3e
throw v0
.end method
.method public downloadCover(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)J
.registers 14
const-wide/16 v6, 0x0
new-instance v0, Lcom/pinguo/camera360/scenetemplate/HttpDownloader;
invoke-direct {v0}, Lcom/pinguo/camera360/scenetemplate/HttpDownloader;-><init>()V
new-instance v8, Ljava/lang/StringBuilder;
sget-object v9, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->LOCAL_TEMPLATE_PATH:Ljava/lang/String;
invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v9
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getKey()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, ".jpg"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getDetailLogo()Ljava/lang/String;
move-result-object v8
sget-object v9, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->LOCAL_TEMPLATE_PATH:Ljava/lang/String;
new-instance v10, Ljava/lang/StringBuilder;
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getKey()Ljava/lang/String;
move-result-object v11
invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v11, ".jpg.bak"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v0, v8, v9, v10}, Lcom/pinguo/camera360/scenetemplate/HttpDownloader;->downFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
move-result-wide v4
new-instance v1, Ljava/io/File;
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v8
if-eqz v8, :cond_5f
invoke-virtual {v1}, Ljava/io/File;->delete()Z
move-result v8
if-nez v8, :cond_5f
:goto_5e
return-wide v6
:cond_5f
new-instance v8, Ljava/io/File;
new-instance v9, Ljava/lang/StringBuilder;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v10, ".bak"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
move-result v8
if-nez v8, :cond_80
const-wide/16 v4, 0x0
:cond_80
cmp-long v6, v4, v6
if-lez v6, :cond_f1
new-instance v6, Ljava/lang/StringBuilder;
sget-object v7, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->LOCAL_TEMPLATE_PATH:Ljava/lang/String;
invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getKey()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, ".jpg"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {p1, v6}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setSceneJpgFile(Ljava/lang/String;)V
invoke-virtual {p1, v4, v5}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setSceneJpgFileLength(J)V
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "UPDATE SCENE_TEMPLATE SET SCENE_JPG_FILE=\'"
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v7, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->LOCAL_TEMPLATE_PATH:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getKey()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, ".jpg\', SCENE_JPG_FILE_LENGTH="
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, " WHERE KEY="
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getKey()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
iget-object v7, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->dbLock:[B
monitor-enter v7
:try_start_eb
iget-object v6, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->db:Landroid/database/sqlite/SQLiteDatabase;
invoke-virtual {v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
monitor-exit v7
:cond_f1
move-wide v6, v4
goto/16 :goto_5e
:catchall_f4
move-exception v6
monitor-exit v7
:try_end_f6
.catchall {:try_start_eb .. :try_end_f6} :catchall_f4
throw v6
.end method
.method public downloadTempate(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
.registers 14
const-wide/16 v10, 0x2
const-wide/16 v8, -0x1
const/4 v2, 0x0
iget-object v3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->downloader:Lcom/pinguo/camera360/scenetemplate/HttpDownloader;
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getDetailLogo()Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, ".png"
invoke-direct {p0, v4, v5}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->getUrlFromJpgUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
sget-object v5, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->LOCAL_TEMPLATE_PATH:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getKey()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, ".png"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v4, v5, v6}, Lcom/pinguo/camera360/scenetemplate/HttpDownloader;->downFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
move-result-wide v0
cmp-long v3, v0, v8
if-nez v3, :cond_3d
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getChildId()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Scene;->sceneDownloadFail(Ljava/lang/String;)V
move-object p1, v2
:goto_3c
return-object p1
:cond_3d
cmp-long v3, v0, v10
if-eqz v3, :cond_44
invoke-virtual {p1, v0, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setScenePngFileLength(J)V
:cond_44
iget-object v3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->downloader:Lcom/pinguo/camera360/scenetemplate/HttpDownloader;
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getDetailLogo()Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, ".xml"
invoke-direct {p0, v4, v5}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->getUrlFromJpgUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
sget-object v5, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->LOCAL_TEMPLATE_PATH:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getKey()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, ".xml"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v4, v5, v6}, Lcom/pinguo/camera360/scenetemplate/HttpDownloader;->downFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
move-result-wide v0
cmp-long v3, v0, v8
if-nez v3, :cond_7c
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getChildId()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Scene;->sceneDownloadFail(Ljava/lang/String;)V
move-object p1, v2
goto :goto_3c
:cond_7c
cmp-long v2, v0, v10
if-eqz v2, :cond_83
invoke-virtual {p1, v0, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setSceneXmlFileLength(J)V
:cond_83
const/4 v2, 0x3
invoke-virtual {p1, v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setLocationType(I)V
new-instance v2, Ljava/lang/StringBuilder;
sget-object v3, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->LOCAL_TEMPLATE_PATH:Ljava/lang/String;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getKey()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ".png"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setScenePngFile(Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuilder;
sget-object v3, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->LOCAL_TEMPLATE_PATH:Ljava/lang/String;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getKey()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ".xml"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setSceneXmlFile(Ljava/lang/String;)V
new-instance v2, Ljava/util/Date;
invoke-direct {v2}, Ljava/util/Date;-><init>()V
invoke-virtual {p1, v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->setAddedDate(Ljava/util/Date;)V
iget-object v3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->dbLock:[B
monitor-enter v3
:try_start_e0
iget-object v2, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->db:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v4, "SCENE_TEMPLATE"
invoke-static {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->getContentValues(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)Landroid/content/ContentValues;
move-result-object v5
const-string/jumbo v6, "KEY = ?"
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/String;
const/4 v8, 0x0
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getKey()Ljava/lang/String;
move-result-object v9
aput-object v9, v7, v8
invoke-virtual {v2, v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
monitor-exit v3
:try_end_fa
.catchall {:try_start_e0 .. :try_end_fa} :catchall_103
invoke-virtual {p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getChildId()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Scene;->sceneDownloadSuccess(Ljava/lang/String;)V
goto/16 :goto_3c
:catchall_103
move-exception v2
:try_start_104
monitor-exit v3
:try_end_105
.catchall {:try_start_104 .. :try_end_105} :catchall_103
throw v2
.end method
.method public getTemplateList()Ljava/util/List;
.registers 8
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
:try_start_5
invoke-direct {p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->loadAllDBTemplate()Ljava/util/List;
:try_end_8
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_1c
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_d
:goto_d
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-nez v5, :cond_2c
new-instance v4, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel$1;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel$1;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;)V
invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
:goto_1b
return-object v3
:catch_1c
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
const-string/jumbo v4, "SceneTemplateModel"
invoke-static {v4, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
goto :goto_1b
:cond_2c
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
const-string/jumbo v5, "No"
invoke-virtual {v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getClosed()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_d
invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_d
.end method
.method public registerSceneSyncListener(Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel$OnSceneTemplateLoadListener;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->mListeners:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public declared-synchronized updateSceneTemplate(IZ)Z
.registers 23
monitor-enter p0
:try_start_1
move-object/from16 v0, p0
iget-boolean v14, v0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->isRunning:Z
if-nez v14, :cond_d
invoke-static {}, Lcom/pinguo/lib/util/DeviceInfo;->hasSDCard()Z
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_134
move-result v14
if-nez v14, :cond_10
:cond_d
const/4 v14, 0x0
:goto_e
monitor-exit p0
return v14
:cond_10
const/4 v14, 0x1
:try_start_11
move-object/from16 v0, p0
iput-boolean v14, v0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->isRunning:Z
const-string/jumbo v14, "SceneTemplateModel"
new-instance v15, Ljava/lang/StringBuilder;
const-string/jumbo v16, "Scene template update start, Update type : "
invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move/from16 v0, p1
invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-static {v14, v15}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/16 v11, 0xc
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v9
invoke-static {}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateInstall;->installDefSceneTemplate()Z
invoke-static {}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateInstall;->migrateOldTemplate()V
const/4 v5, 0x0
and-int/lit8 v14, p1, 0x1
if-eqz v14, :cond_61
new-instance v4, Lcom/pinguo/camera360/scenetemplate/SceneLocalParser;
invoke-direct {v4}, Lcom/pinguo/camera360/scenetemplate/SceneLocalParser;-><init>()V
invoke-virtual {v4}, Lcom/pinguo/camera360/scenetemplate/SceneLocalParser;->parse()Ljava/util/List;
move-result-object v5
const-string/jumbo v14, "SceneTemplateModel"
new-instance v15, Ljava/lang/StringBuilder;
const-string/jumbo v16, "2. Local scene template : "
invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-static {v14, v15}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:try_end_61
.catchall {:try_start_11 .. :try_end_61} :catchall_134
:cond_61
const/4 v6, 0x0
and-int/lit8 v14, p1, 0x2
if-eqz v14, :cond_89
:try_start_66
new-instance v7, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;
invoke-direct {v7}, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;-><init>()V
invoke-virtual {v7}, Lcom/pinguo/camera360/scenetemplate/SceneXmlParser;->parse()Ljava/util/List;
move-result-object v6
const-string/jumbo v14, "SceneTemplateModel"
new-instance v15, Ljava/lang/StringBuilder;
const-string/jumbo v16, "3. Network scene template : "
invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-static {v14, v15}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:try_end_89
.catchall {:try_start_66 .. :try_end_89} :catchall_134
.catch Ljava/lang/Exception; {:try_start_66 .. :try_end_89} :catch_10c
:cond_89
:goto_89
if-nez v6, :cond_8f
:try_start_8b
invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->loadAllDBTemplate()Ljava/util/List;
move-result-object v6
:cond_8f
invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->loadAllDBTemplate()Ljava/util/List;
move-result-object v12
move-object/from16 v0, p0
move/from16 v1, p2
invoke-direct {v0, v6, v5, v12, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->processNetworkList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Z
move-result v14
if-eqz v14, :cond_9f
const/16 v11, 0xd
:cond_9f
const-string/jumbo v8, "DELETE FROM `SCENE_TEMPLATE`"
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->dbLock:[B
monitor-enter v15
:try_end_a7
.catchall {:try_start_8b .. :try_end_a7} :catchall_134
:try_start_a7
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->db:Landroid/database/sqlite/SQLiteDatabase;
invoke-virtual {v14, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v14
:goto_b2
invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z
move-result v16
if-nez v16, :cond_118
monitor-exit v15
:try_end_b9
.catchall {:try_start_a7 .. :try_end_b9} :catchall_131
:try_start_b9
const-string/jumbo v14, "SceneTemplateModel"
new-instance v15, Ljava/lang/StringBuilder;
const-string/jumbo v16, "Scene Template sync used : "
invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v16
sub-long v16, v16, v9
invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v15
const-string/jumbo v16, "ms"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-static {v14, v15}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->mListeners:Ljava/util/List;
invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v14
:goto_e4
invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z
move-result v15
if-nez v15, :cond_137
const-string/jumbo v14, "SceneTemplateModel"
new-instance v15, Ljava/lang/StringBuilder;
const-string/jumbo v16, "Update scene template end, state : "
invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-static {v14, v15}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v14, 0x0
move-object/from16 v0, p0
iput-boolean v14, v0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->isRunning:Z
const/16 v14, 0xd
if-ne v11, v14, :cond_141
const/4 v14, 0x1
goto/16 :goto_e
:catch_10c
move-exception v2
const-string/jumbo v14, "SceneTemplateModel"
invoke-static {v14, v2}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_113
.catchall {:try_start_b9 .. :try_end_113} :catchall_134
const/4 v6, 0x0
const/16 v11, 0xb
goto/16 :goto_89
:try_start_118
:cond_118
invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v13
check-cast v13, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->db:Landroid/database/sqlite/SQLiteDatabase;
move-object/from16 v16, v0
const-string/jumbo v17, "SCENE_TEMPLATE"
const/16 v18, 0x0
invoke-static {v13}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->getContentValues(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)Landroid/content/ContentValues;
move-result-object v19
invoke-virtual/range {v16 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
goto :goto_b2
:catchall_131
move-exception v14
monitor-exit v15
:try_start_133
:try_end_133
.catchall {:try_start_118 .. :try_end_133} :catchall_131
throw v14
:try_end_134
.catchall {:try_start_133 .. :try_end_134} :catchall_134
:catchall_134
move-exception v14
monitor-exit p0
throw v14
:try_start_137
:cond_137
invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel$OnSceneTemplateLoadListener;
invoke-interface {v3, v11}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel$OnSceneTemplateLoadListener;->syncFinished(I)V
:try_end_140
.catchall {:try_start_137 .. :try_end_140} :catchall_134
goto :goto_e4
:cond_141
const/4 v14, 0x0
goto/16 :goto_e
.end method