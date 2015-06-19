.class public Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;
.super Ljava/lang/Object;
.source "CloudUploadSql.java"


# static fields
.field private static final DATABASE_PATH:Ljava/lang/String; = null

.field private static final DATABASE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CloudUploadSql"

.field private static cloudUploadSql:Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;


# instance fields
.field private mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;

.field private mSQLOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lorg/pinguo/cloudshare/support/Config;->FILE_SUPPORT_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/css_recorder.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->DATABASE_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->createDir()V

    new-instance v0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSqliteHelper;

    sget-object v1, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->DATABASE_PATH:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSqliteHelper;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mSQLOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mSQLOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mSQLOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private createDir()V
    .registers 5

    new-instance v1, Ljava/io/File;

    sget-object v2, Lorg/pinguo/cloudshare/support/Config;->FILE_SUPPORT_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo v2, "CloudUploadSql"

    const-string/jumbo v3, "\u521b\u5efa\u4e0a\u4f20\u7167\u7247\u6587\u4ef6\u5939\u7684\u6570\u636e\u5e93\u76ee\u5f55\u5931\u8d25"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v2, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->cloudUploadSql:Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1f

    if-nez v1, :cond_e

    :try_start_7
    new-instance v1, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;

    invoke-direct {v1}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;-><init>()V

    sput-object v1, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->cloudUploadSql:Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_1f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_12

    :cond_e
    :try_start_e
    sget-object v1, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->cloudUploadSql:Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_1f

    monitor-exit v2

    return-object v1

    :catch_12
    move-exception v0

    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v3, "\u65e0\u6cd5\u6253\u5f00\u4e0a\u4f20\u7167\u7247\u7684\u6570\u636e\u5e93"

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getPhotoTime(Ljava/lang/String;)J
    .registers 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    const-wide/16 v10, 0x3e8

    const-string/jumbo v6, "_"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const-string/jumbo v7, "."

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss-SSS"

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v4, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :try_start_20
    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8
    :try_end_32
    .catch Ljava/text/ParseException; {:try_start_20 .. :try_end_32} :catch_33

    :goto_32
    return-wide v6

    :catch_33
    move-exception v2

    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    div-long/2addr v6, v10

    goto :goto_32
.end method

.method private isNeedUpload(Ljava/lang/String;)Z
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "c360"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "org.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v0, 0x0

    :cond_2f
    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x1

    goto :goto_2f
.end method


# virtual methods
.method public declared-synchronized deleteAllErrorLog()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "delete from `error_log_table`"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_c} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_16

    :goto_c
    monitor-exit p0

    return-void

    :catch_e
    move-exception v0

    :try_start_f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_c

    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_16
    move-exception v0

    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_13

    goto :goto_c
.end method

