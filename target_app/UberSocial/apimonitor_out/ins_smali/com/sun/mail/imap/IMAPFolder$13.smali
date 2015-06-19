.class  Lcom/sun/mail/imap/IMAPFolder$13;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
.field final synthetic this$0:Lcom/sun/mail/imap/IMAPFolder;
.field private final synthetic val$quota:Ljavax/mail/Quota;
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Quota;)V
.registers 3
iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$13;->this$0:Lcom/sun/mail/imap/IMAPFolder;
iput-object p2, p0, Lcom/sun/mail/imap/IMAPFolder$13;->val$quota:Ljavax/mail/Quota;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$13;->val$quota:Ljavax/mail/Quota;
invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setQuota(Ljavax/mail/Quota;)V
const/4 v0, 0x0
return-object v0
.end method