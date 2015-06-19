.class final Lcom/mixpanel/android/mpmetrics/k;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"
.field private final a:Ljava/io/File;
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 5
const/4 v0, 0x0
const/4 v1, 0x4
invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
invoke-virtual {p1, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;
move-result-object v0
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/k;->a:Ljava/io/File;
return-void
.end method
.method public final a()V
.registers 2
invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/k;->close()V
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/k;->a:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->delete()Z
return-void
.end method
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 4
const-string v1, " + Lcom/mixpanel/android/mpmetrics/k; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->b()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
invoke-static {}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->c()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
invoke-static {}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->d()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
invoke-static {}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->e()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string v1, " - Lcom/mixpanel/android/mpmetrics/k; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "DROP TABLE IF EXISTS "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v1, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->a:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "DROP TABLE IF EXISTS "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v1, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->b:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
invoke-static {}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->b()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
invoke-static {}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->c()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
invoke-static {}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->d()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
invoke-static {}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->e()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
return-void
.end method