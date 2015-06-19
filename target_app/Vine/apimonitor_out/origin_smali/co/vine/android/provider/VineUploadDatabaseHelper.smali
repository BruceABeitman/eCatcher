.class public Lco/vine/android/provider/VineUploadDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "VineUploadDatabaseHelper.java"


# static fields
.field public static final DATABASE_VERSION:I = 0x4

.field private static final DB_NAME:Ljava/lang/String; = "upload"

.field public static final SCHEMA_VERSION:I = 0x1

.field private static final SEPARATOR:Ljava/lang/String; = "-"

.field private static final sHelperMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lco/vine/android/provider/VineUploadDatabaseHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lco/vine/android/provider/VineUploadDatabaseHelper;->sHelperMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/provider/VineUploadDatabaseHelper;->mAppContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineUploadDatabaseHelper;
    .registers 5

    const-class v3, Lco/vine/android/provider/VineUploadDatabaseHelper;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_4
    invoke-static {v2}, Lco/vine/android/provider/VineUploadDatabaseHelper;->getDatabaseName(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lco/vine/android/provider/VineUploadDatabaseHelper;->sHelperMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/provider/VineUploadDatabaseHelper;

    if-nez v1, :cond_20

    new-instance v1, Lco/vine/android/provider/VineUploadDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lco/vine/android/provider/VineUploadDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v2, Lco/vine/android/provider/VineUploadDatabaseHelper;->sHelperMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_22

    :cond_20
    monitor-exit v3

    return-object v1

    :catchall_22
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getDatabaseName(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE TABLE  IF NOT EXISTS uploads (_id INTEGER PRIMARY KEY,path TEXT,hash TEXT,status INT,post_info TEXT,video_url TEXT,thumbnail_path TEXT,thumbnail_url TEXT,upload_time TEXT,is_private INT,conversation_row_id INT,reference TEXT,owner_id INT,captcha_url TEXT, max_loops INT, message_row INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    invoke-virtual {p0, p1}, Lco/vine/android/provider/VineUploadDatabaseHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 10

    move v3, p2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3e

    :try_start_4
    const-string v4, "ALTER TABLE uploads ADD COLUMN reference TEXT;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v4, "ALTER TABLE uploads ADD COLUMN owner_id INT;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v4, "UPDATE uploads SET status=2 WHERE (status=0 OR status=1);"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v4, p0, Lco/vine/android/provider/VineUploadDatabaseHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v4}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v4

    invoke-virtual {v4}, Lco/vine/android/client/AppController;->getActiveSessionReadOnly()Lco/vine/android/client/Session;

    move-result-object v4

    invoke-virtual {v4}, Lco/vine/android/client/Session;->getUserId()J

    move-result-wide v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE uploads SET owner_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v3, 0x2

    :cond_3e
    const/4 v4, 0x2

    if-ne v3, v4, :cond_47

    const-string v4, "ALTER TABLE uploads ADD COLUMN captcha_url TEXT;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v3, 0x3

    :cond_47
    const/4 v4, 0x3

    if-ne v3, v4, :cond_5f

    const-string v4, "ALTER TABLE uploads ADD COLUMN is_private INT;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v4, "ALTER TABLE uploads ADD COLUMN conversation_row_id INT;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v4, "ALTER TABLE uploads ADD COLUMN max_loops INT;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v4, "ALTER TABLE uploads ADD COLUMN message_row INT;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_5e} :catch_60

    const/4 v3, 0x4

    :cond_5f
    :goto_5f
    return-void

    :catch_60
    move-exception v0

    invoke-static {v0}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    const-string v4, "DROP TABLE IF EXISTS uploads;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v4, "CREATE TABLE  IF NOT EXISTS uploads (_id INTEGER PRIMARY KEY,path TEXT,hash TEXT,status INT,post_info TEXT,video_url TEXT,thumbnail_path TEXT,thumbnail_url TEXT,upload_time TEXT,is_private INT,conversation_row_id INT,reference TEXT,owner_id INT,captcha_url TEXT, max_loops INT, message_row INT);"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_5f
.end method
