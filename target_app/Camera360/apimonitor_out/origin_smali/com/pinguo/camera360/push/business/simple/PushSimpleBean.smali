.class public Lcom/pinguo/camera360/push/business/simple/PushSimpleBean;
.super Ljava/lang/Object;
.source "PushSimpleBean.java"

# interfaces
.implements Lcom/pinguo/camera360/push/PushDataBean;


# static fields
.field public static final ACTION_BANNER_UPDATE:Ljava/lang/String; = "app://com.pinguo.camera360.shop.model.ShopBannerUpdateTask"

.field public static final ACTION_CAMERA:Ljava/lang/String; = "app://pinguo.android.team.cameraView"

.field public static final ACTION_CLOUD:Ljava/lang/String; = "app://pinguo.android.team.cloud"

.field public static final ACTION_EFFECT_STORE:Ljava/lang/String; = "app://pinguo.android.team.effectStore"

.field public static final ACTION_FEEDBACK:Ljava/lang/String; = "app://pinguo.android.team.feedback"

.field public static final ACTION_GALLERy:Ljava/lang/String; = "app://pinguo.android.team.albumView"

.field public static final ACTION_MSG_CENTER:Ljava/lang/String; = "app://com.pinguo.camera360.mycenter.MsgCenterActivity"

.field public static final ACTION_NEW_WELCOME_AD:Ljava/lang/String; = "app://pinguo.android.team.new_welcome_ad"

.field private static final KEY_GUID:Ljava/lang/String; = "guid"

.field public static final KEY_INTENT_HEADER:Ljava/lang/String; = "app://"

.field private static final KEY_LINK:Ljava/lang/String; = "link"


# instance fields
.field private guid:Ljava/lang/String;

.field private link:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean;->link:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean;->guid:Ljava/lang/String;

    return-void
.end method

