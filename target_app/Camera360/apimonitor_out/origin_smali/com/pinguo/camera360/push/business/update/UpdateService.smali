.class public Lcom/pinguo/camera360/push/business/update/UpdateService;
.super Landroid/app/Service;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;,
        Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;
    }
.end annotation


# static fields
.field public static final DOWNLOADING:I = 0x5809b

.field public static final DOWNLOADING_TITLE:Ljava/lang/String; = "download_title"

#the value of this static final field might be set in the static constructor
.field public static final IS_4X0:Z = false

.field private static final MAX_RATE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "newpush"

.field private static final TEXT_COLOR:I = -0x8f8f90

.field private static final UPDATE_INTERVAL:I = 0x3e8

.field public static final URL:Ljava/lang/String; = "url"


# instance fields
.field private lock:[B

.field private mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private manager:Landroid/app/NotificationManager;

.field private notify:Landroid/app/Notification;

.field private running:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, Lcom/pinguo/camera360/push/business/update/UpdateService;->IS_4X0:Z

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->manager:Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iput-object v0, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;

    iput-boolean v1, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->running:Z

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->lock:[B

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/app/NotificationManager;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->manager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/app/Notification;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/push/business/update/UpdateService;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/push/business/update/UpdateService;->getFinishPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getFinishPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 5

    invoke-static {p1}, Lcom/pinguo/camera360/push/utils/PushUtils;->getInstallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x5809b

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const-string/jumbo v0, "newpush"

    const-string/jumbo v1, "UpdateService---> End"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->running:Z

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 16

    const v11, 0x7f020286

    const v10, 0x5809b

    const/4 v9, 0x0

    const/4 v8, -0x1

    if-nez p1, :cond_12

    invoke-virtual {p0, v8}, Lcom/pinguo/camera360/push/business/update/UpdateService;->stopSelfResult(I)Z

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v5

    :goto_11
    return v5

    :cond_12
    const-string/jumbo v5, "newpush"

    const-string/jumbo v6, "UpdateService---> Start"

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->lock:[B

    monitor-enter v6

    :try_start_1e
    iget-boolean v5, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->running:Z

    if-eqz v5, :cond_42

    invoke-virtual {p0}, Lcom/pinguo/camera360/push/business/update/UpdateService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0802f4

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/pinguo/camera360/push/business/update/UpdateService;->stopSelfResult(I)Z

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v5

    monitor-exit v6

    goto :goto_11

    :catchall_3f
    move-exception v5

    monitor-exit v6
    :try_end_41
    .catchall {:try_start_1e .. :try_end_41} :catchall_3f

    throw v5

    :cond_42
    const/4 v5, 0x1

    :try_start_43
    iput-boolean v5, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->running:Z

    monitor-exit v6
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_3f

    const-string/jumbo v5, "url"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_57

    invoke-virtual {p0, v8}, Lcom/pinguo/camera360/push/business/update/UpdateService;->stopSelfResult(I)Z

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v5

    goto :goto_11

    :cond_57
    const-string/jumbo v5, "newpush"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "url: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/pinguo/camera360/push/utils/PushUtils;->getDownLoadPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8d

    invoke-virtual {p0}, Lcom/pinguo/camera360/push/business/update/UpdateService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0802f5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v8}, Lcom/pinguo/camera360/push/business/update/UpdateService;->stopSelfResult(I)Z

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v5

    goto :goto_11

    :cond_8d
    const-string/jumbo v5, "notification"

    invoke-virtual {p0, v5}, Lcom/pinguo/camera360/push/business/update/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->manager:Landroid/app/NotificationManager;

    const-string/jumbo v5, "download_title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/high16 v6, 0x800

    invoke-static {p0, v10, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/pinguo/camera360/push/business/update/UpdateService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0802f3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v5, Lcom/pinguo/camera360/push/business/update/UpdateService;->IS_4X0:Z

    if-eqz v5, :cond_f4

    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v6, 0x64

    invoke-virtual {v5, v6, v9, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->manager:Landroid/app/NotificationManager;

    iget-object v6, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v5, v10, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_e6
    new-instance v5, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;

    invoke-direct {v5, p0, v4, v0}, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;-><init>(Lcom/pinguo/camera360/push/business/update/UpdateService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;->start()V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v5

    goto/16 :goto_11

    :cond_f4
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;

    iget-object v5, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;

    iput v11, v5, Landroid/app/Notification;->icon:I

    iget-object v5, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;

    iput-object v3, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;

    iput-object v2, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;

    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/pinguo/camera360/push/business/update/UpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0300f0

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v6, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v6, 0x7f0a0561

    const v7, -0x8f8f90

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setTextColor(II)V

    iget-object v5, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v6, 0x7f0a0561

    invoke-virtual {v5, v6, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;

    const/16 v6, 0x10

    iput v6, v5, Landroid/app/Notification;->flags:I

    iget-object v5, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->manager:Landroid/app/NotificationManager;

    iget-object v6, p0, Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;

    invoke-virtual {v5, v10, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_e6
.end method
