.class  Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;
.super Ljava/lang/Thread;
.source "UpdateService.java"
.field private downloadFolder:Ljava/lang/String;
.field final synthetic this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
.field private url:Ljava/lang/String;
.method public constructor <init>(Lcom/pinguo/camera360/push/business/update/UpdateService;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
const/4 v0, 0x0
iput-object p1, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;->url:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;->downloadFolder:Ljava/lang/String;
iput-object p2, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;->url:Ljava/lang/String;
iput-object p3, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;->downloadFolder:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "Apk download Thread,url="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;->setName(Ljava/lang/String;)V
return-void
.end method
.method public run()V
.registers 11
const v9, 0x7f0a0561
const v8, 0x7f020286
const v7, 0x5809b
new-instance v0, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;
iget-object v4, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
iget-object v5, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;->downloadFolder:Ljava/lang/String;
invoke-direct {v0, v4, v5}, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;-><init>(Lcom/pinguo/camera360/push/business/update/UpdateService;Ljava/lang/String;)V
:try_start_12
iget-object v4, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;->url:Ljava/lang/String;
iget-object v5, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;->downloadFolder:Ljava/lang/String;
invoke-static {v4, v5, v0}, Lcom/pinguo/camera360/push/utils/FileUtils;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/push/utils/IDownloadProcess;)V
:goto_19
:try_end_19
.catch Ljava/io/IOException; {:try_start_12 .. :try_end_19} :catch_1a
return-void
:catch_1a
move-exception v1
invoke-virtual {v0}, Lcom/pinguo/camera360/push/business/update/UpdateService$MyDownloadProcess;->getFileName()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_42
new-instance v4, Ljava/io/File;
new-instance v5, Ljava/lang/StringBuilder;
iget-object v6, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;->downloadFolder:Ljava/lang/String;
invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->delete()Z
:cond_42
iget-object v4, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
invoke-virtual {v4}, Lcom/pinguo/camera360/push/business/update/UpdateService;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f0802f8
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
sget-boolean v4, Lcom/pinguo/camera360/push/business/update/UpdateService;->IS_4X0:Z
if-eqz v4, :cond_88
iget-object v4, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
invoke-static {v4}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$0(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/support/v4/app/NotificationCompat$Builder;
move-result-object v4
invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
iget-object v4, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
invoke-static {v4}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$0(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/support/v4/app/NotificationCompat$Builder;
move-result-object v4
invoke-virtual {v4, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;
iget-object v4, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
invoke-static {v4}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$0(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/support/v4/app/NotificationCompat$Builder;
move-result-object v4
const/4 v5, 0x1
invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;
iget-object v4, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->manager:Landroid/app/NotificationManager;
invoke-static {v4}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$1(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/app/NotificationManager;
move-result-object v4
iget-object v5, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
invoke-static {v5}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$0(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/support/v4/app/NotificationCompat$Builder;
move-result-object v5
invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;
move-result-object v5
invoke-virtual {v4, v7, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
:goto_82
iget-object v4, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
invoke-virtual {v4}, Lcom/pinguo/camera360/push/business/update/UpdateService;->stopSelf()V
goto :goto_19
:cond_88
iget-object v4, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;
invoke-static {v4}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$2(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/app/Notification;
move-result-object v4
iput v8, v4, Landroid/app/Notification;->icon:I
iget-object v4, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;
invoke-static {v4}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$2(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/app/Notification;
move-result-object v4
iget-object v4, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;
invoke-virtual {v4, v9, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
iget-object v4, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;
invoke-static {v4}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$2(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/app/Notification;
move-result-object v4
iget-object v4, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;
const/high16 v5, -0x1
invoke-virtual {v4, v9, v5}, Landroid/widget/RemoteViews;->setTextColor(II)V
iget-object v4, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;
invoke-static {v4}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$2(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/app/Notification;
move-result-object v4
const/16 v5, 0x10
iput v5, v4, Landroid/app/Notification;->flags:I
iget-object v4, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->manager:Landroid/app/NotificationManager;
invoke-static {v4}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$1(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/app/NotificationManager;
move-result-object v4
iget-object v5, p0, Lcom/pinguo/camera360/push/business/update/UpdateService$UpdateThread;->this$0:Lcom/pinguo/camera360/push/business/update/UpdateService;
#getter for: Lcom/pinguo/camera360/push/business/update/UpdateService;->notify:Landroid/app/Notification;
invoke-static {v5}, Lcom/pinguo/camera360/push/business/update/UpdateService;->access$2(Lcom/pinguo/camera360/push/business/update/UpdateService;)Landroid/app/Notification;
move-result-object v5
invoke-virtual {v4, v7, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
goto :goto_82
.end method