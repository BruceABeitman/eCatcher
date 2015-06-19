.class public Lboston/Bus/Map/database/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field public static final ADDED_FAVORITE_DB_VERSION:I = 0x6

.field public static final CURRENT_DB_VERSION:I = 0x7

.field public static final FIRST_DB_VERSION:I = 0x5

.field public static final NEW_ROUTES_DB_VERSION:I = 0x7

.field private static final blobKey:Ljava/lang/String; = "blob"

.field private static final blobsTable:Ljava/lang/String; = "blobs"

.field private static final dbName:Ljava/lang/String; = "bostonBusMap"

.field private static final directionsTable:Ljava/lang/String; = "directions"

.field private static final dirtagKey:Ljava/lang/String; = "dirtag"

.field private static final latitudeKey:Ljava/lang/String; = "lat"

.field private static final longitudeKey:Ljava/lang/String; = "lon"

.field private static final nameIndex:I = 0x2

.field private static final nameKey:Ljava/lang/String; = "name"

.field private static final newFavoritesTable:Ljava/lang/String; = "favs2"

.field private static final newFavoritesTagKey:Ljava/lang/String; = "tag"

.field private static final oldFavoritesIdKey:Ljava/lang/String; = "idkey"

.field private static final oldFavoritesTable:Ljava/lang/String; = "favs"

.field private static final pathIdKey:Ljava/lang/String; = "pathid"

.field private static final pathsTable:Ljava/lang/String; = "paths"

.field private static final routeKey:Ljava/lang/String; = "route"

.field private static final routesTable:Ljava/lang/String; = "routes"

.field private static final stopIdKey:Ljava/lang/String; = "stopId"

.field private static final stopsTable:Ljava/lang/String; = "stops"

.field private static final tagIndex:I = 0x1

.field private static final titleIndex:I = 0x3

.field private static final titleKey:Ljava/lang/String; = "title"


