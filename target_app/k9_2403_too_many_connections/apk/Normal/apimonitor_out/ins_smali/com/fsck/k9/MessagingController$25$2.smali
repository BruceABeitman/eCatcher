.class  Lcom/fsck/k9/MessagingController$25$2;
.super Ljava/lang/Object;
.source "MessagingController.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/fsck/k9/MessagingController$25;
.field final synthetic val$account:Lcom/fsck/k9/Account;
.field final synthetic val$accountInterval:J
.field final synthetic val$folder:Lcom/fsck/k9/mail/Folder;
.field final synthetic val$notifMgr:Landroid/app/NotificationManager;
.method constructor <init>(Lcom/fsck/k9/MessagingController$25;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;JLandroid/app/NotificationManager;)V
.registers 7
iput-object p1, p0, Lcom/fsck/k9/MessagingController$25$2;->this$1:Lcom/fsck/k9/MessagingController$25;
iput-object p2, p0, Lcom/fsck/k9/MessagingController$25$2;->val$account:Lcom/fsck/k9/Account;
iput-object p3, p0, Lcom/fsck/k9/MessagingController$25$2;->val$folder:Lcom/fsck/k9/mail/Folder;
iput-wide p4, p0, Lcom/fsck/k9/MessagingController$25$2;->val$accountInterval:J
iput-object p6, p0, Lcom/fsck/k9/MessagingController$25$2;->val$notifMgr:Landroid/app/NotificationManager;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 13
const-string v6, "k9"
const/4 v5, 0x0
:try_start_3
iget-object v6, p0, Lcom/fsck/k9/MessagingController$25$2;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v6}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;
move-result-object v6
iget-object v7, p0, Lcom/fsck/k9/MessagingController$25$2;->this$1:Lcom/fsck/k9/MessagingController$25;
iget-object v7, v7, Lcom/fsck/k9/MessagingController$25;->this$0:Lcom/fsck/k9/MessagingController;
#getter for: Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;
invoke-static {v7}, Lcom/fsck/k9/MessagingController;->access$000(Lcom/fsck/k9/MessagingController;)Landroid/app/Application;
move-result-object v7
invoke-static {v6, v7}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;
move-result-object v2
check-cast v2, Lcom/fsck/k9/mail/store/LocalStore;
iget-object v6, p0, Lcom/fsck/k9/MessagingController$25$2;->val$folder:Lcom/fsck/k9/mail/Folder;
invoke-virtual {v6}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v6
invoke-virtual {v2, v6}, Lcom/fsck/k9/mail/store/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
move-result-object v5
sget-object v6, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
invoke-virtual {v5, v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
iget-object v6, p0, Lcom/fsck/k9/MessagingController$25$2;->this$1:Lcom/fsck/k9/MessagingController$25;
iget-boolean v6, v6, Lcom/fsck/k9/MessagingController$25;->val$ignoreLastCheckedTime:Z
if-nez v6, :cond_7e
invoke-virtual {v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getLastChecked()J
move-result-wide v6
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v8
iget-wide v10, p0, Lcom/fsck/k9/MessagingController$25$2;->val$accountInterval:J
sub-long/2addr v8, v10
cmp-long v6, v6, v8
if-lez v6, :cond_7e
sget-boolean v6, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v6, :cond_78
const-string v6, "k9"
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Not running Command for folder "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget-object v8, p0, Lcom/fsck/k9/MessagingController$25$2;->val$folder:Lcom/fsck/k9/mail/Folder;
invoke-virtual {v8}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, ", previously synced @ "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
new-instance v8, Ljava/util/Date;
iget-object v9, p0, Lcom/fsck/k9/MessagingController$25$2;->val$folder:Lcom/fsck/k9/mail/Folder;
invoke-virtual {v9}, Lcom/fsck/k9/mail/Folder;->getLastChecked()J
move-result-wide v9
invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, " which would be too recent for the account period"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_78
:try_end_78
.catchall {:try_start_3 .. :try_end_78} :catchall_187
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_78} :catch_147
if-eqz v5, :cond_7d
invoke-virtual {v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V
:goto_7d
:cond_7d
return-void
:cond_7e
:try_start_7e
iget-object v6, p0, Lcom/fsck/k9/MessagingController$25$2;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v6}, Lcom/fsck/k9/Account;->isShowOngoing()Z
move-result v6
if-eqz v6, :cond_10f
new-instance v3, Landroid/app/Notification;
const v6, 0x7f02004d
iget-object v7, p0, Lcom/fsck/k9/MessagingController$25$2;->this$1:Lcom/fsck/k9/MessagingController$25;
iget-object v7, v7, Lcom/fsck/k9/MessagingController$25;->val$context:Landroid/content/Context;
const v8, 0x7f08006d
const/4 v9, 0x2
new-array v9, v9, [Ljava/lang/Object;
const/4 v10, 0x0
iget-object v11, p0, Lcom/fsck/k9/MessagingController$25$2;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v11}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;
move-result-object v11
aput-object v11, v9, v10
const/4 v10, 0x1
iget-object v11, p0, Lcom/fsck/k9/MessagingController$25$2;->val$folder:Lcom/fsck/k9/mail/Folder;
invoke-virtual {v11}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v11
aput-object v11, v9, v10
invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v8
invoke-direct {v3, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V
iget-object v6, p0, Lcom/fsck/k9/MessagingController$25$2;->this$1:Lcom/fsck/k9/MessagingController$25;
iget-object v6, v6, Lcom/fsck/k9/MessagingController$25;->val$context:Landroid/content/Context;
iget-object v7, p0, Lcom/fsck/k9/MessagingController$25$2;->val$account:Lcom/fsck/k9/Account;
const-string v8, "INBOX"
invoke-static {v6, v7, v8}, Lcom/fsck/k9/activity/FolderList;->actionHandleAccountIntent(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
iget-object v6, p0, Lcom/fsck/k9/MessagingController$25$2;->this$1:Lcom/fsck/k9/MessagingController$25;
iget-object v6, v6, Lcom/fsck/k9/MessagingController$25;->val$context:Landroid/content/Context;
const/4 v7, 0x0
const/4 v8, 0x0
invoke-static {v6, v7, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v4
iget-object v6, p0, Lcom/fsck/k9/MessagingController$25$2;->this$1:Lcom/fsck/k9/MessagingController$25;
iget-object v6, v6, Lcom/fsck/k9/MessagingController$25;->val$context:Landroid/content/Context;
iget-object v7, p0, Lcom/fsck/k9/MessagingController$25$2;->this$1:Lcom/fsck/k9/MessagingController$25;
iget-object v7, v7, Lcom/fsck/k9/MessagingController$25;->val$context:Landroid/content/Context;
const v8, 0x7f08006e
invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v7
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
iget-object v9, p0, Lcom/fsck/k9/MessagingController$25$2;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v9}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
iget-object v9, p0, Lcom/fsck/k9/MessagingController$25$2;->this$1:Lcom/fsck/k9/MessagingController$25;
iget-object v9, v9, Lcom/fsck/k9/MessagingController$25;->val$context:Landroid/content/Context;
const v10, 0x7f080071
invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
iget-object v9, p0, Lcom/fsck/k9/MessagingController$25$2;->val$folder:Lcom/fsck/k9/mail/Folder;
invoke-virtual {v9}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-virtual {v3, v6, v7, v8, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
const/4 v6, 0x2
iput v6, v3, Landroid/app/Notification;->flags:I
iget-object v6, p0, Lcom/fsck/k9/MessagingController$25$2;->val$notifMgr:Landroid/app/NotificationManager;
const/4 v7, -0x4
invoke-virtual {v6, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
:try_start_10f
:cond_10f
:try_end_10f
.catchall {:try_start_7e .. :try_end_10f} :catchall_187
.catch Ljava/lang/Exception; {:try_start_7e .. :try_end_10f} :catch_147
iget-object v6, p0, Lcom/fsck/k9/MessagingController$25$2;->this$1:Lcom/fsck/k9/MessagingController$25;
iget-object v6, v6, Lcom/fsck/k9/MessagingController$25;->this$0:Lcom/fsck/k9/MessagingController;
iget-object v7, p0, Lcom/fsck/k9/MessagingController$25$2;->val$account:Lcom/fsck/k9/Account;
iget-object v8, p0, Lcom/fsck/k9/MessagingController$25$2;->val$folder:Lcom/fsck/k9/mail/Folder;
invoke-virtual {v8}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v8
iget-object v9, p0, Lcom/fsck/k9/MessagingController$25$2;->this$1:Lcom/fsck/k9/MessagingController$25;
iget-object v9, v9, Lcom/fsck/k9/MessagingController$25;->val$listener:Lcom/fsck/k9/MessagingListener;
invoke-virtual {v6, v7, v8, v9}, Lcom/fsck/k9/MessagingController;->synchronizeMailboxSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
:try_end_122
.catchall {:try_start_10f .. :try_end_122} :catchall_137
:try_start_122
iget-object v6, p0, Lcom/fsck/k9/MessagingController$25$2;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v6}, Lcom/fsck/k9/Account;->isShowOngoing()Z
move-result v6
if-eqz v6, :cond_130
iget-object v6, p0, Lcom/fsck/k9/MessagingController$25$2;->val$notifMgr:Landroid/app/NotificationManager;
const/4 v7, -0x4
invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->cancel(I)V
:try_end_130
.catchall {:try_start_122 .. :try_end_130} :catchall_187
.catch Ljava/lang/Exception; {:try_start_122 .. :try_end_130} :catch_147
:cond_130
if-eqz v5, :cond_7d
invoke-virtual {v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V
goto/16 :goto_7d
:catchall_137
move-exception v6
:try_start_138
iget-object v7, p0, Lcom/fsck/k9/MessagingController$25$2;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v7}, Lcom/fsck/k9/Account;->isShowOngoing()Z
move-result v7
if-eqz v7, :cond_146
iget-object v7, p0, Lcom/fsck/k9/MessagingController$25$2;->val$notifMgr:Landroid/app/NotificationManager;
const/4 v8, -0x4
invoke-virtual {v7, v8}, Landroid/app/NotificationManager;->cancel(I)V
:cond_146
throw v6
:try_end_147
.catchall {:try_start_138 .. :try_end_147} :catchall_187
.catch Ljava/lang/Exception; {:try_start_138 .. :try_end_147} :catch_147
:catch_147
move-exception v6
move-object v0, v6
:try_start_149
const-string v6, "k9"
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Exception while processing folder "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget-object v8, p0, Lcom/fsck/k9/MessagingController$25$2;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v8}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, ":"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget-object v8, p0, Lcom/fsck/k9/MessagingController$25$2;->val$folder:Lcom/fsck/k9/mail/Folder;
invoke-virtual {v8}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
iget-object v6, p0, Lcom/fsck/k9/MessagingController$25$2;->this$1:Lcom/fsck/k9/MessagingController$25;
iget-object v6, v6, Lcom/fsck/k9/MessagingController$25;->this$0:Lcom/fsck/k9/MessagingController;
iget-object v7, p0, Lcom/fsck/k9/MessagingController$25$2;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v6, v7, v0}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V
:try_end_180
.catchall {:try_start_149 .. :try_end_180} :catchall_187
if-eqz v5, :cond_7d
invoke-virtual {v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V
goto/16 :goto_7d
:catchall_187
move-exception v6
if-eqz v5, :cond_18d
invoke-virtual {v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V
:cond_18d
throw v6
.end method