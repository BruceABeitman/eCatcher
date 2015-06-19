.class public final Lcom/google/zxing/client/android/c/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 5
const-string v0, "barcode_scanner_history.db"
const/4 v1, 0x0
const/4 v2, 0x5
invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
return-void
.end method
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 4
const-string v1, " + Lcom/google/zxing/client/android/c/a; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "CREATE TABLE history (id INTEGER PRIMARY KEY, text TEXT, format TEXT, display TEXT, timestamp INTEGER, details TEXT);"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string v1, " - Lcom/google/zxing/client/android/c/a; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.registers 5
const-string v0, "DROP TABLE IF EXISTS history"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
invoke-virtual {p0, p1}, Lcom/google/zxing/client/android/c/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
return-void
.end method