.method public declared-synchronized deleteDayComplete(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "delete from `daycomplete_table` where `user_id`=? and `date`=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_13} :catch_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_1e

    const/4 v1, 0x1

    :goto_14
    monitor-exit p0

    return v1

    :catch_16
    move-exception v0

    :try_start_17
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_14

    :catchall_1b
    move-exception v2

    monitor-exit p0

    throw v2

    :catch_1e
    move-exception v0

    :try_start_1f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_1b

    goto :goto_14
.end method

.method public declared-synchronized deleteNeedUpload(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "delete from `need_upload_table` where `user_id` = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_f} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_19

    :goto_f
    monitor-exit p0

    return-void

    :catch_11
    move-exception v0

    :try_start_12
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_f

    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_19
    move-exception v0

    :try_start_1a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_16

    goto :goto_f
.end method

.method public declared-synchronized deleteNeedUpload(Ljava/lang/String;J)V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "delete from `need_upload_table` where `user_id` = ? and `crc32` = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_16} :catch_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_20

    :goto_16
    monitor-exit p0

    return-void

    :catch_18
    move-exception v0

    :try_start_19
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_16

    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_20
    move-exception v0

    :try_start_21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_1d

    goto :goto_16
.end method

.method public declared-synchronized deleteNeedUploadForCrc32s(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "delete from `need_upload_table` where `user_id` = ? and `crc32` in("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_24} :catch_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_2f

    const/4 v1, 0x1

    :goto_25
    monitor-exit p0

    return v1

    :catch_27
    move-exception v0

    :try_start_28
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_25

    :catchall_2c
    move-exception v2

    monitor-exit p0

    throw v2

    :catch_2f
    move-exception v0

    :try_start_30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_2c

    goto :goto_25
.end method

.method public declared-synchronized deleteNeedUploadWherePath(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "delete from `need_upload_table` where `user_id` = ? and `path` = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_12} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_1c

    :goto_12
    monitor-exit p0

    return-void

    :catch_14
    move-exception v0

    :try_start_15
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_12

    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_1c
    move-exception v0

    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_19

    goto :goto_12
.end method

.method public declared-synchronized getErrorLogCount()I
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    iget-object v3, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "select count(*)  count from `error_log_table`"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string/jumbo v3, "count"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_3c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_1d} :catch_25
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_32

    move-result v0

    :cond_1e
    if-eqz v1, :cond_23

    :try_start_20
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_2f

    :cond_23
    :goto_23
    monitor-exit p0

    return v0

    :catch_25
    move-exception v2

    :try_start_26
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_3c

    if-eqz v1, :cond_23

    :try_start_2b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_23

    :catchall_2f
    move-exception v3

    monitor-exit p0

    throw v3

    :catch_32
    move-exception v2

    :try_start_33
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3c

    if-eqz v1, :cond_23

    :try_start_38
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_23

    :catchall_3c
    move-exception v3

    if-eqz v1, :cond_42

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_42
    throw v3
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_2f
.end method

.method public declared-synchronized getNeedUpload(Ljava/lang/String;)Lcom/pinguo/camera360/cloud/struct/UploadStruct;
    .registers 23

    monitor-enter p0

    const/4 v9, 0x0

    const/4 v5, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v17, v0

    const-string/jumbo v18, "select distinct * from `need_upload_table` where `user_id` =  ? and `status` = 0 order by `time_token` desc"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object p1, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_e8

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_e8

    const-string/jumbo v17, "path"

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v17, "type"

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    const-string/jumbo v17, "time_token"

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string/jumbo v17, "crc32"

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v17, "model"

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v17, "effect"

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v17, "date"

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    new-instance v10, Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;-><init>(Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_118
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_6e} :catch_f5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6e} :catch_108

    :try_start_6e
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v10, v0, v1}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->setTokenMillis(J)V

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v10, v0, v1}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->setCRC32(J)V

    move/from16 v0, v16

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->setType(Ljava/lang/String;)V

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->setCameraModel(Ljava/lang/String;)V

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->setEffectParam(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->setDate(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->getTokenMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->setContentId(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->getFilePath()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCRC32forFile(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v14, "update `need_upload_table` set `status` = 1, `crc32` = ? where `user_id` = ? and `crc32` = ?"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v12, v0, [Ljava/lang/Object;

    const/16 v17, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v12, v17

    const/16 v17, 0x1

    aput-object p1, v12, v17

    const/16 v17, 0x2

    invoke-virtual {v10}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->getCRC32()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v12, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e7
    .catchall {:try_start_6e .. :try_end_e7} :catchall_125
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6e .. :try_end_e7} :catch_12b
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_e7} :catch_128

    move-object v9, v10

    :cond_e8
    if-eqz v5, :cond_f3

    :try_start_ea
    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v17

    if-nez v17, :cond_f3

    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_f3
    .catchall {:try_start_ea .. :try_end_f3} :catchall_105

    :cond_f3
    :goto_f3
    monitor-exit p0

    return-object v9

    :catch_f5
    move-exception v7

    :goto_f6
    :try_start_f6
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_f9
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_118

    if-eqz v5, :cond_f3

    :try_start_fb
    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v17

    if-nez v17, :cond_f3

    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_104
    .catchall {:try_start_fb .. :try_end_104} :catchall_105

    goto :goto_f3

    :catchall_105
    move-exception v17

    monitor-exit p0

    throw v17

    :catch_108
    move-exception v7

    :goto_109
    :try_start_109
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10c
    .catchall {:try_start_109 .. :try_end_10c} :catchall_118

    if-eqz v5, :cond_f3

    :try_start_10e
    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v17

    if-nez v17, :cond_f3

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_f3

    :catchall_118
    move-exception v17

    :goto_119
    if-eqz v5, :cond_124

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v18

    if-nez v18, :cond_124

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_124
    throw v17
    :try_end_125
    .catchall {:try_start_10e .. :try_end_125} :catchall_105

    :catchall_125
    move-exception v17

    move-object v9, v10

    goto :goto_119

    :catch_128
    move-exception v7

    move-object v9, v10

    goto :goto_109

    :catch_12b
    move-exception v7

    move-object v9, v10

    goto :goto_f6
.end method

.method public declared-synchronized getNeedUploadCount(Ljava/lang/String;)I
    .registers 9

    monitor-enter p0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_3
    iget-object v3, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "select count(1) as `result` from `need_upload_table` where `user_id` = ? and `status` = 0"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3f

    const-string/jumbo v3, "result"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3f

    const-string/jumbo v3, "result"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_74
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_31} :catch_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_31} :catch_54
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_31} :catch_64

    move-result v2

    :goto_32
    if-eqz v0, :cond_3d

    :try_start_34
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_51

    :cond_3d
    :goto_3d
    monitor-exit p0

    return v2

    :cond_3f
    const/4 v2, 0x0

    goto :goto_32

    :catch_41
    move-exception v1

    :try_start_42
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_74

    if-eqz v0, :cond_3d

    :try_start_47
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_51

    goto :goto_3d

    :catchall_51
    move-exception v3

    monitor-exit p0

    throw v3

    :catch_54
    move-exception v1

    :try_start_55
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_74

    if-eqz v0, :cond_3d

    :try_start_5a
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_63
    .catchall {:try_start_5a .. :try_end_63} :catchall_51

    goto :goto_3d

    :catch_64
    move-exception v1

    :try_start_65
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_74

    if-eqz v0, :cond_3d

    :try_start_6a
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3d

    :catchall_74
    move-exception v3

    if-eqz v0, :cond_80

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_80

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_80
    throw v3
    :try_end_81
    .catchall {:try_start_6a .. :try_end_81} :catchall_51
