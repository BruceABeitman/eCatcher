.class  Lcom/umeng/common/net/c$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadTaskList.java"
.field private static final b:I = 0x2
.field private static final c:Ljava/lang/String; = "CREATE TABLE umeng_download_task_list (cp TEXT, url TEXT, progress INTEGER, extra TEXT, last_modified TEXT, UNIQUE (cp,url) ON CONFLICT ABORT);"
.field final synthetic a:Lcom/umeng/common/net/c;
.method constructor <init>(Lcom/umeng/common/net/c;Landroid/content/Context;)V
.registers 6
iput-object p1, p0, Lcom/umeng/common/net/c$a;->a:Lcom/umeng/common/net/c;
const-string/jumbo v0, "UMENG_DATA"
const/4 v1, 0x0
const/4 v2, 0x2
invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
return-void
.end method
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 4
const-string v1, " + Lcom/umeng/common/net/c$a; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/umeng/common/net/c;->a()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "CREATE TABLE umeng_download_task_list (cp TEXT, url TEXT, progress INTEGER, extra TEXT, last_modified TEXT, UNIQUE (cp,url) ON CONFLICT ABORT);"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "CREATE TABLE umeng_download_task_list (cp TEXT, url TEXT, progress INTEGER, extra TEXT, last_modified TEXT, UNIQUE (cp,url) ON CONFLICT ABORT);"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string v1, " - Lcom/umeng/common/net/c$a; onCreate"
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