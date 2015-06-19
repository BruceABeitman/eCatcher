.class  Lcom/sun/mail/imap/IMAPFolder$14;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
.field final synthetic this$0:Lcom/sun/mail/imap/IMAPFolder;
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;)V
.registers 2
iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$14;->this$0:Lcom/sun/mail/imap/IMAPFolder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$14;->this$0:Lcom/sun/mail/imap/IMAPFolder;
iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getACL(Ljava/lang/String;)[Lcom/sun/mail/imap/ACL;
move-result-object v0
return-object v0
.end method