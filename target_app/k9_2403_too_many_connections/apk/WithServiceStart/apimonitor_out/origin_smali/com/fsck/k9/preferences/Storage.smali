.class public Lcom/fsck/k9/preferences/Storage;
.super Ljava/lang/Object;
.source "Storage.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# static fields
.field private static storages:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/fsck/k9/preferences/Storage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DB_NAME:Ljava/lang/String;

.field private DB_VERSION:I

.field private context:Landroid/content/Context;

.field private listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile storage:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private workingChangedKeys:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private workingDB:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private workingStorage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/fsck/k9/preferences/Storage;->storages:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/preferences/Storage;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/fsck/k9/preferences/Storage;->DB_VERSION:I

    const-string v0, "preferences_storage"

    iput-object v0, p0, Lcom/fsck/k9/preferences/Storage;->DB_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/preferences/Storage;->workingStorage:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/preferences/Storage;->workingDB:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/preferences/Storage;->workingChangedKeys:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/preferences/Storage;->context:Landroid/content/Context;

    iput-object p1, p0, Lcom/fsck/k9/preferences/Storage;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/fsck/k9/preferences/Storage;->loadValues()V

    return-void
.end method

.method public static getStorage(Landroid/content/Context;)Lcom/fsck/k9/preferences/Storage;
    .registers 5

    const-string v3, "k9"

    sget-object v2, Lcom/fsck/k9/preferences/Storage;->storages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/preferences/Storage;

    if-eqz v1, :cond_19

    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v2, :cond_17

    const-string v2, "k9"

    const-string v2, "Returning already existing Storage"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    move-object v2, v1

    :goto_18
    return-object v2

    :cond_19
    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v2, :cond_24

    const-string v2, "k9"

    const-string v2, "Creating provisional storage"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    new-instance v1, Lcom/fsck/k9/preferences/Storage;

    invoke-direct {v1, p0}, Lcom/fsck/k9/preferences/Storage;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/fsck/k9/preferences/Storage;->storages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/preferences/Storage;

    if-eqz v0, :cond_40

    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v2, :cond_3e

    const-string v2, "k9"

    const-string v2, "Another thread beat us to creating the Storage, returning that one"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    move-object v2, v0

    goto :goto_18

    :cond_40
    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v2, :cond_4b

    const-string v2, "k9"

    const-string v2, "Returning the Storage we created"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    move-object v2, v1

    goto :goto_18
.end method

.method private keyChange(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/fsck/k9/preferences/Storage;->workingChangedKeys:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method private loadValues()V
    .registers 15

    const-string v13, "ms"

    const-string v11, "Preferences load took "

    const-string v12, "k9"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v8, "k9"

    const-string v8, "Loading preferences from DB into Storage"

    invoke-static {v12, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v4, 0x0

    :try_start_13
    invoke-direct {p0}, Lcom/fsck/k9/preferences/Storage;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v8, "SELECT primkey, value FROM preferences_storage"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_90

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-boolean v8, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v8, :cond_5a

    const-string v8, "k9"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loading key \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', value = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    iget-object v8, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v3, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catchall {:try_start_13 .. :try_end_5f} :catchall_60

    goto :goto_1e

    :catchall_60
    move-exception v8

    if-eqz v0, :cond_66

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_66
    if-eqz v4, :cond_6b

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v9, "k9"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Preferences load took "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v1, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v8

    :cond_90
    if-eqz v0, :cond_95

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_95
    if-eqz v4, :cond_9a

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v8, "k9"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Preferences load took "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, v1, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private openDB()Landroid/database/sqlite/SQLiteDatabase;
    .registers 6

    iget-object v1, p0, Lcom/fsck/k9/preferences/Storage;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fsck/k9/preferences/Storage;->DB_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    iget v2, p0, Lcom/fsck/k9/preferences/Storage;->DB_VERSION:I

    if-eq v1, v2, :cond_28

    const-string v1, "k9"

    const-string v2, "Creating Storage database"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DROP TABLE IF EXISTS preferences_storage"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE preferences_storage (primkey TEXT PRIMARY KEY ON CONFLICT REPLACE, value TEXT)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget v1, p0, Lcom/fsck/k9/preferences/Storage;->DB_VERSION:I

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    :cond_28
    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected doInTransaction(Ljava/lang/Runnable;)V
    .registers 11

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    iget-object v7, p0, Lcom/fsck/k9/preferences/Storage;->workingStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/fsck/k9/preferences/Storage;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iget-object v7, p0, Lcom/fsck/k9/preferences/Storage;->workingDB:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/preferences/Storage;->workingChangedKeys:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_25
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iput-object v6, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v7, p0, Lcom/fsck/k9/preferences/Storage;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v4, p0, v0}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_25 .. :try_end_52} :catchall_53

    goto :goto_43

    :catchall_53
    move-exception v7

    iget-object v8, p0, Lcom/fsck/k9/preferences/Storage;->workingDB:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->remove()V

    iget-object v8, p0, Lcom/fsck/k9/preferences/Storage;->workingStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->remove()V

    iget-object v8, p0, Lcom/fsck/k9/preferences/Storage;->workingChangedKeys:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->remove()V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v5, :cond_6b

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6b
    throw v7

    :cond_6c
    iget-object v7, p0, Lcom/fsck/k9/preferences/Storage;->workingDB:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->remove()V

    iget-object v7, p0, Lcom/fsck/k9/preferences/Storage;->workingStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->remove()V

    iget-object v7, p0, Lcom/fsck/k9/preferences/Storage;->workingChangedKeys:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->remove()V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v5, :cond_83

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_83
    return-void
