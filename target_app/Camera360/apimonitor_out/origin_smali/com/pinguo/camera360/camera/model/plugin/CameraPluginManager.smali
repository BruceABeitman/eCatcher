.class public Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;
.super Ljava/lang/Object;
.source "CameraPluginManager.java"

# interfaces
.implements Lcom/pinguo/camera360/camera/model/plugin/ICameraPluginManager;


# static fields
.field private static final MIN_INSTALL_TIME:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;


# instance fields
.field private mDBHelper:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;

.field private mDict:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDict;

.field private mInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->mInitialized:Z

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;)Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->mDBHelper:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;
    .registers 3

    const-class v1, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->sInstance:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;

    if-nez v0, :cond_e

    new-instance v0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;

    invoke-direct {v0}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->sInstance:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;

    :cond_e
    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->sInstance:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->sInstance:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    monitor-exit v1

    return-object v0

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private publishProgressGradually(JLcom/pinguo/camera360/base/BaseModel$Callback;II)V
    .registers 20

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v6, v3, p1

    const/high16 v11, 0x447a

    move/from16 v0, p4

    int-to-float v12, v0

    move/from16 v0, p5

    int-to-float v13, v0

    div-float/2addr v12, v13

    mul-float/2addr v11, v12

    float-to-long v8, v11

    cmp-long v11, v6, v8

    if-gez v11, :cond_32

    long-to-float v11, v6

    long-to-float v12, v8

    div-float/2addr v11, v12

    move/from16 v0, p4

    int-to-float v12, v0

    mul-float/2addr v11, v12

    float-to-int v10, v11

    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-virtual {p0, v0, v10, v1}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->publishProcess(Lcom/pinguo/camera360/base/BaseModel$Callback;II)V

    const-wide/16 v11, 0x32

    :try_start_26
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_29} :catch_2d

    :goto_29
    invoke-direct/range {p0 .. p5}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->publishProgressGradually(JLcom/pinguo/camera360/base/BaseModel$Callback;II)V

    :goto_2c
    return-void

    :catch_2d
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_29

    :cond_32
    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {p0, v0, v1, v2}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->publishProcess(Lcom/pinguo/camera360/base/BaseModel$Callback;II)V

    goto :goto_2c
.end method

.method private updateDBWhenInstall(Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;)Z
    .registers 13

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_d

    sget-object v5, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Param error, update database fail!"

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_c
    return v4

    :cond_d
    sget-object v6, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Update database"

    invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_17
    iget-object v6, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->mDBHelper:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;

    invoke-virtual {v6}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string/jumbo v6, "SELECT COUNT(*) FROM camera_mode WHERE key = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_6a

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-nez v6, :cond_7f

    move v3, v4

    :goto_3c
    if-eqz v3, :cond_81

    const-string/jumbo v6, "UPDATE camera_mode SET installation = ?, installTime = ?, isNew = ? WHERE key = ?"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_67
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    :cond_6a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6d
    .catchall {:try_start_17 .. :try_end_6d} :catchall_119
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_6d} :catch_f9

    if-eqz v0, :cond_72

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_72
    if-eqz v1, :cond_7d

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_7d

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7d
    move v4, v5

    goto :goto_c

    :cond_7f
    move v3, v5

    goto :goto_3c

    :cond_81
    :try_start_81
    const-string/jumbo v6, "INSERT INTO camera_mode VALUES(null,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    const/16 v7, 0xe

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->name:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->description:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget v9, p1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->version:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget-object v9, p1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->requirements:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget v9, p1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->icon:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    iget v9, p1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->idx:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x9

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xa

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xb

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xc

    const-string/jumbo v9, ""

    aput-object v9, v7, v8

    const/16 v8, 0xd

    const-string/jumbo v9, ""

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f7
    .catchall {:try_start_81 .. :try_end_f7} :catchall_119
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_f7} :catch_f9

    goto/16 :goto_67

    :catch_f9
    move-exception v2

    :try_start_fa
    sget-object v5, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Update database exception occurs"

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_107
    .catchall {:try_start_fa .. :try_end_107} :catchall_119

    if-eqz v0, :cond_10c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_10c
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_c

    :catchall_119
    move-exception v4

    if-eqz v0, :cond_11f

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_11f
    if-eqz v1, :cond_12a

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_12a

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_12a
    throw v4
