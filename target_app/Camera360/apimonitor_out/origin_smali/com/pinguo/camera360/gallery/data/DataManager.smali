.class public Lcom/pinguo/camera360/gallery/data/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/gallery/data/DataManager$DateTakenComparator;,
        Lcom/pinguo/camera360/gallery/data/DataManager$NotifyBroker;
    }
.end annotation


# static fields
.field public static final ALBUM_MODE_NORMAL:I = 0x7

.field public static final ALBUM_MODE_PICK_ONE_PHOTO:I = 0x5

.field public static final ALBUM_MODE_PICK_PHOTOS:I = 0x8

.field public static final ALBUM_MODE_VIEW_ChANGED_PHOTO:I = 0x6

.field public static final LOCK:Ljava/lang/Object; = null

.field public static final MEDIA_NAME:Ljava/lang/String; = "media-name"

.field public static final MEDIA_PATH_ID:Ljava/lang/String; = "media-path-id"

.field public static final MEDIA_PATH_ID_C360:Ljava/lang/String; = "path-c360"

.field public static final MEDIA_PATH_ID_SET:Ljava/lang/String; = "path-set"

.field public static final MEDIA_TYPE:Ljava/lang/String; = "media-type"

.field public static final MEDIA_TYPE_ALBUM_SET:I = 0x3e9

.field public static final MEDIA_TYPE_C360_ALBUM:I = 0x3ea

.field public static final MEDIA_TYPE_C360_IMAGE:I = 0x3ec

.field public static final MEDIA_TYPE_SYSTEM_ALBUM:I = 0x3eb

.field public static final MEDIA_TYPE_SYSTEM_IMAGE:I = 0x3ed

.field public static final PUZZLE_MODE:Ljava/lang/String; = "puzzle-mode"

.field private static final TAG:Ljava/lang/String; = "DataManager"


# instance fields
.field private mAlbumMode:I

.field private mApplication:Lcom/pinguo/camera360/PgCameraApplication;

.field private final mDefaultMainHandler:Landroid/os/Handler;