.end method

.method public bridge synthetic edit()Landroid/content/SharedPreferences$Editor;
    .registers 2

    invoke-virtual {p0}, Lcom/fsck/k9/preferences/Storage;->edit()Lcom/fsck/k9/preferences/Editor;

    move-result-object v0

    return-object v0
.end method

.method public edit()Lcom/fsck/k9/preferences/Editor;
    .registers 2

    new-instance v0, Lcom/fsck/k9/preferences/Editor;

    invoke-direct {v0, p0}, Lcom/fsck/k9/preferences/Editor;-><init>(Lcom/fsck/k9/preferences/Storage;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 5

    iget-object v1, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_c

    move v1, p2

    :goto_b
    return v1

    :cond_c
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_b
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 5

    iget-object v1, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_c

    move v1, p2

    :goto_b
    return v1

    :cond_c
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_b
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 5

    iget-object v1, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_c

    move v1, p2

    :goto_b
    return v1

    :cond_c
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_b
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 7

    iget-object v1, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_c

    move-wide v1, p2

    :goto_b
    return-wide v1

    :cond_c
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_b
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v1, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_c

    move-object v1, p2

    :goto_b
    return-object v1

    :cond_c
    move-object v1, v0

    goto :goto_b
.end method

.method protected put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v4, "primkey"

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "primkey"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fsck/k9/preferences/Storage;->workingDB:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "preferences_storage"

    const-string v3, "primkey"

    invoke-virtual {v1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v1, p0, Lcom/fsck/k9/preferences/Storage;->workingStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/fsck/k9/preferences/Storage;->keyChange(Ljava/lang/String;)V

    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/preferences/Storage;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method protected remove(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/fsck/k9/preferences/Storage;->workingDB:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "preferences_storage"

    const-string v2, "primkey = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fsck/k9/preferences/Storage;->workingStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/fsck/k9/preferences/Storage;->keyChange(Ljava/lang/String;)V

    return-void
.end method

.method protected removeAll()V
    .registers 5

    iget-object v2, p0, Lcom/fsck/k9/preferences/Storage;->workingStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/fsck/k9/preferences/Storage;->keyChange(Ljava/lang/String;)V

    goto :goto_10

    :cond_20
    iget-object v2, p0, Lcom/fsck/k9/preferences/Storage;->workingDB:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "DELETE FROM preferences_storage"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fsck/k9/preferences/Storage;->workingStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public size()J
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/preferences/Storage;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
