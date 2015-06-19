.class public Lcom/tencent/stat/n;
.super Ljava/lang/Object;
.field private static e:Lcom/tencent/stat/common/StatLogger;
.field private static f:Lcom/tencent/stat/n;
.field  a:Landroid/os/Handler;
.field volatile b:I
.field  c:Lcom/tencent/stat/DeviceInfo;
.field private d:Lcom/tencent/stat/w;
.field private g:Ljava/util/HashMap;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;
move-result-object v0
sput-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
const/4 v0, 0x0
sput-object v0, Lcom/tencent/stat/n;->f:Lcom/tencent/stat/n;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v1, p0, Lcom/tencent/stat/n;->a:Landroid/os/Handler;
const/4 v0, 0x0
iput v0, p0, Lcom/tencent/stat/n;->b:I
iput-object v1, p0, Lcom/tencent/stat/n;->c:Lcom/tencent/stat/DeviceInfo;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/tencent/stat/n;->g:Ljava/util/HashMap;
:try_start_12
new-instance v0, Landroid/os/HandlerThread;
const-string/jumbo v1, "StatStore"
invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
sget-object v1, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Launch store thread:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V
new-instance v1, Landroid/os/Handler;
invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
move-result-object v0
invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v1, p0, Lcom/tencent/stat/n;->a:Landroid/os/Handler;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
new-instance v1, Lcom/tencent/stat/w;
invoke-direct {v1, v0}, Lcom/tencent/stat/w;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
iget-object v1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v1}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
iget-object v1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v1}, Lcom/tencent/stat/w;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
invoke-virtual {p0, v0}, Lcom/tencent/stat/n;->b(Landroid/content/Context;)Lcom/tencent/stat/DeviceInfo;
invoke-virtual {p0}, Lcom/tencent/stat/n;->c()V
invoke-direct {p0}, Lcom/tencent/stat/n;->f()V
iget-object v0, p0, Lcom/tencent/stat/n;->a:Landroid/os/Handler;
new-instance v1, Lcom/tencent/stat/o;
invoke-direct {v1, p0}, Lcom/tencent/stat/o;-><init>(Lcom/tencent/stat/n;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_69
:try_end_69
.catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_69} :catch_6a
return-void
:catch_6a
move-exception v0
sget-object v1, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
goto :goto_69
.end method
.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/stat/n;
.registers 3
const-class v1, Lcom/tencent/stat/n;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/tencent/stat/n;->f:Lcom/tencent/stat/n;
if-nez v0, :cond_e
new-instance v0, Lcom/tencent/stat/n;
invoke-direct {v0, p0}, Lcom/tencent/stat/n;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/tencent/stat/n;->f:Lcom/tencent/stat/n;
:cond_e
sget-object v0, Lcom/tencent/stat/n;->f:Lcom/tencent/stat/n;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method static synthetic a(Lcom/tencent/stat/n;)V
.registers 1
invoke-direct {p0}, Lcom/tencent/stat/n;->e()V
return-void
.end method
.method static synthetic a(Lcom/tencent/stat/n;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/tencent/stat/n;->b(I)V
return-void
.end method
.method static synthetic a(Lcom/tencent/stat/n;Lcom/tencent/stat/a/e;Lcom/tencent/stat/c;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/tencent/stat/n;->b(Lcom/tencent/stat/a/e;Lcom/tencent/stat/c;)V
return-void
.end method
.method static synthetic a(Lcom/tencent/stat/n;Lcom/tencent/stat/b;)V
.registers 2
invoke-direct {p0, p1}, Lcom/tencent/stat/n;->b(Lcom/tencent/stat/b;)V
return-void
.end method
.method static synthetic a(Lcom/tencent/stat/n;Ljava/util/List;)V
.registers 2
invoke-direct {p0, p1}, Lcom/tencent/stat/n;->b(Ljava/util/List;)V
return-void
.end method
.method static synthetic a(Lcom/tencent/stat/n;Ljava/util/List;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/tencent/stat/n;->b(Ljava/util/List;I)V
return-void
.end method
.method public static b()Lcom/tencent/stat/n;
.registers 1
sget-object v0, Lcom/tencent/stat/n;->f:Lcom/tencent/stat/n;
return-object v0
.end method
.method static synthetic b(Lcom/tencent/stat/n;)Lcom/tencent/stat/w;
.registers 2
iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
return-object v0
.end method
.method private declared-synchronized b(I)V
.registers 7
monitor-enter p0
:try_start_1
iget v0, p0, Lcom/tencent/stat/n;->b:I
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_9e
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3} :catch_96
if-lez v0, :cond_7
if-gtz p1, :cond_9
:cond_7
:goto_7
monitor-exit p0
return-void
:try_start_9
:cond_9
sget-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "Load "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/tencent/stat/n;->b:I
invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " unsent events"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const/4 v0, -0x1
if-eq p1, v0, :cond_42
invoke-static {}, Lcom/tencent/stat/StatConfig;->a()I
move-result v0
if-le p1, v0, :cond_46
:cond_42
invoke-static {}, Lcom/tencent/stat/StatConfig;->a()I
move-result p1
:cond_46
iget v0, p0, Lcom/tencent/stat/n;->b:I
sub-int/2addr v0, p1
iput v0, p0, Lcom/tencent/stat/n;->b:I
invoke-direct {p0, v2, p1}, Lcom/tencent/stat/n;->c(Ljava/util/List;I)V
sget-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "Peek "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " unsent events."
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_7
const/4 v0, 0x2
invoke-direct {p0, v2, v0}, Lcom/tencent/stat/n;->b(Ljava/util/List;I)V
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_84
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_a1
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/stat/x;
iget-object v0, v0, Lcom/tencent/stat/x;->b:Ljava/lang/String;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_95
.catchall {:try_start_9 .. :try_end_95} :catchall_9e
.catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_95} :catch_96
goto :goto_84
:catch_96
move-exception v0
:try_start_97
sget-object v1, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
:try_end_9c
.catchall {:try_start_97 .. :try_end_9c} :catchall_9e
goto/16 :goto_7
:catchall_9e
move-exception v0
monitor-exit p0
throw v0
:try_start_a1
:cond_a1
invoke-static {}, Lcom/tencent/stat/d;->b()Lcom/tencent/stat/d;
move-result-object v0
new-instance v3, Lcom/tencent/stat/u;
invoke-direct {v3, p0, v2, p1}, Lcom/tencent/stat/u;-><init>(Lcom/tencent/stat/n;Ljava/util/List;I)V
invoke-virtual {v0, v1, v3}, Lcom/tencent/stat/d;->b(Ljava/util/List;Lcom/tencent/stat/c;)V
:try_end_ad
.catchall {:try_start_a1 .. :try_end_ad} :catchall_9e
.catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_ad} :catch_96
goto/16 :goto_7
.end method
.method private declared-synchronized b(Lcom/tencent/stat/a/e;Lcom/tencent/stat/c;)V
.registers 9
monitor-enter p0
:try_start_1
invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxStoreEventCount()I
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_dc
move-result v0
if-gtz v0, :cond_9
:goto_7
monitor-exit p0
return-void
:try_start_9
:cond_9
iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v0}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
iget v0, p0, Lcom/tencent/stat/n;->b:I
invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxStoreEventCount()I
move-result v1
if-le v0, v1, :cond_38
sget-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "Too many events stored in db."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->warn(Ljava/lang/Object;)V
iget v0, p0, Lcom/tencent/stat/n;->b:I
iget-object v1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v1}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
const-string/jumbo v2, "events"
const-string/jumbo v3, "event_id in (select event_id from events where timestamp in (select min(timestamp) from events) limit 1)"
const/4 v4, 0x0
invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
move-result v1
sub-int/2addr v0, v1
iput v0, p0, Lcom/tencent/stat/n;->b:I
:cond_38
new-instance v0, Landroid/content/ContentValues;
invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
invoke-virtual {p1}, Lcom/tencent/stat/a/e;->d()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/tencent/stat/common/k;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "content"
invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "send_count"
const-string/jumbo v3, "0"
invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "status"
const/4 v3, 0x1
invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "timestamp"
invoke-virtual {p1}, Lcom/tencent/stat/a/e;->b()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
iget-object v2, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v2}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
const-string/jumbo v3, "events"
const/4 v4, 0x0
invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
move-result-wide v2
const-wide/16 v4, -0x1
cmp-long v0, v2, v4
if-nez v0, :cond_a8
sget-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Failed to store event:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
:goto_9a
:try_end_9a
.catchall {:try_start_9 .. :try_end_9a} :catchall_d1
.catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9a} :catch_bd
:cond_9a
:try_start_9a
iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v0}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:try_end_a3
.catchall {:try_start_9a .. :try_end_a3} :catchall_dc
.catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_a3} :catch_a5
goto/16 :goto_7
:catch_a5
move-exception v0
goto/16 :goto_7
:try_start_a8
:cond_a8
iget v0, p0, Lcom/tencent/stat/n;->b:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/tencent/stat/n;->b:I
iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v0}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
if-eqz p2, :cond_9a
invoke-interface {p2}, Lcom/tencent/stat/c;->a()V
:try_end_bc
.catchall {:try_start_a8 .. :try_end_bc} :catchall_d1
.catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_bc} :catch_bd
goto :goto_9a
:catch_bd
move-exception v0
:try_start_be
sget-object v1, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
:try_end_c3
.catchall {:try_start_be .. :try_end_c3} :catchall_d1
:try_start_c3
iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v0}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:try_end_cc
.catchall {:try_start_c3 .. :try_end_cc} :catchall_dc
.catch Ljava/lang/Throwable; {:try_start_c3 .. :try_end_cc} :catch_ce
goto/16 :goto_7
:catch_ce
move-exception v0
goto/16 :goto_7
:catchall_d1
move-exception v0
:try_start_d2
iget-object v1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v1}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:try_end_db
.catchall {:try_start_d2 .. :try_end_db} :catchall_dc
.catch Ljava/lang/Throwable; {:try_start_d2 .. :try_end_db} :catch_df
:goto_db
:try_start_db
throw v0
:try_end_dc
.catchall {:try_start_db .. :try_end_dc} :catchall_dc
:catchall_dc
move-exception v0
monitor-exit p0
throw v0
:catch_df
move-exception v1
goto :goto_db
.end method
.method private declared-synchronized b(Lcom/tencent/stat/b;)V
.registers 15
const/4 v9, 0x1
const/4 v10, 0x0
const/4 v8, 0x0
monitor-enter p0
:try_start_4
invoke-virtual {p1}, Lcom/tencent/stat/b;->a()Ljava/lang/String;
move-result-object v11
invoke-static {v11}, Lcom/tencent/stat/common/k;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v12, Landroid/content/ContentValues;
invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v1, "content"
iget-object v2, p1, Lcom/tencent/stat/b;->b:Lorg/json/JSONObject;
invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "md5sum"
invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p1, Lcom/tencent/stat/b;->c:Ljava/lang/String;
const-string/jumbo v0, "version"
iget v1, p1, Lcom/tencent/stat/b;->d:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v0}, Lcom/tencent/stat/w;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
const-string/jumbo v1, "config"
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_43
.catchall {:try_start_4 .. :try_end_43} :catchall_dd
.catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_43} :catch_e7
move-result-object v1
:cond_44
:try_start_44
invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
move-result v0
if-eqz v0, :cond_ea
const/4 v0, 0x0
invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iget v2, p1, Lcom/tencent/stat/b;->a:I
if-ne v0, v2, :cond_44
move v0, v9
:goto_54
if-ne v9, v0, :cond_99
iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v0}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
const-string/jumbo v2, "config"
const-string/jumbo v3, "type=?"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/String;
const/4 v5, 0x0
iget v6, p1, Lcom/tencent/stat/b;->a:I
invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v6
aput-object v6, v4, v5
invoke-virtual {v0, v2, v12, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
move-result v0
int-to-long v2, v0
:goto_73
const-wide/16 v4, -0x1
cmp-long v0, v2, v4
if-nez v0, :cond_b4
sget-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Failed to store cfg:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
:try_end_92
.catchall {:try_start_44 .. :try_end_92} :catchall_e5
.catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_92} :catch_ce
:goto_92
if-eqz v1, :cond_97
:try_start_94
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_97
:try_end_97
.catchall {:try_start_94 .. :try_end_97} :catchall_da
:goto_97
monitor-exit p0
return-void
:cond_99
:try_start_99
const-string/jumbo v0, "type"
iget v2, p1, Lcom/tencent/stat/b;->a:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v0}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
const-string/jumbo v2, "config"
const/4 v3, 0x0
invoke-virtual {v0, v2, v3, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
move-result-wide v2
goto :goto_73
:cond_b4
sget-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Sucessed to store cfg:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V
:try_end_cd
.catchall {:try_start_99 .. :try_end_cd} :catchall_e5
.catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_cd} :catch_ce
goto :goto_92
:catch_ce
move-exception v0
:goto_cf
:try_start_cf
sget-object v2, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
:try_end_d4
.catchall {:try_start_cf .. :try_end_d4} :catchall_e5
if-eqz v1, :cond_97
:try_start_d6
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:try_end_d9
.catchall {:try_start_d6 .. :try_end_d9} :catchall_da
goto :goto_97
:catchall_da
move-exception v0
monitor-exit p0
throw v0
:catchall_dd
move-exception v0
move-object v1, v8
:goto_df
if-eqz v1, :cond_e4
:try_start_e1
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_e4
throw v0
:try_end_e5
.catchall {:try_start_e1 .. :try_end_e5} :catchall_da
:catchall_e5
move-exception v0
goto :goto_df
:catch_e7
move-exception v0
move-object v1, v8
goto :goto_cf
:cond_ea
move v0, v10
goto/16 :goto_54
.end method
.method private declared-synchronized b(Ljava/util/List;)V
.registers 12
monitor-enter p0
:try_start_1
sget-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "Delete "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " sent events in thread:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V
:try_start_2d
:try_end_2d
.catchall {:try_start_1 .. :try_end_2d} :catchall_a4
iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v0}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_3a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_7a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/stat/x;
iget v2, p0, Lcom/tencent/stat/n;->b:I
iget-object v3, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v3}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v3
const-string/jumbo v4, "events"
const-string/jumbo v5, "event_id = ?"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/String;
const/4 v7, 0x0
iget-wide v8, v0, Lcom/tencent/stat/x;->a:J
invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v0
aput-object v0, v6, v7
invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
move-result v0
sub-int v0, v2, v0
iput v0, p0, Lcom/tencent/stat/n;->b:I
:try_end_68
.catchall {:try_start_2d .. :try_end_68} :catchall_ae
.catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_68} :catch_69
goto :goto_3a
:catch_69
move-exception v0
:try_start_6a
sget-object v1, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
:try_start_6f
:try_end_6f
.catchall {:try_start_6a .. :try_end_6f} :catchall_ae
iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v0}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:goto_78
:try_end_78
.catchall {:try_start_6f .. :try_end_78} :catchall_a4
.catch Landroid/database/sqlite/SQLiteException; {:try_start_6f .. :try_end_78} :catch_a7
monitor-exit p0
return-void
:cond_7a
:try_start_7a
iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v0}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v0}, Lcom/tencent/stat/w;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
const-string/jumbo v1, "events"
invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
move-result-wide v0
long-to-int v0, v0
iput v0, p0, Lcom/tencent/stat/n;->b:I
:try_start_93
:try_end_93
.catchall {:try_start_7a .. :try_end_93} :catchall_ae
.catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_93} :catch_69
iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v0}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:try_end_9c
.catchall {:try_start_93 .. :try_end_9c} :catchall_a4
.catch Landroid/database/sqlite/SQLiteException; {:try_start_93 .. :try_end_9c} :catch_9d
goto :goto_78
:catch_9d
move-exception v0
:try_start_9e
sget-object v1, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Exception;)V
:try_end_a3
.catchall {:try_start_9e .. :try_end_a3} :catchall_a4
goto :goto_78
:catchall_a4
move-exception v0
monitor-exit p0
throw v0
:catch_a7
move-exception v0
:try_start_a8
sget-object v1, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Exception;)V
:try_end_ad
.catchall {:try_start_a8 .. :try_end_ad} :catchall_a4
goto :goto_78
:catchall_ae
move-exception v0
:try_start_af
iget-object v1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v1}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:goto_b8
:try_end_b8
.catchall {:try_start_af .. :try_end_b8} :catchall_a4
.catch Landroid/database/sqlite/SQLiteException; {:try_start_af .. :try_end_b8} :catch_b9
:try_start_b8
throw v0
:catch_b9
move-exception v1
sget-object v2, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v2, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Exception;)V
:try_end_bf
.catchall {:try_start_b8 .. :try_end_bf} :catchall_a4
goto :goto_b8
.end method
.method private declared-synchronized b(Ljava/util/List;I)V
.registers 14
monitor-enter p0
:try_start_1
sget-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "Update "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " sending events to status:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " in thread:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V
:try_start_38
:try_end_38
.catchall {:try_start_1 .. :try_end_38} :catchall_11a
new-instance v1, Landroid/content/ContentValues;
invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v0, "status"
invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v0}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_54
:goto_54
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_11d
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/stat/x;
iget v3, v0, Lcom/tencent/stat/x;->d:I
add-int/lit8 v3, v3, 0x1
invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxSendRetryCount()I
move-result v4
if-le v3, v4, :cond_9e
iget v3, p0, Lcom/tencent/stat/n;->b:I
iget-object v4, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v4}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v4
const-string/jumbo v5, "events"
const-string/jumbo v6, "event_id=?"
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/String;
const/4 v8, 0x0
iget-wide v9, v0, Lcom/tencent/stat/x;->a:J
invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v0
aput-object v0, v7, v8
invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
move-result v0
sub-int v0, v3, v0
iput v0, p0, Lcom/tencent/stat/n;->b:I
:try_end_8c
.catchall {:try_start_38 .. :try_end_8c} :catchall_10f
.catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_8c} :catch_8d
goto :goto_54
:catch_8d
move-exception v0
:try_start_8e
sget-object v1, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
:try_start_93
:try_end_93
.catchall {:try_start_8e .. :try_end_93} :catchall_10f
iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v0}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:goto_9c
:try_end_9c
.catchall {:try_start_93 .. :try_end_9c} :catchall_11a
.catch Landroid/database/sqlite/SQLiteException; {:try_start_93 .. :try_end_9c} :catch_149
monitor-exit p0
return-void
:try_start_9e
:cond_9e
const-string/jumbo v3, "send_count"
iget v4, v0, Lcom/tencent/stat/x;->d:I
add-int/lit8 v4, v4, 0x1
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
sget-object v3, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "Update event:"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-wide v5, v0, Lcom/tencent/stat/x;->a:J
invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, " for content:"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V
iget-object v3, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v3}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v3
const-string/jumbo v4, "events"
const-string/jumbo v5, "event_id=?"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/String;
const/4 v7, 0x0
iget-wide v8, v0, Lcom/tencent/stat/x;->a:J
invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v0
aput-object v0, v6, v7
invoke-virtual {v3, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
move-result v0
if-gtz v0, :cond_54
sget-object v3, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "Failed to update db, error code:"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
:try_end_10d
.catchall {:try_start_9e .. :try_end_10d} :catchall_10f
.catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_10d} :catch_8d
goto/16 :goto_54
:catchall_10f
move-exception v0
:try_start_110
iget-object v1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v1}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:try_start_119
:try_end_119
.catchall {:try_start_110 .. :try_end_119} :catchall_11a
.catch Landroid/database/sqlite/SQLiteException; {:try_start_110 .. :try_end_119} :catch_151
:goto_119
throw v0
:try_end_11a
.catchall {:try_start_119 .. :try_end_11a} :catchall_11a
:catchall_11a
move-exception v0
monitor-exit p0
throw v0
:cond_11d
:try_start_11d
iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v0}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v0}, Lcom/tencent/stat/w;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
const-string/jumbo v1, "events"
invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
move-result-wide v0
long-to-int v0, v0
iput v0, p0, Lcom/tencent/stat/n;->b:I
:try_start_136
:try_end_136
.catchall {:try_start_11d .. :try_end_136} :catchall_10f
.catch Ljava/lang/Throwable; {:try_start_11d .. :try_end_136} :catch_8d
iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v0}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:try_end_13f
.catchall {:try_start_136 .. :try_end_13f} :catchall_11a
.catch Landroid/database/sqlite/SQLiteException; {:try_start_136 .. :try_end_13f} :catch_141
goto/16 :goto_9c
:catch_141
move-exception v0
:try_start_142
sget-object v1, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Exception;)V
goto/16 :goto_9c
:catch_149
move-exception v0
sget-object v1, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Exception;)V
goto/16 :goto_9c
:catch_151
move-exception v1
sget-object v2, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v2, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Exception;)V
:try_end_157
.catchall {:try_start_142 .. :try_end_157} :catchall_11a
goto :goto_119
.end method
.method private c(Ljava/util/List;I)V
.registers 13
const/4 v9, 0x0
:try_start_1
iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v0}, Lcom/tencent/stat/w;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
const-string/jumbo v1, "events"
const/4 v2, 0x0
const-string/jumbo v3, "status=?"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/String;
const/4 v5, 0x0
const/4 v6, 0x1
invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x0
const/4 v6, 0x0
const-string/jumbo v7, "event_id"
invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v8
invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_25
.catchall {:try_start_1 .. :try_end_25} :catchall_60
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_25} :catch_6d
move-result-object v6
:try_start_26
:goto_26
invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
move-result v0
if-eqz v0, :cond_5a
const/4 v0, 0x0
invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v1
const/4 v0, 0x1
invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/tencent/stat/common/k;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const/4 v0, 0x2
invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v4
const/4 v0, 0x3
invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v5
new-instance v0, Lcom/tencent/stat/x;
invoke-direct/range {v0 .. v5}, Lcom/tencent/stat/x;-><init>(JLjava/lang/String;II)V
invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_4c
.catchall {:try_start_26 .. :try_end_4c} :catchall_67
.catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_4c} :catch_4d
goto :goto_26
:catch_4d
move-exception v0
move-object v1, v6
:goto_4f
:try_start_4f
sget-object v2, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
:try_end_54
.catchall {:try_start_4f .. :try_end_54} :catchall_6a
if-eqz v1, :cond_59
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_59
:goto_59
return-void
:cond_5a
if-eqz v6, :cond_59
invoke-interface {v6}, Landroid/database/Cursor;->close()V
goto :goto_59
:catchall_60
move-exception v0
:goto_61
if-eqz v9, :cond_66
invoke-interface {v9}, Landroid/database/Cursor;->close()V
:cond_66
throw v0
:catchall_67
move-exception v0
move-object v9, v6
goto :goto_61
:catchall_6a
move-exception v0
move-object v9, v1
goto :goto_61
:catch_6d
move-exception v0
move-object v1, v9
goto :goto_4f
.end method
.method static synthetic d()Lcom/tencent/stat/common/StatLogger;
.registers 1
sget-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
return-object v0
.end method
.method private e()V
.registers 9
:try_start_0
new-instance v0, Landroid/content/ContentValues;
invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v1, "status"
const/4 v2, 0x1
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
iget-object v1, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v1}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
const-string/jumbo v2, "events"
const-string/jumbo v3, "status=?"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/String;
const/4 v5, 0x0
const-wide/16 v6, 0x2
invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v6
aput-object v6, v4, v5
invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v0}, Lcom/tencent/stat/w;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
const-string/jumbo v1, "events"
invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
move-result-wide v0
long-to-int v0, v0
iput v0, p0, Lcom/tencent/stat/n;->b:I
sget-object v0, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "Total "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/tencent/stat/n;->b:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " unsent events."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V
:goto_5d
:try_end_5d
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5d} :catch_5e
return-void
:catch_5e
move-exception v0
sget-object v1, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
goto :goto_5d
.end method
.method private f()V
.registers 10
const/4 v8, 0x0
:try_start_1
iget-object v0, p0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v0}, Lcom/tencent/stat/w;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
const-string/jumbo v1, "keyvalues"
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_13
.catchall {:try_start_1 .. :try_end_13} :catchall_3c
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_13} :catch_46
move-result-object v1
:try_start_14
:goto_14
invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
move-result v0
if-eqz v0, :cond_36
iget-object v0, p0, Lcom/tencent/stat/n;->g:Ljava/util/HashMap;
const/4 v2, 0x0
invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_29
.catchall {:try_start_14 .. :try_end_29} :catchall_44
.catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_29} :catch_2a
goto :goto_14
:catch_2a
move-exception v0
:try_start_2b
:goto_2b
sget-object v2, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
:try_end_30
.catchall {:try_start_2b .. :try_end_30} :catchall_44
if-eqz v1, :cond_35
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:goto_35
:cond_35
return-void
:cond_36
if-eqz v1, :cond_35
invoke-interface {v1}, Landroid/database/Cursor;->close()V
goto :goto_35
:catchall_3c
move-exception v0
move-object v1, v8
:goto_3e
if-eqz v1, :cond_43
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_43
throw v0
:catchall_44
move-exception v0
goto :goto_3e
:catch_46
move-exception v0
move-object v1, v8
goto :goto_2b
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/tencent/stat/n;->b:I
return v0
.end method
.method  a(I)V
.registers 4
iget-object v0, p0, Lcom/tencent/stat/n;->a:Landroid/os/Handler;
new-instance v1, Lcom/tencent/stat/v;
invoke-direct {v1, p0, p1}, Lcom/tencent/stat/v;-><init>(Lcom/tencent/stat/n;I)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method  a(Lcom/tencent/stat/a/e;Lcom/tencent/stat/c;)V
.registers 7
invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:try_start_7
:cond_7
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getId()J
move-result-wide v0
iget-object v2, p0, Lcom/tencent/stat/n;->a:Landroid/os/Handler;
invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;
move-result-object v2
invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Thread;->getId()J
move-result-wide v2
cmp-long v0, v0, v2
if-nez v0, :cond_2c
invoke-direct {p0, p1, p2}, Lcom/tencent/stat/n;->b(Lcom/tencent/stat/a/e;Lcom/tencent/stat/c;)V
:try_end_24
.catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_24} :catch_25
goto :goto_6
:catch_25
move-exception v0
sget-object v1, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
goto :goto_6
:try_start_2c
:cond_2c
iget-object v0, p0, Lcom/tencent/stat/n;->a:Landroid/os/Handler;
new-instance v1, Lcom/tencent/stat/r;
invoke-direct {v1, p0, p1, p2}, Lcom/tencent/stat/r;-><init>(Lcom/tencent/stat/n;Lcom/tencent/stat/a/e;Lcom/tencent/stat/c;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_end_36
.catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_36} :catch_25
goto :goto_6
.end method
.method  a(Lcom/tencent/stat/b;)V
.registers 4
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
iget-object v0, p0, Lcom/tencent/stat/n;->a:Landroid/os/Handler;
new-instance v1, Lcom/tencent/stat/s;
invoke-direct {v1, p0, p1}, Lcom/tencent/stat/s;-><init>(Lcom/tencent/stat/n;Lcom/tencent/stat/b;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_2
.end method
.method  a(Ljava/util/List;)V
.registers 6
:try_start_0
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getId()J
move-result-wide v0
iget-object v2, p0, Lcom/tencent/stat/n;->a:Landroid/os/Handler;
invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;
move-result-object v2
invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Thread;->getId()J
move-result-wide v2
cmp-long v0, v0, v2
if-nez v0, :cond_1e
invoke-direct {p0, p1}, Lcom/tencent/stat/n;->b(Ljava/util/List;)V
:goto_1d
return-void
:cond_1e
iget-object v0, p0, Lcom/tencent/stat/n;->a:Landroid/os/Handler;
new-instance v1, Lcom/tencent/stat/q;
invoke-direct {v1, p0, p1}, Lcom/tencent/stat/q;-><init>(Lcom/tencent/stat/n;Ljava/util/List;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_end_28
.catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_28} :catch_29
goto :goto_1d
:catch_29
move-exception v0
sget-object v1, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Exception;)V
goto :goto_1d
.end method
.method  a(Ljava/util/List;I)V
.registers 7
:try_start_0
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getId()J
move-result-wide v0
iget-object v2, p0, Lcom/tencent/stat/n;->a:Landroid/os/Handler;
invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;
move-result-object v2
invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Thread;->getId()J
move-result-wide v2
cmp-long v0, v0, v2
if-nez v0, :cond_1e
invoke-direct {p0, p1, p2}, Lcom/tencent/stat/n;->b(Ljava/util/List;I)V
:goto_1d
return-void
:cond_1e
iget-object v0, p0, Lcom/tencent/stat/n;->a:Landroid/os/Handler;
new-instance v1, Lcom/tencent/stat/p;
invoke-direct {v1, p0, p1, p2}, Lcom/tencent/stat/p;-><init>(Lcom/tencent/stat/n;Ljava/util/List;I)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_end_28
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_28} :catch_29
goto :goto_1d
:catch_29
move-exception v0
sget-object v1, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
goto :goto_1d
.end method
.method public declared-synchronized b(Landroid/content/Context;)Lcom/tencent/stat/DeviceInfo;
.registers 19
monitor-enter p0
:try_start_1
move-object/from16 v0, p0
iget-object v1, v0, Lcom/tencent/stat/n;->c:Lcom/tencent/stat/DeviceInfo;
if-eqz v1, :cond_d
move-object/from16 v0, p0
iget-object v1, v0, Lcom/tencent/stat/n;->c:Lcom/tencent/stat/DeviceInfo;
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_1e3
:goto_b
monitor-exit p0
return-object v1
:cond_d
const/4 v10, 0x0
:try_start_e
move-object/from16 v0, p0
iget-object v1, v0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v1}, Lcom/tencent/stat/w;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
const-string/jumbo v2, "user"
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
const/4 v8, 0x0
const/4 v9, 0x0
invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_23
.catchall {:try_start_e .. :try_end_23} :catchall_1e6
.catch Ljava/lang/Throwable; {:try_start_e .. :try_end_23} :catch_1d6
move-result-object v4
const/4 v1, 0x0
:try_start_25
const-string/jumbo v2, ""
invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
move-result v2
if-eqz v2, :cond_120
const/4 v1, 0x0
invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
invoke-static {v9}, Lcom/tencent/stat/common/k;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
const/4 v1, 0x1
invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v8
const/4 v1, 0x2
invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
const/4 v1, 0x3
invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v10
const/4 v5, 0x1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v12
const-wide/16 v14, 0x3e8
div-long/2addr v12, v14
const/4 v1, 0x1
if-eq v8, v1, :cond_20b
const-wide/16 v14, 0x3e8
mul-long/2addr v10, v14
invoke-static {v10, v11}, Lcom/tencent/stat/common/k;->a(J)Ljava/lang/String;
move-result-object v1
const-wide/16 v10, 0x3e8
mul-long/2addr v10, v12
invoke-static {v10, v11}, Lcom/tencent/stat/common/k;->a(J)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_20b
const/4 v1, 0x1
:goto_66
invoke-static/range {p1 .. p1}, Lcom/tencent/stat/common/k;->r(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_208
or-int/lit8 v1, v1, 0x2
move v7, v1
:goto_73
const-string/jumbo v1, ","
invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v10
const/4 v3, 0x0
if-eqz v10, :cond_1a2
array-length v1, v10
if-lez v1, :cond_1a2
const/4 v1, 0x0
aget-object v2, v10, v1
if-eqz v2, :cond_8d
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v1
const/16 v11, 0xb
if-ge v1, v11, :cond_200
:cond_8d
invoke-static/range {p1 .. p1}, Lcom/tencent/stat/common/k;->l(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_1fc
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v11
const/16 v14, 0xa
if-le v11, v14, :cond_1fc
const/4 v2, 0x1
:goto_9c
move-object v3, v6
move-object v6, v1
:goto_9e
if-eqz v10, :cond_1af
array-length v1, v10
const/4 v11, 0x2
if-lt v1, v11, :cond_1af
const/4 v1, 0x1
aget-object v1, v10, v1
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v10, ","
invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
:goto_bf
:cond_bf
new-instance v10, Lcom/tencent/stat/DeviceInfo;
invoke-direct {v10, v6, v1, v7}, Lcom/tencent/stat/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
move-object/from16 v0, p0
iput-object v10, v0, Lcom/tencent/stat/n;->c:Lcom/tencent/stat/DeviceInfo;
new-instance v1, Landroid/content/ContentValues;
invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
invoke-static {v3}, Lcom/tencent/stat/common/k;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string/jumbo v6, "uid"
invoke-virtual {v1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "user_type"
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v3, "app_ver"
invoke-static/range {p1 .. p1}, Lcom/tencent/stat/common/k;->r(Landroid/content/Context;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "ts"
invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
if-eqz v2, :cond_10e
move-object/from16 v0, p0
iget-object v2, v0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v2}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
const-string/jumbo v3, "user"
const-string/jumbo v6, "uid=?"
const/4 v10, 0x1
new-array v10, v10, [Ljava/lang/String;
const/4 v11, 0x0
aput-object v9, v10, v11
invoke-virtual {v2, v3, v1, v6, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
:cond_10e
if-eq v7, v8, :cond_1f9
move-object/from16 v0, p0
iget-object v2, v0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v2}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
const-string/jumbo v3, "user"
const/4 v6, 0x0
invoke-virtual {v2, v3, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
move v1, v5
:cond_120
:goto_120
if-nez v1, :cond_197
invoke-static/range {p1 .. p1}, Lcom/tencent/stat/common/k;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-static/range {p1 .. p1}, Lcom/tencent/stat/common/k;->c(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_1f6
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_1f6
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v5, ","
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:goto_14a
const/4 v5, 0x0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
const-wide/16 v8, 0x3e8
div-long/2addr v6, v8
invoke-static/range {p1 .. p1}, Lcom/tencent/stat/common/k;->r(Landroid/content/Context;)Ljava/lang/String;
move-result-object v8
new-instance v9, Landroid/content/ContentValues;
invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V
invoke-static {v1}, Lcom/tencent/stat/common/k;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v10, "uid"
invoke-virtual {v9, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "user_type"
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
invoke-virtual {v9, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v1, "app_ver"
invoke-virtual {v9, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "ts"
invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
invoke-virtual {v9, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/tencent/stat/n;->d:Lcom/tencent/stat/w;
invoke-virtual {v1}, Lcom/tencent/stat/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
const-string/jumbo v6, "user"
const/4 v7, 0x0
invoke-virtual {v1, v6, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
new-instance v1, Lcom/tencent/stat/DeviceInfo;
invoke-direct {v1, v2, v3, v5}, Lcom/tencent/stat/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
move-object/from16 v0, p0
iput-object v1, v0, Lcom/tencent/stat/n;->c:Lcom/tencent/stat/DeviceInfo;
:try_end_197
.catchall {:try_start_25 .. :try_end_197} :catchall_1ee
.catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_197} :catch_1f3
:cond_197
if-eqz v4, :cond_19c
:try_start_199
invoke-interface {v4}, Landroid/database/Cursor;->close()V
:cond_19c
:goto_19c
move-object/from16 v0, p0
iget-object v1, v0, Lcom/tencent/stat/n;->c:Lcom/tencent/stat/DeviceInfo;
:try_end_1a0
.catchall {:try_start_199 .. :try_end_1a0} :catchall_1e3
goto/16 :goto_b
:try_start_1a2
:cond_1a2
invoke-static/range {p1 .. p1}, Lcom/tencent/stat/common/k;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
move-object v6, v2
move/from16 v16, v3
move-object v3, v2
move/from16 v2, v16
goto/16 :goto_9e
:cond_1af
invoke-static/range {p1 .. p1}, Lcom/tencent/stat/common/k;->c(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_bf
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v10
if-lez v10, :cond_bf
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ","
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_1d2
.catchall {:try_start_1a2 .. :try_end_1d2} :catchall_1ee
.catch Ljava/lang/Throwable; {:try_start_1a2 .. :try_end_1d2} :catch_1f3
move-result-object v3
const/4 v2, 0x1
goto/16 :goto_bf
:catch_1d6
move-exception v1
move-object v2, v10
:try_start_1d8
:goto_1d8
sget-object v3, Lcom/tencent/stat/n;->e:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v3, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
:try_end_1dd
.catchall {:try_start_1d8 .. :try_end_1dd} :catchall_1f0
if-eqz v2, :cond_19c
:try_start_1df
invoke-interface {v2}, Landroid/database/Cursor;->close()V
:try_end_1e2
.catchall {:try_start_1df .. :try_end_1e2} :catchall_1e3
goto :goto_19c
:catchall_1e3
move-exception v1
monitor-exit p0
throw v1
:catchall_1e6
move-exception v1
move-object v4, v10
:goto_1e8
if-eqz v4, :cond_1ed
:try_start_1ea
invoke-interface {v4}, Landroid/database/Cursor;->close()V
:cond_1ed
throw v1
:try_end_1ee
.catchall {:try_start_1ea .. :try_end_1ee} :catchall_1e3
:catchall_1ee
move-exception v1
goto :goto_1e8
:catchall_1f0
move-exception v1
move-object v4, v2
goto :goto_1e8
:catch_1f3
move-exception v1
move-object v2, v4
goto :goto_1d8
:cond_1f6
move-object v1, v2
goto/16 :goto_14a
:cond_1f9
move v1, v5
goto/16 :goto_120
:cond_1fc
move-object v1, v2
move v2, v3
goto/16 :goto_9c
:cond_200
move-object/from16 v16, v2
move v2, v3
move-object v3, v6
move-object/from16 v6, v16
goto/16 :goto_9e
:cond_208
move v7, v1
goto/16 :goto_73
:cond_20b
move v1, v8
goto/16 :goto_66
.end method
.method  c()V
.registers 3
iget-object v0, p0, Lcom/tencent/stat/n;->a:Landroid/os/Handler;
new-instance v1, Lcom/tencent/stat/t;
invoke-direct {v1, p0}, Lcom/tencent/stat/t;-><init>(Lcom/tencent/stat/n;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method