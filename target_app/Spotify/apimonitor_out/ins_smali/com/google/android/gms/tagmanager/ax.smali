.class final Lcom/google/android/gms/tagmanager/ax;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/g;
.field private static final a:Ljava/lang/String;
.field private final b:Ljava/util/concurrent/Executor;
.field private final c:Landroid/content/Context;
.field private d:Lcom/google/android/gms/tagmanager/ay;
.field private e:Lcom/google/android/gms/internal/id;
.field private f:I
.method static constructor <clinit>()V
.registers 4
const-string v0, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' STRING NOT NULL, \'%s\' BLOB NOT NULL, \'%s\' INTEGER NOT NULL);"
const/4 v1, 0x5
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "datalayer"
aput-object v3, v1, v2
const/4 v2, 0x1
const-string v3, "ID"
aput-object v3, v1, v2
const/4 v2, 0x2
const-string v3, "key"
aput-object v3, v1, v2
const/4 v2, 0x3
const-string v3, "value"
aput-object v3, v1, v2
const/4 v2, 0x4
const-string v3, "expires"
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/ax;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 5
invoke-static {}, Lcom/google/android/gms/internal/if;->b()Lcom/google/android/gms/internal/id;
move-result-object v0
const-string v1, "google_tagmanager.db"
invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
move-result-object v2
invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/tagmanager/ax;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/id;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
return-void
.end method
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/id;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/ax;->c:Landroid/content/Context;
iput-object p2, p0, Lcom/google/android/gms/tagmanager/ax;->e:Lcom/google/android/gms/internal/id;
const/16 v0, 0x7d0
iput v0, p0, Lcom/google/android/gms/tagmanager/ax;->f:I
iput-object p4, p0, Lcom/google/android/gms/tagmanager/ax;->b:Ljava/util/concurrent/Executor;
new-instance v0, Lcom/google/android/gms/tagmanager/ay;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/ax;->c:Landroid/content/Context;
invoke-direct {v0, p0, v1, p3}, Lcom/google/android/gms/tagmanager/ay;-><init>(Lcom/google/android/gms/tagmanager/ax;Landroid/content/Context;Ljava/lang/String;)V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/ax;->d:Lcom/google/android/gms/tagmanager/ay;
return-void
.end method
.method private a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ax;->d:Lcom/google/android/gms/tagmanager/ay;
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/ay;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
:try_end_5
.catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v0
:goto_6
return-object v0
:catch_7
move-exception v0
invoke-static {p1}, Lcom/google/android/gms/tagmanager/p;->b(Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_6
.end method
.method private static a([B)Ljava/lang/Object;
.registers 6
const/4 v0, 0x0
new-instance v2, Ljava/io/ByteArrayInputStream;
invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
:try_start_6
new-instance v1, Ljava/io/ObjectInputStream;
invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
:try_start_b
:try_end_b
.catchall {:try_start_6 .. :try_end_b} :catchall_30
.catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_16
.catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_23
invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
:try_end_e
.catchall {:try_start_b .. :try_end_e} :catchall_3f
.catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_43
.catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_e} :catch_41
move-result-object v0
:try_start_f
invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
:goto_15
:try_end_15
.catch Ljava/io/IOException; {:try_start_f .. :try_end_15} :catch_45
return-object v0
:catch_16
move-exception v1
move-object v1, v0
:goto_18
if-eqz v1, :cond_1d
:try_start_1a
invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
:cond_1d
invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
:try_end_20
.catch Ljava/io/IOException; {:try_start_1a .. :try_end_20} :catch_21
goto :goto_15
:catch_21
move-exception v1
goto :goto_15
:catch_23
move-exception v1
move-object v1, v0
:goto_25
if-eqz v1, :cond_2a
:try_start_27
invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
:cond_2a
invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
:try_end_2d
.catch Ljava/io/IOException; {:try_start_27 .. :try_end_2d} :catch_2e
goto :goto_15
:catch_2e
move-exception v1
goto :goto_15
:catchall_30
move-exception v1
move-object v4, v1
move-object v1, v0
move-object v0, v4
:goto_34
if-eqz v1, :cond_39
:try_start_36
invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
:cond_39
invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
:try_end_3c
.catch Ljava/io/IOException; {:try_start_36 .. :try_end_3c} :catch_3d
:goto_3c
throw v0
:catch_3d
move-exception v1
goto :goto_3c
:catchall_3f
move-exception v0
goto :goto_34
:catch_41
move-exception v3
goto :goto_25
:catch_43
move-exception v3
goto :goto_18
:catch_45
move-exception v1
goto :goto_15
.end method
.method static synthetic a()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/google/android/gms/tagmanager/ax;->a:Ljava/lang/String;
return-object v0
.end method
.method private a(I)Ljava/util/List;
.registers 15
const/4 v10, 0x0
new-instance v9, Ljava/util/ArrayList;
invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
if-gtz p1, :cond_f
const-string v0, "Invalid maxEntries specified. Skipping."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->b(Ljava/lang/String;)V
move-object v0, v9
:goto_e
return-object v0
:cond_f
const-string v0, "Error opening database for peekEntryIds."
invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/ax;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
if-nez v0, :cond_19
move-object v0, v9
goto :goto_e
:cond_19
:try_start_19
const-string v1, "datalayer"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ID"
aput-object v4, v2, v3
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const-string v7, "%s ASC"
const/4 v8, 0x1
new-array v8, v8, [Ljava/lang/Object;
const/4 v11, 0x0
const-string v12, "ID"
aput-object v12, v8, v11
invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v8
invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_3c
.catchall {:try_start_19 .. :try_end_3c} :catchall_7a
.catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_3c} :catch_5c
move-result-object v1
:try_start_3d
invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_55
:cond_43
const/4 v0, 0x0
invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
:try_end_52
.catchall {:try_start_3d .. :try_end_52} :catchall_82
.catch Landroid/database/sqlite/SQLiteException; {:try_start_3d .. :try_end_52} :catch_84
move-result v0
if-nez v0, :cond_43
:cond_55
if-eqz v1, :cond_5a
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:goto_5a
:cond_5a
move-object v0, v9
goto :goto_e
:catch_5c
move-exception v0
move-object v1, v10
:goto_5e
:try_start_5e
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Error in peekEntries fetching entryIds: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->b(Ljava/lang/String;)V
:try_end_74
.catchall {:try_start_5e .. :try_end_74} :catchall_82
if-eqz v1, :cond_5a
invoke-interface {v1}, Landroid/database/Cursor;->close()V
goto :goto_5a
:catchall_7a
move-exception v0
move-object v1, v10
:goto_7c
if-eqz v1, :cond_81
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_81
throw v0
:catchall_82
move-exception v0
goto :goto_7c
:catch_84
move-exception v0
goto :goto_5e
.end method
.method static synthetic a(Lcom/google/android/gms/tagmanager/ax;)Ljava/util/List;
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/ax;->b()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method private a(J)V
.registers 9
const-string v0, "Error opening database for deleteOlderThan."
invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/ax;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
if-nez v0, :cond_9
:goto_8
return-void
:try_start_9
:cond_9
const-string v1, "datalayer"
const-string v2, "expires <= ?"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/String;
const/4 v4, 0x0
invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
move-result v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Deleted "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " expired items"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->d(Ljava/lang/String;)V
:try_end_33
.catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_33} :catch_34
goto :goto_8
:catch_34
move-exception v0
const-string v0, "Error deleting old entries."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->b(Ljava/lang/String;)V
goto :goto_8
.end method
.method static synthetic a(Lcom/google/android/gms/tagmanager/ax;Ljava/util/List;J)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/tagmanager/ax;->b(Ljava/util/List;J)V
return-void
.end method
.method private static a(Ljava/lang/Object;)[B
.registers 6
const/4 v0, 0x0
new-instance v2, Ljava/io/ByteArrayOutputStream;
invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
:try_start_6
new-instance v1, Ljava/io/ObjectOutputStream;
invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_start_b
:try_end_b
.catchall {:try_start_6 .. :try_end_b} :catchall_26
.catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_19
invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
:try_end_11
.catchall {:try_start_b .. :try_end_11} :catchall_35
.catch Ljava/io/IOException; {:try_start_b .. :try_end_11} :catch_37
move-result-object v0
:try_start_12
invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
:goto_18
:try_end_18
.catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_39
return-object v0
:catch_19
move-exception v1
move-object v1, v0
:goto_1b
if-eqz v1, :cond_20
:try_start_1d
invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
:cond_20
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
:try_end_23
.catch Ljava/io/IOException; {:try_start_1d .. :try_end_23} :catch_24
goto :goto_18
:catch_24
move-exception v1
goto :goto_18
:catchall_26
move-exception v1
move-object v4, v1
move-object v1, v0
move-object v0, v4
:goto_2a
if-eqz v1, :cond_2f
:try_start_2c
invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
:cond_2f
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
:goto_32
:try_end_32
.catch Ljava/io/IOException; {:try_start_2c .. :try_end_32} :catch_33
throw v0
:catch_33
move-exception v1
goto :goto_32
:catchall_35
move-exception v0
goto :goto_2a
:catch_37
move-exception v3
goto :goto_1b
:catch_39
move-exception v1
goto :goto_18
.end method
.method static synthetic b(Lcom/google/android/gms/tagmanager/ax;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ax;->c:Landroid/content/Context;
return-object v0
.end method
.method private b()Ljava/util/List;
.registers 6
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ax;->e:Lcom/google/android/gms/internal/id;
invoke-interface {v0}, Lcom/google/android/gms/internal/id;->a()J
move-result-wide v0
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/ax;->a(J)V
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/ax;->c()Ljava/util/List;
move-result-object v0
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_16
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_38
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/tagmanager/az;
new-instance v3, Lcom/google/android/gms/tagmanager/e;
iget-object v4, v0, Lcom/google/android/gms/tagmanager/az;->a:Ljava/lang/String;
iget-object v0, v0, Lcom/google/android/gms/tagmanager/az;->b:[B
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ax;->a([B)Ljava/lang/Object;
move-result-object v0
invoke-direct {v3, v4, v0}, Lcom/google/android/gms/tagmanager/e;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_32
.catchall {:try_start_0 .. :try_end_32} :catchall_33
goto :goto_16
:catchall_33
move-exception v0
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/ax;->e()V
throw v0
:cond_38
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/ax;->e()V
return-object v1
.end method
.method private declared-synchronized b(Ljava/util/List;J)V
.registers 14
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ax;->e:Lcom/google/android/gms/internal/id;
invoke-interface {v0}, Lcom/google/android/gms/internal/id;->a()J
move-result-wide v1
invoke-direct {p0, v1, v2}, Lcom/google/android/gms/tagmanager/ax;->a(J)V
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/ax;->d()I
move-result v3
iget v4, p0, Lcom/google/android/gms/tagmanager/ax;->f:I
sub-int/2addr v3, v4
add-int/2addr v0, v3
if-lez v0, :cond_46
invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/ax;->a(I)Ljava/util/List;
move-result-object v0
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "DataLayer store full, deleting "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " entries to make room."
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/google/android/gms/tagmanager/p;->c(Ljava/lang/String;)V
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/String;
invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
if-eqz v0, :cond_46
array-length v3, v0
if-nez v3, :cond_50
:goto_46
:cond_46
add-long v0, v1, p2
invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/tagmanager/ax;->c(Ljava/util/List;J)V
:try_end_4b
.catchall {:try_start_1 .. :try_end_4b} :catchall_94
:try_start_4b
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/ax;->e()V
:try_end_4e
.catchall {:try_start_4b .. :try_end_4e} :catchall_99
monitor-exit p0
return-void
:try_start_50
:cond_50
const-string v3, "Error opening database for deleteEntries."
invoke-direct {p0, v3}, Lcom/google/android/gms/tagmanager/ax;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v3
if-eqz v3, :cond_46
const-string v4, "%s in (%s)"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
const-string v7, "ID"
aput-object v7, v5, v6
const/4 v6, 0x1
const-string v7, ","
array-length v8, v0
const-string v9, "?"
invoke-static {v8, v9}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;
move-result-object v8
invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v6
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
:try_end_75
.catchall {:try_start_50 .. :try_end_75} :catchall_94
move-result-object v4
:try_start_76
const-string v5, "datalayer"
invoke-virtual {v3, v5, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
:try_end_7b
.catchall {:try_start_76 .. :try_end_7b} :catchall_94
.catch Landroid/database/sqlite/SQLiteException; {:try_start_76 .. :try_end_7b} :catch_7c
goto :goto_46
:catch_7c
move-exception v3
:try_start_7d
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Error deleting entries "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->b(Ljava/lang/String;)V
:try_end_93
.catchall {:try_start_7d .. :try_end_93} :catchall_94
goto :goto_46
:catchall_94
move-exception v0
:try_start_95
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/ax;->e()V
throw v0
:catchall_99
:try_end_99
.catchall {:try_start_95 .. :try_end_99} :catchall_99
move-exception v0
monitor-exit p0
throw v0
.end method
.method private c()Ljava/util/List;
.registers 11
const/4 v5, 0x1
const/4 v4, 0x0
const/4 v3, 0x0
const-string v0, "Error opening database for loadSerialized."
invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/ax;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
new-instance v9, Ljava/util/ArrayList;
invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
if-nez v0, :cond_12
move-object v0, v9
:goto_11
return-object v0
:cond_12
const/4 v1, 0x2
new-array v2, v1, [Ljava/lang/String;
const-string v1, "key"
aput-object v1, v2, v4
const-string v1, "value"
aput-object v1, v2, v5
const-string v1, "datalayer"
const-string v7, "ID"
move-object v4, v3
move-object v5, v3
move-object v6, v3
move-object v8, v3
invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v1
:goto_29
:try_start_29
invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
move-result v0
if-eqz v0, :cond_47
new-instance v0, Lcom/google/android/gms/tagmanager/az;
const/4 v2, 0x0
invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B
move-result-object v3
invoke-direct {v0, v2, v3}, Lcom/google/android/gms/tagmanager/az;-><init>(Ljava/lang/String;[B)V
invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_41
.catchall {:try_start_29 .. :try_end_41} :catchall_42
goto :goto_29
:catchall_42
move-exception v0
invoke-interface {v1}, Landroid/database/Cursor;->close()V
throw v0
:cond_47
invoke-interface {v1}, Landroid/database/Cursor;->close()V
move-object v0, v9
goto :goto_11
.end method
.method private c(Ljava/util/List;J)V
.registers 10
const-string v0, "Error opening database for writeEntryToDatabase."
invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/ax;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
if-nez v1, :cond_9
:cond_8
return-void
:cond_9
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_8
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/tagmanager/az;
new-instance v3, Landroid/content/ContentValues;
invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V
const-string v4, "expires"
invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string v4, "key"
iget-object v5, v0, Lcom/google/android/gms/tagmanager/az;->a:Ljava/lang/String;
invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v4, "value"
iget-object v0, v0, Lcom/google/android/gms/tagmanager/az;->b:[B
invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
const-string v0, "datalayer"
const/4 v4, 0x0
invoke-virtual {v1, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
goto :goto_d
.end method
.method private d()I
.registers 6
const/4 v1, 0x0
const/4 v0, 0x0
const-string v2, "Error opening database for getNumStoredEntries."
invoke-direct {p0, v2}, Lcom/google/android/gms/tagmanager/ax;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
if-nez v2, :cond_b
:cond_a
:goto_a
return v0
:cond_b
:try_start_b
const-string v3, "SELECT COUNT(*) from datalayer"
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v1
invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_1e
const/4 v2, 0x0
invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J
:try_end_1c
.catchall {:try_start_b .. :try_end_1c} :catchall_30
.catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_1c} :catch_24
move-result-wide v2
long-to-int v0, v2
:cond_1e
if-eqz v1, :cond_a
invoke-interface {v1}, Landroid/database/Cursor;->close()V
goto :goto_a
:catch_24
move-exception v2
:try_start_25
const-string v2, "Error getting numStoredEntries"
invoke-static {v2}, Lcom/google/android/gms/tagmanager/p;->b(Ljava/lang/String;)V
:try_end_2a
.catchall {:try_start_25 .. :try_end_2a} :catchall_30
if-eqz v1, :cond_a
invoke-interface {v1}, Landroid/database/Cursor;->close()V
goto :goto_a
:catchall_30
move-exception v0
if-eqz v1, :cond_36
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_36
throw v0
.end method
.method private e()V
.registers 2
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ax;->d:Lcom/google/android/gms/tagmanager/ay;
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/ay;->close()V
:goto_5
:try_end_5
.catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
goto :goto_5
.end method
.method public final a(Lcom/google/android/gms/tagmanager/h;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ax;->b:Ljava/util/concurrent/Executor;
new-instance v1, Lcom/google/android/gms/tagmanager/ax$2;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tagmanager/ax$2;-><init>(Lcom/google/android/gms/tagmanager/ax;Lcom/google/android/gms/tagmanager/h;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method public final a(Ljava/util/List;J)V
.registers 9
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_26
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/tagmanager/e;
new-instance v3, Lcom/google/android/gms/tagmanager/az;
iget-object v4, v0, Lcom/google/android/gms/tagmanager/e;->a:Ljava/lang/String;
iget-object v0, v0, Lcom/google/android/gms/tagmanager/e;->b:Ljava/lang/Object;
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ax;->a(Ljava/lang/Object;)[B
move-result-object v0
invoke-direct {v3, v4, v0}, Lcom/google/android/gms/tagmanager/az;-><init>(Ljava/lang/String;[B)V
invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_9
:cond_26
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ax;->b:Ljava/util/concurrent/Executor;
new-instance v2, Lcom/google/android/gms/tagmanager/ax$1;
invoke-direct {v2, p0, v1, p2, p3}, Lcom/google/android/gms/tagmanager/ax$1;-><init>(Lcom/google/android/gms/tagmanager/ax;Ljava/util/List;J)V
invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
return-void
.end method