.end method

.method public declared-synchronized getNeedUploadCountByDate(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pinguo/camera360/cloud/struct/DayInformation;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_3
    iget-object v8, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v9, "select `date`,count(`date`) as `count` from `need_upload_table` where `user_id` =  ? group by `date`"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4c

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_4c

    const-string/jumbo v8, "date"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v8, "count"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_7c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_2d} :catch_59
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2d} :catch_6c

    const/4 v5, 0x0

    const/4 v2, 0x0

    :cond_2f
    :try_start_2f
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/pinguo/camera360/cloud/struct/DayInformation;

    invoke-direct {v5}, Lcom/pinguo/camera360/cloud/struct/DayInformation;-><init>()V

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/pinguo/camera360/cloud/struct/DayInformation;->setUploadNeedCount(I)V

    invoke-virtual {v5, v2}, Lcom/pinguo/camera360/cloud/struct/DayInformation;->setDate(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_48
    .catchall {:try_start_2f .. :try_end_48} :catchall_89
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2f .. :try_end_48} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_48} :catch_8c

    move-result v8

    if-nez v8, :cond_2f

    move-object v6, v7

    :cond_4c
    if-eqz v1, :cond_57

    :try_start_4e
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_57

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_69

    :cond_57
    :goto_57
    monitor-exit p0

    return-object v6

    :catch_59
    move-exception v4

    :goto_5a
    :try_start_5a
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_7c

    if-eqz v1, :cond_57

    :try_start_5f
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_57

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_68
    .catchall {:try_start_5f .. :try_end_68} :catchall_69

    goto :goto_57

    :catchall_69
    move-exception v8

    monitor-exit p0

    throw v8

    :catch_6c
    move-exception v4

    :goto_6d
    :try_start_6d
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_7c

    if-eqz v1, :cond_57

    :try_start_72
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_57

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_57

    :catchall_7c
    move-exception v8

    :goto_7d
    if-eqz v1, :cond_88

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_88

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_88
    throw v8
    :try_end_89
    .catchall {:try_start_72 .. :try_end_89} :catchall_69

    :catchall_89
    move-exception v8

    move-object v6, v7

    goto :goto_7d

    :catch_8c
    move-exception v4

    move-object v6, v7

    goto :goto_6d

    :catch_8f
    move-exception v4

    move-object v6, v7

    goto :goto_5a
