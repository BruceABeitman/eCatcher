.class public abstract Lcom/fsck/k9/mail/Folder;
.super Ljava/lang/Object;
.source "Folder.java"
.field private lastChecked:J
.field private lastPush:J
.field private status:Ljava/lang/String;
.method public constructor <init>()V
.registers 4
const-wide/16 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fsck/k9/mail/Folder;->status:Ljava/lang/String;
iput-wide v1, p0, Lcom/fsck/k9/mail/Folder;->lastChecked:J
iput-wide v1, p0, Lcom/fsck/k9/mail/Folder;->lastPush:J
return-void
.end method
.method public abstract appendMessages([Lcom/fsck/k9/mail/Message;)V
.end method
.method public abstract close()V
.end method
.method public copyMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
.registers 3
return-void
.end method
.method public abstract create(Lcom/fsck/k9/mail/Folder$FolderType;)Z
.end method
.method public create(Lcom/fsck/k9/mail/Folder$FolderType;I)Z
.registers 4
invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/Folder;->create(Lcom/fsck/k9/mail/Folder$FolderType;)Z
move-result v0
return v0
.end method
.method public abstract delete(Z)V
.end method
.method public delete([Lcom/fsck/k9/mail/Message;Ljava/lang/String;)V
.registers 9
move-object v0, p1
array-length v2, v0
const/4 v1, 0x0
:goto_3
if-ge v1, v2, :cond_15
aget-object v3, v0, v1
invoke-virtual {v3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;
move-result-object v5
invoke-virtual {p0, v5}, Lcom/fsck/k9/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;
move-result-object v4
invoke-virtual {v4, p2}, Lcom/fsck/k9/mail/Message;->delete(Ljava/lang/String;)V
add-int/lit8 v1, v1, 0x1
goto :goto_3
:cond_15
return-void
.end method
.method public abstract exists()Z
.end method
.method public expunge()V
.registers 1
return-void
.end method
.method public abstract fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
.end method
.method public getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;
.registers 2
sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;
return-object v0
.end method
.method public getLastChecked()J
.registers 3
iget-wide v0, p0, Lcom/fsck/k9/mail/Folder;->lastChecked:J
return-wide v0
.end method
.method public getLastPush()J
.registers 3
iget-wide v0, p0, Lcom/fsck/k9/mail/Folder;->lastPush:J
return-wide v0
.end method
.method public getLastUpdate()J
.registers 5
invoke-virtual {p0}, Lcom/fsck/k9/mail/Folder;->getLastChecked()J
move-result-wide v0
invoke-virtual {p0}, Lcom/fsck/k9/mail/Folder;->getLastPush()J
move-result-wide v2
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
move-result-wide v0
return-wide v0
.end method
.method public abstract getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;
.end method
.method public abstract getMessageCount()I
.end method
.method public abstract getMessages(IILcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
.end method
.method public abstract getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
.end method
.method public getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;Z)[Lcom/fsck/k9/mail/Message;
.registers 4
invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/Folder;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
move-result-object v0
return-object v0
.end method
.method public abstract getMessages([Ljava/lang/String;Lcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
.end method
.method public abstract getMode()Lcom/fsck/k9/mail/Folder$OpenMode;
.end method
.method public abstract getName()Ljava/lang/String;
.end method
.method public getNewPushState(Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
.registers 4
const/4 v0, 0x0
return-object v0
.end method
.method public abstract getPermanentFlags()[Lcom/fsck/k9/mail/Flag;
.end method
.method public getPushClass()Lcom/fsck/k9/mail/Folder$FolderClass;
.registers 2
invoke-virtual {p0}, Lcom/fsck/k9/mail/Folder;->getSyncClass()Lcom/fsck/k9/mail/Folder$FolderClass;
move-result-object v0
return-object v0
.end method
.method public getStatus()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/Folder;->status:Ljava/lang/String;
return-object v0
.end method
.method public getSyncClass()Lcom/fsck/k9/mail/Folder$FolderClass;
.registers 2
invoke-virtual {p0}, Lcom/fsck/k9/mail/Folder;->getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;
move-result-object v0
return-object v0
.end method
.method public abstract getUidFromMessageId(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
.end method
.method public abstract getUnreadMessageCount()I
.end method
.method public abstract isOpen()Z
.end method
.method public moveMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
.registers 3
return-void
.end method
.method public abstract open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
.end method
.method public refresh(Lcom/fsck/k9/Preferences;)V
.registers 2
return-void
.end method
.method public abstract setFlags([Lcom/fsck/k9/mail/Flag;Z)V
.end method
.method public abstract setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V
.end method
.method public setLastChecked(J)V
.registers 3
iput-wide p1, p0, Lcom/fsck/k9/mail/Folder;->lastChecked:J
return-void
.end method
.method public setLastPush(J)V
.registers 3
iput-wide p1, p0, Lcom/fsck/k9/mail/Folder;->lastPush:J
return-void
.end method
.method public setStatus(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/mail/Folder;->status:Ljava/lang/String;
return-void
.end method
.method public supportsFetchingFlags()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method