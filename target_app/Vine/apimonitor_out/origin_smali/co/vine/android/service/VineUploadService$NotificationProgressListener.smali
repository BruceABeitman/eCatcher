.class Lco/vine/android/service/VineUploadService$NotificationProgressListener;
.super Lco/vine/android/service/UploadProgressListener;
.source "VineUploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/service/VineUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationProgressListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/service/VineUploadService;


# direct methods
.method public constructor <init>(Lco/vine/android/service/VineUploadService;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->this$0:Lco/vine/android/service/VineUploadService;

    invoke-direct {p0, p2}, Lco/vine/android/service/UploadProgressListener;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private updateNotification(Ljava/lang/String;IIZ)V
    .registers 11

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "Update notification: {}, {}."

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v3, p0, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->lastProgress:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->this$0:Lco/vine/android/service/VineUploadService;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->this$0:Lco/vine/android/service/VineUploadService;

    #calls: Lco/vine/android/service/VineUploadService;->setScaledNotificationIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v1, p1}, Lco/vine/android/service/VineUploadService;->access$800(Lco/vine/android/service/VineUploadService;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    const v1, 0x7f0201ff

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->this$0:Lco/vine/android/service/VineUploadService;

    invoke-virtual {v1, p2}, Lco/vine/android/service/VineUploadService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->this$0:Lco/vine/android/service/VineUploadService;

    invoke-virtual {v1, p3}, Lco/vine/android/service/VineUploadService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz p4, :cond_58

    iget v1, p0, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->lastProgress:I

    if-lez v1, :cond_54

    const/16 v1, 0x64

    iget v2, p0, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->lastProgress:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    :goto_4e
    iget-object v1, p0, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->this$0:Lco/vine/android/service/VineUploadService;

    #calls: Lco/vine/android/service/VineUploadService;->showNotification(Landroid/support/v4/app/NotificationCompat$Builder;I)V
    invoke-static {v1, v0, v5}, Lco/vine/android/service/VineUploadService;->access$900(Lco/vine/android/service/VineUploadService;Landroid/support/v4/app/NotificationCompat$Builder;I)V

    return-void

    :cond_54
    invoke-virtual {v0, v4, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_4e

    :cond_58
    invoke-virtual {v0, v4, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_4e
.end method

.method private updateTranscodeNotification(Ljava/lang/String;)V
    .registers 5

    const v0, 0x7f0e0184

    const v1, 0x7f0e0185

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->updateNotification(Ljava/lang/String;IIZ)V

    return-void
.end method

.method private updateUploadNotification(Ljava/lang/String;)V
    .registers 5

    const v0, 0x7f0e0261

    const v1, 0x7f0e0262

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->updateNotification(Ljava/lang/String;IIZ)V

    return-void
.end method


# virtual methods
.method public onPostFinished(Z)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->this$0:Lco/vine/android/service/VineUploadService;

    const/4 v1, 0x1

    #calls: Lco/vine/android/service/VineUploadService;->clearNotification(I)V
    invoke-static {v0, v1}, Lco/vine/android/service/VineUploadService;->access$600(Lco/vine/android/service/VineUploadService;I)V

    if-eqz p1, :cond_d

    iget-object v0, p0, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->this$0:Lco/vine/android/service/VineUploadService;

    #calls: Lco/vine/android/service/VineUploadService;->cancelFailedNofitication()V
    invoke-static {v0}, Lco/vine/android/service/VineUploadService;->access$700(Lco/vine/android/service/VineUploadService;)V

    :cond_d
    return-void
.end method

.method public onTranscodeStarted()V
    .registers 1

    return-void
.end method

.method public progressChanged(Lco/vine/android/util/VineProgressEvent;)V
    .registers 7

    iget-wide v1, p0, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->currentSize:J

    invoke-virtual {p1}, Lco/vine/android/util/VineProgressEvent;->getBytesTransfered()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->currentSize:J

    iget-wide v1, p0, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->currentSize:J

    const-wide/16 v3, 0x64

    mul-long/2addr v1, v3

    iget-wide v3, p0, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->size:J

    div-long/2addr v1, v3

    long-to-int v0, v1

    iget v1, p0, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->lastProgress:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_24

    iput v0, p0, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->lastProgress:I

    iget-object v1, p0, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->thumbnail:Ljava/lang/String;

    invoke-direct {p0, v1}, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->updateUploadNotification(Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method public showPostNotification(Ljava/lang/String;)V
    .registers 5

    const v0, 0x7f0e0183

    const v1, 0x7f0e0049

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->updateNotification(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public updateTranscodeProgress(I)V
    .registers 4

    iget v0, p0, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->lastProgress:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_11

    iput p1, p0, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->lastProgress:I

    iget-object v0, p0, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->thumbnail:Ljava/lang/String;

    invoke-direct {p0, v0}, Lco/vine/android/service/VineUploadService$NotificationProgressListener;->updateTranscodeNotification(Ljava/lang/String;)V

    :cond_11
    return-void
.end method