.end method

.method public declared-synchronized getNeedUploadDate(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_4c

    const/4 v0, 0x0

    :try_start_7
    iget-object v4, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "select time_token from `need_upload_table` where `user_id` = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string/jumbo v4, "time_token"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    :goto_1d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_6f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_20} :catch_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_20} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_20} :catch_5f

    move-result v4

    if-nez v4, :cond_30

    if-eqz v0, :cond_2e

    :try_start_25
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2e

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_4c

    :cond_2e
    :goto_2e
    monitor-exit p0

    return-object v2

    :cond_30
    :try_start_30
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_6f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_30 .. :try_end_3b} :catch_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_3b} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3b} :catch_5f

    goto :goto_1d

    :catch_3c
    move-exception v1

    :try_start_3d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_6f

    if-eqz v0, :cond_2e

    :try_start_42
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2e

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_4c

    goto :goto_2e

    :catchall_4c
    move-exception v4

    monitor-exit p0

    throw v4

    :catch_4f
    move-exception v1

    :try_start_50
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_6f

    if-eqz v0, :cond_2e

    :try_start_55
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2e

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_4c

    goto :goto_2e

    :catch_5f
    move-exception v1

    :try_start_60
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_6f

    if-eqz v0, :cond_2e

    :try_start_65
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2e

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2e

    :catchall_6f
    move-exception v4

    if-eqz v0, :cond_7b

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_7b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7b
    throw v4
    :try_end_7c
    .catchall {:try_start_65 .. :try_end_7c} :catchall_4c
.end method

