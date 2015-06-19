.class public Lcom/pinguo/camera360/cloud/CloudServiceManager;
.super Ljava/lang/Object;
.source "CloudServiceManager.java"


# static fields
.field public static final CLOUD_STYLE:Ljava/lang/String; = "cloud_style"

.field public static final CSS_STARTUPLOAD:I = 0x2

.field public static final CSS_STOPUPLOAD:I = 0x3

.field public static final TAG:Ljava/lang/String; = "CloudServiceManager"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changePower(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCurrentBattyEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p0}, Lcom/pinguo/camera360/cloud/CloudServiceManager;->stopCloudUpload(Landroid/content/Context;)V

    :goto_9
    return-void

    :cond_a
    invoke-static {p0}, Lcom/pinguo/camera360/cloud/CloudServiceManager;->startCloudUpload(Landroid/content/Context;)V

    goto :goto_9
.end method

.method public static startAlarmManager(Landroid/content/Context;)V
    .registers 9

    const-wide/32 v4, 0x493e0

    const/4 v1, 0x0

    const-string/jumbo v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v7, Landroid/content/Intent;

    const-class v2, Lcom/pinguo/camera360/cloud/service/CloudShareServiceReceiver;

    invoke-direct {v7, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "vStudio.Android.Camera360.UPLOAD_TIME"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v1, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static startCloudUpload(Landroid/content/Context;)V
    .registers 5

    invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->isCanUpload(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/cloud/service/CloudShareService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "cloud_style"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {p0}, Lcom/pinguo/camera360/cloud/CloudServiceManager;->startAlarmManager(Landroid/content/Context;)V

    :goto_1a
    return-void

    :cond_1b
    invoke-static {}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->getInstance()Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->setStatus(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1a
.end method

.method public static stopCloudUpload(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/cloud/service/CloudShareService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "cloud_style"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
