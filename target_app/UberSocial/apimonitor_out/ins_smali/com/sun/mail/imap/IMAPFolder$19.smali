.class  Lcom/sun/mail/imap/IMAPFolder$19;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
.field final synthetic this$0:Lcom/sun/mail/imap/IMAPFolder;
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;)V
.registers 2
iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$19;->this$0:Lcom/sun/mail/imap/IMAPFolder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$19;->this$0:Lcom/sun/mail/imap/IMAPFolder;
#getter for: Lcom/sun/mail/imap/IMAPFolder;->idleState:I
invoke-static {v0}, Lcom/sun/mail/imap/IMAPFolder;->access$1(Lcom/sun/mail/imap/IMAPFolder;)I
move-result v0
if-nez v0, :cond_14
invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleStart()V
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$19;->this$0:Lcom/sun/mail/imap/IMAPFolder;
const/4 v1, 0x1
#setter for: Lcom/sun/mail/imap/IMAPFolder;->idleState:I
invoke-static {v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->access$2(Lcom/sun/mail/imap/IMAPFolder;I)V
sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
:goto_13
return-object v0
:cond_14
:try_start_14
iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$19;->this$0:Lcom/sun/mail/imap/IMAPFolder;
iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->wait()V
:goto_1b
:try_end_1b
.catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_1b} :catch_1e
sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
goto :goto_13
:catch_1e
move-exception v0
goto :goto_1b
.end method