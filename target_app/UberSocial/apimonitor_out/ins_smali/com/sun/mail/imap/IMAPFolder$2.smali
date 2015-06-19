.class  Lcom/sun/mail/imap/IMAPFolder$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
.field final synthetic this$0:Lcom/sun/mail/imap/IMAPFolder;
.field private final synthetic val$c:C
.field private final synthetic val$pattern:Ljava/lang/String;
.field private final synthetic val$subscribed:Z
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;ZCLjava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$2;->this$0:Lcom/sun/mail/imap/IMAPFolder;
iput-boolean p2, p0, Lcom/sun/mail/imap/IMAPFolder$2;->val$subscribed:Z
iput-char p3, p0, Lcom/sun/mail/imap/IMAPFolder$2;->val$c:C
iput-object p4, p0, Lcom/sun/mail/imap/IMAPFolder$2;->val$pattern:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
.registers 5
iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder$2;->val$subscribed:Z
if-eqz v0, :cond_28
const-string v0, ""
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder$2;->this$0:Lcom/sun/mail/imap/IMAPFolder;
iget-object v2, v2, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-char v2, p0, Lcom/sun/mail/imap/IMAPFolder$2;->val$c:C
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder$2;->val$pattern:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->lsub(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;
move-result-object v0
:goto_27
return-object v0
:cond_28
const-string v0, ""
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder$2;->this$0:Lcom/sun/mail/imap/IMAPFolder;
iget-object v2, v2, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-char v2, p0, Lcom/sun/mail/imap/IMAPFolder$2;->val$c:C
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder$2;->val$pattern:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->list(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;
move-result-object v0
goto :goto_27
.end method