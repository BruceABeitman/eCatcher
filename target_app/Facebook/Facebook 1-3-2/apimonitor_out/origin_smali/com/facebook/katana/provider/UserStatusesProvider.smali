.class public Lcom/facebook/katana/provider/UserStatusesProvider;
.super Landroid/content/ContentProvider;
.source "UserStatusesProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/provider/UserStatusesProvider$Columns;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.facebook.katana.provider.UserStatusesProvider"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final SQL_USER_STATUSES:Ljava/lang/String; = "CREATE TABLE user_statuses (_id INTEGER PRIMARY KEY,user_id INT,first_name TEXT,last_name TEXT,display_name TEXT,user_pic TEXT,timestamp INT,message TEXT);"

.field private static final URL_MATCHER:Landroid/content/UriMatcher; = null

.field private static final USER_STATUSES:I = 0x1

.field private static final USER_STATUSES_PROJECTION_MAP:Ljava/util/HashMap; = null
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

.field private static final USER_STATUSES_TABLE:Ljava/lang/String; = "user_statuses"

.field private static final USER_STATUS_ID:I = 0x2


# instance fields
.field private mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v7, "last_name"

    const-string v6, "first_name"

    const-string v5, "display_name"

    const-string v4, "com.facebook.katana.provider.UserStatusesProvider"

    const-string v3, "_id"

    const-string v0, "content://com.facebook.katana.provider.UserStatusesProvider/user_statuses"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/provider/UserStatusesProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/facebook/katana/provider/UserStatusesProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    sget-object v0, Lcom/facebook/katana/provider/UserStatusesProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.facebook.katana.provider.UserStatusesProvider"

    const-string v1, "user_statuses"

    const/4 v2, 0x1

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/facebook/katana/provider/UserStatusesProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.facebook.katana.provider.UserStatusesProvider"

    const-string v1, "user_statuses/#"

    const/4 v2, 0x2

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/provider/UserStatusesProvider;->USER_STATUSES_PROJECTION_MAP:Ljava/util/HashMap;

    sget-object v0, Lcom/facebook/katana/provider/UserStatusesProvider;->USER_STATUSES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/UserStatusesProvider;->USER_STATUSES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "user_id"

    const-string v2, "user_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/UserStatusesProvider;->USER_STATUSES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "first_name"

    const-string v1, "first_name"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/UserStatusesProvider;->USER_STATUSES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "last_name"

    const-string v1, "last_name"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/UserStatusesProvider;->USER_STATUSES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "display_name"

    const-string v1, "display_name"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/UserStatusesProvider;->USER_STATUSES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "user_pic"

    const-string v2, "user_pic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/UserStatusesProvider;->USER_STATUSES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "timestamp"

    const-string v2, "timestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/UserStatusesProvider;->USER_STATUSES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "message"

    const-string v2, "message"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static getTableName()Ljava/lang/String;
    .registers 1

    const-string v0, "user_statuses"

    return-object v0
.end method

.method public static getTableSQL()Ljava/lang/String;
    .registers 1

    const-string v0, "CREATE TABLE user_statuses (_id INTEGER PRIMARY KEY,user_id INT,first_name TEXT,last_name TEXT,display_name TEXT,user_pic TEXT,timestamp INT,message TEXT);"

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11

    const/4 v5, 0x0

    const-string v6, "user_statuses"

    iget-object v3, p0, Lcom/facebook/katana/provider/UserStatusesProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-virtual {v3}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v3, Lcom/facebook/katana/provider/UserStatusesProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_5c

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown URL "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_27
    const-string v3, "user_statuses"

    invoke-virtual {v1, v6, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_2d
    invoke-virtual {p0}, Lcom/facebook/katana/provider/UserStatusesProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v5, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    return v0

    :pswitch_3a
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "user_statuses"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_2d

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_27
        :pswitch_3a
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/facebook/katana/provider/UserStatusesProvider;->URL_MATCHER:Landroid/content/UriMatcher;

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
    const-string v0, "vnd.android.cursor.dir/vnd.facebook.katana.userstatuses"

    :goto_20
    return-object v0

    :pswitch_21
    const-string v0, "vnd.android.cursor.item/vnd.facebook.katana.userstatuses"

    goto :goto_20

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_21
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 10

    if-eqz p2, :cond_25

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    :goto_7
    sget-object v4, Lcom/facebook/katana/provider/UserStatusesProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2b

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown URL "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_25
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    goto :goto_7

    :cond_2b
    iget-object v4, p0, Lcom/facebook/katana/provider/UserStatusesProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-virtual {v4}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "user_statuses"

    const-string v6, "user_id"

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_5b

    sget-object v4, Lcom/facebook/katana/provider/UserStatusesProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/katana/provider/UserStatusesProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    return-object v2

    :cond_5b
    new-instance v4, Landroid/database/SQLException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to insert row into "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public onCreate()Z
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/katana/provider/UserStatusesProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/provider/UserStatusesProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    iget-object v0, p0, Lcom/facebook/katana/provider/UserStatusesProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

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

    const-string v2, "user_statuses"

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    sget-object v1, Lcom/facebook/katana/provider/UserStatusesProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_78

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

    :pswitch_26
    const-string v1, "user_statuses"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/katana/provider/UserStatusesProvider;->USER_STATUSES_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    :goto_30
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_75

    const-string v7, "timestamp DESC"

    :goto_38
    iget-object v1, p0, Lcom/facebook/katana/provider/UserStatusesProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-virtual {v1}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-virtual {p0}, Lcom/facebook/katana/provider/UserStatusesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v8

    :pswitch_52
    const-string v1, "user_statuses"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "_id="

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_30

    :cond_75
    move-object v7, p5

    goto :goto_38

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_26
        :pswitch_52
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12

    const/4 v5, 0x0

    const-string v6, "user_statuses"

    iget-object v3, p0, Lcom/facebook/katana/provider/UserStatusesProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-virtual {v3}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v3, Lcom/facebook/katana/provider/UserStatusesProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_5c

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown URL "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_27
    const-string v3, "user_statuses"

    invoke-virtual {v1, v6, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_2d
    invoke-virtual {p0}, Lcom/facebook/katana/provider/UserStatusesProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v5, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    return v0

    :pswitch_3a
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "user_statuses"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, p2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_2d

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_27
        :pswitch_3a
    .end packed-switch
.end method