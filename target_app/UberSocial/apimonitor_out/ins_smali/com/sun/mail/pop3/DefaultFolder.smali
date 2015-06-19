.class public Lcom/sun/mail/pop3/DefaultFolder;
.super Ljavax/mail/Folder;
.source "SourceFile"
.method constructor <init>(Lcom/sun/mail/pop3/POP3Store;)V
.registers 2
invoke-direct {p0, p1}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V
return-void
.end method
.method public appendMessages([Ljavax/mail/Message;)V
.registers 4
new-instance v0, Ljavax/mail/MethodNotSupportedException;
const-string v1, "Append not supported"
invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public close(Z)V
.registers 4
new-instance v0, Ljavax/mail/MethodNotSupportedException;
const-string v1, "close"
invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public create(I)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public delete(Z)Z
.registers 4
new-instance v0, Ljavax/mail/MethodNotSupportedException;
const-string v1, "delete"
invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public exists()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public expunge()[Ljavax/mail/Message;
.registers 3
new-instance v0, Ljavax/mail/MethodNotSupportedException;
const-string v1, "expunge"
invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
.registers 4
const-string v0, "INBOX"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_10
new-instance v0, Ljavax/mail/MessagingException;
const-string v1, "only INBOX supported"
invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
invoke-virtual {p0}, Lcom/sun/mail/pop3/DefaultFolder;->getInbox()Ljavax/mail/Folder;
move-result-object v0
return-object v0
.end method
.method public getFullName()Ljava/lang/String;
.registers 2
const-string v0, ""
return-object v0
.end method
.method protected getInbox()Ljavax/mail/Folder;
.registers 3
invoke-virtual {p0}, Lcom/sun/mail/pop3/DefaultFolder;->getStore()Ljavax/mail/Store;
move-result-object v0
const-string v1, "INBOX"
invoke-virtual {v0, v1}, Ljavax/mail/Store;->getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
move-result-object v0
return-object v0
.end method
.method public getMessage(I)Ljavax/mail/Message;
.registers 4
new-instance v0, Ljavax/mail/MethodNotSupportedException;
const-string v1, "getMessage"
invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public getMessageCount()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
const-string v0, ""
return-object v0
.end method
.method public getParent()Ljavax/mail/Folder;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getPermanentFlags()Ljavax/mail/Flags;
.registers 2
new-instance v0, Ljavax/mail/Flags;
invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V
return-object v0
.end method
.method public getSeparator()C
.registers 2
const/16 v0, 0x2f
return v0
.end method
.method public getType()I
.registers 2
const/4 v0, 0x2
return v0
.end method
.method public hasNewMessages()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isOpen()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public list(Ljava/lang/String;)[Ljavax/mail/Folder;
.registers 5
const/4 v0, 0x1
new-array v0, v0, [Ljavax/mail/Folder;
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/sun/mail/pop3/DefaultFolder;->getInbox()Ljavax/mail/Folder;
move-result-object v2
aput-object v2, v0, v1
return-object v0
.end method
.method public open(I)V
.registers 4
new-instance v0, Ljavax/mail/MethodNotSupportedException;
const-string v1, "open"
invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public renameTo(Ljavax/mail/Folder;)Z
.registers 4
new-instance v0, Ljavax/mail/MethodNotSupportedException;
const-string v1, "renameTo"
invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V
throw v0
.end method