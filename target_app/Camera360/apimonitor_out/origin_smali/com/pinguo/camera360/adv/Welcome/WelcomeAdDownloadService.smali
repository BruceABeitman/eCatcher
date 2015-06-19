.class public Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadService;
.super Landroid/app/Service;
.source "WelcomeAdDownloadService.java"

# interfaces
.implements Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$OnWelcomeAdDownloadListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDownloadModle:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static startMe(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "WelcomeAdDownloadService.onCreate"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    sget-object v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadSuccess(Lorg/json/JSONObject;)V
    .registers 7

    sget-object v1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onDownloadSuccess : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;

    invoke-virtual {p0}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->saveContent(Lorg/json/JSONObject;)V

    invoke-static {p0}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdController;->getPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "last_request_millis"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 11

    sget-object v4, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onStartCommand : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadService;->mDownloadModle:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;

    if-nez v4, :cond_1f

    invoke-static {}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->getInstance()Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;

    move-result-object v4

    iput-object v4, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadService;->mDownloadModle:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;

    :cond_1f
    const-wide/16 v2, 0x0

    :try_start_21
    invoke-static {p0}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;->newInstance(Landroid/content/Context;)Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;

    move-result-object v1

    iget-wide v2, v1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;->version:J
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_27} :catch_33

    :goto_27
    :try_start_27
    iget-object v4, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadService;->mDownloadModle:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;

    invoke-virtual {v4, p0}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->setListener(Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$OnWelcomeAdDownloadListener;)V

    iget-object v4, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadService;->mDownloadModle:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;

    invoke-virtual {v4, p0, v2, v3}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->startTask(Landroid/content/Context;J)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_31} :catch_38
    .catch Ljava/security/GeneralSecurityException; {:try_start_27 .. :try_end_31} :catch_3d

    :goto_31
    const/4 v4, 0x2

    return v4

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_27

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_31
.end method

.method public onTaskFinished()V
    .registers 1

    invoke-virtual {p0}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadService;->stopSelf()V

    return-void
.end method