.end method

.method private updateDBWhenUninstall(Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;)Z
    .registers 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_d

    sget-object v3, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Param error, update database fail!"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_c
    return v2

    :cond_d
    sget-object v4, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Update database"

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_16
    iget-object v4, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->mDBHelper:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;

    invoke-virtual {v4}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string/jumbo v4, "UPDATE camera_mode SET installation = ?, installTime = ?, isNew = ? WHERE key = ?"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4e
    .catchall {:try_start_16 .. :try_end_4e} :catchall_75
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_4e} :catch_5b

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_59
    move v2, v3

    goto :goto_c

    :catch_5b
    move-exception v1

    :try_start_5c
    sget-object v3, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Update database exception occurs"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_69
    .catchall {:try_start_5c .. :try_end_69} :catchall_75

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_c

    :catchall_75
    move-exception v2

    if-eqz v0, :cond_81

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_81
    throw v2
.end method


# virtual methods
.method public clearNewFlagInDB(Ljava/lang/String;)Z
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getCameraModeByKey(Ljava/lang/String;)Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    move-result-object v0

    if-eqz v0, :cond_13

    iput v3, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->isNew:I

    new-instance v1, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager$1;

    invoke-direct {v1, p0, p1}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager$1;-><init>(Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;Ljava/lang/String;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager$1;->execute([Ljava/lang/Object;)Lcom/pinguo/lib/os/AsyncTask;

    :cond_13
    return v3
.end method

.method public declared-synchronized destroy()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->mDBHelper:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->mDBHelper:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->mDBHelper:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;

    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->mInitialized:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCameraModeByKey(Ljava/lang/String;)Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->mDict:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDict;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->loadCamareDict()V

    :cond_7
    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->mDict:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDict;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->mDict:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDict;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDict;->getCameraModeByKey(Ljava/lang/String;)Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getCameraModeList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->mDict:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDict;

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->loadCamareDict()V

    :cond_7
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->mDict:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDict;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->mDict:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDict;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDict;->getCameraModeList()Ljava/util/List;

    move-result-object v1

    :goto_12
    return-object v1

    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_12
.end method

.method protected declared-synchronized init(Landroid/content/Context;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->mInitialized:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "CameraPluginManager already initialized"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1f

    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    new-instance v0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;

    const-string/jumbo v1, "camera.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->mDBHelper:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->mInitialized:Z
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_1f

    goto :goto_d

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public install(Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;Lcom/pinguo/camera360/base/BaseModel$Callback;)Z
    .registers 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v5, 0x64

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/16 v6, 0x64

    if-nez p1, :cond_16

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Install failed, param cameraMode is null. exit install!"

    invoke-static {v0, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    :goto_15
    return v0

    :cond_16
    const/16 v4, 0x1e

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->publishProgressGradually(JLcom/pinguo/camera360/base/BaseModel$Callback;II)V

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->updateDBWhenInstall(Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;)Z

    move-result v0

    if-nez v0, :cond_2d

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Update database fail, exit install!"

    invoke-static {v0, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    goto :goto_15

    :cond_2d
    const/16 v4, 0x3c

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->publishProgressGradually(JLcom/pinguo/camera360/base/BaseModel$Callback;II)V

    invoke-virtual {p0, v8}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->invalidCameraDict(Z)V

    const/16 v4, 0x50

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->publishProgressGradually(JLcom/pinguo/camera360/base/BaseModel$Callback;II)V

    move v0, v8

    goto :goto_15
.end method

.method public invalidCameraDict(Z)V
    .registers 4

    sget-object v0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Invalid camera dict"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->mDict:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDict;

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->loadCamareDict()V

    :cond_10
    return-void
.end method

.method protected isInstallTimeInOrder(Ljava/util/List;Z)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v3, 0x1

    if-nez p1, :cond_c

    sget-object v5, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Reorder list is null"

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_b
    return v3

    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_46

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_b

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x1

    :goto_24
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_b

    if-eqz p2, :cond_56

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_70

    const/4 v3, 0x0

    goto :goto_b

    :cond_46
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    iget-wide v6, v2, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->installTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_56
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_70

    const/4 v3, 0x0

    goto :goto_b

    :cond_70
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_24
.end method

.method public declared-synchronized loadCamareDict()V
    .registers 11

    const/4 v5, 0x1

    const/4 v7, 0x0

    monitor-enter p0

    :try_start_3
    sget-object v8, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Load camera dict"

    invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDict;

    invoke-direct {v3}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDict;-><init>()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_75

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_12
    iget-object v8, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->mDBHelper:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;

    invoke-virtual {v8}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v8, "SELECT COUNT(*) FROM camera_mode"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4f

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-nez v8, :cond_4d

    :goto_2c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-eqz v5, :cond_4f

    sget-object v7, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Camera mode table is empty, exit load"

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->mDict:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDict;
    :try_end_3b
    .catchall {:try_start_12 .. :try_end_3b} :catchall_d5
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3b} :catch_b5

    if-eqz v1, :cond_40

    :try_start_3d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_40
    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4b
    .catchall {:try_start_3d .. :try_end_4b} :catchall_75

    :cond_4b
    :goto_4b
    monitor-exit p0

    return-void

    :cond_4d
    move v5, v7

    goto :goto_2c

    :cond_4f
    :try_start_4f
    const-string/jumbo v7, "SELECT key,name,version,idx,installation,installTime,isNew FROM camera_mode WHERE installation = 1"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_62

    :goto_59
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_78

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_62
    iput-object v3, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->mDict:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDict;
    :try_end_64
    .catchall {:try_start_4f .. :try_end_64} :catchall_d5
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_64} :catch_b5

    if-eqz v1, :cond_69

    :try_start_66
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_69
    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_74
    .catchall {:try_start_66 .. :try_end_74} :catchall_75

    goto :goto_4b

    :catchall_75
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_78
    const/4 v7, 0x0

    :try_start_79
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->getCameraModeByGuid(Ljava/lang/String;)Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    move-result-object v0

    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->name:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->version:I

    const/4 v7, 0x3

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->idx:I

    const/4 v7, 0x4

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->installation:I

    const/4 v7, 0x5

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->installTime:J

    const/4 v7, 0x6

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->isNew:I

    iget-object v7, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    invoke-virtual {v3, v7, v0}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDict;->put(Ljava/lang/String;Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;)V
    :try_end_b4
    .catchall {:try_start_79 .. :try_end_b4} :catchall_d5
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_b4} :catch_b5

    goto :goto_59

    :catch_b5
    move-exception v4

    :try_start_b6
    sget-object v7, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Update database exception occurs"

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    invoke-static {v7, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c3
    .catchall {:try_start_b6 .. :try_end_c3} :catchall_d5

    if-eqz v1, :cond_c8

    :try_start_c5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c8
    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_4b

    :catchall_d5
    move-exception v7

    if-eqz v1, :cond_db

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_db
    if-eqz v2, :cond_e6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_e6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_e6
    throw v7
    :try_end_e7
    .catchall {:try_start_c5 .. :try_end_e7} :catchall_75
.end method

.method protected publishProcess(Lcom/pinguo/camera360/base/BaseModel$Callback;II)V
    .registers 7

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    mul-int/lit8 v2, p2, 0x64

    div-int/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/pinguo/camera360/base/BaseModel$Callback;->onExecute([Ljava/lang/Object;)V

    :cond_12
    return-void
.end method

.method public uninstall(Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_d

    sget-object v1, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Uninstall failed, param cameraMode is null. exit install!"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    return v0

    :cond_d
    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->updateDBWhenUninstall(Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;)Z

    move-result v2

    if-nez v2, :cond_1c

    sget-object v1, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Update database fail, exit install!"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_1c
    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->invalidCameraDict(Z)V

    move v0, v1

    goto :goto_c
.end method

.method public uninstallBatch(Ljava/util/List;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_14

    :cond_a
    sget-object v6, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Uninstall failed, param cameraMode list is null or empty. exit install!"

    invoke-static {v6, v8}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    :goto_13
    return v6

    :cond_14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    new-array v4, v8, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_8b

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, ","

    invoke-static {v4, v9}, Lcom/pinguo/lib/util/StringUtils;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :try_start_44
    iget-object v8, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->mDBHelper:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;

    invoke-virtual {v8}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "UPDATE camera_mode SET installation = ?, installTime = ? WHERE key IN "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7c
    .catchall {:try_start_44 .. :try_end_7c} :catchall_cc
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_7c} :catch_b0

    if-eqz v0, :cond_87

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_87

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_87
    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->invalidCameraDict(Z)V

    goto :goto_13

    :cond_8b
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v5, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1f

    :catch_b0
    move-exception v1

    :try_start_b1
    sget-object v6, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Update database exception occurs"

    invoke-static {v6, v8}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_be
    .catchall {:try_start_b1 .. :try_end_be} :catchall_cc

    if-eqz v0, :cond_c9

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_c9

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_c9
    move v6, v7

    goto/16 :goto_13

    :catchall_cc
    move-exception v6

    if-eqz v0, :cond_d8

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_d8

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_d8
    throw v6
.end method

.method public updateCameraModeList(Ljava/util/List;Ljava/util/List;)Z
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getCameraModeList()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v7

    if-nez p1, :cond_1e

    const/4 v15, 0x0

    :goto_b
    if-nez p2, :cond_23

    const/16 v16, 0x0

    :goto_f
    add-int v12, v15, v16

    if-eq v7, v12, :cond_28

    sget-object v17, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "Camera mode number not equal after reorder"

    invoke-static/range {v17 .. v18}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x0

    :goto_1d
    return v17

    :cond_1e
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    goto :goto_b

    :cond_23
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v16

    goto :goto_f

    :cond_28
    if-eqz p2, :cond_53

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v17

    if-eqz v17, :cond_53

    const/4 v9, 0x0

    :goto_31
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->isInstallTimeInOrder(Ljava/util/List;Z)Z

    move-result v8

    if-nez v8, :cond_44

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraModeLayFunction(I)V

    :cond_44
    if-eqz v9, :cond_55

    if-eqz v8, :cond_55

    sget-object v17, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "Reorder has no change and do nothing update"

    invoke-static/range {v17 .. v18}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x0

    goto :goto_1d

    :cond_53
    const/4 v9, 0x1

    goto :goto_31

    :cond_55
    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    :try_start_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->mDBHelper:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-eqz p1, :cond_79

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v5, v17, -0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_73
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_b1

    :cond_79
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7f
    .catchall {:try_start_5a .. :try_end_7f} :catchall_104
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_7f} :catch_e5

    if-eqz v3, :cond_8a

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v17

    if-eqz v17, :cond_8a

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8a
    if-eqz p2, :cond_a4

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_95
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_111

    invoke-static {}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/CameraShopModel;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->uninstallBatch(Ljava/util/List;)V

    :cond_a4
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->invalidCameraDict(Z)V

    const/16 v17, 0x1

    goto/16 :goto_1d

    :cond_b1
    :try_start_b1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    const-string/jumbo v18, "UPDATE camera_mode SET installTime = ? WHERE key = ?"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    mul-int/lit8 v21, v5, 0x64

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    sub-long v21, v10, v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    iget-object v0, v6, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e2
    .catchall {:try_start_b1 .. :try_end_e2} :catchall_104
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_e2} :catch_e5

    add-int/lit8 v5, v5, -0x1

    goto :goto_73

    :catch_e5
    move-exception v4

    :try_start_e6
    sget-object v17, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "Update database exception occurs"

    invoke-static/range {v17 .. v18}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v17, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->TAG:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f5
    .catchall {:try_start_e6 .. :try_end_f5} :catchall_104

    if-eqz v3, :cond_100

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v17

    if-eqz v17, :cond_100

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_100
    const/16 v17, 0x0

    goto/16 :goto_1d

    :catchall_104
    move-exception v17

    if-eqz v3, :cond_110

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v18

    if-eqz v18, :cond_110

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_110
    throw v17

    :cond_111
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    invoke-static {}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/CameraShopModel;

    move-result-object v18

    iget-object v0, v6, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->getProductByKey(Ljava/lang/String;)Lcom/pinguo/camera360/shop/model/entity/Product;

    move-result-object v13

    if-nez v13, :cond_132

    new-instance v13, Lcom/pinguo/camera360/shop/model/entity/Product;

    invoke-direct {v13}, Lcom/pinguo/camera360/shop/model/entity/Product;-><init>()V

    iget-object v0, v6, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    :cond_132
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_95
.end method
