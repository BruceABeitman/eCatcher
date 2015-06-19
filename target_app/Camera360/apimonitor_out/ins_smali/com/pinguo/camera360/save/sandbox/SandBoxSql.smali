.class public Lcom/pinguo/camera360/save/sandbox/SandBoxSql;
.super Ljava/lang/Object;
.source "SandBoxSql.java"
.field public static final CAMERA360_TOKENMILLIS:Ljava/lang/String; = "tokenMillis"
.field public static final CAMERA_MODEL:Ljava/lang/String; = "cameramodel"
.field public static final EFFECT_NORMAL:Ljava/lang/String; = "normal"
.field public static final EFFECT_PANORAMA:Ljava/lang/String; = "panorama"
.field public static final EFFECT_SCENE:Ljava/lang/String; = "scene"
.field public static final EFFECT_TYPE:Ljava/lang/String; = "effect"
.field public static final EFFECT_UNKNOW:Ljava/lang/String; = "unknow"
.field public static final EXIF:Ljava/lang/String; = "exif"
.field private static final SHOOT_MODE_BRUST:I = -0xb
.field private static final SHOOT_MODE_PANORAMA:I = -0x14
.field public static final SQL_CAMERA_MODEL:Ljava/lang/String; = "cameraModeIndex"
.field public static final SQL_EFFECT_PARAM:Ljava/lang/String; = "eftParam"
.field public static final SQL_EXIF_PARAM:Ljava/lang/String; = "exif"
.field private static final emCamModeEffect:I = 0x0
.field private static final emCamModeFunny:I = 0x2
.field private static final emCamModeGhost:I = 0x3
.field private static final emCamModeScene:I = 0x1
.field private static final emCamModeTiltShift:I = 0x5
.field private static sandBoxSql:Lcom/pinguo/camera360/save/sandbox/SandBoxSql;
.field private TAG:Ljava/lang/String;
.field private mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;
.field private mSQLOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;
.field private mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;
.method private constructor <init>()V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-class v0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->TAG:Ljava/lang/String;
new-instance v0, Lcom/pinguo/camera360/save/sandbox/SandBoxSqlite;
sget-object v1, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants;->SAND_B0X_DB_PATH:Ljava/lang/String;
const/4 v2, 0x0
const/4 v3, 0x7
invoke-direct {v0, v1, v2, v3}, Lcom/pinguo/camera360/save/sandbox/SandBoxSqlite;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
iput-object v0, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mSQLOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;
iget-object v0, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mSQLOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;
iget-object v0, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mSQLOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;
return-void
.end method
.method private getCameraModelIndex(I)Ljava/lang/String;
.registers 3
sparse-switch p1, :sswitch_data_14
const-string/jumbo v0, "unknow"
:goto_6
return-object v0
:sswitch_7
const-string/jumbo v0, "normal"
goto :goto_6
:sswitch_b
const-string/jumbo v0, "scene"
goto :goto_6
:sswitch_f
const-string/jumbo v0, "panorama"
goto :goto_6
nop
:sswitch_data_14
.sparse-switch
-0x14 -> :sswitch_f
-0xb -> :sswitch_7
0x0 -> :sswitch_7
0x1 -> :sswitch_b
0x2 -> :sswitch_7
0x3 -> :sswitch_7
0x5 -> :sswitch_7
.end sparse-switch
.end method
.method public static declared-synchronized getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;
.registers 4
const-class v2, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;
monitor-enter v2
:try_start_3
sget-object v1, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->sandBoxSql:Lcom/pinguo/camera360/save/sandbox/SandBoxSql;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_1f
if-nez v1, :cond_e
:try_start_7
new-instance v1, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;
invoke-direct {v1}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;-><init>()V
sput-object v1, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->sandBoxSql:Lcom/pinguo/camera360/save/sandbox/SandBoxSql;
:cond_e
:try_start_e
:try_end_e
.catchall {:try_start_7 .. :try_end_e} :catchall_1f
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_12
sget-object v1, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->sandBoxSql:Lcom/pinguo/camera360/save/sandbox/SandBoxSql;
:try_end_10
.catchall {:try_start_e .. :try_end_10} :catchall_1f
monitor-exit v2
return-object v1
:catch_12
move-exception v0
:try_start_13
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
new-instance v1, Ljava/lang/Exception;
const-string/jumbo v3, "\u65e0\u6cd5\u6253\u5f00\u6570\u636e\u5e93"
invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v1
:try_end_1f
.catchall {:try_start_13 .. :try_end_1f} :catchall_1f
:catchall_1f
move-exception v1
monitor-exit v2
throw v1
.end method
.method public declared-synchronized delete(J)I
.registers 12
monitor-enter p0
const/4 v1, 0x0
:try_start_2
iget-object v3, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v4, "photoproject"
const-string/jumbo v5, "tokenMillis=?"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/String;
const/4 v7, 0x0
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v8
aput-object v8, v6, v7
invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
move-result v1
iget-object v3, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "delete ret = "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_end_2d
.catchall {:try_start_2 .. :try_end_2d} :catchall_3b
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_30
move v2, v1
:goto_2e
monitor-exit p0
return v2
:catch_30
move-exception v0
:try_start_31
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
iget-object v3, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->TAG:Ljava/lang/String;
invoke-static {v3, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_39
.catchall {:try_start_31 .. :try_end_39} :catchall_3b
move v2, v1
goto :goto_2e
:catchall_3b
move-exception v3
monitor-exit p0
throw v3
.end method
.method public declared-synchronized delete(Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;)I
.registers 9
monitor-enter p0
if-nez p1, :cond_f
:try_start_3
new-instance v0, Ljava/lang/RuntimeException;
const-string/jumbo v1, "Camera360 SandBox delete database with null project"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_c
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_c
move-exception v0
monitor-exit p0
throw v0
:cond_f
:try_start_f
iget-object v0, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v1, "photoproject"
const-string/jumbo v2, "tokenMillis=?"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/String;
const/4 v4, 0x0
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDateTaken()J
move-result-wide v5
invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
:try_end_28
.catchall {:try_start_f .. :try_end_28} :catchall_c
move-result v0
monitor-exit p0
return v0
.end method
.method public declared-synchronized delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;
invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_9
move-result v0
monitor-exit p0
return v0
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized delete(I)Z
.registers 9
monitor-enter p0
const/4 v0, 0x0
:try_start_2
iget-object v2, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
iget-object v2, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v3, "delete from photoproject where id=?"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v2, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
iget-object v2, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:try_end_23
.catchall {:try_start_2 .. :try_end_23} :catchall_2b
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_26
const/4 v0, 0x1
:goto_24
monitor-exit p0
return v0
:catch_26
move-exception v1
:try_start_27
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
:try_end_2a
.catchall {:try_start_27 .. :try_end_2a} :catchall_2b
goto :goto_24
:catchall_2b
move-exception v2
monitor-exit p0
throw v2
.end method
.method public declared-synchronized deleteForPath(Ljava/lang/String;)I
.registers 7
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v1, "photoproject"
const-string/jumbo v2, "effectPhotoSavePath=?"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/String;
const/4 v4, 0x0
aput-object p1, v3, v4
invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
:try_end_12
.catchall {:try_start_1 .. :try_end_12} :catchall_15
move-result v0
monitor-exit p0
return v0
:catchall_15
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized deleteVideo(JLandroid/content/Context;)Z
.registers 12
monitor-enter p0
const/4 v0, 0x0
:try_start_2
iget-object v2, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v3, "videoInfo"
const-string/jumbo v4, "tokenMillis=?"
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/String;
const/4 v6, 0x0
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
:try_end_17
.catchall {:try_start_2 .. :try_end_17} :catchall_1f
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_1a
const/4 v0, 0x1
:goto_18
monitor-exit p0
return v0
:catch_1a
move-exception v1
:try_start_1b
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
:try_end_1e
.catchall {:try_start_1b .. :try_end_1e} :catchall_1f
goto :goto_18
:catchall_1f
move-exception v2
monitor-exit p0
throw v2
.end method
.method public declared-synchronized getAllIdPhotoPath()Ljava/util/ArrayList;
.registers 11
monitor-enter p0
:try_start_1
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_42
const/4 v0, 0x0
:try_start_7
iget-object v5, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v6, "select effectPhotoSavePath from photoproject where cameraModeIndex=? order by tokenMillis DESC;"
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/String;
const/4 v8, 0x0
const/16 v9, 0xf
invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v9
aput-object v9, v7, v8
invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
const-string/jumbo v5, "effectPhotoSavePath"
invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
:goto_23
invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
:try_end_26
.catchall {:try_start_7 .. :try_end_26} :catchall_45
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_26} :catch_38
move-result v5
if-nez v5, :cond_30
if-eqz v0, :cond_2e
:try_start_2b
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:goto_2e
:cond_2e
:try_end_2e
.catchall {:try_start_2b .. :try_end_2e} :catchall_42
monitor-exit p0
return-object v4
:cond_30
:try_start_30
invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_37
.catchall {:try_start_30 .. :try_end_37} :catchall_45
.catch Ljava/lang/Exception; {:try_start_30 .. :try_end_37} :catch_38
goto :goto_23
:catch_38
move-exception v1
:try_start_39
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
:try_end_3c
.catchall {:try_start_39 .. :try_end_3c} :catchall_45
if-eqz v0, :cond_2e
:try_start_3e
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:try_end_41
.catchall {:try_start_3e .. :try_end_41} :catchall_42
goto :goto_2e
:catchall_42
move-exception v5
monitor-exit p0
throw v5
:catchall_45
move-exception v5
if-eqz v0, :cond_4b
:try_start_48
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_4b
throw v5
:try_end_4c
.catchall {:try_start_48 .. :try_end_4c} :catchall_42
.end method
.method public declared-synchronized getCamera360RootPath(Ljava/util/Set;)V
.registers 10
monitor-enter p0
const/4 v0, 0x0
:try_start_2
iget-object v5, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v6, "select effectPhotoSavePath path from photoproject"
const/4 v7, 0x0
invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
if-eqz v0, :cond_36
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v5
if-eqz v5, :cond_36
const-string/jumbo v5, "path"
invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v4
:cond_1b
invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_30
const/4 v5, 0x0
const-string/jumbo v6, "/"
invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v6
invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:cond_30
invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
:try_end_33
.catchall {:try_start_2 .. :try_end_33} :catchall_66
.catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_33} :catch_43
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_33} :catch_56
move-result v5
if-nez v5, :cond_1b
:cond_36
if-eqz v0, :cond_41
:try_start_38
invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
move-result v5
if-nez v5, :cond_41
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:try_end_41
.catchall {:try_start_38 .. :try_end_41} :catchall_53
:goto_41
:cond_41
monitor-exit p0
return-void
:catch_43
move-exception v1
:try_start_44
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
:try_end_47
.catchall {:try_start_44 .. :try_end_47} :catchall_66
if-eqz v0, :cond_41
:try_start_49
invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
move-result v5
if-nez v5, :cond_41
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:try_end_52
.catchall {:try_start_49 .. :try_end_52} :catchall_53
goto :goto_41
:catchall_53
move-exception v5
monitor-exit p0
throw v5
:catch_56
move-exception v1
:try_start_57
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
:try_end_5a
.catchall {:try_start_57 .. :try_end_5a} :catchall_66
if-eqz v0, :cond_41
:try_start_5c
invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
move-result v5
if-nez v5, :cond_41
invoke-interface {v0}, Landroid/database/Cursor;->close()V
goto :goto_41
:catchall_66
move-exception v5
if-eqz v0, :cond_72
invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
move-result v6
if-nez v6, :cond_72
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_72
throw v5
:try_end_73
.catchall {:try_start_5c .. :try_end_73} :catchall_53
.end method
.method public getLastPhotoTakenTime()J
.registers 11
const/4 v0, 0x0
const-wide/16 v2, 0x0
:try_start_3
iget-object v7, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v8, "select tokenMillis from photoproject order by tokenMillis desc limit 0,1"
const/4 v9, 0x0
invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
const-string/jumbo v7, "tokenMillis"
invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v6
:goto_14
invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
:try_end_17
.catchall {:try_start_3 .. :try_end_17} :catchall_31
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_26
move-result v7
if-nez v7, :cond_21
if-eqz v0, :cond_1f
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_1f
move-wide v4, v2
:goto_20
return-wide v4
:cond_21
:try_start_21
invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J
:try_end_24
.catchall {:try_start_21 .. :try_end_24} :catchall_31
.catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_26
move-result-wide v2
goto :goto_14
:catch_26
move-exception v1
:try_start_27
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
:try_end_2a
.catchall {:try_start_27 .. :try_end_2a} :catchall_31
if-eqz v0, :cond_2f
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_2f
move-wide v4, v2
goto :goto_20
:catchall_31
move-exception v7
if-eqz v0, :cond_37
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_37
throw v7
.end method
.method public declared-synchronized getLocationFromPath(Ljava/lang/String;)Landroid/location/Location;
.registers 9
monitor-enter p0
const/4 v0, 0x0
:try_start_2
new-instance v2, Landroid/location/Location;
const-string/jumbo v3, ""
invoke-static {v3}, Ldroidbox/android/location/Location;->droidbox_cons(Ljava/lang/String;)V
invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V
:try_start_a
:try_end_a
.catchall {:try_start_2 .. :try_end_a} :catchall_4e
iget-object v3, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v4, "select lat,lon from photoproject where effectPhotoSavePath=? order by tokenMillis DESC;"
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/String;
const/4 v6, 0x0
aput-object p1, v5, v6
invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
if-eqz v0, :cond_3d
invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
move-result v3
if-eqz v3, :cond_3d
const-string/jumbo v3, "lat"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getDouble(I)D
move-result-wide v3
invoke-static {v2, v3, v4}, Ldroidbox/android/location/Location;->setLatitude(Landroid/location/Location;D)V
const-string/jumbo v3, "lon"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getDouble(I)D
move-result-wide v3
invoke-static {v2, v3, v4}, Ldroidbox/android/location/Location;->setLongitude(Landroid/location/Location;D)V
:try_end_3d
.catchall {:try_start_a .. :try_end_3d} :catchall_51
.catch Ljava/lang/Exception; {:try_start_a .. :try_end_3d} :catch_44
:cond_3d
if-eqz v0, :cond_42
:try_start_3f
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:try_end_42
.catchall {:try_start_3f .. :try_end_42} :catchall_4e
:cond_42
:goto_42
monitor-exit p0
return-object v2
:catch_44
move-exception v1
:try_start_45
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
:try_end_48
.catchall {:try_start_45 .. :try_end_48} :catchall_51
if-eqz v0, :cond_42
:try_start_4a
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:try_end_4d
.catchall {:try_start_4a .. :try_end_4d} :catchall_4e
goto :goto_42
:catchall_4e
move-exception v3
monitor-exit p0
throw v3
:catchall_51
move-exception v3
if-eqz v0, :cond_57
:try_start_54
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_57
throw v3
:try_end_58
.catchall {:try_start_54 .. :try_end_58} :catchall_4e
.end method
.method public declared-synchronized getOrgPictureByFileNameForCamera360DataBase(Ljava/lang/String;)J
.registers 10
monitor-enter p0
const-wide/16 v2, 0x0
const/4 v0, 0x0
:try_start_4
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object p1
iget-object v4, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v5, "select `tokenMillis` from `photoproject` where `effectPhotoSavePath` = ? COLLATE NOCASE"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/String;
const/4 v7, 0x0
aput-object p1, v6, v7
invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
if-eqz v0, :cond_2a
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v4
if-eqz v4, :cond_2a
const-string/jumbo v4, "tokenMillis"
invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v4
invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
:try_end_29
.catchall {:try_start_4 .. :try_end_29} :catchall_5a
.catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_29} :catch_37
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_29} :catch_4a
move-result-wide v2
:cond_2a
if-eqz v0, :cond_35
:try_start_2c
invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
move-result v4
if-nez v4, :cond_35
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:goto_35
:cond_35
:try_end_35
.catchall {:try_start_2c .. :try_end_35} :catchall_47
monitor-exit p0
return-wide v2
:catch_37
move-exception v1
:try_start_38
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
:try_end_3b
.catchall {:try_start_38 .. :try_end_3b} :catchall_5a
if-eqz v0, :cond_35
:try_start_3d
invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
move-result v4
if-nez v4, :cond_35
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:try_end_46
.catchall {:try_start_3d .. :try_end_46} :catchall_47
goto :goto_35
:catchall_47
move-exception v4
monitor-exit p0
throw v4
:catch_4a
move-exception v1
:try_start_4b
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
:try_end_4e
.catchall {:try_start_4b .. :try_end_4e} :catchall_5a
if-eqz v0, :cond_35
:try_start_50
invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
move-result v4
if-nez v4, :cond_35
invoke-interface {v0}, Landroid/database/Cursor;->close()V
goto :goto_35
:catchall_5a
move-exception v4
if-eqz v0, :cond_66
invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
move-result v5
if-nez v5, :cond_66
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_66
throw v4
:try_end_67
.catchall {:try_start_50 .. :try_end_67} :catchall_47
.end method
.method public declared-synchronized getPhotoProjectForTime(J)Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;
.registers 11
monitor-enter p0
const/4 v0, 0x0
:try_start_2
iget-object v3, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v4, "select * from photoproject where tokenMillis=?"
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/String;
const/4 v6, 0x0
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
new-instance v1, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;
invoke-direct {v1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;-><init>()V
const-string/jumbo v3, "pictureType"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v3
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setPhotoType(I)V
const-string/jumbo v3, "cameraModeIndex"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v3
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setCameraModeIndex(I)V
const-string/jumbo v3, "tokenMillis"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
invoke-virtual {v1, v3, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setDateTaken(J)V
new-instance v2, Lcom/pinguo/lib/location/data/PGLocation;
const-string/jumbo v3, "gps"
invoke-direct {v2, v3}, Lcom/pinguo/lib/location/data/PGLocation;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "lat"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getDouble(I)D
move-result-wide v3
invoke-static {v2, v3, v4}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->setLatitude(Lcom/pinguo/lib/location/data/PGLocation;D)V
const-string/jumbo v3, "lon"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getDouble(I)D
move-result-wide v3
invoke-static {v2, v3, v4}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->setLongitude(Lcom/pinguo/lib/location/data/PGLocation;D)V
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setLocation(Lcom/pinguo/lib/location/data/PGLocation;)V
const-string/jumbo v3, "failCount"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v3
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setTryCount(I)V
const-string/jumbo v3, "exif"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setExif(Ljava/lang/String;)V
const-string/jumbo v3, "projectState"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setProjectState(Ljava/lang/String;)V
const-string/jumbo v3, "direct"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v3
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setOrientation(I)V
const-string/jumbo v3, "width"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v3
iput v3, v1, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->width:I
const-string/jumbo v3, "height"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v3
iput v3, v1, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->height:I
const-string/jumbo v3, "costMillis"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
invoke-virtual {v1, v3, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setElapsedTime(J)V
const-string/jumbo v3, "effectPhotoSavePath"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setDestPath(Ljava/lang/String;)V
const-string/jumbo v3, "projectVersionCode"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setVersion(Ljava/lang/String;)V
const-string/jumbo v3, "eftAlias"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setEffectAlias(Ljava/lang/String;)V
const-string/jumbo v3, "eftAppendix"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setEffectAppendix(Ljava/lang/String;)V
sget-object v3, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->photo_org:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
invoke-virtual {v1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDateTaken()J
move-result-wide v4
invoke-static {v3, v4, v5}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setSourcePath(Ljava/lang/String;)V
:try_end_113
.catchall {:try_start_2 .. :try_end_113} :catchall_120
if-eqz v0, :cond_11e
:try_start_115
invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
move-result v3
if-nez v3, :cond_11e
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_11e
:try_end_11e
.catchall {:try_start_115 .. :try_end_11e} :catchall_12d
monitor-exit p0
return-object v1
:catchall_120
move-exception v3
if-eqz v0, :cond_12c
:try_start_123
invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
move-result v4
if-nez v4, :cond_12c
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_12c
throw v3
:catchall_12d
:try_end_12d
.catchall {:try_start_123 .. :try_end_12d} :catchall_12d
move-exception v3
monitor-exit p0
throw v3
.end method
.method public declared-synchronized getPictureInformationByPath(Ljava/lang/String;)Ljava/util/Map;
.registers 11
monitor-enter p0
const/4 v2, 0x0
const/4 v0, 0x0
:try_start_3
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object p1
iget-object v5, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v6, "select `cameraModeIndex`,`eftParam`,`exif` from `photoproject` where `effectPhotoSavePath` = ? COLLATE NOCASE"
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/String;
const/4 v8, 0x0
aput-object p1, v7, v8
invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
if-eqz v0, :cond_5b
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v5
if-eqz v5, :cond_5b
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
:try_start_23
:try_end_23
.catchall {:try_start_3 .. :try_end_23} :catchall_8b
.catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_23} :catch_68
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_7b
const-string/jumbo v5, "cameraModeIndex"
invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v5
invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
move-result v5
invoke-direct {p0, v5}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getCameraModelIndex(I)Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, "cameramodel"
invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v5, "effect"
const-string/jumbo v6, "eftParam"
invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v6
invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v5, "exif"
const-string/jumbo v6, "exif"
invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v6
invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_5a
.catchall {:try_start_23 .. :try_end_5a} :catchall_98
.catch Landroid/database/sqlite/SQLiteException; {:try_start_23 .. :try_end_5a} :catch_9e
.catch Ljava/lang/Exception; {:try_start_23 .. :try_end_5a} :catch_9b
move-object v2, v3
:cond_5b
if-eqz v0, :cond_66
:try_start_5d
invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
move-result v5
if-nez v5, :cond_66
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:try_end_66
.catchall {:try_start_5d .. :try_end_66} :catchall_78
:cond_66
:goto_66
monitor-exit p0
return-object v2
:catch_68
move-exception v1
:goto_69
:try_start_69
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
:try_end_6c
.catchall {:try_start_69 .. :try_end_6c} :catchall_8b
if-eqz v0, :cond_66
:try_start_6e
invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
move-result v5
if-nez v5, :cond_66
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:try_end_77
.catchall {:try_start_6e .. :try_end_77} :catchall_78
goto :goto_66
:catchall_78
move-exception v5
monitor-exit p0
throw v5
:catch_7b
move-exception v1
:try_start_7c
:goto_7c
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
:try_end_7f
.catchall {:try_start_7c .. :try_end_7f} :catchall_8b
if-eqz v0, :cond_66
:try_start_81
invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
move-result v5
if-nez v5, :cond_66
invoke-interface {v0}, Landroid/database/Cursor;->close()V
goto :goto_66
:catchall_8b
move-exception v5
:goto_8c
if-eqz v0, :cond_97
invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
move-result v6
if-nez v6, :cond_97
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_97
throw v5
:try_end_98
.catchall {:try_start_81 .. :try_end_98} :catchall_78
:catchall_98
move-exception v5
move-object v2, v3
goto :goto_8c
:catch_9b
move-exception v1
move-object v2, v3
goto :goto_7c
:catch_9e
move-exception v1
move-object v2, v3
goto :goto_69
.end method
.method public declared-synchronized getTakenTimeFromPath(Ljava/lang/String;)J
.registers 10
monitor-enter p0
const/4 v0, 0x0
const-wide/16 v2, 0x0
:try_start_4
iget-object v4, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v5, "select tokenMillis from photoproject where effectPhotoSavePath=? order by tokenMillis DESC;"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/String;
const/4 v7, 0x0
aput-object p1, v6, v7
invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
if-eqz v0, :cond_26
invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
move-result v4
if-eqz v4, :cond_26
const-string/jumbo v4, "tokenMillis"
invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v4
invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
:try_end_25
.catchall {:try_start_4 .. :try_end_25} :catchall_3a
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_2d
move-result-wide v2
:cond_26
if-eqz v0, :cond_2b
:try_start_28
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:goto_2b
:try_end_2b
.catchall {:try_start_28 .. :try_end_2b} :catchall_37
:cond_2b
monitor-exit p0
return-wide v2
:catch_2d
move-exception v1
:try_start_2e
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
:try_end_31
.catchall {:try_start_2e .. :try_end_31} :catchall_3a
if-eqz v0, :cond_2b
:try_start_33
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:try_end_36
.catchall {:try_start_33 .. :try_end_36} :catchall_37
goto :goto_2b
:catchall_37
move-exception v4
monitor-exit p0
throw v4
:catchall_3a
move-exception v4
if-eqz v0, :cond_40
:try_start_3d
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_40
throw v4
:try_end_41
.catchall {:try_start_3d .. :try_end_41} :catchall_37
.end method
.method public declared-synchronized getUnFinishItems()Ljava/util/List;
.registers 16
const/4 v14, 0x2
monitor-enter p0
:try_start_2
new-instance v12, Ljava/util/ArrayList;
invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
const/16 v0, 0x12
new-array v2, v0, [Ljava/lang/String;
const/4 v0, 0x0
const-string/jumbo v1, "cameraModeIndex"
aput-object v1, v2, v0
const/4 v0, 0x1
const-string/jumbo v1, "tokenMillis"
aput-object v1, v2, v0
const/4 v0, 0x2
const-string/jumbo v1, "lat"
aput-object v1, v2, v0
const/4 v0, 0x3
const-string/jumbo v1, "lon"
aput-object v1, v2, v0
const/4 v0, 0x4
const-string/jumbo v1, "eftParam"
aput-object v1, v2, v0
const/4 v0, 0x5
const-string/jumbo v1, "failCount"
aput-object v1, v2, v0
const/4 v0, 0x6
const-string/jumbo v1, "exif"
aput-object v1, v2, v0
const/4 v0, 0x7
const-string/jumbo v1, "projectState"
aput-object v1, v2, v0
const/16 v0, 0x8
const-string/jumbo v1, "direct"
aput-object v1, v2, v0
const/16 v0, 0x9
const-string/jumbo v1, "width"
aput-object v1, v2, v0
const/16 v0, 0xa
const-string/jumbo v1, "height"
aput-object v1, v2, v0
const/16 v0, 0xb
const-string/jumbo v1, "costMillis"
aput-object v1, v2, v0
const/16 v0, 0xc
const-string/jumbo v1, "effectPhotoSavePath"
aput-object v1, v2, v0
const/16 v0, 0xd
const-string/jumbo v1, "projectVersionCode"
aput-object v1, v2, v0
const/16 v0, 0xe
const-string/jumbo v1, "eftAlias"
aput-object v1, v2, v0
const/16 v0, 0xf
const-string/jumbo v1, "eftAppendix"
aput-object v1, v2, v0
const/16 v0, 0x10
const-string/jumbo v1, "pictureType"
aput-object v1, v2, v0
const/16 v0, 0x11
const-string/jumbo v1, "jsonExpand"
aput-object v1, v2, v0
:try_end_81
.catchall {:try_start_2 .. :try_end_81} :catchall_1ac
const/4 v8, 0x0
:try_start_82
iget-object v0, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v1, "photoproject"
const-string/jumbo v3, "projectState=? or projectState=?"
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/String;
const/4 v5, 0x0
const-string/jumbo v6, "editing"
aput-object v6, v4, v5
const/4 v5, 0x1
const-string/jumbo v6, "waiting"
aput-object v6, v4, v5
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v8
:goto_a0
invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
:try_end_a3
.catchall {:try_start_82 .. :try_end_a3} :catchall_19f
move-result v0
if-nez v0, :cond_b3
if-eqz v8, :cond_b1
:try_start_a8
invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z
move-result v0
if-nez v0, :cond_b1
invoke-interface {v8}, Landroid/database/Cursor;->close()V
:cond_b1
:try_end_b1
.catchall {:try_start_a8 .. :try_end_b1} :catchall_1ac
monitor-exit p0
return-object v12
:cond_b3
:try_start_b3
new-instance v9, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;
invoke-direct {v9}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;-><init>()V
const/4 v0, 0x0
invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
invoke-virtual {v9, v0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setCameraModeIndex(I)V
const-string/jumbo v0, "pictureType"
invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
invoke-virtual {v9, v0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setPhotoType(I)V
const/4 v0, 0x1
invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v0
invoke-virtual {v9, v0, v1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setDateTaken(J)V
new-instance v13, Lcom/pinguo/lib/location/data/PGLocation;
const-string/jumbo v0, "gps"
invoke-direct {v13, v0}, Lcom/pinguo/lib/location/data/PGLocation;-><init>(Ljava/lang/String;)V
const/4 v0, 0x2
invoke-interface {v8, v0}, Landroid/database/Cursor;->getDouble(I)D
move-result-wide v0
invoke-static {v13, v0, v1}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->setLatitude(Lcom/pinguo/lib/location/data/PGLocation;D)V
const/4 v0, 0x3
invoke-interface {v8, v0}, Landroid/database/Cursor;->getDouble(I)D
move-result-wide v0
invoke-static {v13, v0, v1}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->setLongitude(Lcom/pinguo/lib/location/data/PGLocation;D)V
invoke-virtual {v9, v13}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setLocation(Lcom/pinguo/lib/location/data/PGLocation;)V
const/4 v0, 0x5
invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
invoke-virtual {v9, v0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setTryCount(I)V
const/4 v0, 0x6
invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v9, v0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setExif(Ljava/lang/String;)V
const/4 v0, 0x7
invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v9, v0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setProjectState(Ljava/lang/String;)V
const/16 v0, 0x8
invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
invoke-virtual {v9, v0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setOrientation(I)V
const/16 v0, 0x9
invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, v9, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->width:I
const/16 v0, 0xa
invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, v9, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->height:I
const/16 v0, 0xb
invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v0
invoke-virtual {v9, v0, v1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setElapsedTime(J)V
const/16 v0, 0xc
invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v9, v0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setDestPath(Ljava/lang/String;)V
const/16 v0, 0xd
invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v9, v0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setVersion(Ljava/lang/String;)V
const-string/jumbo v0, "eftAlias"
invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v9, v0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setEffectAlias(Ljava/lang/String;)V
const-string/jumbo v0, "eftAppendix"
invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v9, v0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setEffectAppendix(Ljava/lang/String;)V
const-string/jumbo v0, "jsonExpand"
invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v9, v0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setJSONExpand(Ljava/lang/String;)V
sget-object v0, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->photo_org:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
invoke-virtual {v9}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDateTaken()J
move-result-wide v3
invoke-static {v0, v3, v4}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;
move-result-object v0
invoke-virtual {v9, v0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setSourcePath(Ljava/lang/String;)V
invoke-virtual {v9}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getPhotoType()I
move-result v0
if-eq v0, v14, :cond_19a
const/4 v0, 0x0
iput-boolean v0, v9, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->isTimeWatermark:Z
invoke-virtual {v9}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getJSONExpand()Ljava/lang/String;
move-result-object v10
if-eqz v10, :cond_19a
const-string/jumbo v0, ""
invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_189
.catchall {:try_start_b3 .. :try_end_189} :catchall_19f
move-result v0
if-nez v0, :cond_19a
:try_start_18c
new-instance v11, Lorg/json/JSONObject;
invoke-direct {v11, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v0, "time_water"
invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, v9, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->isTimeWatermark:Z
:try_end_19a
.catchall {:try_start_18c .. :try_end_19a} :catchall_19f
.catch Ljava/lang/Exception; {:try_start_18c .. :try_end_19a} :catch_1af
:cond_19a
:try_start_19a
:goto_19a
invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_19d
.catchall {:try_start_19a .. :try_end_19d} :catchall_19f
goto/16 :goto_a0
:catchall_19f
move-exception v0
if-eqz v8, :cond_1ab
:try_start_1a2
invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z
move-result v1
if-nez v1, :cond_1ab
invoke-interface {v8}, Landroid/database/Cursor;->close()V
:cond_1ab
throw v0
:catchall_1ac
:try_end_1ac
.catchall {:try_start_1a2 .. :try_end_1ac} :catchall_1ac
move-exception v0
monitor-exit p0
throw v0
:catch_1af
move-exception v0
goto :goto_19a
.end method
.method public declared-synchronized getVideoInfo(J)Lcom/pinguo/camera360/video/VideoInfo;
.registers 11
monitor-enter p0
const/4 v0, 0x0
:try_start_2
new-instance v2, Lcom/pinguo/camera360/video/VideoInfo;
invoke-direct {v2}, Lcom/pinguo/camera360/video/VideoInfo;-><init>()V
:try_start_7
:try_end_7
.catchall {:try_start_2 .. :try_end_7} :catchall_6a
iget-object v3, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v4, "select videofilepath,width,height,videolength from videoInfo where tokenMillis=?"
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/String;
const/4 v6, 0x0
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
:goto_1a
invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
:try_end_1d
.catchall {:try_start_7 .. :try_end_1d} :catchall_6d
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1d} :catch_60
move-result v3
if-nez v3, :cond_27
if-eqz v0, :cond_25
:try_start_22
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:try_end_25
.catchall {:try_start_22 .. :try_end_25} :catchall_6a
:goto_25
:cond_25
monitor-exit p0
return-object v2
:cond_27
:try_start_27
const-string/jumbo v3, "videofilepath"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/video/VideoInfo;->setVideoFilePath(Ljava/lang/String;)V
const-string/jumbo v3, "width"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/video/VideoInfo;->setVideoWidth(Ljava/lang/String;)V
const-string/jumbo v3, "height"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/video/VideoInfo;->setVideoHeight(Ljava/lang/String;)V
const-string/jumbo v3, "videolength"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Lcom/pinguo/camera360/video/VideoInfo;->setVideoLength(J)V
:try_end_5f
.catchall {:try_start_27 .. :try_end_5f} :catchall_6d
.catch Ljava/lang/Exception; {:try_start_27 .. :try_end_5f} :catch_60
goto :goto_1a
:catch_60
move-exception v1
:try_start_61
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
:try_end_64
.catchall {:try_start_61 .. :try_end_64} :catchall_6d
if-eqz v0, :cond_25
:try_start_66
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:try_end_69
.catchall {:try_start_66 .. :try_end_69} :catchall_6a
goto :goto_25
:catchall_6a
move-exception v3
monitor-exit p0
throw v3
:catchall_6d
move-exception v3
if-eqz v0, :cond_73
:try_start_70
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_73
throw v3
:try_end_74
.catchall {:try_start_70 .. :try_end_74} :catchall_6a
.end method
.method public declared-synchronized getVideoPath(J)Ljava/lang/String;
.registers 13
monitor-enter p0
const/4 v0, 0x0
const/4 v2, 0x0
:try_start_3
iget-object v5, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v6, "select videofilepath from videoInfo where tokenMillis=?"
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/String;
const/4 v8, 0x0
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v9
aput-object v9, v7, v8
invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
:goto_16
invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
:try_end_19
.catchall {:try_start_3 .. :try_end_19} :catchall_3b
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_30
move-result v5
if-nez v5, :cond_24
if-eqz v0, :cond_21
:try_start_1e
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_21
:try_end_21
.catchall {:try_start_1e .. :try_end_21} :catchall_42
move-object v3, v2
:goto_22
monitor-exit p0
return-object v3
:cond_24
:try_start_24
const-string/jumbo v5, "videofilepath"
invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v4
invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
:try_end_2e
.catchall {:try_start_24 .. :try_end_2e} :catchall_3b
.catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2e} :catch_30
move-result-object v2
goto :goto_16
:catch_30
move-exception v1
:try_start_31
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
:try_end_34
.catchall {:try_start_31 .. :try_end_34} :catchall_3b
if-eqz v0, :cond_39
:try_start_36
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_39
move-object v3, v2
goto :goto_22
:catchall_3b
move-exception v5
if-eqz v0, :cond_41
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_41
throw v5
:catchall_42
:try_end_42
.catchall {:try_start_36 .. :try_end_42} :catchall_42
move-exception v5
monitor-exit p0
throw v5
.end method
.method public hasPictureInserted(Ljava/lang/String;)Z
.registers 10
const/4 v2, 0x1
const/4 v3, 0x0
const/4 v0, 0x0
:try_start_3
iget-object v4, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v5, "select effectPhotoSavePath from photoproject where effectPhotoSavePath == ? limit 0,1"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/String;
const/4 v7, 0x0
aput-object p1, v6, v7
invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
iget-object v4, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "hasPictureInserted count:"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
move-result v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
:try_end_2e
.catchall {:try_start_3 .. :try_end_2e} :catchall_44
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2e} :catch_39
move-result v4
if-lez v4, :cond_37
:goto_31
if-eqz v0, :cond_36
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:goto_36
:cond_36
return v2
:cond_37
move v2, v3
goto :goto_31
:catch_39
move-exception v1
:try_start_3a
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
:try_end_3d
.catchall {:try_start_3a .. :try_end_3d} :catchall_44
if-eqz v0, :cond_42
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_42
move v2, v3
goto :goto_36
:catchall_44
move-exception v2
if-eqz v0, :cond_4a
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_4a
throw v2
.end method
.method public declared-synchronized insert(Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;)J
.registers 10
monitor-enter p0
if-nez p1, :cond_f
:try_start_3
new-instance v5, Ljava/lang/RuntimeException;
const-string/jumbo v6, "Camera360 SandBox insert database with null project"
invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v5
:catchall_c
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_c
move-exception v5
monitor-exit p0
throw v5
:cond_f
:try_start_f
new-instance v4, Landroid/content/ContentValues;
invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v5, "cameraModeIndex"
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getCameraMode()I
move-result v6
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v5, "pictureType"
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getPhotoType()I
move-result v6
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v5, "tokenMillis"
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDateTaken()J
move-result-wide v6
invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v5
if-eqz v5, :cond_10d
const-string/jumbo v5, "lat"
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v6
invoke-static {v6}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->getLatitude(Lcom/pinguo/lib/location/data/PGLocation;)D
move-result-wide v6
invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
const-string/jumbo v5, "lon"
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v6
invoke-static {v6}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->getLongitude(Lcom/pinguo/lib/location/data/PGLocation;)D
move-result-wide v6
invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
:goto_68
const-string/jumbo v5, "eftParam"
const-string/jumbo v6, "none"
invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v5, "failCount"
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getTryCount()I
move-result v6
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v5, "projectState"
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getProjectState()Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v5, "direct"
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getOrientation()I
move-result v6
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v5, "width"
iget v6, p1, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->width:I
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v5, "height"
iget v6, p1, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->height:I
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v5, "costMillis"
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getElapsedTime()J
move-result-wide v6
invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string/jumbo v5, "effectPhotoSavePath"
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDestPath()Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v5, "projectVersionCode"
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getVersion()Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v5, "eftAlias"
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getEffectParam()Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v5, "eftAppendix"
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getEffectAppendix()Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getExif()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_f5
const-string/jumbo v5, "exif"
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getExif()Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_f5
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getJSONExpand()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_101
const-string/jumbo v5, "jsonExpand"
invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_101
iget-object v5, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v6, "photoproject"
const/4 v7, 0x0
invoke-virtual {v5, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
:try_end_10a
.catchall {:try_start_f .. :try_end_10a} :catchall_c
move-result-wide v0
monitor-exit p0
return-wide v0
:cond_10d
:try_start_10d
const-string/jumbo v5, "lat"
const/4 v6, 0x0
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v5, "lon"
const/4 v6, 0x0
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
:try_end_123
.catchall {:try_start_10d .. :try_end_123} :catchall_c
goto/16 :goto_68
.end method
.method public declared-synchronized insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;
invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_9
move-result-wide v0
monitor-exit p0
return-wide v0
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized insertVideo(Lcom/pinguo/camera360/video/VideoInfo;)J
.registers 9
monitor-enter p0
if-nez p1, :cond_f
:try_start_3
new-instance v4, Ljava/lang/RuntimeException;
const-string/jumbo v5, "Camera360 SandBox insert database with null project"
invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v4
:catchall_c
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_c
move-exception v4
monitor-exit p0
throw v4
:cond_f
:try_start_f
new-instance v3, Landroid/content/ContentValues;
invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v4, "cameraModeIndex"
invoke-virtual {p1}, Lcom/pinguo/camera360/video/VideoInfo;->getCameraModeIndex()I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v4, "title"
invoke-virtual {p1}, Lcom/pinguo/camera360/video/VideoInfo;->getVideoTitle()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v4, "filename"
invoke-virtual {p1}, Lcom/pinguo/camera360/video/VideoInfo;->getVideoFileName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/video/VideoInfo;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v4
if-eqz v4, :cond_d8
const-string/jumbo v4, "lat"
invoke-virtual {p1}, Lcom/pinguo/camera360/video/VideoInfo;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v5
invoke-static {v5}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->getLatitude(Lcom/pinguo/lib/location/data/PGLocation;)D
move-result-wide v5
invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v5
invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
const-string/jumbo v4, "lon"
invoke-virtual {p1}, Lcom/pinguo/camera360/video/VideoInfo;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v5
invoke-static {v5}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->getLongitude(Lcom/pinguo/lib/location/data/PGLocation;)D
move-result-wide v5
invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v5
invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
:goto_60
const-string/jumbo v4, "tokenMillis"
invoke-virtual {p1}, Lcom/pinguo/camera360/video/VideoInfo;->getVideoTakenTime()J
move-result-wide v5
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string/jumbo v4, "duration"
invoke-virtual {p1}, Lcom/pinguo/camera360/video/VideoInfo;->getVideoTime()J
move-result-wide v5
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string/jumbo v4, "videolength"
invoke-virtual {p1}, Lcom/pinguo/camera360/video/VideoInfo;->getVideoLength()J
move-result-wide v5
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string/jumbo v4, "mime"
invoke-virtual {p1}, Lcom/pinguo/camera360/video/VideoInfo;->getVideoMime()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v4, "videofilepath"
invoke-virtual {p1}, Lcom/pinguo/camera360/video/VideoInfo;->getVideoFilePath()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v4, "width"
invoke-virtual {p1}, Lcom/pinguo/camera360/video/VideoInfo;->getVideoWidth()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v4, "height"
invoke-virtual {p1}, Lcom/pinguo/camera360/video/VideoInfo;->getVideoHeight()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v4, "projectVersionCode"
invoke-virtual {p1}, Lcom/pinguo/camera360/video/VideoInfo;->getProjectVersion()I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/video/VideoInfo;->getVideoExif()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_cc
const-string/jumbo v4, "exif"
invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_cc
iget-object v4, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v5, "videoInfo"
const/4 v6, 0x0
invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
:try_end_d5
.catchall {:try_start_f .. :try_end_d5} :catchall_c
move-result-wide v0
monitor-exit p0
return-wide v0
:cond_d8
:try_start_d8
const-string/jumbo v4, "lat"
const/4 v5, 0x0
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v4, "lon"
const/4 v5, 0x0
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
:try_end_ee
.catchall {:try_start_d8 .. :try_end_ee} :catchall_c
goto/16 :goto_60
.end method
.method public declared-synchronized insertVideoFirstFrame(Lcom/pinguo/camera360/video/VideoInfo;Ljava/lang/String;)J
.registers 9
monitor-enter p0
if-nez p1, :cond_f
:try_start_3
new-instance v3, Ljava/lang/RuntimeException;
const-string/jumbo v4, "Camera360 SandBox insert database with null project"
invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v3
:catchall_c
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_c
move-exception v3
monitor-exit p0
throw v3
:cond_f
:try_start_f
new-instance v2, Landroid/content/ContentValues;
invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v3, "cameraModeIndex"
invoke-virtual {p1}, Lcom/pinguo/camera360/video/VideoInfo;->getCameraModeIndex()I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v3, "tokenMillis"
invoke-virtual {p1}, Lcom/pinguo/camera360/video/VideoInfo;->getVideoTakenTime()J
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/video/VideoInfo;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v3
if-eqz v3, :cond_8e
const-string/jumbo v3, "lat"
invoke-virtual {p1}, Lcom/pinguo/camera360/video/VideoInfo;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v4
invoke-static {v4}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->getLatitude(Lcom/pinguo/lib/location/data/PGLocation;)D
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
const-string/jumbo v3, "lon"
invoke-virtual {p1}, Lcom/pinguo/camera360/video/VideoInfo;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v4
invoke-static {v4}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->getLongitude(Lcom/pinguo/lib/location/data/PGLocation;)D
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
:goto_5a
const-string/jumbo v3, "width"
invoke-virtual {p1}, Lcom/pinguo/camera360/video/VideoInfo;->getVideoWidth()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "height"
invoke-virtual {p1}, Lcom/pinguo/camera360/video/VideoInfo;->getVideoHeight()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "effectPhotoSavePath"
invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "projectVersionCode"
invoke-virtual {p1}, Lcom/pinguo/camera360/video/VideoInfo;->getProjectVersion()I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
iget-object v3, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v4, "photoproject"
const/4 v5, 0x0
invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
:try_end_8b
.catchall {:try_start_f .. :try_end_8b} :catchall_c
move-result-wide v0
monitor-exit p0
return-wide v0
:try_start_8e
:cond_8e
const-string/jumbo v3, "lat"
const/4 v4, 0x0
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v3, "lon"
const/4 v4, 0x0
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
:try_end_a4
.catchall {:try_start_8e .. :try_end_a4} :catchall_c
goto :goto_5a
.end method
.method public query(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.registers 16
iget-object v1, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;
move-object v0, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
move-object v6, p6
move-object v7, p7
invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
return-object v0
.end method
.method public declared-synchronized selectPhotoProject(Ljava/lang/String;)Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;
.registers 9
monitor-enter p0
const/4 v0, 0x0
:try_start_2
iget-object v3, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mReadSQLData:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v4, "select * from photoproject WHERE LOWER(effectPhotoSavePath)=LOWER(?)"
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/String;
const/4 v6, 0x0
aput-object p1, v5, v6
invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;
invoke-direct {v1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;-><init>()V
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
const-string/jumbo v3, "pictureType"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v3
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setPhotoType(I)V
const-string/jumbo v3, "cameraModeIndex"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v3
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setCameraModeIndex(I)V
const-string/jumbo v3, "tokenMillis"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
invoke-virtual {v1, v3, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setDateTaken(J)V
new-instance v2, Lcom/pinguo/lib/location/data/PGLocation;
const-string/jumbo v3, "gps"
invoke-direct {v2, v3}, Lcom/pinguo/lib/location/data/PGLocation;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "lat"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getDouble(I)D
move-result-wide v3
invoke-static {v2, v3, v4}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->setLatitude(Lcom/pinguo/lib/location/data/PGLocation;D)V
const-string/jumbo v3, "lon"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getDouble(I)D
move-result-wide v3
invoke-static {v2, v3, v4}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->setLongitude(Lcom/pinguo/lib/location/data/PGLocation;D)V
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setLocation(Lcom/pinguo/lib/location/data/PGLocation;)V
const-string/jumbo v3, "failCount"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v3
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setTryCount(I)V
const-string/jumbo v3, "exif"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setExif(Ljava/lang/String;)V
const-string/jumbo v3, "projectState"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setProjectState(Ljava/lang/String;)V
const-string/jumbo v3, "direct"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v3
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setOrientation(I)V
const-string/jumbo v3, "width"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v3
iput v3, v1, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->width:I
const-string/jumbo v3, "height"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v3
iput v3, v1, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->height:I
const-string/jumbo v3, "costMillis"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
invoke-virtual {v1, v3, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setElapsedTime(J)V
const-string/jumbo v3, "effectPhotoSavePath"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setDestPath(Ljava/lang/String;)V
const-string/jumbo v3, "projectVersionCode"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setVersion(Ljava/lang/String;)V
const-string/jumbo v3, "eftAlias"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setEffectAlias(Ljava/lang/String;)V
const-string/jumbo v3, "eftAppendix"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setEffectAppendix(Ljava/lang/String;)V
sget-object v3, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->photo_org:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
invoke-virtual {v1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDateTaken()J
move-result-wide v4
invoke-static {v3, v4, v5}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setSourcePath(Ljava/lang/String;)V
:try_end_10f
.catchall {:try_start_2 .. :try_end_10f} :catchall_11c
if-eqz v0, :cond_11a
:try_start_111
invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
move-result v3
if-nez v3, :cond_11a
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_11a
:try_end_11a
.catchall {:try_start_111 .. :try_end_11a} :catchall_129
monitor-exit p0
return-object v1
:catchall_11c
move-exception v3
if-eqz v0, :cond_128
:try_start_11f
invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
move-result v4
if-nez v4, :cond_128
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_128
throw v3
:try_end_129
.catchall {:try_start_11f .. :try_end_129} :catchall_129
:catchall_129
move-exception v3
monitor-exit p0
throw v3
.end method
.method public declared-synchronized update(Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;)I
.registers 11
monitor-enter p0
if-nez p1, :cond_f
:try_start_3
new-instance v2, Ljava/lang/RuntimeException;
const-string/jumbo v3, "Camera360 SandBox update database with null project"
invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v2
:catchall_c
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_c
move-exception v2
monitor-exit p0
throw v2
:cond_f
:try_start_f
new-instance v1, Landroid/content/ContentValues;
invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v2, "eftParam"
const-string/jumbo v3, "none"
invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "eftAlias"
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getEffectParam()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "eftAppendix"
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getEffectAppendix()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "failCount"
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getTryCount()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v2, "projectState"
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getProjectState()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "costMillis"
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getElapsedTime()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string/jumbo v2, "direct"
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getOrientation()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getExif()Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "Get sound info update Exif:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "item.getProjectState():"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getProjectState()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
if-nez v0, :cond_9c
const-string/jumbo v0, ""
:cond_9c
const-string/jumbo v2, "exif"
invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v3, "photoproject"
const-string/jumbo v4, "tokenMillis=?"
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/String;
const/4 v6, 0x0
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDateTaken()J
move-result-wide v7
invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
:try_end_bb
.catchall {:try_start_f .. :try_end_bb} :catchall_c
move-result v2
monitor-exit p0
return v2
.end method
.method public declared-synchronized update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;
invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_9
move-result v0
monitor-exit p0
return v0
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized updateForReplace(Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;)Z
.registers 9
const/4 v2, 0x1
const/4 v3, 0x0
monitor-enter p0
const/4 v4, 0x6
:try_start_4
new-array v1, v4, [Ljava/lang/Object;
const/4 v4, 0x0
const/4 v5, 0x0
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v1, v4
const/4 v4, 0x1
const-string/jumbo v5, "editing"
aput-object v5, v1, v4
const/4 v4, 0x2
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getEffectParam()Ljava/lang/String;
move-result-object v5
aput-object v5, v1, v4
const/4 v4, 0x3
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getEffectAppendix()Ljava/lang/String;
move-result-object v5
aput-object v5, v1, v4
const/4 v4, 0x4
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getJSONExpand()Ljava/lang/String;
move-result-object v5
aput-object v5, v1, v4
const/4 v4, 0x5
invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDateTaken()J
move-result-wide v5
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
aput-object v5, v1, v4
iget-object v4, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->mWriteSQLData:Landroid/database/sqlite/SQLiteDatabase;
const-string/jumbo v5, "update photoproject set failCount=?,projectState=?,eftAlias=?,eftAppendix=?, jsonExpand=? where tokenMillis=?"
invoke-virtual {v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
:try_end_3c
.catchall {:try_start_4 .. :try_end_3c} :catchall_46
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3c} :catch_3e
:goto_3c
monitor-exit p0
return v2
:catch_3e
move-exception v0
:try_start_3f
iget-object v2, p0, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->TAG:Ljava/lang/String;
invoke-static {v2, v0}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_44
.catchall {:try_start_3f .. :try_end_44} :catchall_46
move v2, v3
goto :goto_3c
:catchall_46
move-exception v2
monitor-exit p0
throw v2
.end method