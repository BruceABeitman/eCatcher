.class Lcom/fsck/k9/K9$1;
.super Lcom/fsck/k9/MessagingListener;
.source "K9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/K9;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/K9;


# direct methods
.method constructor <init>(Lcom/fsck/k9/K9;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/K9$1;->this$0:Lcom/fsck/k9/K9;

    invoke-direct {p0}, Lcom/fsck/k9/MessagingListener;-><init>()V

    return-void
.end method

.method private broadcastIntent(Ljava/lang/String;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .registers 15

    const-string v9, "k9"

    const-string v3, "/"

    const-string v8, " message uid="

    const-string v7, " folder="

    const-string v6, " account="

    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "email://messages/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "com.fsck.k9.intent.extra.ACCOUNT"

    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.fsck.k9.intent.extra.FOLDER"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.fsck.k9.intent.extra.SENT_DATE"

    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "com.fsck.k9.intent.extra.FROM"

    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v4

    invoke-static {v4}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.fsck.k9.intent.extra.TO"

    sget-object v4, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p4, v4}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v4

    invoke-static {v4}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.fsck.k9.intent.extra.CC"

    sget-object v4, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p4, v4}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v4

    invoke-static {v4}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.fsck.k9.intent.extra.BCC"

    sget-object v4, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p4, v4}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v4

    invoke-static {v4}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.fsck.k9.intent.extra.SUBJECT"

    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.fsck.k9.intent.extra.FROM_SELF"

    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/fsck/k9/Account;->isAnIdentity([Lcom/fsck/k9/mail/Address;)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/fsck/k9/K9$1;->this$0:Lcom/fsck/k9/K9;

    invoke-virtual {v3, v1}, Lcom/fsck/k9/K9;->sendBroadcast(Landroid/content/Intent;)V

    sget-boolean v3, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v3, :cond_f8

    const-string v3, "k9"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasted: action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " account="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " folder="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " message uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_a .. :try_end_f8} :catch_f9

    :cond_f8
    :goto_f8
    return-void

    :catch_f9
    move-exception v3

    move-object v0, v3

    const-string v3, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " account="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " folder="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " message uid="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f8
.end method


# virtual methods
.method public messageDeleted(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .registers 5

    const-string v0, "com.fsck.k9.intent.action.EMAIL_DELETED"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/fsck/k9/K9$1;->broadcastIntent(Ljava/lang/String;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    return-void
.end method

.method public synchronizeMailboxNewMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .registers 5

    const-string v0, "com.fsck.k9.intent.action.EMAIL_RECEIVED"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/fsck/k9/K9$1;->broadcastIntent(Ljava/lang/String;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    return-void
.end method

.method public synchronizeMailboxRemovedMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .registers 5

    const-string v0, "com.fsck.k9.intent.action.EMAIL_DELETED"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/fsck/k9/K9$1;->broadcastIntent(Ljava/lang/String;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    return-void
.end method
