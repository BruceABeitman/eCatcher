.class public Lcom/pinguo/camera360/gallery/data/C360Image;
.super Lcom/pinguo/camera360/gallery/data/LocalMediaItem;
.source "C360Image.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/gallery/data/C360Image$LocalImageRequest;,
        Lcom/pinguo/camera360/gallery/data/C360Image$LocalLargeImageRequest;,
        Lcom/pinguo/camera360/gallery/data/C360Image$TemBitmapDeocoder;
    }
.end annotation


# static fields
.field public static final INDEX_DATA_PATH:I = 0x10

.field public static final INDEX_DATE_TAKEN:I = 0x4

.field public static final INDEX_EXIF:I = 0x9

.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_JSON_STRING:I = 0x12

.field public static final INDEX_LATITUDE:I = 0x5

.field public static final INDEX_LONGITUDE:I = 0x6

.field public static final INDEX_PROJECT_STATE:I = 0xa

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "C360Image"


# instance fields
.field public cameraModeIndex:I

.field public exif:Ljava/lang/String;

.field public jsonStr:Ljava/lang/String;

.field private final mApplication:Lcom/pinguo/camera360/PgCameraApplication;

.field public projectState:Ljava/lang/String;

.field public rotation:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "cameraModeIndex"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "eftIndex"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "eftClassIndex"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "tokenMillis"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "lat"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "lon"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "eftParam"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "failCount"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "exif"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "projectState"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "direct"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "costMillis"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "model"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "effectPhotoSavePath"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "projectVersionCode"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "jsonExpand"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "eftAlias"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "eftAppendix"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pinguo/camera360/gallery/data/C360Image;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/camera360/PgCameraApplication;Lcom/pinguo/camera360/gallery/data/Path;)V
    .registers 12

    invoke-static {}, Lcom/pinguo/camera360/gallery/data/C360Image;->nextVersionNumber()J

    move-result-wide v1

    invoke-direct {p0, p2, v1, v2}, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;-><init>(Lcom/pinguo/camera360/gallery/data/Path;J)V

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    invoke-virtual {v1}, Lcom/pinguo/camera360/PgCameraApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/pinguo/camera360/gallery/data/model/C360Photo;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/pinguo/camera360/gallery/data/C360Image;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "tokenMillis=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/pinguo/camera360/gallery/data/Path;->getTokenMills()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_43

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cannot get cursor for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_43
    :try_start_43
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-direct {p0, v6}, Lcom/pinguo/camera360/gallery/data/C360Image;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_68

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-void

    :cond_50
    :try_start_50
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cannot find data for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_68
    .catchall {:try_start_50 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public constructor <init>(Lcom/pinguo/camera360/PgCameraApplication;Lcom/pinguo/camera360/gallery/data/Path;Landroid/database/Cursor;)V
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/gallery/data/C360Image;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;-><init>(Lcom/pinguo/camera360/gallery/data/Path;J)V

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    invoke-direct {p0, p3}, Lcom/pinguo/camera360/gallery/data/C360Image;->loadFromCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private static getExifOrientation(I)Ljava/lang/String;
    .registers 4

    sparse-switch p0, :sswitch_data_32

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :sswitch_19
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    return-object v0

    :sswitch_1f
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :sswitch_25
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :sswitch_2b
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :sswitch_data_32
    .sparse-switch
        0x0 -> :sswitch_19
        0x5a -> :sswitch_1f
        0xb4 -> :sswitch_25
        0x10e -> :sswitch_2b
    .end sparse-switch
.end method

.method private getRealPath()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/C360Image;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;

    move-result-object v0

    iget-wide v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->dateTakenInMs:J

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getVideoPath(J)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->filePath:Ljava/lang/String;

    goto :goto_10
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .registers 6

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->id:I

    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->latitude:D

    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->longitude:D

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->dateTakenInMs:J

    const/16 v2, 0x10

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->filePath:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->exif:Ljava/lang/String;

    const/16 v2, 0x12

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->jsonStr:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->projectState:Ljava/lang/String;

    const-string/jumbo v2, "cameraModeIndex"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->cameraModeIndex:I

    const-string/jumbo v2, "eftAppendix"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->picDescribeInfo:Ljava/lang/String;

    const-string/jumbo v2, "eftAlias"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7f

    const-string/jumbo v2, "C360_ShiftColor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_90

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    invoke-virtual {v2}, Lcom/pinguo/camera360/PgCameraApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->effectName:Ljava/lang/String;

    :cond_7f
    :goto_7f
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->filePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8f

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/pinguo/lib/image/Exif;->getPhotoOrientation(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->rotation:I

    :cond_8f
    return-void

    :cond_90
    const-string/jumbo v2, "C360_Funny_Other"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a9

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    invoke-virtual {v2}, Lcom/pinguo/camera360/PgCameraApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->effectName:Ljava/lang/String;

    goto :goto_7f

    :cond_a9
    const-string/jumbo v2, "C360_TiltShift_Other_Line"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->effectName:Ljava/lang/String;

    goto :goto_7f

    :cond_b6
    invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypeByEffectKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/EffectType;

    move-result-object v1

    if-eqz v1, :cond_7f

    iget-object v2, v1, Lcom/pinguo/camera360/effect/model/entity/EffectType;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->effectName:Ljava/lang/String;

    goto :goto_7f
.end method


# virtual methods
.method public IsPhotoWitchSound()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->exif:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->exif:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public delete(Z)V
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->assertNotInRenderThread()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/C360Image;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_53

    :try_start_b
    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/data/C360Image;->getRealPath()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->dateTakenInMs:J

    invoke-static {v2, v3, v1}, Lcom/pinguo/camera360/gallery/temps/GalleryUtil;->deleteProjectForVideo(JLjava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;

    move-result-object v2

    iget-wide v3, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->dateTakenInMs:J

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    invoke-virtual {v2, v3, v4, v5}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->deleteVideo(JLandroid/content/Context;)Z

    if-eqz p1, :cond_35

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    invoke-virtual {v2}, Lcom/pinguo/camera360/PgCameraApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "_data = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_35} :catch_4e

    :cond_35
    :goto_35
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    invoke-virtual {v2}, Lcom/pinguo/camera360/PgCameraApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/pinguo/camera360/gallery/data/model/C360Photo;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "id=?"

    new-array v5, v9, [Ljava/lang/String;

    iget v6, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :catch_4e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35

    :cond_53
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->filePath:Ljava/lang/String;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->filePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_35

    iget-wide v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->dateTakenInMs:J

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->filePath:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/pinguo/camera360/gallery/temps/GalleryUtil;->deleteProject(JLjava/lang/String;)V

    if-eqz p1, :cond_35

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    invoke-virtual {v2}, Lcom/pinguo/camera360/PgCameraApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "datetaken = ?"

    new-array v5, v9, [Ljava/lang/String;

    iget-wide v6, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->dateTakenInMs:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_35
.end method

.method public existOnStorage()Z
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/data/C360Image;->getRealPath()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_17

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1d

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    :goto_16
    return v2

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x1

    goto :goto_16

    :cond_1d
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public getContentUri()Landroid/net/Uri;
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/gallery/data/model/C360Photo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDetails()Lcom/pinguo/camera360/gallery/data/MediaDetails;
    .registers 4

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->getDetails()Lcom/pinguo/camera360/gallery/data/MediaDetails;

    move-result-object v0

    const/4 v1, 0x7

    iget v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->rotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/data/MediaDetails;->extractExifInfo(Lcom/pinguo/camera360/gallery/data/MediaDetails;Ljava/lang/String;)V

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->height:I

    return v0
.end method

.method public getMediaType()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getRotation()I
    .registers 3

    :goto_0
    iget v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->rotation:I

    if-ltz v1, :cond_24

    iget v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->rotation:I

    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->rotation:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->rotation:I

    rem-int/lit8 v1, v1, 0x5a

    if-eqz v1, :cond_21

    iget v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->rotation:I

    rem-int/lit8 v0, v1, 0x5a

    const/16 v1, 0x2d

    if-le v0, v1, :cond_2b

    iget v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->rotation:I

    add-int/lit8 v1, v1, 0x5a

    sub-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->rotation:I

    :cond_21
    :goto_21
    iget v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->rotation:I

    return v1

    :cond_24
    iget v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->rotation:I

    add-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->rotation:I

    goto :goto_0

    :cond_2b
    iget v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->rotation:I

    sub-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->rotation:I

    goto :goto_21
.end method

.method public getSupportedOperations()I
    .registers 6

    const/16 v0, 0x62d

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/pinguo/camera360/gallery/util/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_18

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/C360Image;->isVideo()Z

    move-result v1

    if-nez v1, :cond_18

    or-int/lit8 v0, v0, 0x40

    :cond_18
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/pinguo/camera360/gallery/util/BitmapUtils;->isRotationSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    or-int/lit8 v0, v0, 0x2

    :cond_22
    iget-wide v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->latitude:D

    iget-wide v3, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->longitude:D

    invoke-static {v1, v2, v3, v4}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->isValidLocation(DD)Z

    move-result v1

    if-eqz v1, :cond_2e

    or-int/lit8 v0, v0, 0x10

    :cond_2e
    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->width:I

    return v0
.end method

.method public isVideo()Z
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->cameraModeIndex:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public requestImage(I)Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/pinguo/camera360/gallery/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->projectState:Ljava/lang/String;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->projectState:Ljava/lang/String;

    const-string/jumbo v1, "editing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string/jumbo v8, ""

    const/4 v0, 0x1

    if-ne p1, v0, :cond_25

    sget-object v0, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;->share:Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;

    iget-wide v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->dateTakenInMs:J

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/gallery/temps/SandBox;->getSandBoxPath(Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;J)Ljava/lang/String;

    move-result-object v8

    :goto_1f
    new-instance v0, Lcom/pinguo/camera360/gallery/data/C360Image$TemBitmapDeocoder;

    invoke-direct {v0, v8, p1}, Lcom/pinguo/camera360/gallery/data/C360Image$TemBitmapDeocoder;-><init>(Ljava/lang/String;I)V

    :goto_24
    return-object v0

    :cond_25
    sget-object v0, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;->thumb:Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;

    iget-wide v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->dateTakenInMs:J

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/gallery/temps/SandBox;->getSandBoxPath(Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;J)Ljava/lang/String;

    move-result-object v8

    goto :goto_1f

    :cond_2e
    const-string/jumbo v5, ""

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->jsonStr:Ljava/lang/String;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->jsonStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_55

    :try_start_3d
    new-instance v7, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->jsonStr:Ljava/lang/String;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "cet"

    const-wide/16 v1, 0x0

    invoke-virtual {v7, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v0, v9, v3

    if-lez v0, :cond_55

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_54} :catch_62

    move-result-object v5

    :cond_55
    :goto_55
    new-instance v0, Lcom/pinguo/camera360/gallery/data/C360Image$LocalImageRequest;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->filePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->filePath:Ljava/lang/String;

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/data/C360Image$LocalImageRequest;-><init>(Lcom/pinguo/camera360/PgCameraApplication;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :catch_62
    move-exception v6

    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_55
.end method

.method public requestLargeImage()Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pinguo/camera360/gallery/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_2b

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->projectState:Ljava/lang/String;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->projectState:Ljava/lang/String;

    const-string/jumbo v2, "editing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;->share:Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;

    iget-wide v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->dateTakenInMs:J

    invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/gallery/temps/SandBox;->getSandBoxPath(Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/gallery/data/C360Image$LocalLargeImageRequest;

    invoke-direct {v1, v0}, Lcom/pinguo/camera360/gallery/data/C360Image$LocalLargeImageRequest;-><init>(Ljava/lang/String;)V

    :goto_22
    return-object v1

    :cond_23
    new-instance v1, Lcom/pinguo/camera360/gallery/data/C360Image$LocalLargeImageRequest;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/pinguo/camera360/gallery/data/C360Image$LocalLargeImageRequest;-><init>(Ljava/lang/String;)V

    goto :goto_22

    :cond_2b
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public rotate(I)V
    .registers 12

    invoke-static {}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->assertNotInRenderThread()V

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iget v5, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->rotation:I

    add-int/2addr v5, p1

    rem-int/lit16 v3, v5, 0x168

    if-gez v3, :cond_13

    add-int/lit16 v3, v3, 0x168

    :cond_13
    iget-object v5, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->mimeType:Ljava/lang/String;

    const-string/jumbo v6, "image/jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    :try_start_1e
    new-instance v2, Landroid/media/ExifInterface;

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->filePath:Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "Orientation"

    invoke-static {v3}, Lcom/pinguo/camera360/gallery/data/C360Image;->getExifOrientation(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_32} :catch_6e

    :goto_32
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->filePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->fileSize:J

    const-string/jumbo v5, "_size"

    iget-wide v6, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->fileSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4b
    const-string/jumbo v5, "orientation"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;

    invoke-virtual {v5}, Lcom/pinguo/camera360/PgCameraApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget v9, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->id:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v0, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :catch_6e
    move-exception v1

    const-string/jumbo v5, "C360Image"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "cannot set exif data: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->filePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/camera360/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .registers 7

    new-instance v0, Lcom/pinguo/camera360/gallery/util/UpdateHelper;

    invoke-direct {v0}, Lcom/pinguo/camera360/gallery/util/UpdateHelper;-><init>()V

    iget v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->id:I

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->id:I

    iget-wide v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->latitude:D

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/gallery/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->latitude:D

    iget-wide v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->longitude:D

    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/gallery/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->longitude:D

    iget-wide v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->dateTakenInMs:J

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->dateTakenInMs:J

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->filePath:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->filePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->exif:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->exif:Ljava/lang/String;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->jsonStr:Ljava/lang/String;

    const/16 v2, 0x12

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->jsonStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->projectState:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/data/C360Image;->projectState:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/util/UpdateHelper;->isUpdated()Z

    move-result v1

    return v1
.end method
