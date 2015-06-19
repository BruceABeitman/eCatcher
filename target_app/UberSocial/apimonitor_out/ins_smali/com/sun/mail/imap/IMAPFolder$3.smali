.class  Lcom/sun/mail/imap/IMAPFolder$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
.field final synthetic this$0:Lcom/sun/mail/imap/IMAPFolder;
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;)V
.registers 2
iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$3;->this$0:Lcom/sun/mail/imap/IMAPFolder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
.registers 4
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$3;->this$0:Lcom/sun/mail/imap/IMAPFolder;
iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
const-string v1, ""
invoke-virtual {p1, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->list(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;
move-result-object v0
:goto_10
return-object v0
:cond_11
const-string v0, ""
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder$3;->this$0:Lcom/sun/mail/imap/IMAPFolder;
iget-object v1, v1, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->list(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;
move-result-object v0
goto :goto_10
.end method