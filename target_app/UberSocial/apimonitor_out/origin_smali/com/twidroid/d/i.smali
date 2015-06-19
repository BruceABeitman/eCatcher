.class public Lcom/twidroid/d/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select count(*) as total_messages from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    .registers 8

    const/4 v0, 0x3

    :goto_1
    if-lez v0, :cond_1a

    :try_start_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_6} :catch_9

    move-result v0

    int-to-long v0, v0

    :goto_8
    return-wide v0

    :catch_9
    move-exception v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0xf

    :try_start_11
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_1

    :catch_15
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_1a
    const-wide/16 v0, -0x1

    goto :goto_8
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 6

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_c

    move-result-wide v0

    :goto_4
    return-wide v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    :goto_9
    const-wide/16 v0, -0x1

    goto :goto_4

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_9
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .registers 7

    const/4 v0, 0x3

    :goto_1
    if-lez v0, :cond_1a

    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_6} :catch_9

    move-result v0

    int-to-long v0, v0

    :goto_8
    return-wide v0

    :catch_9
    move-exception v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0xf

    :try_start_11
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_1

    :catch_15
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_1a
    const-wide/16 v0, -0x1

    goto :goto_8
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x3

    :goto_1
    if-lez v0, :cond_6

    :try_start_3
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_6} :catch_7

    :cond_6
    return-void

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0xf

    :try_start_f
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_1

    :catch_13
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
