.class  Lcom/fsck/k9/mail/store/ImapStore$ImapException;
.super Lcom/fsck/k9/mail/MessagingException;
.source "ImapStore.java"
.field  mAlertText:Ljava/lang/String;
.field final synthetic this$0:Lcom/fsck/k9/mail/store/ImapStore;
.method public constructor <init>(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapException;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
invoke-direct {p0, p2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V
iput-object p3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 5
iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapException;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
invoke-direct {p0, p2, p4}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
iput-object p3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;
return-void
.end method
.method public getAlertText()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;
return-object v0
.end method
.method public setAlertText(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;
return-void
.end method