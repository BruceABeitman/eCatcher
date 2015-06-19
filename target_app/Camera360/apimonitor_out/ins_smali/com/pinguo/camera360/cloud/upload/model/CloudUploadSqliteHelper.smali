.class public Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSqliteHelper;
.super Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;
.source "CloudUploadSqliteHelper.java"
.field private static final DAYCOMPLETE_SQL:Ljava/lang/String; = "create table IF NOT EXISTS `daycomplete_table` (`user_id` varchar(50),`date` varchar(50))"
.field public static final DAYCOMPLETE_TABLE:Ljava/lang/String; = "daycomplete_table"
.field private static final ERROR_LOG_SQL:Ljava/lang/String; = "create table IF NOT EXISTS `error_log_table`(`code`  varchar(10),`message` varchar(4096),`token` long, `parameter`  varchar(4096),`url`  varchar(500))"
.field public static final ERROR_LOG_TABLE:Ljava/lang/String; = "error_log_table"
.field private static final EXCLUDE_PICTURE_SQL:Ljava/lang/String; = "create table IF NOT EXISTS `exclude_picture_table` (`crc32` long)"
.field public static final EXCLUDE_PICTURE_TABLE:Ljava/lang/String; = "exclude_picture_table"
.field private static final NEED_UPLOAD_SQL:Ljava/lang/String; = "create table IF NOT EXISTS `need_upload_table` (`user_id` varchar(50) ,`path` varchar(50),`type` varchar(20),`time_token` long,`crc32` long,`model` varchar(50),`effect` varchar(128),`date` varchar(20),`status` int)"
.field public static final NEED_UPLOAD_TABLE:Ljava/lang/String; = "need_upload_table"
.field private static final TAG:Ljava/lang/String; = "CloudUploadSqliteHelper"
.field public static final UPLOADED_RECORDER_INDEX:Ljava/lang/String; = "create index IF NOT EXISTS `uploaded_recorder_table_index` on `uploaded_recorder_table`(`user_id`)"
.field private static final UPLOADED_RECORDER_SQL:Ljava/lang/String; = "create table IF NOT EXISTS `uploaded_recorder_table` (`user_id` varchar(50),`crc32` long,`server_id` varchar(50),`status` int DEFAULT \'0\')"
.field public static final UPLOADED_RECORDER_TABLE:Ljava/lang/String; = "uploaded_recorder_table"
.method public constructor <init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
return-void
.end method
.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 3
const-string/jumbo v0, "create table IF NOT EXISTS `exclude_picture_table` (`crc32` long)"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v0, "create table IF NOT EXISTS `need_upload_table` (`user_id` varchar(50) ,`path` varchar(50),`type` varchar(20),`time_token` long,`crc32` long,`model` varchar(50),`effect` varchar(128),`date` varchar(20),`status` int)"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v0, "create table IF NOT EXISTS `uploaded_recorder_table` (`user_id` varchar(50),`crc32` long,`server_id` varchar(50),`status` int DEFAULT \'0\')"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v0, "create index IF NOT EXISTS `uploaded_recorder_table_index` on `uploaded_recorder_table`(`user_id`)"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v0, "create table IF NOT EXISTS `daycomplete_table` (`user_id` varchar(50),`date` varchar(50))"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v0, "create table IF NOT EXISTS `error_log_table`(`code`  varchar(10),`message` varchar(4096),`token` long, `parameter`  varchar(4096),`url`  varchar(500))"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
return-void
.end method
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSqliteHelper; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-direct {p0, p1}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSqliteHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V
const-string v1, " - Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSqliteHelper; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.registers 7
if-lt p2, p3, :cond_3
:goto_2
return-void
:cond_3
const-string/jumbo v0, "CloudUploadSqliteHelper"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "oldVersion="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ",newVersion="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2
.end method