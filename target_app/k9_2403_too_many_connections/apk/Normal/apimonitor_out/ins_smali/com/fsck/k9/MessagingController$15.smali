.class  Lcom/fsck/k9/MessagingController$15;
.super Ljava/lang/Object;
.source "MessagingController.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;
.field final synthetic val$account:Lcom/fsck/k9/Account;
.field final synthetic val$listener:Lcom/fsck/k9/MessagingListener;
.field final synthetic val$message:Lcom/fsck/k9/mail/Message;
.field final synthetic val$part:Lcom/fsck/k9/mail/Part;
.field final synthetic val$tag:Ljava/lang/Object;
.method constructor <init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Ljava/lang/Object;Lcom/fsck/k9/MessagingListener;)V
.registers 7
iput-object p1, p0, Lcom/fsck/k9/MessagingController$15;->this$0:Lcom/fsck/k9/MessagingController;
iput-object p2, p0, Lcom/fsck/k9/MessagingController$15;->val$account:Lcom/fsck/k9/Account;
iput-object p3, p0, Lcom/fsck/k9/MessagingController$15;->val$message:Lcom/fsck/k9/mail/Message;
iput-object p4, p0, Lcom/fsck/k9/MessagingController$15;->val$part:Lcom/fsck/k9/mail/Part;
iput-object p5, p0, Lcom/fsck/k9/MessagingController$15;->val$tag:Ljava/lang/Object;
iput-object p6, p0, Lcom/fsck/k9/MessagingController$15;->val$listener:Lcom/fsck/k9/MessagingListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 22
const/16 v18, 0x0
const/4 v15, 0x0
:try_start_3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$account:Lcom/fsck/k9/Account;
move-object v5, v0
invoke-virtual {v5}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;
move-result-object v5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->this$0:Lcom/fsck/k9/MessagingController;
move-object v6, v0
#getter for: Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;
invoke-static {v6}, Lcom/fsck/k9/MessagingController;->access$000(Lcom/fsck/k9/MessagingController;)Landroid/app/Application;
move-result-object v6
invoke-static {v5, v6}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;
move-result-object v16
check-cast v16, Lcom/fsck/k9/mail/store/LocalStore;
invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/store/LocalStore;->pruneCachedAttachments()V
new-instance v20, Ljava/util/ArrayList;
invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V
new-instance v12, Ljava/util/ArrayList;
invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$message:Lcom/fsck/k9/mail/Message;
move-object v5, v0
move-object v0, v5
move-object/from16 v1, v20
move-object v2, v12
invoke-static {v0, v1, v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->collectParts(Lcom/fsck/k9/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v14
:goto_38
invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9c
invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v11
check-cast v11, Lcom/fsck/k9/mail/Part;
const/4 v5, 0x0
invoke-interface {v11, v5}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V
:try_end_48
.catchall {:try_start_3 .. :try_end_48} :catchall_90
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_3 .. :try_end_48} :catch_49
goto :goto_38
:catch_49
move-exception v5
move-object/from16 v17, v5
:try_start_4c
sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v5, :cond_5b
const-string v5, "k9"
const-string v6, ""
move-object v0, v5
move-object v1, v6
move-object/from16 v2, v17
invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_5b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->this$0:Lcom/fsck/k9/MessagingController;
move-object v5, v0
invoke-virtual {v5}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;
move-result-object v5
invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v14
:goto_68
invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_16c
invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/fsck/k9/MessagingListener;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$account:Lcom/fsck/k9/Account;
move-object v5, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$message:Lcom/fsck/k9/mail/Message;
move-object v6, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$part:Lcom/fsck/k9/mail/Part;
move-object v7, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$tag:Ljava/lang/Object;
move-object v8, v0
invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/mail/MessagingException;->getMessage()Ljava/lang/String;
move-result-object v9
invoke-virtual/range {v4 .. v9}, Lcom/fsck/k9/MessagingListener;->loadAttachmentFailed(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Ljava/lang/Object;Ljava/lang/String;)V
:try_end_8f
.catchall {:try_start_4c .. :try_end_8f} :catchall_90
goto :goto_68
:catchall_90
move-exception v5
if-eqz v18, :cond_96
invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/Folder;->close()V
:cond_96
if-eqz v15, :cond_9b
invoke-virtual {v15}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V
:cond_9b
throw v5
:cond_9c
:try_start_9c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$account:Lcom/fsck/k9/Account;
move-object v5, v0
invoke-virtual {v5}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;
move-result-object v5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->this$0:Lcom/fsck/k9/MessagingController;
move-object v6, v0
#getter for: Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;
invoke-static {v6}, Lcom/fsck/k9/MessagingController;->access$000(Lcom/fsck/k9/MessagingController;)Landroid/app/Application;
move-result-object v6
invoke-static {v5, v6}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;
move-result-object v19
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$message:Lcom/fsck/k9/mail/Message;
move-object v5, v0
invoke-virtual {v5}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;
move-result-object v5
invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v5
move-object/from16 v0, v16
move-object v1, v5
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
move-result-object v15
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$message:Lcom/fsck/k9/mail/Message;
move-object v5, v0
invoke-virtual {v5}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;
move-result-object v5
invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v5
move-object/from16 v0, v19
move-object v1, v5
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
move-result-object v18
sget-object v5, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
move-object/from16 v0, v18
move-object v1, v5
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
new-instance v13, Lcom/fsck/k9/mail/FetchProfile;
invoke-direct {v13}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$part:Lcom/fsck/k9/mail/Part;
move-object v5, v0
invoke-virtual {v13, v5}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z
const/4 v5, 0x1
new-array v5, v5, [Lcom/fsck/k9/mail/Message;
const/4 v6, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$message:Lcom/fsck/k9/mail/Message;
move-object v7, v0
aput-object v7, v5, v6
const/4 v6, 0x0
move-object/from16 v0, v18
move-object v1, v5
move-object v2, v13
move-object v3, v6
invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/mail/Folder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$message:Lcom/fsck/k9/mail/Message;
move-object v4, v0
check-cast v4, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
invoke-virtual {v15, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->updateMessage(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->this$0:Lcom/fsck/k9/MessagingController;
move-object v5, v0
invoke-virtual {v5}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;
move-result-object v5
invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v14
:goto_11a
invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_13e
invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/fsck/k9/MessagingListener;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$account:Lcom/fsck/k9/Account;
move-object v5, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$message:Lcom/fsck/k9/mail/Message;
move-object v6, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$part:Lcom/fsck/k9/mail/Part;
move-object v7, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$tag:Ljava/lang/Object;
move-object v8, v0
invoke-virtual {v4, v5, v6, v7, v8}, Lcom/fsck/k9/MessagingListener;->loadAttachmentFinished(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Ljava/lang/Object;)V
goto :goto_11a
:cond_13e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$listener:Lcom/fsck/k9/MessagingListener;
move-object v5, v0
if-eqz v5, :cond_161
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$listener:Lcom/fsck/k9/MessagingListener;
move-object v5, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$account:Lcom/fsck/k9/Account;
move-object v6, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$message:Lcom/fsck/k9/mail/Message;
move-object v7, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$part:Lcom/fsck/k9/mail/Part;
move-object v8, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$tag:Ljava/lang/Object;
move-object v9, v0
invoke-virtual {v5, v6, v7, v8, v9}, Lcom/fsck/k9/MessagingListener;->loadAttachmentFinished(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Ljava/lang/Object;)V
:try_end_161
.catchall {:try_start_9c .. :try_end_161} :catchall_90
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_9c .. :try_end_161} :catch_49
:cond_161
if-eqz v18, :cond_166
invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/Folder;->close()V
:cond_166
if-eqz v15, :cond_16b
invoke-virtual {v15}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V
:goto_16b
:cond_16b
return-void
:try_start_16c
:cond_16c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$listener:Lcom/fsck/k9/MessagingListener;
move-object v5, v0
if-eqz v5, :cond_193
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$listener:Lcom/fsck/k9/MessagingListener;
move-object v5, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$account:Lcom/fsck/k9/Account;
move-object v6, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$message:Lcom/fsck/k9/mail/Message;
move-object v7, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$part:Lcom/fsck/k9/mail/Part;
move-object v8, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$tag:Ljava/lang/Object;
move-object v9, v0
invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/mail/MessagingException;->getMessage()Ljava/lang/String;
move-result-object v10
invoke-virtual/range {v5 .. v10}, Lcom/fsck/k9/MessagingListener;->loadAttachmentFailed(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Ljava/lang/Object;Ljava/lang/String;)V
:cond_193
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->this$0:Lcom/fsck/k9/MessagingController;
move-object v5, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$15;->val$account:Lcom/fsck/k9/Account;
move-object v6, v0
move-object v0, v5
move-object v1, v6
move-object/from16 v2, v17
invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V
:try_end_1a4
.catchall {:try_start_16c .. :try_end_1a4} :catchall_90
if-eqz v18, :cond_1a9
invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/Folder;->close()V
:cond_1a9
if-eqz v15, :cond_16b
invoke-virtual {v15}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V
goto :goto_16b
.end method