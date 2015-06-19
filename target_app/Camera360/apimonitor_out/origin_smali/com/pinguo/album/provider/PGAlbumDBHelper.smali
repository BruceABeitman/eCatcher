.class public Lcom/pinguo/album/provider/PGAlbumDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PGAlbumDBHelper.java"


# static fields
.field static final DATABASE_NAME:Ljava/lang/String; = "cloudalbum.db"

.field static final DATABASE_VERSION:I = 0x2

.field private static final EXTERNAL_SDCARD_DB_DIRECTORY:Ljava/lang/String; = "/Camera360/TempData/.sandbox/"

.field public static final EXTERNAL_SDCARD_DB_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/pinguo/album/provider/PGAlbumDBHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/pinguo/album/provider/PGAlbumDBHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/album/provider/PGAlbumDBHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/pinguo/album/provider/PGAlbumDBHelper;->sInstance:Lcom/pinguo/album/provider/PGAlbumDBHelper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/Camera360/TempData/.sandbox/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "cloudalbum.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/album/provider/PGAlbumDBHelper;->EXTERNAL_SDCARD_DB_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Lcom/pinguo/album/provider/PGAlbumDBHelper;->EXTERNAL_SDCARD_DB_PATH:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private createAlbumTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS photo_det (photo_key VARCHAR(60) PRIMARY KEY,photo_id VARCHAR(60),width INTEGER DEFAULT 0,height INTEGER DEFAULT 0,hasAudio INTEGER,avgColor INTEGER DEFAULT -1,timestamp INTEGER DEFAULT 0,date INTEGER DEFAULT 0,week VARCHAR(5),photo_data_bak TEXT,photo_crc32 VARCHAR(32));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS photo_group (group_id VARCHAR(60) PRIMARY KEY,group_name TEXT,begin_timestamp INTEGER DEFAULT 0,end_timestamp INTEGER DEFAULT 0,begin_date INTEGER DEFAULT 0,end_date INTEGER DEFAULT 0,group_photo_crc32s TEXT,group_data_bak TEXT,group_data_count INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private dropAll(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string/jumbo v0, "DROP TABLE IF EXISTS photo_det;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "DROP TABLE IF EXISTS photo_group;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "DROP TABLE IF EXISTS photo_tag;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "DROP VIEW IF EXISTS photo_data;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method protected static declared-synchronized getInstance(Landroid/content/Context;)Lcom/pinguo/album/provider/PGAlbumDBHelper;
    .registers 3

    const-class v1, Lcom/pinguo/album/provider/PGAlbumDBHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/pinguo/album/provider/PGAlbumDBHelper;->sInstance:Lcom/pinguo/album/provider/PGAlbumDBHelper;

    if-nez v0, :cond_e

    new-instance v0, Lcom/pinguo/album/provider/PGAlbumDBHelper;

    invoke-direct {v0, p0}, Lcom/pinguo/album/provider/PGAlbumDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pinguo/album/provider/PGAlbumDBHelper;->sInstance:Lcom/pinguo/album/provider/PGAlbumDBHelper;

    :cond_e
    sget-object v0, Lcom/pinguo/album/provider/PGAlbumDBHelper;->sInstance:Lcom/pinguo/album/provider/PGAlbumDBHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/album/provider/PGAlbumDBHelper;->createAlbumTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 9

    sget-object v2, Lcom/pinguo/album/provider/PGAlbumDBHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Upgrading database from version "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/pinguo/album/provider/PGAlbumDBHelper;->dropAll(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/pinguo/album/provider/PGAlbumDBHelper;->createAlbumTables(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_2d
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/pgalbum.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_57
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/pgalbum.db-journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_81} :catch_82

    :cond_81
    :goto_81
    return-void

    :catch_82
    move-exception v2

    goto :goto_81
.end method
