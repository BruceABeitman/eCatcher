.class  Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;
.super Lcom/fsck/k9/activity/ActivityListener;
.source "FolderList.java"
.field final synthetic this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
.method constructor <init>(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
invoke-direct {p0}, Lcom/fsck/k9/activity/ActivityListener;-><init>()V
return-void
.end method
.method private refreshFolder(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 9
const/4 v2, 0x0
if-eqz p1, :cond_35
if-eqz p2, :cond_35
:try_start_5
invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;
move-result-object v4
iget-object v5, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v5, v5, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
invoke-virtual {v5}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;
move-result-object v5
invoke-static {v4, v5}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;
move-result-object v4
invoke-virtual {v4, p2}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
move-result-object v2
invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->getUnreadMessageCount()I
move-result v3
if-eqz v2, :cond_35
iget-object v4, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
invoke-virtual {v4, p2}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
move-result-object v1
if-eqz v1, :cond_35
invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->populate(Lcom/fsck/k9/mail/Folder;I)V
iget-object v4, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v4, v4, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v4}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v4
invoke-virtual {v4}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->dataChanged()V
:cond_35
:try_end_35
.catchall {:try_start_5 .. :try_end_35} :catchall_4a
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_35} :catch_3b
if-eqz v2, :cond_3a
invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->close()V
:goto_3a
:cond_3a
return-void
:catch_3b
move-exception v4
move-object v0, v4
:try_start_3d
const-string v4, "k9"
const-string v5, "Exception while populating folder"
invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_44
.catchall {:try_start_3d .. :try_end_44} :catchall_4a
if-eqz v2, :cond_3a
invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->close()V
goto :goto_3a
:catchall_4a
move-exception v4
if-eqz v2, :cond_50
invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->close()V
:cond_50
throw v4
.end method
.method public accountSizeChanged(Lcom/fsck/k9/Account;JJ)V
.registers 7
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_f
:goto_e
return-void
:cond_f
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v0
invoke-virtual {v0, p2, p3, p4, p5}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->accountSizeChanged(JJ)V
goto :goto_e
.end method
.method public accountStatusChanged(Lcom/fsck/k9/Account;I)V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#setter for: Lcom/fsck/k9/activity/FolderList;->mUnreadMessageCount:I
invoke-static {v0, p2}, Lcom/fsck/k9/activity/FolderList;->access$102(Lcom/fsck/k9/activity/FolderList;I)I
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->refreshTitle()V
return-void
.end method
.method public emptyTrashCompleted(Lcom/fsck/k9/Account;)V
.registers 3
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_f
:goto_e
return-void
:cond_f
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->refreshFolder(Lcom/fsck/k9/Account;Ljava/lang/String;)V
goto :goto_e
.end method
.method public folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V
.registers 5
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_f
:goto_e
return-void
:cond_f
invoke-direct {p0, p1, p2}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->refreshFolder(Lcom/fsck/k9/Account;Ljava/lang/String;)V
goto :goto_e
.end method
.method public listFolders(Lcom/fsck/k9/Account;[Lcom/fsck/k9/mail/Folder;)V
.registers 20
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
move-object v14, v0
iget-object v14, v14, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v14}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
move-result-object v14
move-object/from16 v0, p1
move-object v1, v14
invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z
move-result v14
if-nez v14, :cond_15
:goto_14
return-void
:cond_15
new-instance v12, Ljava/util/ArrayList;
invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getFolderDisplayMode()Lcom/fsck/k9/Account$FolderMode;
move-result-object v2
move-object/from16 v3, p2
array-length v10, v3
const/4 v9, 0x0
:goto_22
if-ge v9, v10, :cond_ef
aget-object v6, v3, v9
:try_start_26
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
move-object v14, v0
iget-object v14, v14, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
invoke-virtual {v14}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;
move-result-object v14
invoke-virtual {v14}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;
move-result-object v14
invoke-static {v14}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;
move-result-object v14
invoke-virtual {v6, v14}, Lcom/fsck/k9/mail/Folder;->refresh(Lcom/fsck/k9/Preferences;)V
invoke-virtual {v6}, Lcom/fsck/k9/mail/Folder;->getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;
move-result-object v5
sget-object v14, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;
if-ne v2, v14, :cond_48
sget-object v14, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;
if-ne v5, v14, :cond_5c
:cond_48
sget-object v14, Lcom/fsck/k9/Account$FolderMode;->FIRST_AND_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;
if-ne v2, v14, :cond_54
sget-object v14, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;
if-eq v5, v14, :cond_54
sget-object v14, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;
if-ne v5, v14, :cond_5c
:cond_54
sget-object v14, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;
if-ne v2, v14, :cond_7d
sget-object v14, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;
:try_end_5a
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_26 .. :try_end_5a} :catch_5f
if-ne v5, v14, :cond_7d
:goto_5c
:cond_5c
add-int/lit8 v9, v9, 0x1
goto :goto_22
:catch_5f
move-exception v14
move-object v11, v14
const-string v14, "k9"
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, "Couldn\'t get prefs to check for displayability of folder "
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v6}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-static {v14, v15, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_7d
const/4 v8, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
move-object v14, v0
invoke-virtual {v6}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getFolderIndex(Ljava/lang/String;)I
move-result v7
if-ltz v7, :cond_98
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
move-object v14, v0
invoke-virtual {v14, v7}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
:cond_98
const/4 v13, 0x0
:try_start_99
invoke-virtual {v6}, Lcom/fsck/k9/mail/Folder;->getUnreadMessageCount()I
:try_end_9c
.catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_af
move-result v13
:goto_9d
if-nez v8, :cond_eb
new-instance v8, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
move-object v14, v0
iget-object v14, v14, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
invoke-direct {v8, v14, v6, v13}, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;-><init>(Lcom/fsck/k9/activity/FolderList;Lcom/fsck/k9/mail/Folder;I)V
:goto_ab
invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_5c
:catch_af
move-exception v4
const-string v14, "k9"
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, "Unable to get unreadMessageCount for "
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
move-object/from16 v16, v0
#getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static/range {v16 .. v16}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, ":"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v6}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_9d
:cond_eb
invoke-virtual {v8, v6, v13}, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->populate(Lcom/fsck/k9/mail/Folder;I)V
goto :goto_ab
:cond_ef
invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
move-object v14, v0
iget-object v14, v14, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v14}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v14
invoke-virtual {v14, v12}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->newFolders(Ljava/util/ArrayList;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
move-object v14, v0
iget-object v14, v14, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v14}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v14
invoke-virtual {v14}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->refreshTitle()V
goto/16 :goto_14
.end method
.method public listFoldersFailed(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_f
:goto_e
return-void
:cond_f
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->progress(Z)V
goto :goto_e
.end method
.method public listFoldersFinished(Lcom/fsck/k9/Account;)V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_f
:goto_e
return-void
:cond_f
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->progress(Z)V
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v0
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAdapter:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$200(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
move-result-object v1
#getter for: Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->mListener:Lcom/fsck/k9/activity/ActivityListener;
invoke-static {v1}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$300(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Lcom/fsck/k9/activity/ActivityListener;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingController;->refreshListener(Lcom/fsck/k9/MessagingListener;)V
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->dataChanged()V
goto :goto_e
.end method
.method public listFoldersStarted(Lcom/fsck/k9/Account;)V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_f
:goto_e
return-void
:cond_f
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->progress(Z)V
goto :goto_e
.end method
.method public messageDeleted(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
.registers 4
invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->synchronizeMailboxRemovedMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
return-void
.end method
.method public pendingCommandCompleted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 4
invoke-super {p0, p1, p2}, Lcom/fsck/k9/activity/ActivityListener;->pendingCommandCompleted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->refreshTitle()V
return-void
.end method
.method public pendingCommandStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 4
invoke-super {p0, p1, p2}, Lcom/fsck/k9/activity/ActivityListener;->pendingCommandStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->refreshTitle()V
return-void
.end method
.method public pendingCommandsFinished(Lcom/fsck/k9/Account;)V
.registers 3
invoke-super {p0, p1}, Lcom/fsck/k9/activity/ActivityListener;->pendingCommandsFinished(Lcom/fsck/k9/Account;)V
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->refreshTitle()V
return-void
.end method
.method public pendingCommandsProcessing(Lcom/fsck/k9/Account;)V
.registers 3
invoke-super {p0, p1}, Lcom/fsck/k9/activity/ActivityListener;->pendingCommandsProcessing(Lcom/fsck/k9/Account;)V
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->refreshTitle()V
return-void
.end method
.method public sendPendingMessagesCompleted(Lcom/fsck/k9/Account;)V
.registers 3
invoke-super {p0, p1}, Lcom/fsck/k9/activity/ActivityListener;->sendPendingMessagesCompleted(Lcom/fsck/k9/Account;)V
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->refreshTitle()V
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1d
:goto_1c
return-void
:cond_1d
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->refreshFolder(Lcom/fsck/k9/Account;Ljava/lang/String;)V
goto :goto_1c
.end method
.method public sendPendingMessagesFailed(Lcom/fsck/k9/Account;)V
.registers 3
invoke-super {p0, p1}, Lcom/fsck/k9/activity/ActivityListener;->sendPendingMessagesFailed(Lcom/fsck/k9/Account;)V
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->refreshTitle()V
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1d
:goto_1c
return-void
:cond_1d
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->refreshFolder(Lcom/fsck/k9/Account;Ljava/lang/String;)V
goto :goto_1c
.end method
.method public sendPendingMessagesStarted(Lcom/fsck/k9/Account;)V
.registers 3
invoke-super {p0, p1}, Lcom/fsck/k9/activity/ActivityListener;->sendPendingMessagesStarted(Lcom/fsck/k9/Account;)V
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->refreshTitle()V
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1d
:goto_1c
return-void
:cond_1d
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->dataChanged()V
goto :goto_1c
.end method
.method public setPushActive(Lcom/fsck/k9/Account;Ljava/lang/String;Z)V
.registers 6
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
move-result-object v1
invoke-virtual {p1, v1}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_f
:cond_e
:goto_e
return-void
:cond_f
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
invoke-virtual {v1, p2}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
move-result-object v0
if-eqz v0, :cond_e
iput-boolean p3, v0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->pushActive:Z
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v1
invoke-virtual {v1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->dataChanged()V
goto :goto_e
.end method
.method public synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
const/4 v2, 0x0
invoke-super {p0, p1, p2, p3}, Lcom/fsck/k9/activity/ActivityListener;->synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v1
invoke-virtual {v1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->refreshTitle()V
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
move-result-object v1
invoke-virtual {p1, v1}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_1e
:goto_1d
return-void
:cond_1e
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v1
invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->progress(Z)V
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v1
invoke-virtual {v1, p2, v2}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->folderLoading(Ljava/lang/String;Z)V
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
invoke-virtual {v1, p2}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
move-result-object v0
if-eqz v0, :cond_40
const-wide/16 v1, 0x0
iput-wide v1, v0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->lastChecked:J
:cond_40
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v1
invoke-virtual {v1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->dataChanged()V
goto :goto_1d
.end method
.method public synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
.registers 7
const/4 v1, 0x0
invoke-super {p0, p1, p2, p3, p4}, Lcom/fsck/k9/activity/ActivityListener;->synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->refreshTitle()V
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1e
:goto_1d
return-void
:cond_1e
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->progress(Z)V
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v0
invoke-virtual {v0, p2, v1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->folderLoading(Ljava/lang/String;Z)V
invoke-direct {p0, p1, p2}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->refreshFolder(Lcom/fsck/k9/Account;Ljava/lang/String;)V
goto :goto_1d
.end method
.method public synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
.registers 6
invoke-super {p0, p1, p2, p3, p4}, Lcom/fsck/k9/activity/ActivityListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->refreshTitle()V
return-void
.end method
.method public synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 5
const/4 v1, 0x1
invoke-super {p0, p1, p2}, Lcom/fsck/k9/activity/ActivityListener;->synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->refreshTitle()V
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1e
:goto_1d
return-void
:cond_1e
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->progress(Z)V
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v0
invoke-virtual {v0, p2, v1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->folderLoading(Ljava/lang/String;Z)V
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListAdapter;
iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mHandler:Lcom/fsck/k9/activity/FolderList$FolderListHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->dataChanged()V
goto :goto_1d
.end method