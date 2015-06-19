.class  Lcom/tencent/stat/w;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.method public constructor <init>(Landroid/content/Context;)V
.registers 5
invoke-static {p1}, Lcom/tencent/stat/common/k;->v(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
const/4 v2, 0x3
invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
return-void
.end method
.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 11
const/4 v8, 0x0
:try_start_1
const-string/jumbo v1, "user"
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
move-object v0, p1
invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_5b
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_4c
move-result-object v1
:try_start_f
new-instance v0, Landroid/content/ContentValues;
invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
move-result v2
if-eqz v2, :cond_35
const/4 v2, 0x0
invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v8
const/4 v2, 0x1
invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I
const/4 v2, 0x2
invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
const/4 v2, 0x3
invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J
invoke-static {v8}, Lcom/tencent/stat/common/k;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "uid"
invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_35
if-eqz v8, :cond_46
const-string/jumbo v2, "user"
const-string/jumbo v3, "uid=?"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/String;
const/4 v5, 0x0
aput-object v8, v4, v5
invoke-virtual {p1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
:try_end_46
.catchall {:try_start_f .. :try_end_46} :catchall_63
.catch Ljava/lang/Throwable; {:try_start_f .. :try_end_46} :catch_65
:cond_46
if-eqz v1, :cond_4b
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:goto_4b
:cond_4b
return-void
:catch_4c
move-exception v0
move-object v1, v8
:goto_4e
:try_start_4e
invoke-static {}, Lcom/tencent/stat/n;->d()Lcom/tencent/stat/common/StatLogger;
move-result-object v2
invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
:try_end_55
.catchall {:try_start_4e .. :try_end_55} :catchall_63
if-eqz v1, :cond_4b
invoke-interface {v1}, Landroid/database/Cursor;->close()V
goto :goto_4b
:catchall_5b
move-exception v0
move-object v1, v8
:goto_5d
if-eqz v1, :cond_62
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_62
throw v0
:catchall_63
move-exception v0
goto :goto_5d
:catch_65
move-exception v0
goto :goto_4e
.end method
.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 12
const/4 v8, 0x0
:try_start_1
const-string/jumbo v1, "events"
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
move-object v0, p1
invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_8a
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_90
move-result-object v6
:try_start_f
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
:goto_14
invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
move-result v0
if-eqz v0, :cond_46
const/4 v0, 0x0
invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v1
const/4 v0, 0x1
invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
const/4 v0, 0x2
invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v4
const/4 v0, 0x3
invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v5
new-instance v0, Lcom/tencent/stat/x;
invoke-direct/range {v0 .. v5}, Lcom/tencent/stat/x;-><init>(JLjava/lang/String;II)V
invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_36
.catchall {:try_start_f .. :try_end_36} :catchall_7d
.catch Ljava/lang/Throwable; {:try_start_f .. :try_end_36} :catch_37
goto :goto_14
:catch_37
move-exception v0
move-object v1, v6
:goto_39
:try_start_39
invoke-static {}, Lcom/tencent/stat/n;->d()Lcom/tencent/stat/common/StatLogger;
move-result-object v2
invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
:try_end_40
.catchall {:try_start_39 .. :try_end_40} :catchall_8d
if-eqz v1, :cond_45
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_45
:goto_45
return-void
:cond_46
:try_start_46
new-instance v1, Landroid/content/ContentValues;
invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_4f
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_84
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/stat/x;
const-string/jumbo v3, "content"
iget-object v4, v0, Lcom/tencent/stat/x;->b:Ljava/lang/String;
invoke-static {v4}, Lcom/tencent/stat/common/k;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "events"
const-string/jumbo v4, "event_id=?"
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/String;
const/4 v7, 0x0
iget-wide v8, v0, Lcom/tencent/stat/x;->a:J
invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v0
aput-object v0, v5, v7
invoke-virtual {p1, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
:try_end_7c
.catchall {:try_start_46 .. :try_end_7c} :catchall_7d
.catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_7c} :catch_37
goto :goto_4f
:catchall_7d
move-exception v0
:goto_7e
if-eqz v6, :cond_83
invoke-interface {v6}, Landroid/database/Cursor;->close()V
:cond_83
throw v0
:cond_84
if-eqz v6, :cond_45
invoke-interface {v6}, Landroid/database/Cursor;->close()V
goto :goto_45
:catchall_8a
move-exception v0
move-object v6, v8
goto :goto_7e
:catchall_8d
move-exception v0
move-object v6, v1
goto :goto_7e
:catch_90
move-exception v0
move-object v1, v8
goto :goto_39
.end method
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 4
const-string v1, " + Lcom/tencent/stat/w; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string/jumbo v0, "create table if not exists events(event_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, content TEXT, status INTEGER, send_count INTEGER, timestamp LONG)"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v0, "create table if not exists user(uid TEXT PRIMARY KEY, user_type INTEGER, app_ver TEXT, ts INTEGER)"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v0, "create table if not exists config(type INTEGER PRIMARY KEY NOT NULL, content TEXT, md5sum TEXT, version INTEGER)"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v0, "create table if not exists keyvalues(key TEXT PRIMARY KEY NOT NULL, value TEXT)"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string v1, " - Lcom/tencent/stat/w; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.registers 7
invoke-static {}, Lcom/tencent/stat/n;->d()Lcom/tencent/stat/common/StatLogger;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "upgrade DB from oldVersion "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " to newVersion "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->debug(Ljava/lang/Object;)V
const/4 v0, 0x1
if-ne p2, v0, :cond_35
const-string/jumbo v0, "create table if not exists keyvalues(key TEXT PRIMARY KEY NOT NULL, value TEXT)"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
invoke-direct {p0, p1}, Lcom/tencent/stat/w;->a(Landroid/database/sqlite/SQLiteDatabase;)V
invoke-direct {p0, p1}, Lcom/tencent/stat/w;->b(Landroid/database/sqlite/SQLiteDatabase;)V
:cond_35
const/4 v0, 0x2
if-ne p2, v0, :cond_3e
invoke-direct {p0, p1}, Lcom/tencent/stat/w;->a(Landroid/database/sqlite/SQLiteDatabase;)V
invoke-direct {p0, p1}, Lcom/tencent/stat/w;->b(Landroid/database/sqlite/SQLiteDatabase;)V
:cond_3e
return-void
.end method