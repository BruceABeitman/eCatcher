.class final Lcom/google/android/gms/tagmanager/ay;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/ax;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/ax;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ay;->a:Lcom/google/android/gms/tagmanager/ax;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 12

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_2
    const-string v1, "SQLITE_MASTER"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "name"

    aput-object v3, v2, v0

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p0, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_41
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_1b} :catch_26

    move-result-object v1

    :try_start_1c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_48
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1f} :catch_4f

    move-result v0

    if-eqz v1, :cond_25

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_25
    :goto_25
    return v0

    :catch_26
    move-exception v0

    move-object v0, v9

    :goto_28
    :try_start_28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error querying for table "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/p;->b(Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_4b

    if-eqz v0, :cond_3f

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3f
    move v0, v8

    goto :goto_25

    :catchall_41
    move-exception v0

    :goto_42
    if-eqz v9, :cond_47

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_47
    throw v0

    :catchall_48
    move-exception v0

    move-object v9, v1

    goto :goto_42

    :catchall_4b
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    goto :goto_42

    :catch_4f
    move-exception v0

    move-object v0, v1

    goto :goto_28
.end method


# virtual methods
.method public final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_4} :catch_c

    move-result-object v0

    :goto_5
    if-nez v0, :cond_b

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :cond_b
    return-object v0

    :catch_c
    move-exception v1

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ay;->a:Lcom/google/android/gms/tagmanager/ax;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/ax;->b(Lcom/google/android/gms/tagmanager/ax;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "google_tagmanager.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_5
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/tagmanager/n;->a()I

    move-result v1

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1f

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v3}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v1, v3, v3}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v1, v4, v4}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v1, v4, v4}, Ljava/io/File;->setWritable(ZZ)Z

    :cond_1f
    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_13

    const-string v0, "PRAGMA journal_mode=memory"

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_23

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_13
    const-string v0, "datalayer"

    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/ay;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {}, Lcom/google/android/gms/tagmanager/ax;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_22
    return-void

    :catchall_23
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_28
    const-string v0, "SELECT * FROM datalayer WHERE 0"

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :try_start_33
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_38
    array-length v4, v3

    if-ge v0, v4, :cond_43

    aget-object v4, v3, v0

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_6e

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_43
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v0, "key"

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "value"

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "ID"

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "expires"

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    :cond_66
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database column missing"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_6e
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_73
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database has extra columns"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method