.method public declared-synchronized getNeedUploadI(Ljava/lang/String;)Lcom/pinguo/camera360/cloud/struct/UploadStruct;
    .registers 17

    monitor-enter p0

    const/4 v5, 0x0

    const/4 v1, 0x0

    :try_start_3
    iget-object v11, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v12, "select distinct * from `need_upload_table` where `user_id` =  ? and `status` = 0 order by `time_token` desc limit 0,1"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_8a

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_8a

    const-string/jumbo v11, "path"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v11, "type"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "time_token"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v11, "crc32"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v11, "model"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v11, "effect"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v11, "date"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    new-instance v6, Lcom/pinguo/camera360/cloud/struct/UploadStruct;

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;-><init>(Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_ba
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_54} :catch_97
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_54} :catch_aa

    :try_start_54
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->setTokenMillis(J)V

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->setCRC32(J)V

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->setType(Ljava/lang/String;)V

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->setCameraModel(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->setEffectParam(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->setDate(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->getTokenMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->setContentId(Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_54 .. :try_end_89} :catchall_c7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_54 .. :try_end_89} :catch_cd
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_89} :catch_ca

    move-object v5, v6

    :cond_8a
    if-eqz v1, :cond_95

    :try_start_8c
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_95

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_95
    .catchall {:try_start_8c .. :try_end_95} :catchall_a7

    :cond_95
    :goto_95
    monitor-exit p0

    return-object v5

    :catch_97
    move-exception v3

    :goto_98
    :try_start_98
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_ba

    if-eqz v1, :cond_95

    :try_start_9d
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_95

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a6
    .catchall {:try_start_9d .. :try_end_a6} :catchall_a7

    goto :goto_95

    :catchall_a7
    move-exception v11

    monitor-exit p0

    throw v11

    :catch_aa
    move-exception v3

    :goto_ab
    :try_start_ab
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_ba

    if-eqz v1, :cond_95

    :try_start_b0
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_95

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_95

    :catchall_ba
    move-exception v11

    :goto_bb
    if-eqz v1, :cond_c6

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v12

    if-nez v12, :cond_c6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c6
    throw v11
    :try_end_c7
    .catchall {:try_start_b0 .. :try_end_c7} :catchall_a7

    :catchall_c7
    move-exception v11

    move-object v5, v6

    goto :goto_bb

    :catch_ca
    move-exception v3

    move-object v5, v6

    goto :goto_ab

    :catch_cd
    move-exception v3

    move-object v5, v6

    goto :goto_98
.end method

.method public declared-synchronized insertDayComplete(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_2
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_2f

    :try_start_c
    invoke-virtual {v3, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_2f
    .catch Ljava/text/ParseException; {:try_start_c .. :try_end_f} :catch_24

    :try_start_f
    iget-object v4, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "insert into `daycomplete_table`(`user_id`,`date`) values (?,?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_2f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_20} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_20} :catch_32

    const/4 v1, 0x1

    :goto_21
    move v2, v1

    :goto_22
    monitor-exit p0

    return v2

    :catch_24
    move-exception v0

    :try_start_25
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    move v2, v1

    goto :goto_22

    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_2f

    goto :goto_21

    :catchall_2f
    move-exception v4

    monitor-exit p0

    throw v4

    :catch_32
    move-exception v0

    :try_start_33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_2f

    goto :goto_21
.end method

.method public declared-synchronized insertErrorLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 13

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "insert into error_log_table(code,message,token,parameter,url) values(?,?,?,?,?)"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p5, v3, v4

    const/4 v4, 0x4

    aput-object p6, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_26
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1f} :catch_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_29

    :goto_1f
    monitor-exit p0

    return-void

    :catch_21
    move-exception v0

    :try_start_22
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_1f

    :catchall_26
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_29
    move-exception v0

    :try_start_2a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_26

    goto :goto_1f
.end method

.method public declared-synchronized insertExistsExclude(J)V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "insert into `exclude_picture_table`(`crc32`)values(?)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_1d

    :goto_13
    monitor-exit p0

    return-void

    :catch_15
    move-exception v0

    :try_start_16
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_13

    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_1d
    move-exception v0

    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_1a

    goto :goto_13
.end method

.method public declared-synchronized insertNeedUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p2}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->isNeedUpload(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_36

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    invoke-direct {p0, p2}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->getPhotoTime(Ljava/lang/String;)J
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_36

    move-result-wide p4

    const-wide/16 v3, 0x0

    cmp-long v3, p6, v3

    if-eqz v3, :cond_7

    const/4 v1, 0x0

    :try_start_14
    iget-object v3, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "select crc32 from `need_upload_table` where `user_id` = ? and `crc32` = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_2d
    .catchall {:try_start_14 .. :try_end_2d} :catchall_7e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_2d} :catch_39
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2d} :catch_74

    move-result v0

    if-lez v0, :cond_85

    if-eqz v1, :cond_7

    :try_start_32
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_7

    :catchall_36
    move-exception v3

    monitor-exit p0

    throw v3

    :catch_39
    move-exception v2

    :try_start_3a
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_7e

    if-eqz v1, :cond_42

    :try_start_3f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_36

    :cond_42
    :goto_42
    :try_start_42
    iget-object v3, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "insert into `need_upload_table`(`user_id`,`path`,`type`,`time_token`,`crc32`,`model`,`effect`,`date`,`status`)values(?,?,?,?,?,?,?,?,0)"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    aput-object p8, v5, v6

    const/4 v6, 0x6

    aput-object p9, v5, v6

    const/4 v6, 0x7

    aput-object p10, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6e
    .catchall {:try_start_42 .. :try_end_6e} :catchall_36
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_42 .. :try_end_6e} :catch_6f
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_6e} :catch_8b

    goto :goto_7

    :catch_6f
    move-exception v2

    :try_start_70
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_36

    goto :goto_7

    :catch_74
    move-exception v2

    :try_start_75
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_7e

    if-eqz v1, :cond_42

    :try_start_7a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_42

    :catchall_7e
    move-exception v3

    if-eqz v1, :cond_84

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_84
    throw v3

    :cond_85
    if-eqz v1, :cond_42

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_42

    :catch_8b
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8f
    .catchall {:try_start_7a .. :try_end_8f} :catchall_36

    goto/16 :goto_7
