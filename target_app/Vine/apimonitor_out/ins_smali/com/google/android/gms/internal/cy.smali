.class public Lcom/google/android/gms/internal/cy;
.super Ljava/lang/Object;
.field private static final lq:Ljava/lang/Object;
.field private static final pp:Ljava/lang/String;
.field private static pr:Lcom/google/android/gms/internal/cy;
.field private final pq:Lcom/google/android/gms/internal/cy$a;
.method static constructor <clinit>()V
.registers 4
const-string v0, "CREATE TABLE IF NOT EXISTS %s ( %s INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER)"
const/4 v1, 0x5
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "InAppPurchase"
aput-object v3, v1, v2
const/4 v2, 0x1
const-string v3, "purchase_id"
aput-object v3, v1, v2
const/4 v2, 0x2
const-string v3, "product_id"
aput-object v3, v1, v2
const/4 v2, 0x3
const-string v3, "developer_payload"
aput-object v3, v1, v2
const/4 v2, 0x4
const-string v3, "record_time"
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/internal/cy;->pp:Ljava/lang/String;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/cy;->lq:Ljava/lang/Object;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/internal/cy$a;
const-string v1, "google_inapp_purchase.db"
invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/cy$a;-><init>(Lcom/google/android/gms/internal/cy;Landroid/content/Context;Ljava/lang/String;)V
iput-object v0, p0, Lcom/google/android/gms/internal/cy;->pq:Lcom/google/android/gms/internal/cy$a;
return-void
.end method
.method static synthetic bg()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/google/android/gms/internal/cy;->pp:Ljava/lang/String;
return-object v0
.end method
.method public static h(Landroid/content/Context;)Lcom/google/android/gms/internal/cy;
.registers 3
sget-object v1, Lcom/google/android/gms/internal/cy;->lq:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/google/android/gms/internal/cy;->pr:Lcom/google/android/gms/internal/cy;
if-nez v0, :cond_e
new-instance v0, Lcom/google/android/gms/internal/cy;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cy;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/google/android/gms/internal/cy;->pr:Lcom/google/android/gms/internal/cy;
:cond_e
sget-object v0, Lcom/google/android/gms/internal/cy;->pr:Lcom/google/android/gms/internal/cy;
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
:try_end_14
.catchall {:try_start_3 .. :try_end_14} :catchall_12
throw v0
.end method
.method public a(Landroid/database/Cursor;)Lcom/google/android/gms/internal/cw;
.registers 7
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
new-instance v0, Lcom/google/android/gms/internal/cw;
const/4 v1, 0x0
invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v1
const/4 v3, 0x1
invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
const/4 v4, 0x2
invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/cw;-><init>(JLjava/lang/String;Ljava/lang/String;)V
goto :goto_3
.end method
.method public a(Lcom/google/android/gms/internal/cw;)V
.registers 9
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
sget-object v1, Lcom/google/android/gms/internal/cy;->lq:Ljava/lang/Object;
monitor-enter v1
:try_start_6
invoke-virtual {p0}, Lcom/google/android/gms/internal/cy;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
if-nez v0, :cond_11
monitor-exit v1
goto :goto_2
:catchall_e
move-exception v0
monitor-exit v1
:try_end_10
.catchall {:try_start_6 .. :try_end_10} :catchall_e
throw v0
:cond_11
:try_start_11
const-string v2, "%s = %d"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
const-string v5, "purchase_id"
aput-object v5, v3, v4
const/4 v4, 0x1
iget-wide v5, p1, Lcom/google/android/gms/internal/cw;->pj:J
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
aput-object v5, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
const-string v3, "InAppPurchase"
const/4 v4, 0x0
invoke-virtual {v0, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
monitor-exit v1
:try_end_2f
.catchall {:try_start_11 .. :try_end_2f} :catchall_e
goto :goto_2
.end method
.method public b(Lcom/google/android/gms/internal/cw;)V
.registers 8
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
sget-object v1, Lcom/google/android/gms/internal/cy;->lq:Ljava/lang/Object;
monitor-enter v1
:try_start_6
invoke-virtual {p0}, Lcom/google/android/gms/internal/cy;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
if-nez v0, :cond_11
monitor-exit v1
goto :goto_2
:catchall_e
move-exception v0
monitor-exit v1
:try_end_10
.catchall {:try_start_6 .. :try_end_10} :catchall_e
throw v0
:cond_11
:try_start_11
new-instance v2, Landroid/content/ContentValues;
invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V
const-string v3, "product_id"
iget-object v4, p1, Lcom/google/android/gms/internal/cw;->pl:Ljava/lang/String;
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v3, "developer_payload"
iget-object v4, p1, Lcom/google/android/gms/internal/cw;->pk:Ljava/lang/String;
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v3, "record_time"
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string v3, "InAppPurchase"
const/4 v4, 0x0
invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
move-result-wide v2
iput-wide v2, p1, Lcom/google/android/gms/internal/cw;->pj:J
invoke-virtual {p0}, Lcom/google/android/gms/internal/cy;->getRecordCount()I
move-result v0
int-to-long v2, v0
const-wide/16 v4, 0x4e20
cmp-long v0, v2, v4
if-lez v0, :cond_48
invoke-virtual {p0}, Lcom/google/android/gms/internal/cy;->bf()V
:cond_48
monitor-exit v1
:try_end_49
.catchall {:try_start_11 .. :try_end_49} :catchall_e
goto :goto_2
.end method
.method public bf()V
.registers 12
const/4 v9, 0x0
sget-object v10, Lcom/google/android/gms/internal/cy;->lq:Ljava/lang/Object;
monitor-enter v10
:try_start_4
invoke-virtual {p0}, Lcom/google/android/gms/internal/cy;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
if-nez v0, :cond_c
monitor-exit v10
:try_end_b
.catchall {:try_start_4 .. :try_end_b} :catchall_31
:goto_b
return-void
:try_start_c
:cond_c
const-string v7, "record_time ASC"
const-string v1, "InAppPurchase"
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const-string v8, "1"
invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_1a
.catchall {:try_start_c .. :try_end_1a} :catchall_56
.catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_1a} :catch_34
move-result-object v1
if-eqz v1, :cond_2a
:try_start_1d
invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_2a
invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/cy;->a(Landroid/database/Cursor;)Lcom/google/android/gms/internal/cw;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cy;->a(Lcom/google/android/gms/internal/cw;)V
:cond_2a
:try_end_2a
.catchall {:try_start_1d .. :try_end_2a} :catchall_5e
.catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_2a} :catch_60
if-eqz v1, :cond_2f
:try_start_2c
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:goto_2f
:cond_2f
monitor-exit v10
goto :goto_b
:catchall_31
move-exception v0
monitor-exit v10
:try_end_33
.catchall {:try_start_2c .. :try_end_33} :catchall_31
throw v0
:catch_34
move-exception v0
move-object v1, v9
:goto_36
:try_start_36
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Error remove oldest record"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
:try_end_50
.catchall {:try_start_36 .. :try_end_50} :catchall_5e
if-eqz v1, :cond_2f
:try_start_52
invoke-interface {v1}, Landroid/database/Cursor;->close()V
goto :goto_2f
:catchall_56
move-exception v0
move-object v1, v9
:goto_58
if-eqz v1, :cond_5d
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_5d
throw v0
:try_end_5e
.catchall {:try_start_52 .. :try_end_5e} :catchall_31
:catchall_5e
move-exception v0
goto :goto_58
:catch_60
move-exception v0
goto :goto_36
.end method
.method public d(J)Ljava/util/List;
.registers 15
const/4 v10, 0x0
sget-object v11, Lcom/google/android/gms/internal/cy;->lq:Ljava/lang/Object;
monitor-enter v11
:try_start_4
new-instance v9, Ljava/util/LinkedList;
invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V
const-wide/16 v0, 0x0
cmp-long v0, p1, v0
if-gtz v0, :cond_12
monitor-exit v11
move-object v0, v9
:goto_11
return-object v0
:cond_12
invoke-virtual {p0}, Lcom/google/android/gms/internal/cy;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
if-nez v0, :cond_1b
monitor-exit v11
:try_end_19
.catchall {:try_start_4 .. :try_end_19} :catchall_69
move-object v0, v9
goto :goto_11
:try_start_1b
:cond_1b
const-string v7, "record_time ASC"
const-string v1, "InAppPurchase"
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v8
invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_2b
.catchall {:try_start_1b .. :try_end_2b} :catchall_6c
.catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_2b} :catch_47
move-result-object v1
:try_start_2c
invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_3f
:cond_32
invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/cy;->a(Landroid/database/Cursor;)Lcom/google/android/gms/internal/cw;
move-result-object v0
invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
:try_end_3c
.catchall {:try_start_2c .. :try_end_3c} :catchall_74
.catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_3c} :catch_76
move-result v0
if-nez v0, :cond_32
:cond_3f
if-eqz v1, :cond_44
:try_start_41
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:goto_44
:cond_44
monitor-exit v11
:try_end_45
.catchall {:try_start_41 .. :try_end_45} :catchall_69
move-object v0, v9
goto :goto_11
:catch_47
move-exception v0
move-object v1, v10
:try_start_49
:goto_49
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Error extracing purchase info: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
:try_end_63
.catchall {:try_start_49 .. :try_end_63} :catchall_74
if-eqz v1, :cond_44
:try_start_65
invoke-interface {v1}, Landroid/database/Cursor;->close()V
goto :goto_44
:catchall_69
move-exception v0
monitor-exit v11
:try_end_6b
.catchall {:try_start_65 .. :try_end_6b} :catchall_69
throw v0
:catchall_6c
move-exception v0
move-object v1, v10
:goto_6e
if-eqz v1, :cond_73
:try_start_70
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_73
throw v0
:try_end_74
.catchall {:try_start_70 .. :try_end_74} :catchall_69
:catchall_74
move-exception v0
goto :goto_6e
:catch_76
move-exception v0
goto :goto_49
.end method
.method public getRecordCount()I
.registers 7
const/4 v2, 0x0
const/4 v0, 0x0
sget-object v3, Lcom/google/android/gms/internal/cy;->lq:Ljava/lang/Object;
monitor-enter v3
:try_start_5
invoke-virtual {p0}, Lcom/google/android/gms/internal/cy;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
if-nez v1, :cond_d
monitor-exit v3
:try_end_c
.catchall {:try_start_5 .. :try_end_c} :catchall_26
:goto_c
return v0
:try_start_d
:cond_d
const-string v4, "select count(*) from InAppPurchase"
const/4 v5, 0x0
invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v2
invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v1
if-eqz v1, :cond_29
const/4 v1, 0x0
invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
:try_end_1e
.catchall {:try_start_d .. :try_end_1e} :catchall_51
.catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_1e} :catch_30
move-result v0
if-eqz v2, :cond_24
:try_start_21
invoke-interface {v2}, Landroid/database/Cursor;->close()V
:cond_24
monitor-exit v3
goto :goto_c
:catchall_26
move-exception v0
monitor-exit v3
:try_end_28
.catchall {:try_start_21 .. :try_end_28} :catchall_26
throw v0
:cond_29
if-eqz v2, :cond_2e
:try_start_2b
invoke-interface {v2}, Landroid/database/Cursor;->close()V
:goto_2e
:cond_2e
monitor-exit v3
:try_end_2f
.catchall {:try_start_2b .. :try_end_2f} :catchall_26
goto :goto_c
:catch_30
move-exception v1
:try_start_31
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Error getting record count"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
:try_end_4b
.catchall {:try_start_31 .. :try_end_4b} :catchall_51
if-eqz v2, :cond_2e
:try_start_4d
invoke-interface {v2}, Landroid/database/Cursor;->close()V
goto :goto_2e
:catchall_51
move-exception v0
if-eqz v2, :cond_57
invoke-interface {v2}, Landroid/database/Cursor;->close()V
:cond_57
throw v0
:try_end_58
.catchall {:try_start_4d .. :try_end_58} :catchall_26
.end method
.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
.registers 2
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/cy;->pq:Lcom/google/android/gms/internal/cy$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/cy$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
:try_end_5
.catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v0
:goto_6
return-object v0
:catch_7
move-exception v0
const-string v0, "Error opening writable conversion tracking database"
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_6
.end method