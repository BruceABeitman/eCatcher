.class  Lcom/fsck/k9/MessagingController$2;
.super Ljava/lang/Object;
.source "MessagingController.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;
.field final synthetic val$account:Lcom/fsck/k9/Account;
.method constructor <init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;)V
.registers 3
iput-object p1, p0, Lcom/fsck/k9/MessagingController$2;->this$0:Lcom/fsck/k9/MessagingController;
iput-object p2, p0, Lcom/fsck/k9/MessagingController$2;->val$account:Lcom/fsck/k9/Account;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 20
const/4 v12, 0x0
:try_start_1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$2;->val$account:Lcom/fsck/k9/Account;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;
move-result-object v17
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$2;->this$0:Lcom/fsck/k9/MessagingController;
move-object/from16 v18, v0
#getter for: Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;
invoke-static/range {v18 .. v18}, Lcom/fsck/k9/MessagingController;->access$000(Lcom/fsck/k9/MessagingController;)Landroid/app/Application;
move-result-object v18
invoke-static/range {v17 .. v18}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Store;->getPersonalNamespaces()[Lcom/fsck/k9/mail/Folder;
move-result-object v15
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$2;->val$account:Lcom/fsck/k9/Account;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;
move-result-object v17
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$2;->this$0:Lcom/fsck/k9/MessagingController;
move-object/from16 v18, v0
#getter for: Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;
invoke-static/range {v18 .. v18}, Lcom/fsck/k9/MessagingController;->access$000(Lcom/fsck/k9/MessagingController;)Landroid/app/Application;
move-result-object v18
invoke-static/range {v17 .. v18}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;
move-result-object v13
check-cast v13, Lcom/fsck/k9/mail/store/LocalStore;
new-instance v14, Ljava/util/HashSet;
invoke-direct {v14}, Ljava/util/HashSet;-><init>()V
const/4 v6, 0x0
array-length v4, v15
:goto_3e
if-ge v6, v4, :cond_76
aget-object v17, v15, v6
invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v17
move-object v0, v13
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
move-result-object v10
invoke-virtual {v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->exists()Z
move-result v17
if-nez v17, :cond_67
sget-object v17, Lcom/fsck/k9/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/fsck/k9/mail/Folder$FolderType;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$2;->val$account:Lcom/fsck/k9/Account;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/Account;->getDisplayCount()I
move-result v18
move-object v0, v10
move-object/from16 v1, v17
move/from16 v2, v18
invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->create(Lcom/fsck/k9/mail/Folder$FolderType;I)Z
:cond_67
aget-object v17, v15, v6
invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v17
move-object v0, v14
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
add-int/lit8 v6, v6, 0x1
goto :goto_3e
:cond_76
invoke-virtual {v13}, Lcom/fsck/k9/mail/store/LocalStore;->getPersonalNamespaces()[Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
move-result-object v12
move-object v3, v12
array-length v9, v3
const/4 v7, 0x0
:goto_7d
if-ge v7, v9, :cond_148
aget-object v10, v3, v7
invoke-virtual {v10}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v11
const-string v17, "INBOX"
move-object v0, v11
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v17
if-nez v17, :cond_ef
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$2;->val$account:Lcom/fsck/k9/Account;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;
move-result-object v17
move-object v0, v11
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-nez v17, :cond_ef
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$2;->val$account:Lcom/fsck/k9/Account;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;
move-result-object v17
move-object v0, v11
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-nez v17, :cond_ef
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$2;->val$account:Lcom/fsck/k9/Account;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;
move-result-object v17
move-object v0, v11
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-nez v17, :cond_ef
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$2;->val$account:Lcom/fsck/k9/Account;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;
move-result-object v17
move-object v0, v11
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-nez v17, :cond_ef
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$2;->val$account:Lcom/fsck/k9/Account;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;
move-result-object v17
move-object v0, v11
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_f2
:cond_ef
:goto_ef
add-int/lit8 v7, v7, 0x1
goto :goto_7d
:cond_f2
invoke-virtual {v10}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v17
move-object v0, v14
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v17
if-nez v17, :cond_ef
const/16 v17, 0x0
move-object v0, v10
move/from16 v1, v17
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Folder;->delete(Z)V
:try_end_107
.catchall {:try_start_1 .. :try_end_107} :catchall_136
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_107} :catch_108
goto :goto_ef
:catch_108
move-exception v17
move-object/from16 v5, v17
:try_start_10b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$2;->this$0:Lcom/fsck/k9/MessagingController;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;
move-result-object v17
invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v7
:goto_119
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v17
if-eqz v17, :cond_1ac
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/fsck/k9/MessagingListener;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$2;->val$account:Lcom/fsck/k9/Account;
move-object/from16 v17, v0
const-string v18, ""
move-object v0, v8
move-object/from16 v1, v17
move-object/from16 v2, v18
invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingListener;->listFoldersFailed(Lcom/fsck/k9/Account;Ljava/lang/String;)V
:try_end_135
.catchall {:try_start_10b .. :try_end_135} :catchall_136
goto :goto_119
:catchall_136
move-exception v17
if-eqz v12, :cond_1d1
move-object v3, v12
array-length v9, v3
const/4 v7, 0x0
:goto_13c
if-ge v7, v9, :cond_1d1
aget-object v10, v3, v7
if-eqz v10, :cond_145
invoke-virtual {v10}, Lcom/fsck/k9/mail/Folder;->close()V
:cond_145
add-int/lit8 v7, v7, 0x1
goto :goto_13c
:cond_148
:try_start_148
invoke-virtual {v13}, Lcom/fsck/k9/mail/store/LocalStore;->getPersonalNamespaces()[Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
move-result-object v12
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$2;->this$0:Lcom/fsck/k9/MessagingController;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;
move-result-object v17
invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v7
:goto_15a
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v17
if-eqz v17, :cond_174
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/fsck/k9/MessagingListener;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$2;->val$account:Lcom/fsck/k9/Account;
move-object/from16 v17, v0
move-object v0, v8
move-object/from16 v1, v17
move-object v2, v12
invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingListener;->listFolders(Lcom/fsck/k9/Account;[Lcom/fsck/k9/mail/Folder;)V
goto :goto_15a
:cond_174
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$2;->this$0:Lcom/fsck/k9/MessagingController;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;
move-result-object v17
invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v7
:goto_182
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v17
if-eqz v17, :cond_19b
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/fsck/k9/MessagingListener;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$2;->val$account:Lcom/fsck/k9/Account;
move-object/from16 v17, v0
move-object v0, v8
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingListener;->listFoldersFinished(Lcom/fsck/k9/Account;)V
:try_end_19a
.catchall {:try_start_148 .. :try_end_19a} :catchall_136
.catch Ljava/lang/Exception; {:try_start_148 .. :try_end_19a} :catch_108
goto :goto_182
:cond_19b
if-eqz v12, :cond_1d2
move-object v3, v12
array-length v9, v3
const/4 v7, 0x0
:goto_1a0
if-ge v7, v9, :cond_1d2
aget-object v10, v3, v7
if-eqz v10, :cond_1a9
invoke-virtual {v10}, Lcom/fsck/k9/mail/Folder;->close()V
:cond_1a9
add-int/lit8 v7, v7, 0x1
goto :goto_1a0
:try_start_1ac
:cond_1ac
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$2;->this$0:Lcom/fsck/k9/MessagingController;
move-object/from16 v17, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/MessagingController$2;->val$account:Lcom/fsck/k9/Account;
move-object/from16 v18, v0
move-object/from16 v0, v17
move-object/from16 v1, v18
move-object v2, v5
invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V
:try_end_1c0
.catchall {:try_start_1ac .. :try_end_1c0} :catchall_136
if-eqz v12, :cond_1d2
move-object v3, v12
array-length v9, v3
const/4 v7, 0x0
:goto_1c5
if-ge v7, v9, :cond_1d2
aget-object v10, v3, v7
if-eqz v10, :cond_1ce
invoke-virtual {v10}, Lcom/fsck/k9/mail/Folder;->close()V
:cond_1ce
add-int/lit8 v7, v7, 0x1
goto :goto_1c5
:cond_1d1
throw v17
:cond_1d2
return-void
.end method