.end method

.method public declared-synchronized insertUploadedFileCRC32(Ljava/lang/String;JLjava/lang/String;)V
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "insert into `uploaded_recorder_table`(`user_id`,`crc32`,`server_id`)values(?,?,?)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_19} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_23

    :goto_19
    monitor-exit p0

    return-void

    :catch_1b
    move-exception v0

    :try_start_1c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_19

    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_23
    move-exception v0

    :try_start_24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_20

    goto :goto_19
.end method

.method public declared-synchronized isExistsCRC32RecorderInDataBase(Ljava/lang/String;J)Z
    .registers 13

    const/4 v2, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_4
    iget-object v4, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "select count(1) as `result` from `uploaded_recorder_table` where `user_id` = ? and `crc32` = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_7d

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7d

    const-string/jumbo v4, "result"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_70
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_2c} :catch_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_2c} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2c} :catch_60

    move-result v4

    if-eqz v4, :cond_7d

    if-eqz v0, :cond_3a

    :try_start_31
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_5d

    :cond_3a
    :goto_3a
    monitor-exit p0

    return v2

    :catch_3c
    move-exception v1

    :try_start_3d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_70

    if-eqz v0, :cond_4b

    :try_start_42
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_5d

    :cond_4b
    :goto_4b
    move v2, v3

    goto :goto_3a

    :catch_4d
    move-exception v1

    :try_start_4e
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_70

    if-eqz v0, :cond_4b

    :try_start_53
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_5d

    goto :goto_4b

    :catchall_5d
    move-exception v2

    monitor-exit p0

    throw v2

    :catch_60
    move-exception v1

    :try_start_61
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_70

    if-eqz v0, :cond_4b

    :try_start_66
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4b

    :catchall_70
    move-exception v2

    if-eqz v0, :cond_7c

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7c
    throw v2

    :cond_7d
    if-eqz v0, :cond_4b

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_88
    .catchall {:try_start_66 .. :try_end_88} :catchall_5d

    goto :goto_4b
.end method

.method public declared-synchronized loadDayComplete(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v4, 0x0

    :try_start_3
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyy-MM-dd"

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v6, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_6b

    :try_start_d
    iget-object v8, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v9, "select distinct `date` from `daycomplete_table` where `user_id` = ? and `date` != ?"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_45

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_7e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_2c} :catch_91
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2c} :catch_6e

    :try_start_2c
    const-string/jumbo v8, "date"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    :cond_33
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_8b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_36} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_36} :catch_8e

    move-result-object v7

    :try_start_37
    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_8b
    .catch Ljava/text/ParseException; {:try_start_37 .. :try_end_3e} :catch_52
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_37 .. :try_end_3e} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3e} :catch_8e

    :goto_3e
    :try_start_3e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_8b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3e .. :try_end_41} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_8e

    move-result v8

    if-nez v8, :cond_33

    move-object v4, v5

    :cond_45
    if-eqz v0, :cond_50

    :try_start_47
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_50

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_6b

    :cond_50
    :goto_50
    monitor-exit p0

    return-object v4

    :catch_52
    move-exception v3

    :try_start_53
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    invoke-virtual {p0, p1, v7}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->deleteDayComplete(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_8b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_53 .. :try_end_59} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_59} :catch_8e

    goto :goto_3e

    :catch_5a
    move-exception v3

    move-object v4, v5

    :goto_5c
    :try_start_5c
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_7e

    if-eqz v0, :cond_50

    :try_start_61
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_50

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6a
    .catchall {:try_start_61 .. :try_end_6a} :catchall_6b

    goto :goto_50

    :catchall_6b
    move-exception v8

    monitor-exit p0

    throw v8

    :catch_6e
    move-exception v3

    :goto_6f
    :try_start_6f
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_7e

    if-eqz v0, :cond_50

    :try_start_74
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_50

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_50

    :catchall_7e
    move-exception v8

    :goto_7f
    if-eqz v0, :cond_8a

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_8a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8a
    throw v8
    :try_end_8b
    .catchall {:try_start_74 .. :try_end_8b} :catchall_6b

    :catchall_8b
    move-exception v8

    move-object v4, v5

    goto :goto_7f

    :catch_8e
    move-exception v3

    move-object v4, v5

    goto :goto_6f

    :catch_91
    move-exception v3

    goto :goto_5c
