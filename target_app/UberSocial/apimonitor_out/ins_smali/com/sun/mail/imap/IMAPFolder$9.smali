.class  Lcom/sun/mail/imap/IMAPFolder$9;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
.field final synthetic this$0:Lcom/sun/mail/imap/IMAPFolder;
.field private final synthetic val$f:Ljavax/mail/Folder;
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Folder;)V
.registers 3
iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$9;->this$0:Lcom/sun/mail/imap/IMAPFolder;
iput-object p2, p0, Lcom/sun/mail/imap/IMAPFolder$9;->val$f:Ljavax/mail/Folder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$9;->this$0:Lcom/sun/mail/imap/IMAPFolder;
iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder$9;->val$f:Ljavax/mail/Folder;
invoke-virtual {v1}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->rename(Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
return-object v0
.end method