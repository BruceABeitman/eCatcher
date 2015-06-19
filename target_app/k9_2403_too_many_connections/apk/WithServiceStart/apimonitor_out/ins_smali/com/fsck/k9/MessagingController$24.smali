.class  Lcom/fsck/k9/MessagingController$24;
.super Lcom/fsck/k9/MessagingListener;
.source "MessagingController.java"
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;
.field final synthetic val$context:Landroid/content/Context;
.method constructor <init>(Lcom/fsck/k9/MessagingController;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/fsck/k9/MessagingController$24;->this$0:Lcom/fsck/k9/MessagingController;
iput-object p2, p0, Lcom/fsck/k9/MessagingController$24;->val$context:Landroid/content/Context;
invoke-direct {p0}, Lcom/fsck/k9/MessagingListener;-><init>()V
return-void
.end method
.method public loadMessageForViewBodyAvailable(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
.registers 13
const-string v4, "text/plain"
const-string v7, "k9"
const-string v6, ":"
sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v4, :cond_44
const-string v4, "k9"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Got message "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ":"
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ":"
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " for sendAlternate"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_44
:try_start_44
new-instance v1, Landroid/content/Intent;
const-string v4, "android.intent.action.SEND"
invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const/4 v3, 0x0
const-string v4, "text/plain"
invoke-static {p4, v4}, Lcom/fsck/k9/mail/internet/MimeUtility;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;
move-result-object v2
if-nez v2, :cond_5a
const-string v4, "text/html"
invoke-static {p4, v4}, Lcom/fsck/k9/mail/internet/MimeUtility;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;
move-result-object v2
:cond_5a
if-eqz v2, :cond_60
invoke-static {v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;
move-result-object v3
:cond_60
if-eqz v3, :cond_67
const-string v4, "android.intent.extra.TEXT"
invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:cond_67
const-string v4, "android.intent.extra.SUBJECT"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Fwd: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v4, "text/plain"
invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
iget-object v4, p0, Lcom/fsck/k9/MessagingController$24;->val$context:Landroid/content/Context;
iget-object v5, p0, Lcom/fsck/k9/MessagingController$24;->val$context:Landroid/content/Context;
const v6, 0x7f080040
invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-static {v1, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:goto_9a
:try_end_9a
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_44 .. :try_end_9a} :catch_9b
return-void
:catch_9b
move-exception v4
move-object v0, v4
const-string v4, "k9"
const-string v4, "Unable to send email through alternate program"
invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_9a
.end method