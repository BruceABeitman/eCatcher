.class public Lcom/pinguo/camera360/save/processer/PhotoProcessService;
.super Landroid/app/Service;
.source "PhotoProcessService.java"

# interfaces
.implements Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$EffectPictureCallback;
.implements Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$IPreviewMaker;
.implements Lcom/pinguo/camera360/save/ImageSaver$IImageSaver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/save/processer/PhotoProcessService$PhotoProcessBinder;
    }
.end annotation


# static fields
.field private static final PREVIEW_PROCESS_LIMIT:I = 0x1

.field private static final REPORT_MSG:I = 0x1

.field private static final SAVE_PROCESS_LIMIT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PhotoProcessService"


# instance fields
.field private effectFinishCount:I

.field private effectStartCount:I

.field private finishCount:I

.field private final mBinder:Landroid/os/IBinder;

.field mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:[B

.field mNotificationManager:Landroid/app/NotificationManager;

.field private mPictureEditor:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;

.field private mPictureSaver:Lcom/pinguo/camera360/save/ImageSaver;

.field private mPreviewMaker:Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;

.field private mProcessInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/photoedit/PictureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private saveCount:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/pinguo/camera360/save/processer/PhotoProcessService$PhotoProcessBinder;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/save/processer/PhotoProcessService$PhotoProcessBinder;-><init>(Lcom/pinguo/camera360/save/processer/PhotoProcessService;)V

    iput-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mBinder:Landroid/os/IBinder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mProcessInfoList:Ljava/util/List;

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mLock:[B

    new-instance v0, Lcom/pinguo/camera360/save/processer/PhotoProcessService$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/save/processer/PhotoProcessService$1;-><init>(Lcom/pinguo/camera360/save/processer/PhotoProcessService;)V

    iput-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mHandler:Landroid/os/Handler;

    iput v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->saveCount:I

    iput v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->finishCount:I

    iput v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->effectStartCount:I

    iput v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->effectFinishCount:I

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/save/processer/PhotoProcessService;Lcom/pinguo/camera360/photoedit/PictureInfo;[BLandroid/graphics/Bitmap;Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->doSave(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLandroid/graphics/Bitmap;Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/save/processer/PhotoProcessService;Lcom/pinguo/camera360/photoedit/PictureInfo;Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->dealSoundPhoto(Lcom/pinguo/camera360/photoedit/PictureInfo;Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/save/processer/PhotoProcessService;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->effectFinishCount:I

    return v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/save/processer/PhotoProcessService;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->effectFinishCount:I

    return-void
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/save/processer/PhotoProcessService;Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->dealAfter(Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;Z)V

    return-void
.end method

.method private dealAfter(Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;Z)V
    .registers 14

    const/4 v10, 0x1

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setPicEditCompatibilityModeFailedCount(Z)I

    move-result v1

    if-nez p2, :cond_79

    const-string/jumbo v7, "broken"

    invoke-virtual {p1, v7}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setProjectState(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getSourcePath()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    if-eq v1, v7, :cond_1b

    const/4 v7, 0x6

    if-ne v1, v7, :cond_5e

    :cond_1b
    invoke-static {p0}, Lcom/pinguo/camera360/PgCameraApplication;->getStartCameraIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    new-instance v7, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v7, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0201f2

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    const v8, 0x7f0801ea

    invoke-virtual {p0, v8}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    const v8, 0x7f0801eb

    invoke-virtual {p0, v8}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->getApplication()Landroid/app/Application;

    move-result-object v8

    const/high16 v9, 0x800

    invoke-static {v8, v10, v5, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v7, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mNotificationManager:Landroid/app/NotificationManager;

    const v8, 0x7f0a0025

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_5e
    :goto_5e
    :try_start_5e
    invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->update(Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_65} :catch_84

    :goto_65
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getOrientation()I

    move-result v6

    invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getEffectType()I

    move-result v7

    if-nez v7, :cond_75

    const/4 v6, 0x0

    :cond_75
    invoke-direct {p0, p1, v4, v6, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->dealForGallery(Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;Ljava/lang/String;ILjava/io/File;)V

    return-void

    :cond_79
    const-string/jumbo v7, "finished"

    invoke-virtual {p1, v7}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setProjectState(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDestPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_5e

    :catch_84
    move-exception v2

    const-string/jumbo v7, "PhotoProcessService"

    const-string/jumbo v8, "Update database error."

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65
.end method

.method private dealForGallery(Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;Ljava/lang/String;ILjava/io/File;)V
    .registers 26

    const/4 v14, 0x0

    :try_start_1
    invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDateTaken()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getPhotoProjectForTime(J)Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_43

    move-result-object v3

    if-nez v3, :cond_41

    const/4 v14, 0x1

    :goto_10
    if-eqz v14, :cond_49

    const-string/jumbo v3, "PhotoProcessService"

    const-string/jumbo v5, " delete project ,because we cannot found it in DB"

    invoke-static {v3, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDateTaken()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDestPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/pinguo/camera360/gallery/temps/GalleryUtil;->deleteProject(JLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v6, "datetaken = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDateTaken()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_40
    return-void

    :cond_41
    const/4 v14, 0x0

    goto :goto_10

    :catch_43
    move-exception v13

    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v14, 0x0

    goto :goto_10

    :cond_49
    const-string/jumbo v3, "PhotoProcessService"

    const-string/jumbo v5, " not delete project ,because we found it in DB"

    invoke-static {v3, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getJSONExpand()Ljava/lang/String;

    move-result-object v16

    :try_start_56
    const-string/jumbo v3, "PhotoProcessService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "check jsonString = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v16, :cond_bc

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_bc

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct/range {v15 .. v16}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "cet"

    const-wide/16 v5, 0x0

    invoke-virtual {v15, v3, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v18

    const-wide/16 v5, 0x0

    cmp-long v3, v18, v5

    if-eqz v3, :cond_bc

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "jsonExpand"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "PhotoProcessService"

    const-string/jumbo v5, " update camera360 Album by ContentResolver"

    invoke-static {v3, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/pinguo/camera360/gallery/data/model/C360Photo;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "effectPhotoSavePath=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDestPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_bc} :catch_10e

    :cond_bc
    :goto_bc
    const/16 v3, 0xca

    invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getPhotoType()I

    move-result v5

    if-ne v3, v5, :cond_12e

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/save/Storage;->update(Ljava/io/File;Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;Landroid/content/Context;)V

    const-string/jumbo v3, "PhotoProcessService"

    const-string/jumbo v5, " update photo system Album by ContentResolver"

    invoke-static {v3, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d6
    invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDateTaken()J

    move-result-wide v5

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-static {v5, v6, v3}, Lcom/pinguo/lib/util/TimeUtils;->getStringDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :try_start_e1
    const-string/jumbo v4, "100"

    invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getExif()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_ed

    const-string/jumbo v4, "104"

    :cond_ed
    invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDateTaken()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static/range {p2 .. p2}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCRC32forFile(Ljava/lang/String;)J

    move-result-wide v7

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v10, "normal"

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v12}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->CSS_addUploadData(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_106
    .catch Landroid/os/RemoteException; {:try_start_e1 .. :try_end_106} :catch_108

    goto/16 :goto_40

    :catch_108
    move-exception v13

    invoke-virtual {v13}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_40

    :catch_10e
    move-exception v13

    const-string/jumbo v3, "PhotoProcessService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "check jsonString : no json : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "PhotoProcessService"

    invoke-static {v3, v13}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_bc

    :cond_12e
    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDateTaken()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;

    move-result-object v7

    move-object/from16 v4, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v3 .. v9}, Lcom/pinguo/camera360/save/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILjava/io/File;)Landroid/net/Uri;

    const-string/jumbo v3, "PhotoProcessService"

    const-string/jumbo v5, " insert photo system Album by ContentResolver"

    invoke-static {v3, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d6
.end method

.method private dealSoundPhoto(Lcom/pinguo/camera360/photoedit/PictureInfo;Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;)Z
    .registers 14

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p2}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->getSandboxDir()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "/sound.mp3"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_82

    :try_start_25
    new-instance v2, Lorg/pinguo/richpicture/RichPictureInterface;

    invoke-direct {v2}, Lorg/pinguo/richpicture/RichPictureInterface;-><init>()V

    new-instance v0, Lorg/pinguo/richpicture/AudioInfo;

    invoke-direct {v0}, Lorg/pinguo/richpicture/AudioInfo;-><init>()V

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "/sound.mp3"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/pinguo/lib/util/FileUtils;->getFileData(Ljava/io/File;)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setData([B)V

    invoke-static {}, Lorg/pinguo/richpicture/UUIDGenerator;->getUUIDArray()[B

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setUuid([B)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setType(I)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setFormatType(I)V

    invoke-virtual {p2}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->getSampleRate()I

    move-result v8

    invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setSampleRate(I)V

    invoke-virtual {p2}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->getChannel()I

    move-result v8

    invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setChannelConfig(I)V

    invoke-virtual {p2}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->getAudioFormat()I

    move-result v8

    invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setAudioFormat(I)V

    invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v0}, Lorg/pinguo/richpicture/RichPictureInterface;->setAudioInfoToFile(Ljava/lang/String;Lorg/pinguo/richpicture/AudioInfo;)Z
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_7a} :catch_7b

    :cond_7a
    :goto_7a
    return v6

    :catch_7b
    move-exception v1

    const-string/jumbo v8, "PhotoProcessService"

    invoke-static {v8, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_82
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "/sound.pcm"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_137

    const-string/jumbo v8, "PhotoProcessService"

    const-string/jumbo v9, "processSoundPhoto, pcm file exists!"

    invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/pinguo/camera360/save/sandbox/AudioSynCompressMp3;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "/sound.pcm"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p2, v9, v7}, Lcom/pinguo/camera360/save/sandbox/AudioSynCompressMp3;-><init>(Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;Ljava/lang/String;I)V

    invoke-virtual {v8}, Lcom/pinguo/camera360/save/sandbox/AudioSynCompressMp3;->synPcm2Mp3()[B

    move-result-object v3

    if-eqz v3, :cond_137

    :try_start_c9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "/sound.mp3"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/pinguo/lib/util/FileUtils;->saveFile([BLjava/lang/String;)V

    new-instance v2, Lorg/pinguo/richpicture/RichPictureInterface;

    invoke-direct {v2}, Lorg/pinguo/richpicture/RichPictureInterface;-><init>()V

    new-instance v0, Lorg/pinguo/richpicture/AudioInfo;

    invoke-direct {v0}, Lorg/pinguo/richpicture/AudioInfo;-><init>()V

    invoke-virtual {v0, v3}, Lorg/pinguo/richpicture/AudioInfo;->setData([B)V

    invoke-static {}, Lorg/pinguo/richpicture/UUIDGenerator;->getUUIDArray()[B

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setUuid([B)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setType(I)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setFormatType(I)V

    invoke-virtual {p2}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->getSampleRate()I

    move-result v8

    invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setSampleRate(I)V

    invoke-virtual {p2}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->getChannel()I

    move-result v8

    invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setChannelConfig(I)V

    invoke-virtual {p2}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->getAudioFormat()I

    move-result v8

    invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setAudioFormat(I)V

    invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v0}, Lorg/pinguo/richpicture/RichPictureInterface;->setAudioInfoToFile(Ljava/lang/String;Lorg/pinguo/richpicture/AudioInfo;)Z

    invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->getSystemOrgPhoto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7a

    invoke-virtual {v2, v5, v0}, Lorg/pinguo/richpicture/RichPictureInterface;->setAudioInfoToFile(Ljava/lang/String;Lorg/pinguo/richpicture/AudioInfo;)Z
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_12e} :catch_130

    goto/16 :goto_7a

    :catch_130
    move-exception v1

    const-string/jumbo v6, "PhotoProcessService"

    invoke-static {v6, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_137
    move v6, v7

    goto/16 :goto_7a
.end method

.method private dismissNotification()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private declared-synchronized doMakeEffectPicture(Lcom/pinguo/camera360/photoedit/PictureInfo;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mLock:[B

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_3f

    :try_start_4
    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mProcessInfoList:Ljava/util/List;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mProcessInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->showNotification()V

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_3c

    :try_start_11
    iget v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->effectStartCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->effectStartCount:I

    const-string/jumbo v0, "PhotoProcessService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Start make effect picture:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->effectStartCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPictureEditor:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;

    const/4 v1, 0x0

    new-instance v2, Lcom/pinguo/camera360/save/processer/PhotoProcessService$3;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/save/processer/PhotoProcessService$3;-><init>(Lcom/pinguo/camera360/save/processer/PhotoProcessService;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->addImage(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/EffectCallback;)V
    :try_end_3a
    .catchall {:try_start_11 .. :try_end_3a} :catchall_3f

    monitor-exit p0

    return-void

    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized doMakePreview(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPreviewCallback;ZZ)V
    .registers 12

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "makePreview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Start process picture! :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPreviewMaker:Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPreviewMaker:Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->makePreview(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPreviewCallback;ZZ)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_3f

    monitor-exit p0

    return-void

    :cond_36
    :try_start_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Preview maker already released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized doSave(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLandroid/graphics/Bitmap;Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
    .registers 12

    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPictureSaver:Lcom/pinguo/camera360/save/ImageSaver;

    if-eqz v4, :cond_54

    iget v4, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->saveCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->saveCount:I

    const-string/jumbo v4, "makePreview"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Start save picture count:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->saveCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPictureType()I

    move-result v4

    const/16 v5, 0xca

    if-eq v4, v5, :cond_3e

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J

    move-result-wide v4

    invoke-static {v4, v5, v1}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getPictureSavePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectPath(Ljava/lang/String;)V

    :cond_3e
    invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPictureType()I

    move-result v3

    invoke-static {v3}, Lcom/pinguo/camera360/save/ImageSaveStrategyFactory;->getImageSaveStrategy(I)Lcom/pinguo/camera360/save/IImageSaveStrategy;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/pinguo/camera360/save/IImageSaveStrategy;->setCallback(Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V

    const/4 v4, 0x0

    invoke-interface {v0, v4, p3}, Lcom/pinguo/camera360/save/IImageSaveStrategy;->setPreviewData(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPictureSaver:Lcom/pinguo/camera360/save/ImageSaver;

    invoke-virtual {v4, p2, p1, v0}, Lcom/pinguo/camera360/save/ImageSaver;->addImage([BLcom/pinguo/camera360/photoedit/PictureInfo;Lcom/pinguo/camera360/save/IImageSaveStrategy;)V
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_5d

    monitor-exit p0

    return-void

    :cond_54
    :try_start_54
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Picture saver already released!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private showNotification()V
    .registers 7

    iget-object v2, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mProcessInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const v2, 0x7f080326

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const v3, 0x7f080325

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mNotificationManager:Landroid/app/NotificationManager;

    const v3, 0x7f0a0024

    iget-object v4, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public canProcessPicture()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPreviewMaker:Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPreviewMaker:Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;

    invoke-virtual {v2}, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->getCount()I

    move-result v2

    if-lt v2, v1, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    iget-object v2, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPictureSaver:Lcom/pinguo/camera360/save/ImageSaver;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPictureSaver:Lcom/pinguo/camera360/save/ImageSaver;

    invoke-virtual {v2}, Lcom/pinguo/camera360/save/ImageSaver;->getCount()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_e

    :cond_1c
    move v0, v1

    goto :goto_e
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public makeAllEffectFinish()V
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/cloud/CloudServiceManager;->startCloudUpload(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPictureEditor:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;

    invoke-virtual {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->stopSelf()V

    return-void
.end method

.method public makeEffectFinish(Lcom/pinguo/camera360/photoedit/PictureInfo;)V
    .registers 4

    iget-object v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mLock:[B

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mProcessInfoList:Ljava/util/List;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mProcessInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mProcessInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_19

    invoke-direct {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->dismissNotification()V

    :cond_17
    :goto_17
    monitor-exit v1

    return-void

    :cond_19
    invoke-direct {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->showNotification()V

    goto :goto_17

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public makeEffectPicture(Lcom/pinguo/camera360/photoedit/PictureInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->doMakeEffectPicture(Lcom/pinguo/camera360/photoedit/PictureInfo;)V

    return-void
.end method

.method public makePreview(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPreviewCallback;ZZ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->doMakePreview(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPreviewCallback;ZZ)V

    return-void
.end method

.method public makePreviewAndSave(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
    .registers 10

    const/4 v4, 0x0

    const-string/jumbo v0, "PhotoProcessService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "makePreviewAndSave:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffect()Lcom/pinguo/camera360/effect/model/entity/Effect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/pinguo/camera360/save/processer/PhotoProcessService$2;

    invoke-direct {v3, p0, p2, p3}, Lcom/pinguo/camera360/save/processer/PhotoProcessService$2;-><init>(Lcom/pinguo/camera360/save/processer/PhotoProcessService;[BLcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->doMakePreview(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPreviewCallback;ZZ)V

    return-void
.end method

.method public makePreviewNew(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPreviewCallback;ZZ)V
    .registers 12

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->makeCopy()Lcom/pinguo/camera360/photoedit/PictureInfo;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setRotation(I)V

    invoke-virtual {v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicFrame()I

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p2}, Lcom/pinguo/lib/image/BitmapUtils;->getPictureSize([B)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPicSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V

    :cond_15
    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPicFrame(I)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->doMakePreview(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPreviewCallback;ZZ)V

    return-void
.end method

.method public onAllPreviewMaked()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPreviewMaker:Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;

    const-string/jumbo v0, "makePreview"

    const-string/jumbo v1, "All preview maked!"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPictureSaver:Lcom/pinguo/camera360/save/ImageSaver;

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "makePreview"

    const-string/jumbo v1, "Stop image saver!"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPictureSaver:Lcom/pinguo/camera360/save/ImageSaver;

    invoke-virtual {v0}, Lcom/pinguo/camera360/save/ImageSaver;->finish()V

    :cond_1e
    return-void
.end method

.method public onAllSaveFinish()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPictureSaver:Lcom/pinguo/camera360/save/ImageSaver;

    const-string/jumbo v0, "makePreview"

    const-string/jumbo v1, "All picture save finished!"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPictureEditor:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "makePreview"

    const-string/jumbo v1, "Stop picture editor!"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPictureEditor:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;

    invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->finish()V

    :cond_1e
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    const v3, 0x7f08026b

    const/4 v2, 0x0

    const-string/jumbo v0, "PhotoProcessService"

    const-string/jumbo v1, "======= Photo Process Service Start ======="

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0201f2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const-string/jumbo v0, "PhotoProcessService"

    const-string/jumbo v1, "======= Photo Process Service End ======="

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mLock:[B

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mProcessInfoList:Ljava/util/List;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mProcessInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1a

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public onItemSaveFinish(Z)V
    .registers 2

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 11

    const-string/jumbo v4, "PhotoProcessService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "PhotoProcessService onCreate , mPictureEditor = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPictureEditor:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPictureEditor:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;

    if-nez v4, :cond_9d

    const/4 v2, 0x0

    :try_start_1d
    invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getUnFinishItems()Ljava/util/List;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_24} :catch_8a

    move-result-object v2

    :goto_25
    new-instance v4, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;

    invoke-direct {v4}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;-><init>()V

    iput-object v4, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPictureEditor:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;

    iget-object v4, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPictureEditor:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;

    invoke-virtual {v4, p0}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->setEditCallback(Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$EffectPictureCallback;)V

    if-eqz v2, :cond_3d

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_37
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_8f

    :cond_3d
    iget-object v4, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPictureEditor:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;

    invoke-virtual {v4}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->start()V

    :goto_42
    const-string/jumbo v4, "makePreview"

    const-string/jumbo v5, "Pre create preview maker!"

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPreviewMaker:Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;

    if-nez v4, :cond_a3

    new-instance v4, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;

    invoke-direct {v4}, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;-><init>()V

    iput-object v4, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPreviewMaker:Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;

    iget-object v4, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPreviewMaker:Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;

    invoke-virtual {v4, p0}, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->setListener(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$IPreviewMaker;)V

    const-string/jumbo v4, "makePreview"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Create preview maker finish! :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_71
    iget-object v4, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPictureSaver:Lcom/pinguo/camera360/save/ImageSaver;

    if-nez v4, :cond_a9

    new-instance v4, Lcom/pinguo/camera360/save/ImageSaver;

    invoke-virtual {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/pinguo/camera360/save/ImageSaver;-><init>(Landroid/content/ContentResolver;)V

    iput-object v4, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPictureSaver:Lcom/pinguo/camera360/save/ImageSaver;

    iget-object v4, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPictureSaver:Lcom/pinguo/camera360/save/ImageSaver;

    invoke-virtual {v4, p0}, Lcom/pinguo/camera360/save/ImageSaver;->setListener(Lcom/pinguo/camera360/save/ImageSaver$IImageSaver;)V

    :goto_85
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v4

    return v4

    :catch_8a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25

    :cond_8f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;

    invoke-static {v1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->createPictureInfoFromItem(Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;)Lcom/pinguo/camera360/photoedit/PictureInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->doMakeEffectPicture(Lcom/pinguo/camera360/photoedit/PictureInfo;)V

    goto :goto_37

    :cond_9d
    iget-object v4, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPictureEditor:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;

    invoke-virtual {v4}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->cancelFinish()V

    goto :goto_42

    :cond_a3
    iget-object v4, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPreviewMaker:Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;

    invoke-virtual {v4}, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->cancelFinish()V

    goto :goto_71

    :cond_a9
    iget-object v4, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPictureSaver:Lcom/pinguo/camera360/save/ImageSaver;

    invoke-virtual {v4}, Lcom/pinguo/camera360/save/ImageSaver;->cancelFinish()V

    goto :goto_85
.end method

.method public save([BLcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
    .registers 5

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->doSave(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLandroid/graphics/Bitmap;Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V

    return-void
.end method

.method public selecte(Ljava/lang/String;)J
    .registers 6

    iget-object v3, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mLock:[B

    monitor-enter v3

    :try_start_3
    iget-object v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mProcessInfoList:Ljava/util/List;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mProcessInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_17

    :cond_13
    monitor-exit v3

    const-wide/16 v1, -0x1

    :goto_16
    return-wide v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/photoedit/PictureInfo;

    invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J

    move-result-wide v1

    monitor-exit v3

    goto :goto_16

    :catchall_2d
    move-exception v1

    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public stop()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPreviewMaker:Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;

    if-eqz v0, :cond_12

    const-string/jumbo v0, "makePreview"

    const-string/jumbo v1, "Stop preview maker!"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->mPreviewMaker:Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;

    invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->finish()V

    :cond_12
    return-void
.end method
