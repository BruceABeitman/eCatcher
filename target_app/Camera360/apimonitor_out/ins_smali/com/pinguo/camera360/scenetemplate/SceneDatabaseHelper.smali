.class public Lcom/pinguo/camera360/scenetemplate/SceneDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SceneDatabaseHelper.java"
.field public static final VERSION:I = 0x1
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
return-void
.end method
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/scenetemplate/SceneDatabaseHelper; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS \'SCENE_TEMPLATE\' (\'_id\' INTEGER PRIMARY KEY ,\'KEY\' TEXT,\'CHILD_ID\' TEXT,\'TEMPLATE_ID\' TEXT,\'TITLE\' TEXT,\'DETAIL_LOGO\' TEXT,\'DOWNLOAD_COUNT\' TEXT,\'NEED_PAY\' TEXT,\'IS_HOT\' TEXT,\'DOWNLOADED\' TEXT,\'SCENE_XML_FILE\' TEXT,\'SCENE_XML_FILE_LENGTH\' INTEGER,\'SCENE_JPG_FILE\' TEXT,\'SCENE_JPG_FILE_LENGTH\' INTEGER,\'SCENE_PNG_FILE\' TEXT,\'SCENE_PNG_FILE_LENGTH\' INTEGER,\'SCENE_USED_COUNT\' INTEGER,\'LOCATION_TYPE\' INTEGER,\'IS_NEW\' TEXT,\'CLOSED\' TEXT,\'ADDED_DATE\' INTEGER,\'VALID\' INTEGER);"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/scenetemplate/SceneDatabaseHelper; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.registers 4
if-lt p2, p3, :cond_2
:cond_2
return-void
.end method