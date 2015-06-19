.class  Lcom/sun/mail/imap/IMAPFolder$7;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
.field final synthetic this$0:Lcom/sun/mail/imap/IMAPFolder;
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;)V
.registers 2
iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$7;->this$0:Lcom/sun/mail/imap/IMAPFolder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
.registers 6
const/4 v3, 0x0
const-string v0, ""
iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder$7;->this$0:Lcom/sun/mail/imap/IMAPFolder;
iget-object v1, v1, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->list(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;
move-result-object v0
if-eqz v0, :cond_21
aget-object v1, v0, v3
iget v1, v1, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I
const/4 v2, 0x1
if-ne v1, v2, :cond_17
sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
:goto_16
return-object v0
:cond_17
aget-object v0, v0, v3
iget v0, v0, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I
const/4 v1, 0x2
if-ne v0, v1, :cond_21
sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
goto :goto_16
:cond_21
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$7;->this$0:Lcom/sun/mail/imap/IMAPFolder;
#calls: Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;
invoke-static {v0}, Lcom/sun/mail/imap/IMAPFolder;->access$0(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/protocol/Status;
move-result-object v0
iget v0, v0, Lcom/sun/mail/imap/protocol/Status;->recent:I
if-lez v0, :cond_2e
sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
goto :goto_16
:cond_2e
sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
goto :goto_16
.end method