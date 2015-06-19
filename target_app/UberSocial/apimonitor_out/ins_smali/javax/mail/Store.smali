.class public abstract Ljavax/mail/Store;
.super Ljavax/mail/Service;
.source "SourceFile"
.field private volatile folderListeners:Ljava/util/Vector;
.field private volatile storeListeners:Ljava/util/Vector;
.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2}, Ljavax/mail/Service;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
iput-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;
iput-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;
return-void
.end method
.method public declared-synchronized addFolderListener(Ljavax/mail/event/FolderListener;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;
if-nez v0, :cond_c
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;
:cond_c
iget-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:try_end_11
.catchall {:try_start_1 .. :try_end_11} :catchall_13
monitor-exit p0
return-void
:catchall_13
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized addStoreListener(Ljavax/mail/event/StoreListener;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;
if-nez v0, :cond_c
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;
:cond_c
iget-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:try_end_11
.catchall {:try_start_1 .. :try_end_11} :catchall_13
monitor-exit p0
return-void
:catchall_13
move-exception v0
monitor-exit p0
throw v0
.end method
.method public abstract getDefaultFolder()Ljavax/mail/Folder;
.end method
.method public abstract getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
.end method
.method public abstract getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;
.end method
.method public getPersonalNamespaces()[Ljavax/mail/Folder;
.registers 4
const/4 v0, 0x1
new-array v0, v0, [Ljavax/mail/Folder;
const/4 v1, 0x0
invoke-virtual {p0}, Ljavax/mail/Store;->getDefaultFolder()Ljavax/mail/Folder;
move-result-object v2
aput-object v2, v0, v1
return-object v0
.end method
.method public getSharedNamespaces()[Ljavax/mail/Folder;
.registers 2
const/4 v0, 0x0
new-array v0, v0, [Ljavax/mail/Folder;
return-object v0
.end method
.method public getUserNamespaces(Ljava/lang/String;)[Ljavax/mail/Folder;
.registers 3
const/4 v0, 0x0
new-array v0, v0, [Ljavax/mail/Folder;
return-object v0
.end method
.method protected notifyFolderListeners(ILjavax/mail/Folder;)V
.registers 5
iget-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
new-instance v0, Ljavax/mail/event/FolderEvent;
invoke-direct {v0, p0, p2, p1}, Ljavax/mail/event/FolderEvent;-><init>(Ljava/lang/Object;Ljavax/mail/Folder;I)V
iget-object v1, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;
invoke-virtual {p0, v0, v1}, Ljavax/mail/Store;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
goto :goto_4
.end method
.method protected notifyFolderRenamedListeners(Ljavax/mail/Folder;Ljavax/mail/Folder;)V
.registers 5
iget-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
new-instance v0, Ljavax/mail/event/FolderEvent;
const/4 v1, 0x3
invoke-direct {v0, p0, p1, p2, v1}, Ljavax/mail/event/FolderEvent;-><init>(Ljava/lang/Object;Ljavax/mail/Folder;Ljavax/mail/Folder;I)V
iget-object v1, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;
invoke-virtual {p0, v0, v1}, Ljavax/mail/Store;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
goto :goto_4
.end method
.method protected notifyStoreListeners(ILjava/lang/String;)V
.registers 5
iget-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
new-instance v0, Ljavax/mail/event/StoreEvent;
invoke-direct {v0, p0, p1, p2}, Ljavax/mail/event/StoreEvent;-><init>(Ljavax/mail/Store;ILjava/lang/String;)V
iget-object v1, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;
invoke-virtual {p0, v0, v1}, Ljavax/mail/Store;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
goto :goto_4
.end method
.method public declared-synchronized removeFolderListener(Ljavax/mail/event/FolderListener;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;
if-eqz v0, :cond_a
iget-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_c
:cond_a
monitor-exit p0
return-void
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized removeStoreListener(Ljavax/mail/event/StoreListener;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;
if-eqz v0, :cond_a
iget-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_c
:cond_a
monitor-exit p0
return-void
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method