.field public mHidePhotoTime:[J

.field private mNotifierMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/pinguo/camera360/gallery/data/DataManager$NotifyBroker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/camera360/PgCameraApplication;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/pinguo/camera360/gallery/data/DataManager;->mAlbumMode:I

    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/data/DataManager;->mHidePhotoTime:[J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/data/DataManager;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/pinguo/camera360/PgCameraApplication;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/data/DataManager;->mDefaultMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private createMediaObject(Lcom/pinguo/camera360/gallery/data/Path;Ljava/lang/String;)Lcom/pinguo/camera360/gallery/data/MediaObject;
    .registers 5

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/data/Path;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :pswitch_9
    new-instance v0, Lcom/pinguo/camera360/gallery/data/AlbumSet;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/DataManager;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    invoke-direct {v0, v1, p1}, Lcom/pinguo/camera360/gallery/data/AlbumSet;-><init>(Lcom/pinguo/camera360/PgCameraApplication;Lcom/pinguo/camera360/gallery/data/Path;)V

    goto :goto_8

    :pswitch_11
    new-instance v0, Lcom/pinguo/camera360/gallery/data/C360Album;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/DataManager;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    invoke-direct {v0, v1, p1}, Lcom/pinguo/camera360/gallery/data/C360Album;-><init>(Lcom/pinguo/camera360/PgCameraApplication;Lcom/pinguo/camera360/gallery/data/Path;)V

    goto :goto_8

    :pswitch_19
    new-instance v0, Lcom/pinguo/camera360/gallery/data/Album;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/DataManager;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    invoke-direct {v0, v1, p1, p2}, Lcom/pinguo/camera360/gallery/data/Album;-><init>(Lcom/pinguo/camera360/PgCameraApplication;Lcom/pinguo/camera360/gallery/data/Path;Ljava/lang/String;)V

    goto :goto_8

    :pswitch_21
    new-instance v0, Lcom/pinguo/camera360/gallery/data/C360Image;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/DataManager;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    invoke-direct {v0, v1, p1}, Lcom/pinguo/camera360/gallery/data/C360Image;-><init>(Lcom/pinguo/camera360/PgCameraApplication;Lcom/pinguo/camera360/gallery/data/Path;)V

    goto :goto_8

    :pswitch_29
    new-instance v0, Lcom/pinguo/camera360/gallery/data/Image;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/DataManager;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    invoke-direct {v0, v1, p1}, Lcom/pinguo/camera360/gallery/data/Image;-><init>(Lcom/pinguo/camera360/PgCameraApplication;Lcom/pinguo/camera360/gallery/data/Path;)V

    goto :goto_8

    nop

    :pswitch_data_32
    .packed-switch 0x3e9
        :pswitch_9
        :pswitch_11
        :pswitch_19
        :pswitch_21
        :pswitch_29
    .end packed-switch
.end method


# virtual methods
.method public cancelDelete(Lcom/pinguo/camera360/gallery/data/Path;)V
    .registers 6

    const-string/jumbo v1, "DataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cancelDelete albumPath : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, ""

    invoke-virtual {p0, p1, v1}, Lcom/pinguo/camera360/gallery/data/DataManager;->getMediaObject(Lcom/pinguo/camera360/gallery/data/Path;Ljava/lang/String;)Lcom/pinguo/camera360/gallery/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/MediaObject;->cancelDelete()V

    return-void
.end method

.method public deleteBatch([Lcom/pinguo/camera360/gallery/data/Path;Lcom/pinguo/camera360/gallery/data/Path;Lcom/pinguo/camera360/gallery/data/MediaObject$SyncListener;Z)V
    .registers 10

    const-string/jumbo v2, "DataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "deleteBatch albumPath : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", is fromUser = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v2, p1

    if-lez v2, :cond_44

    const-string/jumbo v2, ""

    invoke-virtual {p0, p2, v2}, Lcom/pinguo/camera360/gallery/data/DataManager;->getMediaObject(Lcom/pinguo/camera360/gallery/data/Path;Ljava/lang/String;)Lcom/pinguo/camera360/gallery/data/MediaObject;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/pinguo/camera360/gallery/data/MediaObject;->setSyncListener(Lcom/pinguo/camera360/gallery/data/MediaObject$SyncListener;)V

    instance-of v2, v1, Lcom/pinguo/camera360/gallery/data/MediaSet;

    if-eqz v2, :cond_44

    move-object v0, v1

    check-cast v0, Lcom/pinguo/camera360/gallery/data/MediaSet;

    invoke-virtual {v0, p1, p4}, Lcom/pinguo/camera360/gallery/data/MediaSet;->deleteBatch([Lcom/pinguo/camera360/gallery/data/Path;Z)Z

    :cond_44
    return-void
.end method

.method public deleteSingle(Lcom/pinguo/camera360/gallery/data/Path;Z)V
    .registers 4

    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/pinguo/camera360/gallery/data/DataManager;->getMediaObject(Lcom/pinguo/camera360/gallery/data/Path;Ljava/lang/String;)Lcom/pinguo/camera360/gallery/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/pinguo/camera360/gallery/data/MediaObject;->delete(Z)V

    return-void
.end method

.method public getActivityMode()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/data/DataManager;->mAlbumMode:I

    return v0
.end method

.method public getC360PhotoTimes()[J
    .registers 12

    const/4 v3, 0x0

    const/4 v10, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/DataManager;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    invoke-virtual {v1}, Lcom/pinguo/camera360/PgCameraApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/pinguo/camera360/gallery/data/model/C360Photo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "tokenMillis"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_1d

    new-array v9, v10, [J

    :goto_1c
    return-object v9

    :cond_1d
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v9, v1, [J

    const/4 v7, 0x0

    move v8, v7

    :goto_25
    :try_start_25
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_3a

    move-result v1

    if-nez v1, :cond_2f

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1c

    :cond_2f
    add-int/lit8 v7, v8, 0x1

    const/4 v1, 0x0

    :try_start_32
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, v9, v8
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_40

    move v8, v7

    goto :goto_25

    :catchall_3a
    move-exception v1

    move v7, v8

    :goto_3c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :catchall_40
    move-exception v1

    goto :goto_3c
.end method

.method public getHidePhotoTimes()[J
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/gallery/data/DataManager;->mAlbumMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/DataManager;->mHidePhotoTime:[J

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    new-array v0, v0, [J

    goto :goto_7
.end method

.method public getMediaObject(Lcom/pinguo/camera360/gallery/data/Path;Ljava/lang/String;)Lcom/pinguo/camera360/gallery/data/MediaObject;
    .registers 4

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/data/Path;->getObject()Lcom/pinguo/camera360/gallery/data/MediaObject;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/gallery/data/DataManager;->createMediaObject(Lcom/pinguo/camera360/gallery/data/Path;Ljava/lang/String;)Lcom/pinguo/camera360/gallery/data/MediaObject;

    move-result-object v0

    goto :goto_6
.end method

.method public getMediaSet(Lcom/pinguo/camera360/gallery/data/Path;Ljava/lang/String;)Lcom/pinguo/camera360/gallery/data/MediaSet;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/gallery/data/DataManager;->getMediaObject(Lcom/pinguo/camera360/gallery/data/Path;Ljava/lang/String;)Lcom/pinguo/camera360/gallery/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/data/MediaSet;

    return-object v0
.end method

.method public registerChangeNotifier(Landroid/net/Uri;Lcom/pinguo/camera360/gallery/data/ChangeNotifier;)V
    .registers 9

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_4
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/pinguo/camera360/gallery/data/DataManager$NotifyBroker;

    move-object v1, v0

    if-nez v1, :cond_27

    new-instance v2, Lcom/pinguo/camera360/gallery/data/DataManager$NotifyBroker;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/data/DataManager;->mDefaultMainHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/pinguo/camera360/gallery/data/DataManager$NotifyBroker;-><init>(Landroid/os/Handler;)V
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_2c

    :try_start_17
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/data/DataManager;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    invoke-virtual {v3}, Lcom/pinguo/camera360/PgCameraApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, p1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_2f

    move-object v1, v2

    :cond_27
    :try_start_27
    monitor-exit v4
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_2c

    invoke-virtual {v1, p2}, Lcom/pinguo/camera360/gallery/data/DataManager$NotifyBroker;->registerNotifier(Lcom/pinguo/camera360/gallery/data/ChangeNotifier;)V

    return-void

    :catchall_2c
    move-exception v3

    :goto_2d
    :try_start_2d
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v3

    :catchall_2f
    move-exception v3

    move-object v1, v2

    goto :goto_2d
.end method

.method public setActivityMode(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/gallery/data/DataManager;->mAlbumMode:I

    return-void
.end method

.method public setHidePhotoTimes([J)V
    .registers 4

    iget v0, p0, Lcom/pinguo/camera360/gallery/data/DataManager;->mAlbumMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/data/DataManager;->mHidePhotoTime:[J

    :cond_7
    return-void
.end method