.end method

.method public declared-synchronized loadExistsExclude()Ljava/util/HashSet;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_3
    iget-object v5, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v6, "select distinct `crc32` from `exclude_picture_table`"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_33

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_63
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_1a} :catch_40
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_53

    :try_start_1a
    const-string/jumbo v5, "crc32"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :cond_21
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_70
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_2f} :catch_76
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2f} :catch_73

    move-result v5

    if-nez v5, :cond_21

    move-object v3, v4

    :cond_33
    if-eqz v1, :cond_3e

    :try_start_35
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_50

    :cond_3e
    :goto_3e
    monitor-exit p0

    return-object v3

    :catch_40
    move-exception v2

    :goto_41
    :try_start_41
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_63

    if-eqz v1, :cond_3e

    :try_start_46
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_50

    goto :goto_3e

    :catchall_50
    move-exception v5

    monitor-exit p0

    throw v5

    :catch_53
    move-exception v2

    :goto_54
    :try_start_54
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_63

    if-eqz v1, :cond_3e

    :try_start_59
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3e

    :catchall_63
    move-exception v5

    :goto_64
    if-eqz v1, :cond_6f

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_6f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6f
    throw v5
    :try_end_70
    .catchall {:try_start_59 .. :try_end_70} :catchall_50

    :catchall_70
    move-exception v5

    move-object v3, v4

    goto :goto_64

    :catch_73
    move-exception v2

    move-object v3, v4

    goto :goto_54

    :catch_76
    move-exception v2

    move-object v3, v4

    goto :goto_41
.end method

.method public declared-synchronized loadUploadedFileCRC32(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_3
    iget-object v5, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v6, "select  `crc32` from `uploaded_recorder_table` where `user_id` = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_38

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_68
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_1f} :catch_45
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1f} :catch_58

    :try_start_1f
    const-string/jumbo v5, "crc32"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :cond_26
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_75
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f .. :try_end_34} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_34} :catch_78

    move-result v5

    if-nez v5, :cond_26

    move-object v3, v4

    :cond_38
    if-eqz v1, :cond_43

    :try_start_3a
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_43

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_55

    :cond_43
    :goto_43
    monitor-exit p0

    return-object v3

    :catch_45
    move-exception v2

    :goto_46
    :try_start_46
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_68

    if-eqz v1, :cond_43

    :try_start_4b
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_43

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_54
    .catchall {:try_start_4b .. :try_end_54} :catchall_55

    goto :goto_43

    :catchall_55
    move-exception v5

    monitor-exit p0

    throw v5

    :catch_58
    move-exception v2

    :goto_59
    :try_start_59
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_68

    if-eqz v1, :cond_43

    :try_start_5e
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_43

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_43

    :catchall_68
    move-exception v5

    :goto_69
    if-eqz v1, :cond_74

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_74

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_74
    throw v5
    :try_end_75
    .catchall {:try_start_5e .. :try_end_75} :catchall_55

    :catchall_75
    move-exception v5

    move-object v3, v4

    goto :goto_69

    :catch_78
    move-exception v2

    move-object v3, v4

    goto :goto_59

    :catch_7b
    move-exception v2

    move-object v3, v4

    goto :goto_46
.end method

