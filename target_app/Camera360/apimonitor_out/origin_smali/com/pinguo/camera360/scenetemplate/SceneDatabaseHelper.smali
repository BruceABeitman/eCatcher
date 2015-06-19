.class public Lcom/pinguo/camera360/scenetemplate/SceneDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SceneDatabaseHelper.java"


# static fields
.field public static final VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS \'SCENE_TEMPLATE\' (\'_id\' INTEGER PRIMARY KEY ,\'KEY\' TEXT,\'CHILD_ID\' TEXT,\'TEMPLATE_ID\' TEXT,\'TITLE\' TEXT,\'DETAIL_LOGO\' TEXT,\'DOWNLOAD_COUNT\' TEXT,\'NEED_PAY\' TEXT,\'IS_HOT\' TEXT,\'DOWNLOADED\' TEXT,\'SCENE_XML_FILE\' TEXT,\'SCENE_XML_FILE_LENGTH\' INTEGER,\'SCENE_JPG_FILE\' TEXT,\'SCENE_JPG_FILE_LENGTH\' INTEGER,\'SCENE_PNG_FILE\' TEXT,\'SCENE_PNG_FILE_LENGTH\' INTEGER,\'SCENE_USED_COUNT\' INTEGER,\'LOCATION_TYPE\' INTEGER,\'IS_NEW\' TEXT,\'CLOSED\' TEXT,\'ADDED_DATE\' INTEGER,\'VALID\' INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    if-lt p2, p3, :cond_2

    :cond_2
    return-void
.end method
