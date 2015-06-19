.class  Lcom/fsck/k9/MessagingController$25$1;
.super Ljava/lang/Object;
.source "MessagingController.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/fsck/k9/MessagingController$25;
.field final synthetic val$account:Lcom/fsck/k9/Account;
.field final synthetic val$notifMgr:Landroid/app/NotificationManager;
.method constructor <init>(Lcom/fsck/k9/MessagingController$25;Lcom/fsck/k9/Account;Landroid/app/NotificationManager;)V
.registers 4
iput-object p1, p0, Lcom/fsck/k9/MessagingController$25$1;->this$1:Lcom/fsck/k9/MessagingController$25;
iput-object p2, p0, Lcom/fsck/k9/MessagingController$25$1;->val$account:Lcom/fsck/k9/Account;
iput-object p3, p0, Lcom/fsck/k9/MessagingController$25$1;->val$notifMgr:Landroid/app/NotificationManager;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 11
const/4 v9, 0x0
const/4 v8, -0x4
iget-object v3, p0, Lcom/fsck/k9/MessagingController$25$1;->this$1:Lcom/fsck/k9/MessagingController$25;
iget-object v3, v3, Lcom/fsck/k9/MessagingController$25;->this$0:Lcom/fsck/k9/MessagingController;
iget-object v4, p0, Lcom/fsck/k9/MessagingController$25$1;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v3, v4}, Lcom/fsck/k9/MessagingController;->messagesPendingSend(Lcom/fsck/k9/Account;)Z
move-result v3
if-eqz v3, :cond_82
iget-object v3, p0, Lcom/fsck/k9/MessagingController$25$1;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v3}, Lcom/fsck/k9/Account;->isShowOngoing()Z
move-result v3
if-eqz v3, :cond_6c
new-instance v1, Landroid/app/Notification;
const v3, 0x7f02004d
iget-object v4, p0, Lcom/fsck/k9/MessagingController$25$1;->this$1:Lcom/fsck/k9/MessagingController$25;
iget-object v4, v4, Lcom/fsck/k9/MessagingController$25;->val$context:Landroid/content/Context;
const v5, 0x7f08006f
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
iget-object v7, p0, Lcom/fsck/k9/MessagingController$25$1;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v7}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;
move-result-object v7
aput-object v7, v6, v9
invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
invoke-direct {v1, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V
iget-object v3, p0, Lcom/fsck/k9/MessagingController$25$1;->this$1:Lcom/fsck/k9/MessagingController$25;
iget-object v3, v3, Lcom/fsck/k9/MessagingController$25;->val$context:Landroid/content/Context;
iget-object v4, p0, Lcom/fsck/k9/MessagingController$25$1;->val$account:Lcom/fsck/k9/Account;
const-string v5, "INBOX"
invoke-static {v3, v4, v5}, Lcom/fsck/k9/activity/FolderList;->actionHandleAccountIntent(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
iget-object v3, p0, Lcom/fsck/k9/MessagingController$25$1;->this$1:Lcom/fsck/k9/MessagingController$25;
iget-object v3, v3, Lcom/fsck/k9/MessagingController$25;->val$context:Landroid/content/Context;
invoke-static {v3, v9, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v2
iget-object v3, p0, Lcom/fsck/k9/MessagingController$25$1;->this$1:Lcom/fsck/k9/MessagingController$25;
iget-object v3, v3, Lcom/fsck/k9/MessagingController$25;->val$context:Landroid/content/Context;
iget-object v4, p0, Lcom/fsck/k9/MessagingController$25$1;->this$1:Lcom/fsck/k9/MessagingController$25;
iget-object v4, v4, Lcom/fsck/k9/MessagingController$25;->val$context:Landroid/content/Context;
const v5, 0x7f080070
invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v4
iget-object v5, p0, Lcom/fsck/k9/MessagingController$25$1;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v5}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
const/4 v3, 0x2
iput v3, v1, Landroid/app/Notification;->flags:I
iget-object v3, p0, Lcom/fsck/k9/MessagingController$25$1;->val$notifMgr:Landroid/app/NotificationManager;
invoke-virtual {v3, v8, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
:try_start_6c
:cond_6c
iget-object v3, p0, Lcom/fsck/k9/MessagingController$25$1;->this$1:Lcom/fsck/k9/MessagingController$25;
iget-object v3, v3, Lcom/fsck/k9/MessagingController$25;->this$0:Lcom/fsck/k9/MessagingController;
iget-object v4, p0, Lcom/fsck/k9/MessagingController$25$1;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v3, v4}, Lcom/fsck/k9/MessagingController;->sendPendingMessagesSynchronous(Lcom/fsck/k9/Account;)V
:try_end_75
.catchall {:try_start_6c .. :try_end_75} :catchall_83
iget-object v3, p0, Lcom/fsck/k9/MessagingController$25$1;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v3}, Lcom/fsck/k9/Account;->isShowOngoing()Z
move-result v3
if-eqz v3, :cond_82
iget-object v3, p0, Lcom/fsck/k9/MessagingController$25$1;->val$notifMgr:Landroid/app/NotificationManager;
invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->cancel(I)V
:cond_82
return-void
:catchall_83
move-exception v3
iget-object v4, p0, Lcom/fsck/k9/MessagingController$25$1;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v4}, Lcom/fsck/k9/Account;->isShowOngoing()Z
move-result v4
if-eqz v4, :cond_91
iget-object v4, p0, Lcom/fsck/k9/MessagingController$25$1;->val$notifMgr:Landroid/app/NotificationManager;
invoke-virtual {v4, v8}, Landroid/app/NotificationManager;->cancel(I)V
:cond_91
throw v3
.end method