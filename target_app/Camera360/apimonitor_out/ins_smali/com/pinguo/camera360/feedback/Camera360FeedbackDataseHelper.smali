.class public Lcom/pinguo/camera360/feedback/Camera360FeedbackDataseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Camera360FeedbackDataseHelper.java"
.field public static final DATABASE_NAME:Ljava/lang/String; = "sandbox.db"
.field public static final DATABASE_VERSION:I = 0x5
.field private static final TAG:Ljava/lang/String; = "test"
.method public constructor <init>(Landroid/content/Context;)V
.registers 5
const-string/jumbo v0, "sandbox.db"
const/4 v1, 0x0
const/4 v2, 0x5
invoke-direct {p0, p1, v0, v1, v2}, Lcom/pinguo/camera360/feedback/Camera360FeedbackDataseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
return-void
.end method
.method private createFeedbackTable(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 6
const-string/jumbo v1, "DROP TABLE IF EXISTS feedback"
invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS feedback (_id INTEGER PRIMARY KEY,message VARCHAR(700),name VARCHAR(100),time INTEGER,status INTEGER DEFAULT \'0\');"
const-string/jumbo v1, "test"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "\u521b\u5efa\u6570\u636e\u5e93\u8868\u8bed\u53e5:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
return-void
.end method
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/feedback/Camera360FeedbackDataseHelper; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-direct {p0, p1}, Lcom/pinguo/camera360/feedback/Camera360FeedbackDataseHelper;->createFeedbackTable(Landroid/database/sqlite/SQLiteDatabase;)V
const-string v1, " - Lcom/pinguo/camera360/feedback/Camera360FeedbackDataseHelper; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.registers 4
return-void
.end method