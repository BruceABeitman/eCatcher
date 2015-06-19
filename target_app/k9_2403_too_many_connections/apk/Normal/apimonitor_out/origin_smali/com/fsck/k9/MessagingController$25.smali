.class Lcom/fsck/k9/MessagingController$25;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/MessagingController;->checkMail(Landroid/content/Context;Lcom/fsck/k9/Account;ZZLcom/fsck/k9/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$ignoreLastCheckedTime:Z

.field final synthetic val$listener:Lcom/fsck/k9/MessagingListener;

.field final synthetic val$wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/fsck/k9/MessagingController;Landroid/content/Context;Lcom/fsck/k9/Account;ZLcom/fsck/k9/MessagingListener;Landroid/os/PowerManager$WakeLock;)V
    .registers 7

    iput-object p1, p0, Lcom/fsck/k9/MessagingController$25;->this$0:Lcom/fsck/k9/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/MessagingController$25;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/fsck/k9/MessagingController$25;->val$account:Lcom/fsck/k9/Account;

    iput-boolean p4, p0, Lcom/fsck/k9/MessagingController$25;->val$ignoreLastCheckedTime:Z

    iput-object p5, p0, Lcom/fsck/k9/MessagingController$25;->val$listener:Lcom/fsck/k9/MessagingListener;

    iput-object p6, p0, Lcom/fsck/k9/MessagingController$25;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$25;->val$context:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    :try_start_d
    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_18

    const-string v4, "k9"

    const-string v5, "Starting mail check"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$25;->val$context:Landroid/content/Context;

    move-object v4, v0

    invoke-static {v4}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$25;->val$account:Lcom/fsck/k9/Account;

    move-object v4, v0

    if-eqz v4, :cond_7f

    const/4 v4, 0x1

    new-array v13, v4, [Lcom/fsck/k9/Account;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$25;->val$account:Lcom/fsck/k9/Account;

    move-object v5, v0

    aput-object v5, v13, v4

    :goto_33
    move-object v14, v13

    move-object v0, v14

    array-length v0, v0

    move/from16 v21, v0

    const/16 v19, 0x0

    move/from16 v20, v19

    :goto_3c
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1ec

    aget-object v6, v14, v20

    invoke-virtual {v6}, Lcom/fsck/k9/Account;->getAutomaticCheckIntervalMinutes()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v8, v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fsck/k9/MessagingController$25;->val$ignoreLastCheckedTime:Z

    move v4, v0

    if-nez v4, :cond_84

    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-gtz v4, :cond_84

    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_7a

    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping synchronizing account "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    :goto_7a
    add-int/lit8 v19, v20, 0x1

    move/from16 v20, v19

    goto :goto_3c

    :cond_7f
    invoke-virtual/range {v24 .. v24}, Lcom/fsck/k9/Preferences;->getAccounts()[Lcom/fsck/k9/Account;

    move-result-object v13

    goto :goto_33

    :cond_84
    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_a4

    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Synchronizing account "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$25;->this$0:Lcom/fsck/k9/MessagingController;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendPending "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-instance v11, Lcom/fsck/k9/MessagingController$25$1;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingController$25$1;-><init>(Lcom/fsck/k9/MessagingController$25;Lcom/fsck/k9/Account;Landroid/app/NotificationManager;)V

    #calls: Lcom/fsck/k9/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V
    invoke-static {v4, v5, v7, v11}, Lcom/fsck/k9/MessagingController;->access$1100(Lcom/fsck/k9/MessagingController;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_ce} :catch_1cd

    :try_start_ce
    invoke-virtual {v6}, Lcom/fsck/k9/Account;->getFolderDisplayMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v11

    invoke-virtual {v6}, Lcom/fsck/k9/Account;->getFolderSyncMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v12

    invoke-virtual {v6}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$25;->this$0:Lcom/fsck/k9/MessagingController;

    move-object v5, v0

    #getter for: Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;
    invoke-static {v5}, Lcom/fsck/k9/MessagingController;->access$000(Lcom/fsck/k9/MessagingController;)Landroid/app/Application;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/fsck/k9/mail/Store;->getPersonalNamespaces()[Lcom/fsck/k9/mail/Folder;

    move-result-object v15

    move-object v0, v15

    array-length v0, v0

    move/from16 v22, v0

    const/16 v19, 0x0

    :goto_f1
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_7a

    aget-object v7, v15, v19

    sget-object v4, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v7, v4}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Folder;->refresh(Lcom/fsck/k9/Preferences;)V

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v17

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->getSyncClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$25;->this$0:Lcom/fsck/k9/MessagingController;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v11

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->modeMismatch(Lcom/fsck/k9/Account$FolderMode;Lcom/fsck/k9/mail/Folder$FolderClass;)Z

    move-result v4

    if-eqz v4, :cond_155

    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_152

    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Not syncing folder "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " which is in display mode "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " while account is in display mode "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_152
    :goto_152
    add-int/lit8 v19, v19, 0x1

    goto :goto_f1

    :cond_155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$25;->this$0:Lcom/fsck/k9/MessagingController;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v12

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->modeMismatch(Lcom/fsck/k9/Account$FolderMode;Lcom/fsck/k9/mail/Folder$FolderClass;)Z

    move-result v4

    if-eqz v4, :cond_200

    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_152

    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Not syncing folder "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " which is in sync mode "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " while account is in sync mode "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19b
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_ce .. :try_end_19b} :catch_19c
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_19b} :catch_1cd

    goto :goto_152

    :catch_19c
    move-exception v4

    move-object/from16 v16, v4

    :try_start_19f
    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to synchronize account "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/fsck/k9/Account;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$25;->this$0:Lcom/fsck/k9/MessagingController;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V
    :try_end_1cb
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_1cb} :catch_1cd

    goto/16 :goto_7a

    :catch_1cd
    move-exception v4

    move-object/from16 v16, v4

    const-string v4, "k9"

    const-string v5, "Unable to synchronize mail"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$25;->this$0:Lcom/fsck/k9/MessagingController;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$25;->val$account:Lcom/fsck/k9/Account;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    :cond_1ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$25;->this$0:Lcom/fsck/k9/MessagingController;

    move-object v4, v0

    const-string v5, "finalize sync"

    const/4 v6, 0x0

    new-instance v7, Lcom/fsck/k9/MessagingController$25$3;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/MessagingController$25$3;-><init>(Lcom/fsck/k9/MessagingController$25;)V

    #calls: Lcom/fsck/k9/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V
    invoke-static {v4, v5, v6, v7}, Lcom/fsck/k9/MessagingController;->access$1100(Lcom/fsck/k9/MessagingController;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V

    return-void

    :cond_200
    :try_start_200
    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_236

    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Folder "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " was last synced @ "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v13, Ljava/util/Date;

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->getLastChecked()J

    move-result-wide v16

    move-object v0, v13

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_236
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fsck/k9/MessagingController$25;->val$ignoreLastCheckedTime:Z

    move v4, v0

    if-nez v4, :cond_289

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->getLastChecked()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v8

    cmp-long v4, v4, v16

    if-lez v4, :cond_289

    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_152

    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Not syncing folder "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ", previously synced @ "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v13, Ljava/util/Date;

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->getLastChecked()J

    move-result-wide v16

    move-object v0, v13

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " which would be too recent for the account period"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_152

    :cond_289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/MessagingController$25;->this$0:Lcom/fsck/k9/MessagingController;

    move-object v13, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    new-instance v4, Lcom/fsck/k9/MessagingController$25$2;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/fsck/k9/MessagingController$25$2;-><init>(Lcom/fsck/k9/MessagingController$25;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;JLandroid/app/NotificationManager;)V

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object v3, v4

    #calls: Lcom/fsck/k9/MessagingController;->putBackground(Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V
    invoke-static {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingController;->access$1100(Lcom/fsck/k9/MessagingController;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;Ljava/lang/Runnable;)V
    :try_end_2b7
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_200 .. :try_end_2b7} :catch_19c
    .catch Ljava/lang/Exception; {:try_start_200 .. :try_end_2b7} :catch_1cd

    goto/16 :goto_152
.end method
