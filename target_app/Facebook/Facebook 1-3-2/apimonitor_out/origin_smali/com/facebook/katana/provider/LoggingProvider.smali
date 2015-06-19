.class public Lcom/facebook/katana/provider/LoggingProvider;
.super Landroid/content/ContentProvider;
.source "LoggingProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/provider/LoggingProvider$SessionColumns;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.facebook.katana.provider.LoggingProvider"

.field private static final CONTENT_SCHEME:Ljava/lang/String; = "content://"

.field private static final PERF_SESSIONS:I = 0x1

.field public static final PERF_SESSIONS_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PERF_SESSIONS_SID:I = 0x2

.field private static final SESSIONS_BASE_URI:Ljava/lang/String; = "content://com.facebook.katana.provider.LoggingProvider/perf_sessions"

.field public static final SESSIONS_CONTENT_URI:Landroid/net/Uri; = null

.field private static final SESSIONS_PATH:Ljava/lang/String; = "/sid"

.field public static final SESSIONS_SID_CONTENT_URI:Landroid/net/Uri; = null

.field private static final SQL_PERF_SESSIONS:Ljava/lang/String; = "CREATE TABLE perf_sessions (_id INTEGER PRIMARY KEY,session_id INT,start_time INT,end_time INT,api_log TEXT);"

.field private static final TABLE_PERF_SESSIONS:Ljava/lang/String; = "perf_sessions"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v7, "start_time"

    const-string v6, "session_id"

    const-string v5, "end_time"

    const-string v4, "com.facebook.katana.provider.LoggingProvider"

    const-string v3, "api_log"

    const-string v0, "content://com.facebook.katana.provider.LoggingProvider/perf_sessions"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/provider/LoggingProvider;->SESSIONS_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.facebook.katana.provider.LoggingProvider/perf_sessions/sid"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/provider/LoggingProvider;->SESSIONS_SID_CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/facebook/katana/provider/LoggingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    sget-object v0, Lcom/facebook/katana/provider/LoggingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.facebook.katana.provider.LoggingProvider"

    const-string v1, "perf_sessions"

    const/4 v2, 0x1

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/facebook/katana/provider/LoggingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.facebook.katana.provider.LoggingProvider"

    const-string v1, "perf_sessions/#"

    const/4 v2, 0x2

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/provider/LoggingProvider;->PERF_SESSIONS_PROJECTION_MAP:Ljava/util/HashMap;

    sget-object v0, Lcom/facebook/katana/provider/LoggingProvider;->PERF_SESSIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "session_id"

    const-string v1, "session_id"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/LoggingProvider;->PERF_SESSIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "start_time"

    const-string v1, "start_time"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/LoggingProvider;->PERF_SESSIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "end_time"

    const-string v1, "end_time"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/LoggingProvider;->PERF_SESSIONS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "api_log"

    const-string v1, "api_log"

    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static getTableNames()[Ljava/lang/String;
    .registers 3

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "perf_sessions"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static getTableSQLs()[Ljava/lang/String;
    .registers 3

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CREATE TABLE perf_sessions (_id INTEGER PRIMARY KEY,session_id INT,start_time INT,end_time INT,api_log TEXT);"

    aput-object v2, v0, v1

    return-object v0
.end method

.method private insertSessionValues(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    iget-object v3, p0, Lcom/facebook/katana/provider/LoggingProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-virtual {v3}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "perf_sessions"

    const-string v5, "session_id"

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_2f

    sget-object v3, Lcom/facebook/katana/provider/LoggingProvider;->SESSIONS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/katana/provider/LoggingProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object v2

    :cond_2f
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to insert row into "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private insertSessionsValues(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    const/4 v3, 0x0

    array-length v4, p2

    const/4 v5, 0x0

    :goto_3
    if-lt v5, v4, :cond_14

    if-lez v3, :cond_2f

    invoke-virtual {p0}, Lcom/facebook/katana/provider/LoggingProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v3

    :cond_14
    aget-object v0, p2, v5

    iget-object v6, p0, Lcom/facebook/katana/provider/LoggingProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-virtual {v6}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "perf_sessions"

    const-string v8, "session_id"

    invoke-virtual {v6, v7, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-lez v6, :cond_2c

    add-int/lit8 v3, v3, 0x1

    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2f
    new-instance v4, Landroid/database/SQLException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to insert rows into "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 6

    sget-object v0, Lcom/facebook/katana/provider/LoggingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_24

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1e
    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/provider/LoggingProvider;->insertSessionsValues(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    return v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9

    iget-object v2, p0, Lcom/facebook/katana/provider/LoggingProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-virtual {v2}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/provider/LoggingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_3a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown URL "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_24
    const-string v2, "perf_sessions"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_38

    invoke-virtual {p0}, Lcom/facebook/katana/provider/LoggingProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_38
    return v0

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_24
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/facebook/katana/provider/LoggingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1e
    const-string v0, "vnd.android.cursor.dir/vnd.facebook.logresult"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7

    if-eqz p2, :cond_25

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    :goto_7
    sget-object v1, Lcom/facebook/katana/provider/LoggingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_30

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown URL "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    goto :goto_7

    :pswitch_2b
    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/provider/LoggingProvider;->insertSessionValues(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2b
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/katana/provider/LoggingProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/provider/LoggingProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    iget-object v0, p0, Lcom/facebook/katana/provider/LoggingProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-virtual {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15

    const/4 v5, 0x0

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const/4 v7, 0x0

    sget-object v1, Lcom/facebook/katana/provider/LoggingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_4c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown URL "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_25
    const-string v1, "perf_sessions"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/katana/provider/LoggingProvider;->PERF_SESSIONS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const-string v7, "session_id ASC"

    iget-object v1, p0, Lcom/facebook/katana/provider/LoggingProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-virtual {v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-virtual {p0}, Lcom/facebook/katana/provider/LoggingProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v8

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_25
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10

    iget-object v2, p0, Lcom/facebook/katana/provider/LoggingProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-virtual {v2}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/provider/LoggingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_3a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown URL "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_24
    const-string v2, "perf_sessions"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_38

    invoke-virtual {p0}, Lcom/facebook/katana/provider/LoggingProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_38
    return v0

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_24
    .end packed-switch
.end method