.method public declared-synchronized loadUploadedFileCRC32NotDelete(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_3
    iget-object v5, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v6, "select  `crc32` from `uploaded_recorder_table` where `user_id` = ? and `status` = ?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "0"

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3e

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_6e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_25} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_25} :catch_5e

    :try_start_25
    const-string/jumbo v5, "crc32"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :cond_2c
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3a
    .catchall {:try_start_25 .. :try_end_3a} :catchall_7b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_3a} :catch_81
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3a} :catch_7e

    move-result v5

    if-nez v5, :cond_2c

    move-object v3, v4

    :cond_3e
    if-eqz v1, :cond_49

    :try_start_40
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_49

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_5b

    :cond_49
    :goto_49
    monitor-exit p0

    return-object v3

    :catch_4b
    move-exception v2

    :goto_4c
    :try_start_4c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_6e

    if-eqz v1, :cond_49

    :try_start_51
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_49

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_5b

    goto :goto_49

    :catchall_5b
    move-exception v5

    monitor-exit p0

    throw v5

    :catch_5e
    move-exception v2

    :goto_5f
    :try_start_5f
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_6e

    if-eqz v1, :cond_49

    :try_start_64
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_49

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_49

    :catchall_6e
    move-exception v5

    :goto_6f
    if-eqz v1, :cond_7a

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_7a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7a
    throw v5
    :try_end_7b
    .catchall {:try_start_64 .. :try_end_7b} :catchall_5b

    :catchall_7b
    move-exception v5

    move-object v3, v4

    goto :goto_6f

    :catch_7e
    move-exception v2

    move-object v3, v4

    goto :goto_5f

    :catch_81
    move-exception v2

    move-object v3, v4

    goto :goto_4c
.end method

.method public declared-synchronized resetNeedUploadStatus(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "update `need_upload_table` set `status` = 0 where `user_id` = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_f} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_19

    :goto_f
    monitor-exit p0

    return-void

    :catch_11
    move-exception v0

    :try_start_12
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_f

    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_19
    move-exception v0

    :try_start_1a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_16

    goto :goto_f
.end method

.method public declared-synchronized selectErrorLog()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_92

    const/4 v1, 0x0

    :try_start_7
    iget-object v9, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v10, "select * from `error_log_table` group by url"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string/jumbo v9, "code"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v9, "message"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v9, "token"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v9, "parameter"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v9, "url"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    :goto_34
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_a5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_37} :catch_82
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_37} :catch_95

    move-result v9

    if-nez v9, :cond_47

    if-eqz v1, :cond_45

    :try_start_3c
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_45

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_92

    :cond_45
    :goto_45
    monitor-exit p0

    return-object v3

    :cond_47
    :try_start_47
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v9, "code"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "message"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "token"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "parameter"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "url"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_81
    .catchall {:try_start_47 .. :try_end_81} :catchall_a5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_47 .. :try_end_81} :catch_82
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_81} :catch_95

    goto :goto_34

    :catch_82
    move-exception v2

    :try_start_83
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_a5

    if-eqz v1, :cond_45

    :try_start_88
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_45

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_91
    .catchall {:try_start_88 .. :try_end_91} :catchall_92

    goto :goto_45

    :catchall_92
    move-exception v9

    monitor-exit p0

    throw v9

    :catch_95
    move-exception v2

    :try_start_96
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_a5

    if-eqz v1, :cond_45

    :try_start_9b
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_45

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_45

    :catchall_a5
    move-exception v9

    if-eqz v1, :cond_b1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_b1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b1
    throw v9
    :try_end_b2
    .catchall {:try_start_9b .. :try_end_b2} :catchall_92
.end method

.method public declared-synchronized setUploadedFileCRC32(Ljava/lang/String;J)V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "update `uploaded_recorder_table` set `status` = 1 where `user_id` = ? and `crc32` = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_16} :catch_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_20

    :goto_16
    monitor-exit p0

    return-void

    :catch_18
    move-exception v0

    :try_start_19
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_16

    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_20
    move-exception v0

    :try_start_21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_1d

    goto :goto_16
.end method