# instance fields
.field private final busStop:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    const-string v0, "bostonBusMap"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p2, p0, Lboston/Bus/Map/database/DatabaseHelper;->busStop:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private readOldFavorites(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashSet;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    const/4 v8, 0x0

    :try_start_6
    const-string v1, "favs"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "idkey"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1d
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3e

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const v0, 0xffff

    and-int/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_37

    goto :goto_1d

    :catchall_37
    move-exception v0

    if-eqz v8, :cond_3d

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3d
    throw v0

    :cond_3e
    if-eqz v8, :cond_43

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_43
    return-object v9
.end method

.method private reserialize(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 26

    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    const/4 v13, 0x0

    :try_start_6
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    const-string v5, "blobs"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "route"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "blob"

    aput-object v7, v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_28
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_102

    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v4, 0x1

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    const-string v4, "BostonBusMap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "converting over route "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v18, Lboston/Bus/Map/data/RouteConfig;

    new-instance v4, Lboston/Bus/Map/util/Box;

    move-object v0, v4

    move-object v1, v12

    move/from16 v2, p2

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/database/DatabaseHelper;->busStop:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lboston/Bus/Map/data/RouteConfig;-><init>(Lboston/Bus/Map/util/Box;Landroid/graphics/drawable/Drawable;)V

    new-instance v16, Lboston/Bus/Map/util/Box;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object v1, v4

    move/from16 v2, p3

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lboston/Bus/Map/data/RouteConfig;->serialize(Lboston/Bus/Map/util/Box;)V

    invoke-virtual/range {v16 .. v16}, Lboston/Bus/Map/util/Box;->getBlob()[B

    move-result-object v4

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8f
    .catchall {:try_start_6 .. :try_end_8f} :catchall_10b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_8f} :catch_90

    goto :goto_28

    :catch_90
    move-exception v4

    move-object v14, v4

    :try_start_92
    const-string v4, "BostonBusMap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception during serialization: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catchall {:try_start_92 .. :try_end_ae} :catchall_10b

    if-eqz v13, :cond_b3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_b3
    :goto_b3
    const-string v4, "blobs"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_c7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_112

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "route"

    move-object/from16 v0, v21

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "blob"

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v4, "blobs"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_c7

    :cond_102
    :try_start_102
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_105
    .catchall {:try_start_102 .. :try_end_105} :catchall_10b
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_105} :catch_90

    if-eqz v13, :cond_b3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_b3

    :catchall_10b
    move-exception v4

    if-eqz v13, :cond_111

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_111
    throw v4

    :cond_112
    return-void
.end method

.method private saveMappingKernel(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lboston/Bus/Map/data/RouteConfig;ZLjava/util/HashMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lboston/Bus/Map/data/RouteConfig;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lboston/Bus/Map/data/StopLocation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string v5, "blobs"

    new-instance v1, Lboston/Bus/Map/util/Box;

    const/4 v3, 0x7

    invoke-direct {v1, v4, v3, p5}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V

    invoke-virtual {p3, v1}, Lboston/Bus/Map/data/RouteConfig;->serialize(Lboston/Bus/Map/util/Box;)V

    invoke-virtual {v1}, Lboston/Bus/Map/util/Box;->getBlob()[B

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "route"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "blob"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    if-eqz p4, :cond_27

    const-string v3, "blobs"

    invoke-virtual {p1, v5, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :goto_26
    return-void

    :cond_27
    const-string v3, "blobs"

    invoke-virtual {p1, v5, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_26
.end method

.method private writeNewFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashSet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "tag"

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "favs2"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_4

    :cond_25
    return-void
.end method


# virtual methods
.method public checkFreeSpace()Z
    .registers 12

    const/4 v10, 0x1

    invoke-virtual {p0}, Lboston/Bus/Map/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v8, v8

    mul-long v2, v6, v8

    const-string v6, "BostonBusMap"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "free database space: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_32} :catch_40

    const-wide/32 v6, 0x200000

    cmp-long v6, v2, v6

    if-ltz v6, :cond_3e

    move v6, v10

    :goto_3a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :goto_3d
    return v6

    :cond_3e
    const/4 v6, 0x0

    goto :goto_3a

    :catch_40
    move-exception v6

    move-object v1, v6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v6, v10

    goto :goto_3d

    :catchall_47
    move-exception v6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v6
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE TABLE IF NOT EXISTS blobs (route STRING, blob BLOB)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS favs2 (tag STRING PRIMARY KEY)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6

    const-string v1, "DROP TABLE IF EXISTS directions"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS stops"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS routes"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS paths"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS blobs"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-lt p2, v1, :cond_21

    invoke-direct {p0, p1}, Lboston/Bus/Map/database/DatabaseHelper;->readOldFavorites(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashSet;

    move-result-object v0

    :cond_21
    const-string v1, "DROP TABLE IF EXISTS favs"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS favs2"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lboston/Bus/Map/database/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    if-eqz v0, :cond_33

    invoke-direct {p0, p1, v0}, Lboston/Bus/Map/database/DatabaseHelper;->writeNewFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashSet;)V

    :cond_33
    return-void
.end method

.method public populateMap(Ljava/util/HashMap;Ljava/util/HashSet;[Ljava/lang/String;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lboston/Bus/Map/data/RouteConfig;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lboston/Bus/Map/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const/4 v13, 0x0

    :try_start_5
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    const-string v5, "blobs"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "route"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "blob"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_25
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_7c

    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v5, 0x1

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    const-string v5, "BostonBusMap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "populating route "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v16, Lboston/Bus/Map/data/RouteConfig;

    new-instance v5, Lboston/Bus/Map/util/Box;

    const/4 v6, 0x7

    move-object v0, v5

    move-object v1, v12

    move v2, v6

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lboston/Bus/Map/util/Box;-><init>([BILjava/util/HashMap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/database/DatabaseHelper;->busStop:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object/from16 v0, v16

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lboston/Bus/Map/data/RouteConfig;-><init>(Lboston/Bus/Map/util/Box;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_71
    .catchall {:try_start_5 .. :try_end_71} :catchall_72

    goto :goto_25

    :catchall_72
    move-exception v5

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    if-eqz v13, :cond_7b

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_7b
    throw v5

    :cond_7c
    :try_start_7c
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const-string v5, "favs2"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "tag"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_95
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_c2

    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v5, "BostonBusMap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adding favorite "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_95

    :cond_c2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_c5
    .catchall {:try_start_7c .. :try_end_c5} :catchall_72

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    if-eqz v13, :cond_cd

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_cd
    return-void
.end method

.method public saveFavorite(Ljava/lang/String;Z)V
    .registers 9

    const-string v2, "favs2"

    const-string v2, "BostonBusMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving favorite "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lboston/Bus/Map/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-enter v0

    :try_start_29
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-eqz p2, :cond_49

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "tag"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "favs2"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :goto_3e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_57

    :try_start_44
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_5c

    return-void

    :cond_49
    :try_start_49
    const-string v2, "favs2"

    const-string v3, "tag=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_49 .. :try_end_56} :catchall_57

    goto :goto_3e

    :catchall_57
    move-exception v2

    :try_start_58
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v2

    :catchall_5c
    move-exception v2

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_5c

    throw v2
.end method

.method public saveMapping(Ljava/util/HashMap;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lboston/Bus/Map/data/RouteConfig;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lboston/Bus/Map/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-eqz p2, :cond_11

    const-string v0, "blobs"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_11
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1e
    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lboston/Bus/Map/data/RouteConfig;

    if-eqz v7, :cond_1e

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lboston/Bus/Map/data/RouteConfig;

    move-object v0, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lboston/Bus/Map/database/DatabaseHelper;->saveMappingKernel(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lboston/Bus/Map/data/RouteConfig;ZLjava/util/HashMap;)V
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_3e

    goto :goto_1e

    :catchall_3e
    move-exception v0

    :try_start_3f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0

    :catchall_43
    move-exception v0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_43

    throw v0

    :cond_46
    :try_start_46
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_3e

    :try_start_4c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_43

    return-void
.end method
