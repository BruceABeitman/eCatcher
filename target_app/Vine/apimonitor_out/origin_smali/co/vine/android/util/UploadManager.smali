.class public Lco/vine/android/util/UploadManager;
.super Ljava/lang/Object;
.source "UploadManager.java"


# static fields
.field public static final BC_INVALIDATE_CACHE:Ljava/lang/String; = "co.vine.android.invalidateCache"

.field public static final EXPIRE_TIME:J = 0x5265c00L

.field private static final SHARED_LOCK:[I = null

.field public static final STATUS_FAILED:I = 0x2

.field public static final STATUS_INVALID:I = -0x1

.field public static final STATUS_NEED_POST:I = 0x1

.field public static final STATUS_NEED_UPLOAD:I = 0x0

.field private static final SUB_PREF_HASH:Ljava/lang/String; = "_hash.sub"

.field private static final SUB_PREF_POST:Ljava/lang/String; = "_post.sub"

.field private static final SUB_PREF_THUMBNAIL:Ljava/lang/String; = "_thumbnail_url.sub"

.field private static final SUB_PREF_VIDEO:Ljava/lang/String; = "_video_url.sub"

.field private static final SUB_UPLOAD_TIME:Ljava/lang/String; = "_upload_time.sub"

.field public static final TAG:Ljava/lang/String; = "UploadManager"

.field private static mUploadPref:Landroid/content/SharedPreferences;


# instance fields
.field private final mMediaUtility:Lco/vine/android/util/MediaUtility;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lco/vine/android/util/MediaUtility;

    invoke-direct {v0, p1}, Lco/vine/android/util/MediaUtility;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/vine/android/util/UploadManager;->mMediaUtility:Lco/vine/android/util/MediaUtility;

    return-void
.end method

.method public static addOrUpdateUpload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJ)V
    .registers 23

    invoke-static {p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v1

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSessionReadOnly()Lco/vine/android/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lco/vine/android/client/Session;->getUserId()J

    move-result-wide v8

    invoke-static {}, Lco/vine/android/util/UploadManager;->getBaseUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "uploads/upload"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "path"

    invoke-virtual {v1, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lco/vine/android/provider/VineUploadsDatabaseSQL$UploadsQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    if-eqz v7, :cond_43

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_b7

    :cond_43
    invoke-static {p1}, Lco/vine/android/recorder/RecordConfigUtils;->getThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "path"

    invoke-virtual {v13, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "thumbnail_path"

    invoke-virtual {v13, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hash"

    move-object/from16 v0, p2

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "is_private"

    if-eqz p4, :cond_b4

    const-string v1, "1"

    :goto_68
    invoke-virtual {v13, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "reference"

    move-object/from16 v0, p3

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "owner_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v3, 0x0

    cmp-long v1, p7, v3

    if-lez v1, :cond_8a

    const-string v1, "message_row"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_8a
    const-wide/16 v3, 0x0

    cmp-long v1, p5, v3

    if-lez v1, :cond_99

    const-string v1, "conversation_row_id"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_99
    invoke-static {}, Lco/vine/android/util/UploadManager;->getBaseUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "uploads/put_new_upload"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :goto_ae
    if-eqz v7, :cond_b3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_b3
    return-void

    :cond_b4
    const-string v1, "0"

    goto :goto_68

    :cond_b7
    const-string v10, "path=?"

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v11, v1

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_cc

    const-string v1, "hash"

    move-object/from16 v0, p2

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_cc
    const-string v1, "status"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lco/vine/android/util/UploadManager;->getBaseUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "uploads/put_values"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "path=?"

    invoke-virtual {v1, v2, v13, v3, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_ae
.end method

.method public static addToUploadQueue(Landroid/content/Context;Lco/vine/android/recorder/RecordingFile;Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    invoke-direct {v0, p0}, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->processDir:Ljava/io/File;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_12

    :goto_7
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lco/vine/android/util/UploadManager;->addToUploadQueue(Landroid/content/Context;Ljava/io/File;Lco/vine/android/recorder/RecordingFile;Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_12
    move-exception v8

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    goto :goto_7
.end method

.method private static addToUploadQueue(Landroid/content/Context;Ljava/io/File;Lco/vine/android/recorder/RecordingFile;Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/lang/String;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lco/vine/android/recorder/RecordingFile;->version:Lco/vine/android/recorder/RecordSessionVersion;

    invoke-virtual {v2}, Lco/vine/android/recorder/RecordSessionVersion;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lco/vine/android/recorder/RecordingFile;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v8}, Lco/vine/android/recorder/RecordConfigUtils;->copyForUpload(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Lco/vine/android/recorder/RecordConfigUtils;->getThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lco/vine/android/recorder/RecordConfigUtils;->copyForUpload(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lco/vine/android/recorder/RecordingFile;->getHash()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    invoke-static/range {v0 .. v7}, Lco/vine/android/service/VineUploadService;->getUploadIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-object v1
.end method

.method public static clearSp()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    :try_start_3
    sget-object v0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public static clearUploadCaptchas(Landroid/content/Context;)V
    .registers 7

    invoke-static {}, Lco/vine/android/util/UploadManager;->getBaseUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "uploads/put_values"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "captcha_url"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "1"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static deleteUploadRecord(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lco/vine/android/util/UploadManager;->getBaseUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "uploads/delete_upload"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-string v2, "path=?"

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "path=?"

    invoke-virtual {v3, v0, v4, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static generateFileName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd/"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAllPaths(Landroid/content/Context;)Ljava/util/LinkedHashMap;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/client/AppController;->getActiveSessionReadOnly()Lco/vine/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/client/Session;->getUserId()J

    move-result-wide v7

    sget-object v0, Lco/vine/android/provider/VineUploads$Uploads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lco/vine/android/provider/VineUploadsDatabaseSQL$UploadsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "_id ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_42

    :goto_27
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v9, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    :cond_3f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_42
    return-object v10
.end method

.method private static getBaseUriBuilder()Landroid/net/Uri$Builder;
    .registers 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lco/vine/android/provider/VineUploadProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getHashSp(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    :try_start_3
    sget-object v0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_hash.sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public static getPendingPaths(Landroid/content/Context;)Ljava/util/LinkedList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p0}, Lco/vine/android/util/UploadManager;->getAllPaths(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_11

    const/4 v5, -0x1

    if-eq v4, v5, :cond_11

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_31
    return-object v3
.end method

.method public static getPendingPathsSp()Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v6, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v6

    :try_start_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v5, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lco/vine/android/util/UploadManager;->isKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v5, "Key: {}"

    invoke-static {v5, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lco/vine/android/util/UploadManager;->getStatusSp(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2}, Lco/vine/android/util/UploadManager;->isUploadExpiredSp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    packed-switch v4, :pswitch_data_62

    goto :goto_16

    :pswitch_3b
    const-string v5, "cNotify"

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :catchall_41
    move-exception v5

    monitor-exit v6
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v5

    :pswitch_44
    :try_start_44
    const-string v5, "aUpload"

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_4a
    packed-switch v4, :pswitch_data_6a

    goto :goto_16

    :pswitch_4e
    const-string v5, "cNotify"

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :pswitch_54
    const-string v5, "File does not exist any more (uploaded)."

    invoke-static {v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    const-string v5, "bPost"

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_5f
    monitor-exit v6
    :try_end_60
    .catchall {:try_start_44 .. :try_end_60} :catchall_41

    return-object v3

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_44
    .end packed-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_54
    .end packed-switch
.end method

.method public static getPostInfoSp(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    :try_start_3
    sget-object v0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_post.sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public static getReferenceCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-object v3

    :cond_8
    invoke-static {p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/client/AppController;->getActiveSessionReadOnly()Lco/vine/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/client/Session;->getUserId()J

    move-result-wide v6

    invoke-static {}, Lco/vine/android/util/UploadManager;->getBaseUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "uploads/reference"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "reference"

    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lco/vine/android/provider/VineUploadsDatabaseSQL$UploadsQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_7
.end method

.method public static getStatusSp(Ljava/lang/String;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    :try_start_3
    sget-object v0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    const/4 v2, -0x1

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public static getUpload(Landroid/content/Context;Ljava/lang/String;)Lco/vine/android/api/VineUpload;
    .registers 12

    const/4 v3, 0x0

    invoke-static {p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/client/AppController;->getActiveSessionReadOnly()Lco/vine/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/client/Session;->getUserId()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-static {}, Lco/vine/android/util/UploadManager;->getBaseUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "uploads/upload"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "path"

    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lco/vine/android/provider/VineUploadsDatabaseSQL$UploadsQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_45

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-static {p1, v6}, Lco/vine/android/api/VineUpload;->fromCursor(Ljava/lang/String;Landroid/database/Cursor;)Lco/vine/android/api/VineUpload;

    move-result-object v9

    :cond_42
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_45
    return-object v9
.end method

.method public static getUploadTimeSp(Ljava/lang/String;)J
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    :try_start_3
    sget-object v0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_upload_time.sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public static getUrisSp(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v1, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v1

    const/4 v0, 0x2

    :try_start_4
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_video_url.sub"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget-object v3, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_thumbnail_url.sub"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    monitor-exit v1

    return-object v0

    :catchall_42
    move-exception v0

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_4 .. :try_end_44} :catchall_42

    throw v0
.end method

.method public static getVersionFromPath(Ljava/lang/String;)Lco/vine/android/recorder/RecordSessionVersion;
    .registers 4

    sget-object v1, Lco/vine/android/recorder/RecordSessionVersion;->SW_MP4:Lco/vine/android/recorder/RecordSessionVersion;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lco/vine/android/recorder/RecordSessionVersion;->HW:Lco/vine/android/recorder/RecordSessionVersion;

    invoke-virtual {v2}, Lco/vine/android/recorder/RecordSessionVersion;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    sget-object v1, Lco/vine/android/recorder/RecordSessionVersion;->HW:Lco/vine/android/recorder/RecordSessionVersion;

    :cond_19
    :goto_19
    return-object v1

    :cond_1a
    sget-object v2, Lco/vine/android/recorder/RecordSessionVersion;->SW_WEBM:Lco/vine/android/recorder/RecordSessionVersion;

    invoke-virtual {v2}, Lco/vine/android/recorder/RecordSessionVersion;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    sget-object v1, Lco/vine/android/recorder/RecordSessionVersion;->SW_WEBM:Lco/vine/android/recorder/RecordSessionVersion;

    goto :goto_19
.end method

.method public static initUploadPref(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "upload"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static isEmptySp()Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x1

    sget-object v4, Lco/vine/android/util/UploadManager;->SHARED_LOCK:[I

    monitor-enter v4

    :try_start_4
    sget-object v5, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_12
    monitor-exit v4

    :goto_13
    return v3

    :cond_14
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lco/vine/android/util/UploadManager;->isKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v3, 0x0

    monitor-exit v4

    goto :goto_13

    :catchall_31
    move-exception v3

    monitor-exit v4
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_31

    throw v3

    :cond_34
    :try_start_34
    monitor-exit v4
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_31

    goto :goto_13
.end method

.method public static isKey(Ljava/lang/String;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ".sub"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isUploadExpiredSp(Ljava/lang/String;)Z
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lco/vine/android/util/UploadManager;->mUploadPref:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_upload_time.sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_29

    const/4 v0, 0x1

    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public static prepopulateCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "Prepopulating cache. Video url: {} | Thumbnail url: {}"

    invoke-static {v0, p2, p3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p2, :cond_a

    invoke-static {p0, p1, p2}, Lco/vine/android/util/UploadManager;->prepopulateVideoCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-eqz p3, :cond_13

    invoke-static {p1}, Lco/vine/android/recorder/RecordConfigUtils;->getThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lco/vine/android/util/UploadManager;->prepopulateImageCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    new-instance v0, Landroid/content/Intent;

    const-string v1, "co.vine.android.invalidateCache"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "co.vine.android.BROADCAST"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private static prepopulateImageCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/4 v3, 0x0

    invoke-static {p0}, Lco/vine/android/util/SystemUtil;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v8

    iget v1, v8, Landroid/graphics/Point;->x:I

    iget v2, v8, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-instance v0, Lco/vine/android/util/image/PhotoImagesCache;

    invoke-direct {v0, p0, v7, v3}, Lco/vine/android/util/image/PhotoImagesCache;-><init>(Landroid/content/Context;II)V

    :try_start_12
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_17} :catch_2a

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lco/vine/android/client/VineAccountHelper;->getActiveSession(Landroid/content/Context;Z)Lco/vine/android/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lco/vine/android/client/Session;->getUserId()J

    move-result-wide v1

    new-instance v3, Lco/vine/android/util/image/ImageKey;

    invoke-direct {v3, p2}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lco/vine/android/util/image/PhotoImagesCache;->prepopulateThumbnailCacheForUrl(JLco/vine/android/util/image/ImageKey;Ljava/lang/String;Ljava/io/FileInputStream;)V

    :goto_29
    return-void

    :catch_2a
    move-exception v6

    const-string v1, "Error prepopulating the cache"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v6, v1, v2}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_29
.end method

.method private static prepopulateVideoCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v2, 0x0

    new-instance v0, Lco/vine/android/util/video/VideoCache;

    invoke-direct {v0, p0, v2}, Lco/vine/android/util/video/VideoCache;-><init>(Landroid/content/Context;I)V

    :try_start_6
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_b} :catch_1e

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lco/vine/android/client/VineAccountHelper;->getActiveSession(Landroid/content/Context;Z)Lco/vine/android/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lco/vine/android/client/Session;->getUserId()J

    move-result-wide v1

    new-instance v3, Lco/vine/android/util/video/VideoKey;

    invoke-direct {v3, p2}, Lco/vine/android/util/video/VideoKey;-><init>(Ljava/lang/String;)V

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lco/vine/android/util/video/VideoCache;->prepopulateVideoCacheForUrl(JLco/vine/android/util/video/VideoKey;Ljava/lang/String;Ljava/io/InputStream;)V

    :goto_1d
    return-void

    :catch_1e
    move-exception v6

    const-string v1, "Error prepopulating the cache"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6, v1, v2}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1d
.end method

.method public static removeFromUploadQueue(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1}, Lco/vine/android/service/VineUploadService;->getDiscardIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static setHash(Landroid/content/Context;Lco/vine/android/api/VineUpload;Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    iput-object p2, p1, Lco/vine/android/api/VineUpload;->hash:Ljava/lang/String;

    invoke-static {}, Lco/vine/android/util/UploadManager;->getBaseUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "uploads/put_hash"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "path"

    iget-object v3, p1, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "hash"

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static setPostInfo(Landroid/content/Context;Lco/vine/android/api/VineUpload;Lco/vine/android/api/VineUpload$PostInfo;)V
    .registers 8

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting post info for path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with caption="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lco/vine/android/api/VineUpload$PostInfo;->caption:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", twitter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lco/vine/android/api/VineUpload$PostInfo;->postToTwitter:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", facebook="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lco/vine/android/api/VineUpload$PostInfo;->postToFacebook:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    invoke-virtual {p2}, Lco/vine/android/api/VineUpload$PostInfo;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lco/vine/android/api/VineUpload;->postInfo:Ljava/lang/String;

    invoke-static {}, Lco/vine/android/util/UploadManager;->getBaseUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "uploads/put_post_info"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "path"

    iget-object v3, p1, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "post_info"

    invoke-virtual {p2}, Lco/vine/android/api/VineUpload$PostInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static setStatus(Landroid/content/Context;Lco/vine/android/api/VineUpload;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lco/vine/android/util/UploadManager;->setStatus(Landroid/content/Context;Lco/vine/android/api/VineUpload;ILjava/lang/String;)V

    return-void
.end method

.method public static setStatus(Landroid/content/Context;Lco/vine/android/api/VineUpload;ILjava/lang/String;)V
    .registers 9

    const/4 v4, 0x0

    iput p2, p1, Lco/vine/android/api/VineUpload;->status:I

    invoke-static {}, Lco/vine/android/util/UploadManager;->getBaseUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "uploads/put_status"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "path"

    iget-object v3, p1, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "status"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "captcha_url"

    invoke-virtual {v0, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static setUploadMessageRowId(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 9

    const/4 v4, 0x0

    invoke-static {}, Lco/vine/android/util/UploadManager;->getBaseUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "uploads/put_message_row_id"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "message_row_id"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static setUploadTime(Landroid/content/Context;Lco/vine/android/api/VineUpload;)V
    .registers 8

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lco/vine/android/api/VineUpload;->uploadTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lco/vine/android/util/UploadManager;->getBaseUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "uploads/put_upload_time"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "path"

    iget-object v4, p1, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "upload_time"

    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v5, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static setUris(Landroid/content/Context;Lco/vine/android/api/VineUpload;[Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    invoke-virtual {p1, p2}, Lco/vine/android/api/VineUpload;->setUris([Ljava/lang/String;)V

    invoke-static {}, Lco/vine/android/util/UploadManager;->getBaseUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "uploads/put_uris"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "path"

    iget-object v3, p1, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "video_url"

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "thumbnail_url"

    const/4 v3, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static uploadListIsEmpty(Landroid/content/Context;)Z
    .registers 9

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lco/vine/android/provider/VineUploads$Uploads;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lco/vine/android/provider/VineUploadsDatabaseSQL$UploadsQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1b

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v7, :cond_1c

    :goto_18
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1b
    return v7

    :cond_1c
    const/4 v7, 0x0

    goto :goto_18
.end method


# virtual methods
.method public declared-synchronized upload(Lco/vine/android/service/VineUploadService$ServiceAsyncTask;Lco/vine/android/service/UploadProgressListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLco/vine/android/recorder/RecordSessionVersion;)[Ljava/lang/String;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "Files does not exist: {}"

    move-object/from16 v0, p3

    invoke-static {v1, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_a6

    const/4 v1, 0x0

    :goto_16
    monitor-exit p0

    return-object v1

    :cond_18
    :try_start_18
    invoke-virtual {p1}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-static {v1, v0}, Lco/vine/android/util/UploadManager;->getUpload(Landroid/content/Context;Ljava/lang/String;)Lco/vine/android/api/VineUpload;

    move-result-object v11

    if-nez v11, :cond_36

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Upload record was null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2c
    .catchall {:try_start_18 .. :try_end_2c} :catchall_a6
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception v7

    :try_start_2d
    const-string v1, "Upload failed: {}"

    move-object/from16 v0, p5

    invoke-static {v1, v0, v7}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_a6

    const/4 v1, 0x0

    goto :goto_16

    :cond_36
    :try_start_36
    invoke-static/range {p3 .. p3}, Lco/vine/android/recorder/HashAsyncTask;->getMD5Checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v8, v11, Lco/vine/android/api/VineUpload;->hash:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string v1, "Invalid hash: actual {}, expected {}."

    invoke-static {v1, v9, v8}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto :goto_16

    :cond_4f
    new-instance v1, Lco/vine/android/VineLoggingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected hash was invalid: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lco/vine/android/VineLoggingException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    :cond_6a
    invoke-virtual {p1}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_77

    const-string v1, "Task is already cancelled."

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_16

    :cond_77
    invoke-virtual {p1}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lco/vine/android/util/UploadManager;->generateFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p7

    iget-object v2, v0, Lco/vine/android/recorder/RecordSessionVersion;->videoOutputExtension:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p2

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lco/vine/android/util/UploadManager;->uploadVideo(Lco/vine/android/util/VineProgressListener;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_a9

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Failed to upload video."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a6
    .catchall {:try_start_36 .. :try_end_a6} :catchall_a6
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_a6} :catch_2c

    :catchall_a6
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_a9
    :try_start_a9
    invoke-virtual {p1}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_b7

    const-string v1, "Task is already cancelled."

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_16

    :cond_b7
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p4

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, p2, v1, v2, v5}, Lco/vine/android/util/UploadManager;->uploadThumbnail(Lco/vine/android/util/VineProgressListener;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_d0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Failed to upload thumbnail."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v1, v2

    const/4 v2, 0x1

    aput-object v10, v1, v2
    :try_end_d9
    .catchall {:try_start_a9 .. :try_end_d9} :catchall_a6
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_d9} :catch_2c

    goto/16 :goto_16
.end method

.method public uploadThumbnail(Lco/vine/android/util/VineProgressListener;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/util/UploadManager;->mMediaUtility:Lco/vine/android/util/MediaUtility;

    invoke-virtual {v0, p1, p4, p2, p3}, Lco/vine/android/util/MediaUtility;->getThumbnailUri(Lco/vine/android/util/VineProgressListener;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uploadVideo(Lco/vine/android/util/VineProgressListener;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/util/UploadManager;->mMediaUtility:Lco/vine/android/util/MediaUtility;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lco/vine/android/util/MediaUtility;->getVideoUri(Lco/vine/android/util/VineProgressListener;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
