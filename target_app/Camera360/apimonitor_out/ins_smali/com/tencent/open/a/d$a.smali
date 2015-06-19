.class  Lcom/tencent/open/a/d$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ProGuard"
.field final synthetic a:Lcom/tencent/open/a/d;
.method public constructor <init>(Lcom/tencent/open/a/d;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
.registers 6
iput-object p1, p0, Lcom/tencent/open/a/d$a;->a:Lcom/tencent/open/a/d;
invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
return-void
.end method
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 5
const-string v1, " + Lcom/tencent/open/a/d$a; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
const-string/jumbo v0, "cgi_report_debug"
const-string/jumbo v1, "ReportDataModal onCreate sql1 = create table if not exists newdata(id integer primary key,apn text,frequency text,commandid text,resultcode text,tmcost text,reqsize text,rspsize text,deviceinfo text,detail text)"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
const-string/jumbo v0, "create table if not exists newdata(id integer primary key,apn text,frequency text,commandid text,resultcode text,tmcost text,reqsize text,rspsize text,deviceinfo text,detail text)"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v0, "cgi_report_debug"
const-string/jumbo v1, "ReportDataModal onCreate sql2 = create table if not exists olddata(id integer primary key,apn text,frequency text,commandid text,resultcode text,tmcost text,reqsize text,rspsize text,deviceinfo text,detail text)"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
const-string/jumbo v0, "create table if not exists olddata(id integer primary key,apn text,frequency text,commandid text,resultcode text,tmcost text,reqsize text,rspsize text,deviceinfo text,detail text)"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:try_end_1e
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f
:goto_1e
const-string v1, " - Lcom/tencent/open/a/d$a; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_1f
move-exception v0
const-string/jumbo v1, "cgi_report_debug"
const-string/jumbo v2, "ReportDataModal onCreate failed"
invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_1e
.end method
.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.registers 7
const-string/jumbo v0, "cgi_report_debug"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "ReportDataModal onUpgrade oldVersion="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "  newVersion="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
if-eq p2, p3, :cond_46
:try_start_2e
const-string/jumbo v0, "drop table if exists newdata"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v0, "drop table if exists olddata"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
invoke-virtual {p0, p1}, Lcom/tencent/open/a/d$a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
const-string/jumbo v0, "cgi_report_debug"
const-string/jumbo v1, "ReportDataModal onUpgrade success"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:try_end_46
.catch Ljava/lang/Exception; {:try_start_2e .. :try_end_46} :catch_47
:goto_46
:cond_46
return-void
:catch_47
move-exception v0
const-string/jumbo v0, "cgi_report_debug"
const-string/jumbo v1, "ReportDataModal onUpgrade failed"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_46
.end method