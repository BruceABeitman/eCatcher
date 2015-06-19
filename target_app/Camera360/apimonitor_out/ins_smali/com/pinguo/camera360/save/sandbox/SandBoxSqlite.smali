.class public Lcom/pinguo/camera360/save/sandbox/SandBoxSqlite;
.super Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;
.source "SandBoxSqlite.java"
.field public static final VERSION:I = 0x7
.method public constructor <init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
return-void
.end method
.method private createTableVideo(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 3
const-string/jumbo v0, "create table if not exists videoInfo( id integer primary key, cameraModeIndex int, title varchar(50), filename varchar(50), tokenMillis integer, duration integer, videolength integer, mime varchar(50), videofilepath varchar(300), width int, height int, lat real, lon real, eftParam varchar(500), failCount int,exif varchar(500), projectState varchar(20), direct int, costMillis integer, model varchar(50), effectPhotoSavePath varchar(700), projectVersionCode int, jsonExpand varchar(700), eftAlias varchar(50), eftAppendix varchar(500), backup1 int, backup2 int, backup3 varchar(100), backup4 varchar(100))"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
return-void
.end method
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/save/sandbox/SandBoxSqlite; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string/jumbo v0, "create table if not exists photoproject( id integer primary key, cameraModeIndex int, eftIndex int, eftClassIndex int, tokenMillis integer, lat real, lon real, eftParam varchar(500), failCount int,exif varchar(500), projectState varchar(20), direct int, width int, height int, costMillis integer, model varchar(50), effectPhotoSavePath varchar(700), projectVersionCode int, jsonExpand varchar(700), eftAlias varchar(50), eftAppendix varchar(500), pictureType int)"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v0, "create table if not exists sharedweb( id integer, nameId int, FOREIGN KEY (id) REFERENCES photoproject(id))"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v0, "create table if not exists shareinfo( id integer, shareDesrc varchar(300), location varchar(70), tags varchar(110), shareStyleIndex int, eftParamIndex int, FOREIGN KEY (id)REFERENCES photoproject(id))"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v0, "create table if not exists videoInfo( id integer primary key, cameraModeIndex int, title varchar(50), filename varchar(50), tokenMillis integer, duration integer, videolength integer, mime varchar(50), videofilepath varchar(300), width int, height int, lat real, lon real, eftParam varchar(500), failCount int,exif varchar(500), projectState varchar(20), direct int, costMillis integer, model varchar(50), effectPhotoSavePath varchar(700), projectVersionCode int, jsonExpand varchar(700), eftAlias varchar(50), eftAppendix varchar(500), backup1 int, backup2 int, backup3 varchar(100), backup4 varchar(100))"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/save/sandbox/SandBoxSqlite; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.registers 14
const/4 v9, 0x3
const/4 v8, 0x0
const/4 v7, 0x2
const/4 v6, 0x1
const/4 v5, -0x1
if-lt p2, p3, :cond_8
:goto_7
:cond_7
return-void
:cond_8
const/4 v2, 0x7
if-ne p3, v2, :cond_1b6
const-string/jumbo v2, "select sql from sqlite_master where tbl_name=?"
new-array v3, v6, [Ljava/lang/String;
const-string/jumbo v4, "photoproject"
aput-object v4, v3, v8
invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
if-ne p2, v6, :cond_97
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_8f
const-string/jumbo v2, "sql"
invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v2
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "eftAlias"
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ne v2, v5, :cond_8f
const-string/jumbo v2, "alter table \'photoproject\' add \'eftParam\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'failCount\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'exif\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'projectState\' varchar(20)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'direct\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'width\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'height\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'costMillis\' integer"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'model\' varchar(50)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'effectPhotoSavePath\' varchar(700)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'projectVersionCode\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'jsonExpand\' varchar(700)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAlias\' varchar(50)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAppendix\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'pictureType\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:cond_8f
invoke-direct {p0, p1}, Lcom/pinguo/camera360/save/sandbox/SandBoxSqlite;->createTableVideo(Landroid/database/sqlite/SQLiteDatabase;)V
:cond_92
:goto_92
invoke-interface {v0}, Landroid/database/Cursor;->close()V
goto/16 :goto_7
:cond_97
if-ne p2, v7, :cond_db
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_d7
const-string/jumbo v2, "sql"
invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v2
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "eftAlias"
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ne v2, v5, :cond_d7
const-string/jumbo v2, "alter table \'photoproject\' add \'effectPhotoSavePath\' varchar(700)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'projectVersionCode\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'jsonExpand\' varchar(700)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAlias\' varchar(50)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAppendix\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'pictureType\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:cond_d7
invoke-direct {p0, p1}, Lcom/pinguo/camera360/save/sandbox/SandBoxSqlite;->createTableVideo(Landroid/database/sqlite/SQLiteDatabase;)V
goto :goto_92
:cond_db
if-ne p2, v9, :cond_11a
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_115
const-string/jumbo v2, "sql"
invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v2
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "eftAlias"
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ne v2, v5, :cond_115
const-string/jumbo v2, "alter table \'photoproject\' add \'projectVersionCode\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'jsonExpand\' varchar(700)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAlias\' varchar(50)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAppendix\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'pictureType\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:cond_115
invoke-direct {p0, p1}, Lcom/pinguo/camera360/save/sandbox/SandBoxSqlite;->createTableVideo(Landroid/database/sqlite/SQLiteDatabase;)V
goto/16 :goto_92
:cond_11a
const/4 v2, 0x4
if-ne p2, v2, :cond_14e
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_149
const-string/jumbo v2, "sql"
invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v2
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "eftAlias"
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ne v2, v5, :cond_149
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAlias\' varchar(50)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAppendix\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'pictureType\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:cond_149
invoke-direct {p0, p1}, Lcom/pinguo/camera360/save/sandbox/SandBoxSqlite;->createTableVideo(Landroid/database/sqlite/SQLiteDatabase;)V
goto/16 :goto_92
:cond_14e
const/4 v2, 0x5
if-ne p2, v2, :cond_182
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_17d
const-string/jumbo v2, "sql"
invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v2
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "eftAlias"
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ne v2, v5, :cond_17d
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAlias\' varchar(50)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAppendix\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'pictureType\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:cond_17d
invoke-direct {p0, p1}, Lcom/pinguo/camera360/save/sandbox/SandBoxSqlite;->createTableVideo(Landroid/database/sqlite/SQLiteDatabase;)V
goto/16 :goto_92
:cond_182
const/4 v2, 0x6
if-ne p2, v2, :cond_92
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_1b1
const-string/jumbo v2, "sql"
invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v2
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "eftAlias"
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ne v2, v5, :cond_1b1
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAlias\' varchar(50)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAppendix\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'pictureType\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:cond_1b1
invoke-direct {p0, p1}, Lcom/pinguo/camera360/save/sandbox/SandBoxSqlite;->createTableVideo(Landroid/database/sqlite/SQLiteDatabase;)V
goto/16 :goto_92
:cond_1b6
const/4 v2, 0x6
if-ne p3, v2, :cond_304
const-string/jumbo v2, "select sql from sqlite_master where tbl_name=?"
new-array v3, v6, [Ljava/lang/String;
const-string/jumbo v4, "photoproject"
aput-object v4, v3, v8
invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
if-ne p2, v6, :cond_245
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_23d
const-string/jumbo v2, "sql"
invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v2
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "eftAlias"
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ne v2, v5, :cond_23d
const-string/jumbo v2, "alter table \'photoproject\' add \'eftParam\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'failCount\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'exif\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'projectState\' varchar(20)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'direct\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'width\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'height\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'costMillis\' integer"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'model\' varchar(50)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'effectPhotoSavePath\' varchar(700)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'projectVersionCode\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'jsonExpand\' varchar(700)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAlias\' varchar(50)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAppendix\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'pictureType\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:cond_23d
invoke-direct {p0, p1}, Lcom/pinguo/camera360/save/sandbox/SandBoxSqlite;->createTableVideo(Landroid/database/sqlite/SQLiteDatabase;)V
:cond_240
:goto_240
invoke-interface {v0}, Landroid/database/Cursor;->close()V
goto/16 :goto_7
:cond_245
if-ne p2, v7, :cond_289
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_285
const-string/jumbo v2, "sql"
invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v2
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "eftAlias"
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ne v2, v5, :cond_285
const-string/jumbo v2, "alter table \'photoproject\' add \'effectPhotoSavePath\' varchar(700)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'projectVersionCode\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'jsonExpand\' varchar(700)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAlias\' varchar(50)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAppendix\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'pictureType\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:cond_285
invoke-direct {p0, p1}, Lcom/pinguo/camera360/save/sandbox/SandBoxSqlite;->createTableVideo(Landroid/database/sqlite/SQLiteDatabase;)V
goto :goto_240
:cond_289
if-ne p2, v9, :cond_2c8
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_2c3
const-string/jumbo v2, "sql"
invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v2
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "eftAlias"
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ne v2, v5, :cond_2c3
const-string/jumbo v2, "alter table \'photoproject\' add \'projectVersionCode\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'jsonExpand\' varchar(700)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAlias\' varchar(50)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAppendix\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'pictureType\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:cond_2c3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/save/sandbox/SandBoxSqlite;->createTableVideo(Landroid/database/sqlite/SQLiteDatabase;)V
goto/16 :goto_240
:cond_2c8
const/4 v2, 0x4
if-ne p2, v2, :cond_2fc
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_2f7
const-string/jumbo v2, "sql"
invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v2
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "eftAlias"
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ne v2, v5, :cond_2f7
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAlias\' varchar(50)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAppendix\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'pictureType\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:cond_2f7
invoke-direct {p0, p1}, Lcom/pinguo/camera360/save/sandbox/SandBoxSqlite;->createTableVideo(Landroid/database/sqlite/SQLiteDatabase;)V
goto/16 :goto_240
:cond_2fc
const/4 v2, 0x5
if-ne p2, v2, :cond_240
invoke-direct {p0, p1}, Lcom/pinguo/camera360/save/sandbox/SandBoxSqlite;->createTableVideo(Landroid/database/sqlite/SQLiteDatabase;)V
goto/16 :goto_240
:cond_304
const/4 v2, 0x5
if-ne p3, v2, :cond_43d
const-string/jumbo v2, "select sql from sqlite_master where tbl_name=?"
new-array v3, v6, [Ljava/lang/String;
const-string/jumbo v4, "photoproject"
aput-object v4, v3, v8
invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
if-ne p2, v6, :cond_390
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_38b
const-string/jumbo v2, "sql"
invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v2
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "eftAlias"
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ne v2, v5, :cond_38b
const-string/jumbo v2, "alter table \'photoproject\' add \'eftParam\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'failCount\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'exif\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'projectState\' varchar(20)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'direct\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'width\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'height\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'costMillis\' integer"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'model\' varchar(50)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'effectPhotoSavePath\' varchar(700)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'projectVersionCode\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'jsonExpand\' varchar(700)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAlias\' varchar(50)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAppendix\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'pictureType\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:goto_38b
:cond_38b
invoke-interface {v0}, Landroid/database/Cursor;->close()V
goto/16 :goto_7
:cond_390
if-ne p2, v7, :cond_3d1
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_38b
const-string/jumbo v2, "sql"
invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v2
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "eftAlias"
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ne v2, v5, :cond_38b
const-string/jumbo v2, "alter table \'photoproject\' add \'effectPhotoSavePath\' varchar(700)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'projectVersionCode\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'jsonExpand\' varchar(700)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAlias\' varchar(50)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAppendix\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'pictureType\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
goto :goto_38b
:cond_3d1
if-ne p2, v9, :cond_40c
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_38b
const-string/jumbo v2, "sql"
invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v2
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "eftAlias"
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ne v2, v5, :cond_38b
const-string/jumbo v2, "alter table \'photoproject\' add \'projectVersionCode\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'jsonExpand\' varchar(700)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAlias\' varchar(50)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAppendix\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'pictureType\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
goto :goto_38b
:cond_40c
const/4 v2, 0x4
if-ne p2, v2, :cond_38b
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_38b
const-string/jumbo v2, "sql"
invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v2
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "eftAlias"
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ne v2, v5, :cond_38b
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAlias\' varchar(50)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'eftAppendix\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'pictureType\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
goto/16 :goto_38b
:cond_43d
const/4 v2, 0x4
if-ne p3, v2, :cond_50f
const-string/jumbo v2, "select sql from sqlite_master where tbl_name=?"
new-array v3, v6, [Ljava/lang/String;
const-string/jumbo v4, "photoproject"
aput-object v4, v3, v8
invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
if-ne p2, v6, :cond_4b7
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_4b2
const-string/jumbo v2, "sql"
invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v2
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "effectPhotoSavePath"
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ne v2, v5, :cond_4b2
const-string/jumbo v2, "alter table \'photoproject\' add \'eftParam\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'failCount\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'exif\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'projectState\' varchar(20)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'direct\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'width\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'height\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'costMillis\' integer"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'model\' varchar(50)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'effectPhotoSavePath\' varchar(700)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'projectVersionCode\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'jsonExpand\' varchar(700)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:goto_4b2
:cond_4b2
invoke-interface {v0}, Landroid/database/Cursor;->close()V
goto/16 :goto_7
:cond_4b7
if-ne p2, v7, :cond_4e6
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_4b2
const-string/jumbo v2, "sql"
invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v2
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "effectPhotoSavePath"
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ne v2, v5, :cond_4b2
const-string/jumbo v2, "alter table \'photoproject\' add \'effectPhotoSavePath\' varchar(700)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'projectVersionCode\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'jsonExpand\' varchar(700)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
goto :goto_4b2
:cond_4e6
if-ne p2, v9, :cond_4b2
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_4b2
const-string/jumbo v2, "sql"
invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v2
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "projectVersionCode"
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ne v2, v5, :cond_4b2
const-string/jumbo v2, "alter table \'photoproject\' add \'projectVersionCode\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'jsonExpand\' varchar(700)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
goto :goto_4b2
:cond_50f
if-ne p3, v9, :cond_59f
const-string/jumbo v2, "select sql from sqlite_master where tbl_name=?"
new-array v3, v6, [Ljava/lang/String;
const-string/jumbo v4, "photoproject"
aput-object v4, v3, v8
invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
if-ne p2, v6, :cond_57c
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_577
const-string/jumbo v2, "sql"
invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v2
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "effectPhotoSavePath"
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ne v2, v5, :cond_577
const-string/jumbo v2, "alter table \'photoproject\' add \'eftParam\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'failCount\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'exif\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'projectState\' varchar(20)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'direct\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'width\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'height\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'costMillis\' integer"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'model\' varchar(50)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'effectPhotoSavePath\' varchar(700)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:goto_577
:cond_577
invoke-interface {v0}, Landroid/database/Cursor;->close()V
goto/16 :goto_7
:cond_57c
if-ne p2, v7, :cond_577
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_577
const-string/jumbo v2, "sql"
invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v2
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "effectPhotoSavePath"
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ne v2, v5, :cond_577
const-string/jumbo v2, "alter table \'photoproject\' add \'effectPhotoSavePath\' varchar(700)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
goto :goto_577
:cond_59f
if-ne p3, v7, :cond_7
if-eq p2, v6, :cond_5a5
if-ne p2, v7, :cond_7
:cond_5a5
const-string/jumbo v2, "select sql from sqlite_master where tbl_name=?"
new-array v3, v6, [Ljava/lang/String;
const-string/jumbo v4, "photoproject"
aput-object v4, v3, v8
invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_603
const-string/jumbo v2, "sql"
invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v2
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "eftParam"
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ne v2, v5, :cond_603
const-string/jumbo v2, "alter table \'photoproject\' add \'eftParam\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'failCount\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'exif\' varchar(500)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'projectState\' varchar(20)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'direct\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'width\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'height\' int"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'costMillis\' integer"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v2, "alter table \'photoproject\' add \'model\' varchar(50)"
invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:cond_603
invoke-interface {v0}, Landroid/database/Cursor;->close()V
goto/16 :goto_7
.end method