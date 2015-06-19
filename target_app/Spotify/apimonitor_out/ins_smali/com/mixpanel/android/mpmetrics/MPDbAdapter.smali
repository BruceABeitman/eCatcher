.class final Lcom/mixpanel/android/mpmetrics/MPDbAdapter;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String;
.field private static final b:Ljava/lang/String;
.field private static final c:Ljava/lang/String;
.field private static final d:Ljava/lang/String;
.field private final e:Lcom/mixpanel/android/mpmetrics/k;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "CREATE TABLE "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v1, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->a:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " (_id INTEGER PRIMARY KEY AUTOINCREMENT, data STRING NOT NULL, created_at INTEGER NOT NULL);"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->a:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "CREATE TABLE "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v1, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->b:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " (_id INTEGER PRIMARY KEY AUTOINCREMENT, data STRING NOT NULL, created_at INTEGER NOT NULL);"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->b:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "CREATE INDEX IF NOT EXISTS time_idx ON "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v1, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->a:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " (created_at);"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->c:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "CREATE INDEX IF NOT EXISTS time_idx ON "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v1, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->b:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " (created_at);"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->d:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const-string v0, "mixpanel"
invoke-direct {p0, p1, v0}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/mixpanel/android/mpmetrics/k;
invoke-direct {v0, p1, p2}, Lcom/mixpanel/android/mpmetrics/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->e:Lcom/mixpanel/android/mpmetrics/k;
return-void
.end method
.method static synthetic b()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->a:Ljava/lang/String;
return-object v0
.end method
.method static synthetic c()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->b:Ljava/lang/String;
return-object v0
.end method
.method static synthetic d()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->c:Ljava/lang/String;
return-object v0
.end method
.method static synthetic e()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->d:Ljava/lang/String;
return-object v0
.end method
.method public final a(Lorg/json/JSONObject;Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;)I
.registers 11
const/4 v3, 0x0
invoke-virtual {p2}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->a()Ljava/lang/String;
move-result-object v4
const/4 v0, -0x1
:try_start_6
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->e:Lcom/mixpanel/android/mpmetrics/k;
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
new-instance v2, Landroid/content/ContentValues;
invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V
const-string v5, "data"
invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v5, "created_at"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const/4 v5, 0x0
invoke-virtual {v1, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
new-instance v2, Ljava/lang/StringBuilder;
const-string v5, "SELECT COUNT(*) FROM "
invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v5, 0x0
invoke-virtual {v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
:try_end_3e
.catchall {:try_start_6 .. :try_end_3e} :catchall_83
.catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_3e} :catch_52
move-result-object v2
:try_start_3f
invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
const/4 v1, 0x0
invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
:try_end_46
.catchall {:try_start_3f .. :try_end_46} :catchall_8f
.catch Landroid/database/sqlite/SQLiteException; {:try_start_3f .. :try_end_46} :catch_92
move-result v0
if-eqz v2, :cond_4c
invoke-interface {v2}, Landroid/database/Cursor;->close()V
:cond_4c
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->e:Lcom/mixpanel/android/mpmetrics/k;
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/k;->close()V
:goto_51
return v0
:catch_52
move-exception v1
move-object v2, v3
:try_start_54
:goto_54
const-string v5, "MixpanelAPI"
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "addJSON "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v6, " FAILED. Deleting DB."
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v5, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
if-eqz v2, :cond_94
invoke-interface {v2}, Landroid/database/Cursor;->close()V
:try_start_73
:try_end_73
.catchall {:try_start_54 .. :try_end_73} :catchall_8f
:goto_73
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->e:Lcom/mixpanel/android/mpmetrics/k;
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/k;->a()V
:try_end_78
.catchall {:try_start_73 .. :try_end_78} :catchall_83
if-eqz v3, :cond_7d
invoke-interface {v3}, Landroid/database/Cursor;->close()V
:cond_7d
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->e:Lcom/mixpanel/android/mpmetrics/k;
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/k;->close()V
goto :goto_51
:catchall_83
move-exception v0
:goto_84
if-eqz v3, :cond_89
invoke-interface {v3}, Landroid/database/Cursor;->close()V
:cond_89
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->e:Lcom/mixpanel/android/mpmetrics/k;
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/k;->close()V
throw v0
:catchall_8f
move-exception v0
move-object v3, v2
goto :goto_84
:catch_92
move-exception v1
goto :goto_54
:cond_94
move-object v3, v2
goto :goto_73
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->e:Lcom/mixpanel/android/mpmetrics/k;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/k;->a()V
return-void
.end method
.method public final a(JLcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;)V
.registers 9
invoke-virtual {p3}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->a()Ljava/lang/String;
move-result-object v1
:try_start_4
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->e:Lcom/mixpanel/android/mpmetrics/k;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "created_at <= "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
:try_end_1d
.catchall {:try_start_4 .. :try_end_1d} :catchall_49
.catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_1d} :catch_23
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->e:Lcom/mixpanel/android/mpmetrics/k;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/k;->close()V
:goto_22
return-void
:catch_23
move-exception v0
:try_start_24
const-string v2, "MixpanelAPI"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "cleanupEvents "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, " by time FAILED. Deleting DB."
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->e:Lcom/mixpanel/android/mpmetrics/k;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/k;->a()V
:try_end_43
.catchall {:try_start_24 .. :try_end_43} :catchall_49
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->e:Lcom/mixpanel/android/mpmetrics/k;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/k;->close()V
goto :goto_22
:catchall_49
move-exception v0
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->e:Lcom/mixpanel/android/mpmetrics/k;
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/k;->close()V
throw v0
.end method
.method public final a(Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;)V
.registers 8
invoke-virtual {p2}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->a()Ljava/lang/String;
move-result-object v1
:try_start_4
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->e:Lcom/mixpanel/android/mpmetrics/k;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "_id <= "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
:try_end_1d
.catchall {:try_start_4 .. :try_end_1d} :catchall_49
.catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_1d} :catch_23
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->e:Lcom/mixpanel/android/mpmetrics/k;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/k;->close()V
:goto_22
return-void
:catch_23
move-exception v0
:try_start_24
const-string v2, "MixpanelAPI"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "cleanupEvents "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, " by id FAILED. Deleting DB."
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->e:Lcom/mixpanel/android/mpmetrics/k;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/k;->a()V
:try_end_43
.catchall {:try_start_24 .. :try_end_43} :catchall_49
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->e:Lcom/mixpanel/android/mpmetrics/k;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/k;->close()V
goto :goto_22
:catchall_49
move-exception v0
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->e:Lcom/mixpanel/android/mpmetrics/k;
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/k;->close()V
throw v0
.end method
.method public final a(Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;)[Ljava/lang/String;
.registers 9
const/4 v1, 0x0
invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->a()Ljava/lang/String;
move-result-object v4
:try_start_5
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->e:Lcom/mixpanel/android/mpmetrics/k;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/k;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "SELECT * FROM "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " ORDER BY created_at ASC LIMIT 50"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
:try_end_24
.catchall {:try_start_5 .. :try_end_24} :catchall_9d
.catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_24} :catch_7a
move-result-object v2
:try_start_25
new-instance v0, Lorg/json/JSONArray;
invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
move-object v3, v1
:goto_2b
invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
move-result v5
if-eqz v5, :cond_56
invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z
move-result v5
if-eqz v5, :cond_41
const-string v3, "_id"
invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
:try_end_40
.catchall {:try_start_25 .. :try_end_40} :catchall_aa
.catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_40} :catch_ac
move-result-object v3
:try_start_41
:cond_41
new-instance v5, Lorg/json/JSONObject;
const-string v6, "data"
invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v6
invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
:try_end_53
.catchall {:try_start_41 .. :try_end_53} :catchall_aa
.catch Lorg/json/JSONException; {:try_start_41 .. :try_end_53} :catch_54
.catch Landroid/database/sqlite/SQLiteException; {:try_start_41 .. :try_end_53} :catch_ac
goto :goto_2b
:catch_54
move-exception v5
goto :goto_2b
:cond_56
:try_start_56
invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
move-result v5
if-lez v5, :cond_b4
invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
:try_end_5f
.catchall {:try_start_56 .. :try_end_5f} :catchall_aa
.catch Landroid/database/sqlite/SQLiteException; {:try_start_56 .. :try_end_5f} :catch_ac
move-result-object v0
:goto_60
iget-object v4, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->e:Lcom/mixpanel/android/mpmetrics/k;
invoke-virtual {v4}, Lcom/mixpanel/android/mpmetrics/k;->close()V
if-eqz v2, :cond_b1
invoke-interface {v2}, Landroid/database/Cursor;->close()V
move-object v2, v0
move-object v0, v3
:goto_6c
if-eqz v0, :cond_79
if-eqz v2, :cond_79
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/String;
const/4 v3, 0x0
aput-object v0, v1, v3
const/4 v0, 0x1
aput-object v2, v1, v0
:cond_79
return-object v1
:catch_7a
move-exception v0
move-object v2, v1
:goto_7c
:try_start_7c
const-string v3, "MixpanelAPI"
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "generateDataString "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_90
.catchall {:try_start_7c .. :try_end_90} :catchall_aa
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->e:Lcom/mixpanel/android/mpmetrics/k;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/k;->close()V
if-eqz v2, :cond_ae
invoke-interface {v2}, Landroid/database/Cursor;->close()V
move-object v0, v1
move-object v2, v1
goto :goto_6c
:catchall_9d
move-exception v0
move-object v2, v1
:goto_9f
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->e:Lcom/mixpanel/android/mpmetrics/k;
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/k;->close()V
if-eqz v2, :cond_a9
invoke-interface {v2}, Landroid/database/Cursor;->close()V
:cond_a9
throw v0
:catchall_aa
move-exception v0
goto :goto_9f
:catch_ac
move-exception v0
goto :goto_7c
:cond_ae
move-object v0, v1
move-object v2, v1
goto :goto_6c
:cond_b1
move-object v2, v0
move-object v0, v3
goto :goto_6c
:cond_b4
move-object v0, v1
goto :goto_60
.end method