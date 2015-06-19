.class  Lcom/sun/mail/imap/IMAPFolder$15;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
.field final synthetic this$0:Lcom/sun/mail/imap/IMAPFolder;
.field private final synthetic val$name:Ljava/lang/String;
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$15;->this$0:Lcom/sun/mail/imap/IMAPFolder;
iput-object p2, p0, Lcom/sun/mail/imap/IMAPFolder$15;->val$name:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$15;->this$0:Lcom/sun/mail/imap/IMAPFolder;
iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder$15;->val$name:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->deleteACL(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
return-object v0
.end method