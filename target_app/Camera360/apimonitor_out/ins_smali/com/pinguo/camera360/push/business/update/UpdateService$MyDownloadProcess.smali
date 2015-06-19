.class  Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;
.super Ljava/lang/Object;
.source "UpdateService.java"
.implements Lcom/pinguo/camera360/push/utils/IDownloadProcess;
.field private downloadFolder:Ljava/lang/String;
.field private fileName:Ljava/lang/String;
.field final synthetic this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
.method public constructor <init>(Lcom/pinguo/camera360/push/business/update/UpdateService;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
iput-object p1, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->downloadFolder:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->fileName:Ljava/lang/String;
iput-object p2, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->downloadFolder:Ljava/lang/String;
return-void
.end method
.method private startAppInstall(Landroid/content/Context;Ljava/lang/String;)V
.registers 8
new-instance v0, Ljava/io/File;
invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "newpush"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "mAppFile: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_48
const-string/jumbo v2, "newpush"
const-string/jumbo v3, "startAppInstall"
invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
new-instance v1, Landroid/content/Intent;
invoke-direct {v1}, Landroid/content/Intent;-><init>()V
const/high16 v2, 0x1000
invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
const-string/jumbo v2, "android.intent.action.VIEW"
invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v2
const-string/jumbo v3, "application/vnd.android.package-archive"
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:goto_47
return-void
:cond_48
const-string/jumbo v2, "newpush"
const-string/jumbo v3, "The apk not exist!"
invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_47
.end method
.method public finish()V
.registers 10
const v8, 0x7f020286
const v7, 0x5809b
const/4 v6, 0x0
const/16 v5, 0x64
iget-object v2, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
new-instance v3, Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->downloadFolder:Ljava/lang/String;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->fileName:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
#calls: Lcom/pinguo/camera360/push/business/update/UpdateService;->getFinishPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
invoke-static {v2, v3}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$3(Lcom/pinguo/camera360/push/business/update/UpdateService;Ljava/lang/String;)Landroid/app/PendingIntent;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
invoke-virtual {v3}, Lcom/pinguo/camera360/push/business/update/UpdateService;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0802f7
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, " ("
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->fileName:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const/16 v3, 0x29
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
new-instance v3, Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->downloadFolder:Ljava/lang/String;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->fileName:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {p0, v2, v3}, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->startAppInstall(Landroid/content/Context;Ljava/lang/String;)V
sget-boolean v2, Lcom/pinguo/camera360/push/business/update/UpdateService;->IS_4X0:Z
if-eqz v2, :cond_c2
iget-object v2, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
invoke-static {v2}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$0(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/support/v4/app/NotificationCompat$Builder;
move-result-object v2
invoke-virtual {v2, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;
iget-object v2, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
invoke-static {v2}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$0(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/support/v4/app/NotificationCompat$Builder;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
iget-object v2, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
invoke-static {v2}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$0(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/support/v4/app/NotificationCompat$Builder;
move-result-object v2
invoke-virtual {v2, v5, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;
iget-object v2, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
invoke-static {v2}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$0(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/support/v4/app/NotificationCompat$Builder;
move-result-object v2
invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
iget-object v2, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
invoke-static {v2}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$0(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/support/v4/app/NotificationCompat$Builder;
move-result-object v2
const/4 v3, 0x1
invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;
iget-object v2, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->manager:Landroid/app/NotificationManager;
invoke-static {v2}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$1(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/app/NotificationManager;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
invoke-static {v3}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$0(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/support/v4/app/NotificationCompat$Builder;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;
move-result-object v3
invoke-virtual {v2, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
:goto_bc
iget-object v2, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
invoke-virtual {v2}, Lcom/pinguo/camera360/push/business/update/UpdateService;->stopSelf()V
return-void
:cond_c2
iget-object v2, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;
invoke-static {v2}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$2(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/app/Notification;
move-result-object v2
iput v8, v2, Landroid/app/Notification;->icon:I
iget-object v2, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;
invoke-static {v2}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$2(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/app/Notification;
move-result-object v2
iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;
const v3, 0x7f0a0561
invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
iget-object v2, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;
invoke-static {v2}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$2(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/app/Notification;
move-result-object v2
iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;
const v3, 0x7f0a0562
invoke-virtual {v2, v3, v5, v5, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V
iget-object v2, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;
invoke-static {v2}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$2(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/app/Notification;
move-result-object v2
iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;
iget-object v2, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;
invoke-static {v2}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$2(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/app/Notification;
move-result-object v2
const/16 v3, 0x10
iput v3, v2, Landroid/app/Notification;->flags:I
iget-object v2, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->manager:Landroid/app/NotificationManager;
invoke-static {v2}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$1(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/app/NotificationManager;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;
invoke-static {v3}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$2(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/app/Notification;
move-result-object v3
invoke-virtual {v2, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
goto :goto_bc
.end method
.method public getFileName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->fileName:Ljava/lang/String;
return-object v0
.end method
.method public getUpdateInterval()I
.registers 2
const/16 v0, 0x3e8
return v0
.end method
.method public rate(I)V
.registers 9
const v6, 0x7f020286
const v5, 0x5809b
const/16 v4, 0x64
const/4 v3, 0x0
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "%, "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->fileName:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sget-boolean v1, Lcom/pinguo/camera360/push/business/update/UpdateService;->IS_4X0:Z
if-eqz v1, :cond_56
iget-object v1, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
invoke-static {v1}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$0(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/support/v4/app/NotificationCompat$Builder;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
iget-object v1, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
invoke-static {v1}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$0(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/support/v4/app/NotificationCompat$Builder;
move-result-object v1
invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;
iget-object v1, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
invoke-static {v1}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$0(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/support/v4/app/NotificationCompat$Builder;
move-result-object v1
invoke-virtual {v1, v4, p1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;
iget-object v1, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->manager:Landroid/app/NotificationManager;
invoke-static {v1}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$1(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/app/NotificationManager;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
invoke-static {v2}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$0(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/support/v4/app/NotificationCompat$Builder;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;
move-result-object v2
invoke-virtual {v1, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
:goto_55
return-void
:cond_56
iget-object v1, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;
invoke-static {v1}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$2(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/app/Notification;
move-result-object v1
iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;
const v2, 0x7f0a0561
invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
iget-object v1, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;
invoke-static {v1}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$2(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/app/Notification;
move-result-object v1
iput v6, v1, Landroid/app/Notification;->icon:I
iget-object v1, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;
invoke-static {v1}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$2(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/app/Notification;
move-result-object v1
iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;
const v2, 0x7f0a0562
invoke-virtual {v1, v2, v4, p1, v3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V
iget-object v1, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;
invoke-static {v1}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$2(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/app/Notification;
move-result-object v1
const/16 v2, 0x10
iput v2, v1, Landroid/app/Notification;->flags:I
iget-object v1, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->manager:Landroid/app/NotificationManager;
invoke-static {v1}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$1(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/app/NotificationManager;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;
invoke-static {v2}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$2(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/app/Notification;
move-result-object v2
invoke-virtual {v1, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
goto :goto_55
.end method
.method public setFileName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->fileName:Ljava/lang/String;
return-void
.end method