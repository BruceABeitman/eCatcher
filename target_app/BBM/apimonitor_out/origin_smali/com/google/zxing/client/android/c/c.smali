.class public final Lcom/google/zxing/client/android/c/c;
.super Ljava/lang/Object;
.source "HistoryManager.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:Ljava/text/DateFormat;


# instance fields
.field public final b:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v0, Lcom/google/zxing/client/android/c/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/c/c;->c:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "text"

    aput-object v1, v0, v3

    const-string v1, "display"

    aput-object v1, v0, v4

    const-string v1, "format"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "details"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/c/c;->d:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "COUNT(1)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/zxing/client/android/c/c;->e:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/zxing/client/android/c/c;->f:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "id"

    aput-object v1, v0, v3

    const-string v1, "details"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/zxing/client/android/c/c;->a:[Ljava/lang/String;

    invoke-static {v5, v5}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/c/c;->g:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/client/android/c/c;->b:Landroid/app/Activity;

    return-void
.end method

.method public static a(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/zxing/client/android/c/b;
    .registers 14

    const/4 v8, 0x0

    new-instance v0, Lcom/google/zxing/client/android/c/a;

    iget-object v1, p0, Lcom/google/zxing/client/android/c/c;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/zxing/client/android/c/a;-><init>(Landroid/content/Context;)V

    :try_start_8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_4c

    move-result-object v0

    :try_start_c
    const-string v1, "history"

    sget-object v2, Lcom/google/zxing/client/android/c/c;->d:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "timestamp DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_52

    move-result-object v8

    add-int/lit8 v1, p1, 0x1

    :try_start_1c
    invoke-interface {v8, v1}, Landroid/database/Cursor;->move(I)Z

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v1, Lcom/google/zxing/m;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v5}, Lcom/google/zxing/a;->valueOf(Ljava/lang/String;)Lcom/google/zxing/a;

    move-result-object v5

    invoke-direct/range {v1 .. v7}, Lcom/google/zxing/m;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/o;Lcom/google/zxing/a;J)V

    new-instance v2, Lcom/google/zxing/client/android/c/b;

    invoke-direct {v2, v1, v9, v10}, Lcom/google/zxing/client/android/c/b;-><init>(Lcom/google/zxing/m;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_1c .. :try_end_48} :catchall_58

    invoke-static {v8, v0}, Lcom/google/zxing/client/android/c/c;->a(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v2

    :catchall_4c
    move-exception v0

    move-object v1, v8

    :goto_4e
    invoke-static {v1, v8}, Lcom/google/zxing/client/android/c/c;->a(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :catchall_52
    move-exception v1

    move-object v11, v1

    move-object v1, v8

    move-object v8, v0

    move-object v0, v11

    goto :goto_4e

    :catchall_58
    move-exception v1

    move-object v11, v1

    move-object v1, v8

    move-object v8, v0

    move-object v0, v11

    goto :goto_4e
.end method

.method public final a()V
    .registers 11

    const/4 v8, 0x0

    new-instance v0, Lcom/google/zxing/client/android/c/a;

    iget-object v1, p0, Lcom/google/zxing/client/android/c/c;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/zxing/client/android/c/a;-><init>(Landroid/content/Context;)V

    :try_start_8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_51
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_b} :catch_63

    move-result-object v0

    :try_start_c
    const-string v1, "history"

    sget-object v2, Lcom/google/zxing/client/android/c/c;->f:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "timestamp DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_57
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_19} :catch_66

    move-result-object v2

    const/16 v1, 0x1f4

    :try_start_1c
    invoke-interface {v2, v1}, Landroid/database/Cursor;->move(I)Z

    :goto_1f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    const-string v1, "history"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_1c .. :try_end_3f} :catchall_5c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_3f} :catch_40

    goto :goto_1f

    :catch_40
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    :goto_44
    :try_start_44
    sget-object v2, Lcom/google/zxing/client/android/c/c;->c:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_60

    invoke-static {v1, v8}, Lcom/google/zxing/client/android/c/c;->a(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_4c
    return-void

    :cond_4d
    invoke-static {v2, v0}, Lcom/google/zxing/client/android/c/c;->a(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_4c

    :catchall_51
    move-exception v0

    move-object v2, v8

    :goto_53
    invoke-static {v2, v8}, Lcom/google/zxing/client/android/c/c;->a(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :catchall_57
    move-exception v1

    move-object v2, v8

    move-object v8, v0

    move-object v0, v1

    goto :goto_53

    :catchall_5c
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_53

    :catchall_60
    move-exception v0

    move-object v2, v1

    goto :goto_53

    :catch_63
    move-exception v0

    move-object v1, v8

    goto :goto_44

    :catch_66
    move-exception v1

    move-object v9, v1

    move-object v1, v8

    move-object v8, v0

    move-object v0, v9

    goto :goto_44
.end method

.method public final a(Lcom/google/zxing/m;Lcom/google/zxing/client/android/d/j;)V
    .registers 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/zxing/client/android/c/c;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SAVE_HISTORY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p2}, Lcom/google/zxing/client/android/d/j;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/google/zxing/client/android/c/c;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preferences_remember_duplicates"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p1, Lcom/google/zxing/m;->a:Ljava/lang/String;

    new-instance v1, Lcom/google/zxing/client/android/c/a;

    iget-object v3, p0, Lcom/google/zxing/client/android/c/c;->b:Landroid/app/Activity;

    invoke-direct {v1, v3}, Lcom/google/zxing/client/android/c/a;-><init>(Landroid/content/Context;)V

    :try_start_2f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_8a

    move-result-object v1

    :try_start_33
    const-string v3, "history"

    const-string v4, "text=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_98

    invoke-static {v2, v1}, Lcom/google/zxing/client/android/c/c;->a(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_43
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "text"

    iget-object v3, p1, Lcom/google/zxing/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "format"

    iget-object v3, p1, Lcom/google/zxing/m;->d:Lcom/google/zxing/a;

    invoke-virtual {v3}, Lcom/google/zxing/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "display"

    invoke-virtual {p2}, Lcom/google/zxing/client/android/d/j;->b()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v1, Lcom/google/zxing/client/android/c/a;

    iget-object v3, p0, Lcom/google/zxing/client/android/c/c;->b:Landroid/app/Activity;

    invoke-direct {v1, v3}, Lcom/google/zxing/client/android/c/a;-><init>(Landroid/content/Context;)V

    :try_start_7b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_90

    move-result-object v1

    :try_start_7f
    const-string v3, "history"

    const-string v4, "timestamp"

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_96

    invoke-static {v2, v1}, Lcom/google/zxing/client/android/c/c;->a(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_17

    :catchall_8a
    move-exception v0

    move-object v1, v2

    :goto_8c
    invoke-static {v2, v1}, Lcom/google/zxing/client/android/c/c;->a(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :catchall_90
    move-exception v0

    move-object v1, v2

    :goto_92
    invoke-static {v2, v1}, Lcom/google/zxing/client/android/c/c;->a(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :catchall_96
    move-exception v0

    goto :goto_92

    :catchall_98
    move-exception v0

    goto :goto_8c
.end method