.method public static getDataBean(Ljava/lang/String;)Lcom/pinguo/camera360/push/business/simple/PushSimpleBean;
    .registers 7

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean;

    invoke-direct {v0}, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean;-><init>()V

    const-string/jumbo v3, "link"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean;->link:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    :goto_13
    return-object v0

    :catch_14
    move-exception v1

    const-string/jumbo v3, "newpush"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "push error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static notity(Landroid/content/Context;Lcom/pinguo/camera360/push/PushBean;I)I
    .registers 21

    invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/push/PushBean;->getData()Lcom/pinguo/camera360/push/PushDataBean;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/push/PushBean;->getNotifi()Lcom/pinguo/camera360/push/PushNotifyBean;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/push/PushBean;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->setMessageId(Ljava/lang/String;)V

    const/4 v15, 0x0

    new-array v9, v15, [B

    check-cast v11, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean;

    invoke-virtual {v11}, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean;->getLink()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v15, "app://"

    invoke-virtual {v8, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_28

    const/4 v15, 0x0

    :goto_27
    return v15

    :cond_28
    const-string/jumbo v15, "app://pinguo.android.team.cameraView"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_40

    invoke-static/range {p0 .. p0}, Lcom/pinguo/camera360/PgCameraApplication;->getStartCameraIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v15, "app://pinguo.android.team.cameraView"

    const-string/jumbo v16, "app://pinguo.android.team.cameraView"

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_40
    const-string/jumbo v15, "app://pinguo.android.team.albumView"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5d

    new-instance v7, Landroid/content/Intent;

    const-class v15, Lcom/pinguo/camera360/gallery/GalleryActivity;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v15, "app://pinguo.android.team.albumView"

    const-string/jumbo v16, "app://pinguo.android.team.albumView"

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5d
    const-string/jumbo v15, "app://pinguo.android.team.cloud"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string/jumbo v15, "push"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "before update link:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "app://pinguo.android.team.effectStore"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_145

    const/4 v15, 0x2

    new-array v14, v15, [Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x0

    new-instance v16, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    aput-object v16, v14, v15

    const/4 v15, 0x1

    new-instance v16, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    aput-object v16, v14, v15

    const/4 v15, 0x2

    new-array v13, v15, [Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x0

    new-instance v16, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    aput-object v16, v13, v15

    const/4 v15, 0x1

    new-instance v16, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    aput-object v16, v13, v15

    const-string/jumbo v15, "push"

    const-string/jumbo v16, "start update!"

    invoke-static/range {v15 .. v16}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v15

    new-instance v16, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean$1;

    move-object/from16 v0, v16

    invoke-direct {v0, v9, v14, v13}, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean$1;-><init>([B[Ljava/util/concurrent/atomic/AtomicBoolean;[Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual/range {v15 .. v16}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->update(Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)Z

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v15

    new-instance v16, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean$2;

    move-object/from16 v0, v16

    invoke-direct {v0, v9, v14, v13}, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean$2;-><init>([B[Ljava/util/concurrent/atomic/AtomicBoolean;[Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual/range {v15 .. v16}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->updateFrontImage(Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V

    :try_start_d7
    monitor-enter v9
    :try_end_d8
    .catch Ljava/lang/InterruptedException; {:try_start_d7 .. :try_end_d8} :catch_131

    :try_start_d8
    const-string/jumbo v15, "push"

    const-string/jumbo v16, "start wait!"

    invoke-static/range {v15 .. v16}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v15, 0x4e20

    move-wide v0, v15

    invoke-virtual {v9, v0, v1}, Ljava/lang/Object;->wait(J)V

    const-string/jumbo v15, "push"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "wait finish result:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v17, 0x0

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v9
    :try_end_119
    .catchall {:try_start_d8 .. :try_end_119} :catchall_12e

    :goto_119
    const/4 v15, 0x0

    aget-object v15, v13, v15

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v15

    if-eqz v15, :cond_12b

    const/4 v15, 0x1

    aget-object v15, v13, v15

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v15

    if-nez v15, :cond_136

    :cond_12b
    const/4 v15, 0x2

    goto/16 :goto_27

    :catchall_12e
    move-exception v15

    :try_start_12f
    monitor-exit v9
    :try_end_130
    .catchall {:try_start_12f .. :try_end_130} :catchall_12e

    :try_start_130
    throw v15
    :try_end_131
    .catch Ljava/lang/InterruptedException; {:try_start_130 .. :try_end_131} :catch_131

    :catch_131
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_119

    :cond_136
    invoke-static/range {p0 .. p0}, Lcom/pinguo/camera360/PgCameraApplication;->getStartCameraIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v15, "app://pinguo.android.team.cameraView"

    const-string/jumbo v16, "app://pinguo.android.team.cameraView"

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_145
    const-string/jumbo v15, "app://pinguo.android.team.feedback"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1c6

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v15

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->addNewFlagInMyCenter(I)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v15

    invoke-virtual {v15}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getUnreadFeedbackCount()I

    move-result v5

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v15

    add-int/lit8 v16, v5, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setUnreadFeedbackCount(I)V

    :try_start_168
    const-string/jumbo v15, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v15, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a5

    const-string/jumbo v15, ".Camera360FeedbackActivity"

    invoke-virtual {v3, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1a5

    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v16, "com.pinguo.camear360.feedback.updateui.broadcast"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_19e} :catch_1a1

    const/4 v15, 0x1

    goto/16 :goto_27

    :catch_1a1
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1a5
    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v16, "com.pinguo.camear360.feedback.update.mycenter"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v7, Landroid/content/Intent;

    const-class v15, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v15, "app://pinguo.android.team.feedback"

    const-string/jumbo v16, "app://pinguo.android.team.feedback"

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1c6
    const-string/jumbo v15, "app://pinguo.android.team.new_welcome_ad"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1d2

    invoke-static/range {p0 .. p0}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadService;->startMe(Landroid/content/Context;)V

    :cond_1d2
    const-string/jumbo v15, "app://com.pinguo.camera360.mycenter.MsgCenterActivity"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1fa

    new-instance v7, Landroid/content/Intent;

    const-class v15, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v15, "extra_key_refresh_at_start"

    const-string/jumbo v16, "true"

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v15, "app://com.pinguo.camera360.mycenter.MsgCenterActivity"

    const-string/jumbo v16, "app://com.pinguo.camera360.mycenter.MsgCenterActivity"

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1fa
    invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/push/PushBean;->getShow()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_205

    const/4 v10, 0x0

    :cond_205
    if-eqz v10, :cond_264

    const-string/jumbo v15, "notify_title"

    invoke-virtual {v10}, Lcom/pinguo/camera360/push/PushNotifyBean;->getTitle()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v15, "notify_msg"

    invoke-virtual {v10}, Lcom/pinguo/camera360/push/PushNotifyBean;->getMsg()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/push/PushBean;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->setMessageId(Ljava/lang/String;)V

    const-string/jumbo v15, "notify_id"

    move/from16 v0, p2

    invoke-virtual {v7, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v7, v1}, Lcom/pinguo/camera360/push/utils/PushNotify;->showNotify(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v12

    const-string/jumbo v15, "newpush"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "push_simple notify: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_281

    const/4 v15, 0x0

    invoke-static {v15}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushSimple(I)V

    const-string/jumbo v15, "app://pinguo.android.team.cameraView"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_261

    const/4 v15, 0x5

    invoke-static {v15}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushOpenCamera(I)V

    :cond_261
    const/4 v15, 0x1

    goto/16 :goto_27

    :cond_264
    const-string/jumbo v15, "app://com.pinguo.camera360.shop.model.ShopBannerUpdateTask"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_27e

    new-instance v15, Ljava/lang/Thread;

    new-instance v16, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean$3;-><init>(Landroid/content/Context;)V

    invoke-direct/range {v15 .. v16}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    :cond_27e
    const/4 v15, 0x1

    goto/16 :goto_27

    :cond_281
    const/4 v15, 0x2

    goto/16 :goto_27
.end method


# virtual methods
.method public getGuid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean;->link:Ljava/lang/String;

    return-object v0
.end method
