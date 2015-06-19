.class final Lcom/c/a/a/g;
.super Ljava/lang/Object;
.source "MPDbAdapter.java"


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;


# instance fields
.field final a:Lcom/c/a/a/h;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/c/a/a/i;->a:Lcom/c/a/a/i;

    iget-object v1, v1, Lcom/c/a/a/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (_id INTEGER PRIMARY KEY AUTOINCREMENT, data STRING NOT NULL, created_at INTEGER NOT NULL);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/a/a/g;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/c/a/a/i;->b:Lcom/c/a/a/i;

    iget-object v1, v1, Lcom/c/a/a/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (_id INTEGER PRIMARY KEY AUTOINCREMENT, data STRING NOT NULL, created_at INTEGER NOT NULL);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/a/a/g;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE INDEX IF NOT EXISTS time_idx ON "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/c/a/a/i;->a:Lcom/c/a/a/i;

    iget-object v1, v1, Lcom/c/a/a/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (created_at);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/a/a/g;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE INDEX IF NOT EXISTS time_idx ON "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/c/a/a/i;->b:Lcom/c/a/a/i;

    iget-object v1, v1, Lcom/c/a/a/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (created_at);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/a/a/g;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "mixpanel"

    invoke-direct {p0, p1, v0}, Lcom/c/a/a/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/c/a/a/h;

    invoke-direct {v0, p1, p2}, Lcom/c/a/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/h;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/c/a/a/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/c/a/a/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/c/a/a/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/c/a/a/g;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Lcom/c/a/a/i;)I
    .registers 11

    const/4 v2, 0x0

    iget-object v3, p2, Lcom/c/a/a/i;->c:Ljava/lang/String;

    const/4 v0, -0x1

    :try_start_4
    iget-object v1, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/h;

    invoke-virtual {v1}, Lcom/c/a/a/h;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "data"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "created_at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT COUNT(*) FROM "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_44
    .catchall {:try_start_4 .. :try_end_44} :catchall_7b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_44} :catch_50

    move-result v0

    iget-object v1, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/h;

    invoke-virtual {v1}, Lcom/c/a/a/h;->close()V

    if-eqz v2, :cond_4f

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4f
    :goto_4f
    return v0

    :catch_50
    move-exception v1

    :try_start_51
    const-string v4, "MixpanelAPI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "addJSON "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " FAILED. Deleting DB."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/h;

    invoke-virtual {v1}, Lcom/c/a/a/h;->a()V
    :try_end_70
    .catchall {:try_start_51 .. :try_end_70} :catchall_7b

    iget-object v1, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/h;

    invoke-virtual {v1}, Lcom/c/a/a/h;->close()V

    if-eqz v2, :cond_4f

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_4f

    :catchall_7b
    move-exception v0

    iget-object v1, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/h;

    invoke-virtual {v1}, Lcom/c/a/a/h;->close()V

    if-eqz v2, :cond_86

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_86
    throw v0
.end method

.method public final a(JLcom/c/a/a/i;)V
    .registers 9

    iget-object v1, p3, Lcom/c/a/a/i;->c:Ljava/lang/String;

    :try_start_2
    iget-object v0, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/h;

    invoke-virtual {v0}, Lcom/c/a/a/h;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

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
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_47
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_1b} :catch_21

    iget-object v0, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/h;

    invoke-virtual {v0}, Lcom/c/a/a/h;->close()V

    :goto_20
    return-void

    :catch_21
    move-exception v0

    :try_start_22
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

    iget-object v0, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/h;

    invoke-virtual {v0}, Lcom/c/a/a/h;->a()V
    :try_end_41
    .catchall {:try_start_22 .. :try_end_41} :catchall_47

    iget-object v0, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/h;

    invoke-virtual {v0}, Lcom/c/a/a/h;->close()V

    goto :goto_20

    :catchall_47
    move-exception v0

    iget-object v1, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/h;

    invoke-virtual {v1}, Lcom/c/a/a/h;->close()V

    throw v0
.end method

.method public final a(Lcom/c/a/a/i;)[Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    iget-object v4, p1, Lcom/c/a/a/i;->c:Ljava/lang/String;

    :try_start_3
    iget-object v0, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/h;

    invoke-virtual {v0}, Lcom/c/a/a/h;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

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
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_9b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_22} :catch_78

    move-result-object v2

    :try_start_23
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object v3, v1

    :goto_29
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    move-result v5

    if-eqz v5, :cond_3f

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3e
    .catchall {:try_start_23 .. :try_end_3e} :catchall_a8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_23 .. :try_end_3e} :catch_aa

    move-result-object v3

    :cond_3f
    :try_start_3f
    new-instance v5, Lorg/json/JSONObject;

    const-string v6, "data"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_51
    .catchall {:try_start_3f .. :try_end_51} :catchall_a8
    .catch Lorg/json/JSONException; {:try_start_3f .. :try_end_51} :catch_52
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3f .. :try_end_51} :catch_aa

    goto :goto_29

    :catch_52
    move-exception v5

    goto :goto_29

    :cond_54
    :try_start_54
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_b2

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_a8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_54 .. :try_end_5d} :catch_aa

    move-result-object v0

    :goto_5e
    iget-object v4, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/h;

    invoke-virtual {v4}, Lcom/c/a/a/h;->close()V

    if-eqz v2, :cond_af

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v2, v0

    move-object v0, v3

    :goto_6a
    if-eqz v0, :cond_77

    if-eqz v2, :cond_77

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const/4 v0, 0x1

    aput-object v2, v1, v0

    :cond_77
    return-object v1

    :catch_78
    move-exception v0

    move-object v2, v1

    :goto_7a
    :try_start_7a
    const-string v3, "MixpanelAPI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "generateDataString "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8e
    .catchall {:try_start_7a .. :try_end_8e} :catchall_a8

    iget-object v0, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/h;

    invoke-virtual {v0}, Lcom/c/a/a/h;->close()V

    if-eqz v2, :cond_ac

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    move-object v2, v1

    goto :goto_6a

    :catchall_9b
    move-exception v0

    move-object v2, v1

    :goto_9d
    iget-object v1, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/h;

    invoke-virtual {v1}, Lcom/c/a/a/h;->close()V

    if-eqz v2, :cond_a7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_a7
    throw v0

    :catchall_a8
    move-exception v0

    goto :goto_9d

    :catch_aa
    move-exception v0

    goto :goto_7a

    :cond_ac
    move-object v0, v1

    move-object v2, v1

    goto :goto_6a

    :cond_af
    move-object v2, v0

    move-object v0, v3

    goto :goto_6a

    :cond_b2
    move-object v0, v1

    goto :goto_5e
.end method
